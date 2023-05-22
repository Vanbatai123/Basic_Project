/**
 * Led WS2811
 * Created: 2023/03/30
 * Author: TaiVB
 */

#include <stdlib.h>
#include <include.h>
#include <N76_Flash.h>
#include <WS2812.h>

#define NUM_COLOR 8
#define NUM_EFFECT 7
#define DEFAULT_EFFECT 0
#define LED2_PIN 5
#define LED2_PORT P0
#define LED2_PxM1 P0M1
#define LED2_PxM2 P0M2
// #define PI 3.1416

uint16_t NUM_LEDS;
uint16_t _delay;
uint8_t effect;
uint8_t _status = STT_NOTSAVED;
uint8_t _cnt;
uint8_t _color = 0;
uint8_t r2 = 255, b2 = 0, g2 = 0;
__xdata uint8_t leds[600];

void changeColor()
{

    switch (_color)
    {
    case 0: // red
        r2 = 239;
        g2 = 3;
        b2 = 7;
        break;

    case 1: // violet
        r2 = 160;
        g2 = 64;
        b2 = 198;
        break;

    case 2: // ORANGE
        r2 = 255;
        g2 = 153;
        b2 = 0;
        break;

    case 3: // YELLOW
        r2 = 255;
        g2 = 235;
        b2 = 0;
        break;

    case 4: // GREEN
        r2 = 29;
        g2 = 185;
        b2 = 84;
        break;

    case 5: // BLUE
        r2 = 21;
        g2 = 13;
        b2 = 247;
        break;

    case 6: // INDIGO
        r2 = 110;
        g2 = 0;
        b2 = 255;
        break;

    case 7: // Warm White
        r2 = 253;
        g2 = 244;
        b2 = 220;
        break;

    default:
        break;
    }
}
// void TIM2_begin(uint8_t tim_div_x, uint16_t reload)
void TIM2_begin()
{
    // T = (65535 - reload) * div / F_CPU
    // reload = 65535 - (T * F_CPU / div)

    // 	TIMER2_DIV_256;
    T2MOD &= ~0x70;
    // T2MOD |= tim_div_x;
    T2MOD |= 0x60;

    // 	TIMER2_Auto_Reload_Delay_Mode;
    // T2CON &= ~(1 << 0);
    clrb(TCON, CM_RL2);

    // T2MOD |= (1 << 7);
    // T2MOD |= (1 << 3);
    setb(T2MOD, CAPCR);
    setb(T2MOD, LDEN);

    // 	RCMP2L = TIMER_DIV128_VALUE_100ms;
    RCMP2L = 0xF6; // 100ms
    // 	RCMP2H = TIMER_DIV128_VALUE_100ms>>8;
    RCMP2H = 0xC2;
    TL2 = 0;
    TH2 = 0;

    setb(EIE, ET2); // Enable Timer2 interrupt
    sei();
    setb(T2CON, TR2); // Timer2 run
}

void main(void)
{
    CKDIV = 0x00; // 16MHz
    effect = APROM_read_byte(ADDR_EFF);
    if (effect >= NUM_EFFECT + 1)
        effect = DEFAULT_EFFECT;
    _color = APROM_read_byte(ADDR_COLOR);
    if (_color >= NUM_COLOR)
        _color = 0;

    changeColor();

    clrb(LED2_PxM1, LED2_PIN);
    setb(LED2_PxM2, LED2_PIN);
    clrb(LED2_PORT, LED2_PIN);

    clrb(LED_PxM1, LED_PIN);
    setb(LED_PxM2, LED_PIN);
    clrb(LED_PORT, LED_PIN);

    clrb(SW_PxM1, SW50_PIN);
    setb(SW_PxM2, SW50_PIN);

    clrb(SW_PxM1, SW100_PIN);
    setb(SW_PxM2, SW100_PIN);

    clrb(SW_PxM1, SW150_PIN);
    setb(SW_PxM2, SW150_PIN);

    clrb(SW_PxM1, SW200_PIN);
    setb(SW_PxM2, SW200_PIN);

    SW_PORT |= 0x0F;

    // buton effect change
    clrb(BTNE_PxM1, BTNE_PIN);
    setb(BTNE_PxM2, BTNE_PIN);
    setb(BTNE_PORT, BTNE_PIN);

    // buton color change
    clrb(BTNC_PxM1, BTNC_PIN);
    setb(BTNC_PxM2, BTNC_PIN);
    setb(BTNC_PORT, BTNC_PIN);

    // ADC
    ADCCON0 &= 0xF0;
    ADCCON0 |= 0x07;

    // P11_Input_Mode;
    clrb(P1M2, 1);
    setb(P1M1, 1);
    AINDIDS = 0x00;
    AINDIDS |= (1 << 7);
    ADCCON1 |= (1 << 0);
    setb(IE, EADC); // enable interruppt ADC

    // Pin interrupt
    setb(PICON, PIPS0); // pin interrupt port 1

    setb(PICON, PIT45);
    setb(PINEN, BTNE_PIN); // enable falling edge
    clrb(PIPEN, BTNE_PIN); // disable rasing edge
    setb(PICON, PIT3);
    setb(PINEN, BTNC_PIN); // enable falling edge
    clrb(PIPEN, BTNC_PIN); // disable rasing edge

    // // enable external interrupt
    setb(EIE, EPI); // set external interrupt 0 at falling edge

    clearAll();
    // TIM2_begin(0x60, 65536 - 15625);
    TIM2_begin();
    sei(); // Enable global interrupt

    setb(ADCCON0, 6);
    if (inbit(SW_PORT, SW50_PIN) == 0)
        NUM_LEDS = 50;
    else if (inbit(SW_PORT, SW100_PIN) == 0)
        NUM_LEDS = 100;
    else if (inbit(SW_PORT, SW150_PIN) == 0)
        NUM_LEDS = 150;
    else if (inbit(SW_PORT, SW200_PIN) == 0)
        NUM_LEDS = 200;

    while (1)
    {
        switch (effect)
        {
        case 0:
        {
            rainbowCycle();
            break;
        }
        case 1:
        {
            switch (_color % 5)
            {
            case 0:
                colorWipe(COLOR_RED, 1);
                if (_status == STT_NEW)
                    break;
                colorWipe(COLOR_ORANGE, 0);
                break;
            case 1:
                colorWipe(COLOR_ORANGE, 1);
                if (_status == STT_NEW)
                    break;
                colorWipe(COLOR_YELLOW, 0);
                break;
            case 2:
                colorWipe(COLOR_GREEN, 1);
                if (_status == STT_NEW)
                    break;
                colorWipe(COLOR_BLUE, 0);
                break;
            case 3:
                colorWipe(COLOR_VIOLET, 1);
                if (_status == STT_NEW)
                    break;
                colorWipe(COLOR_YELLOW, 0);
                break;
            case 4:
                colorWipe(COLOR_GREEN, 1);
                if (_status == STT_NEW)
                    break;
                colorWipe(COLOR_RED, 0);
                break;

            default:
                break;
            }
            break;
        }
        case 2:
        {
            FadeInOut(g2, r2, b2);
            break;
        }
        case 3:
        {
            CylonBounce(g2, r2, b2, NUM_LEDS * 5 / 100, 50);
            break;
        }
        case 4:
        {
            CylonBounceI(g2, r2, b2, NUM_LEDS * 5 / 100, 50);
            break;
        }
        case 5:
        {
            Pattern3(g2, r2, b2, 1);
            if (_status == STT_NEW)
                break;
            Pattern3(0, 0, 0, 0);
            break;
        }
        case 6:
        {
            Pattern1(g2, r2, b2);
            break;
        }
        case 7:
        {
            switch (_color % 5)
            {
            case 0:
                Pattern2(COLOR_RED, COLOR_ORANGE);
                break;
            case 1:
                Pattern2(COLOR_ORANGE, COLOR_YELLOW);
                break;
            case 2:
                Pattern2(COLOR_GREEN, COLOR_BLUE);
                break;
            case 3:
                Pattern2(COLOR_VIOLET, COLOR_YELLOW);
                break;
            case 4:
                Pattern2(COLOR_GREEN, COLOR_RED);
                break;

            default:
                break;
            }
            break;
        }
        }
        if (_status == STT_NEW)
        {
            _status = STT_NOTSAVED;
            _cnt = 0;
        }
    }
}
ISR(ADC_INT_FUCTION, INTERRUPT_ADC)
{
    _delay = (ADCRH << 4) | ADCRL;
    clrb(ADCCON0, ADCF);
}

ISR(PIN_INT_FUCTION, INTERRUPT_PIN)
{
    // effect change
    if (PIF == 0x08 && _status != STT_OLD)
    {
        if (++effect > NUM_EFFECT)
            effect = 0;

        setAll(0, 0, 0);
        _delay_us(500000);
    }
    // color change
    else if (PIF == 0x10 && _status != STT_OLD)
    {
        _color++;
        _status = STT_NOTSAVED;
        if (effect == 1)
        {
            if (_color >= 5)
            {
                _color = 0;
            }
        }
        else if (_color >= 8)
        {
            _color = 0;
        }

        setAll(0, 0, 0);
        changeColor();

        _delay_us(500000);
    }
    PIF = 0x00; // clear interrupt flag
}

ISR(timer2, INTERRUPT_TIMER2) // every 0.25s
{
    _cnt++;

    if (_cnt == 40) // every 10s
    {
        if (_status == STT_NOTSAVED)
        {
            Erase_APROM(ADDR_COLOR);
            Erase_APROM(ADDR_EFF);
            APROM_write_byte(ADDR_EFF, effect);   // write effect to APROM
            APROM_write_byte(ADDR_COLOR, _color); // write _color to APROM
            clrb(EIE, EPI);                       // clear pin interrupt
            _status = STT_OLD;
        }
        _cnt == 0;
    }
    if (_cnt % 4 == 0) // every 0.5s
    {
        uint16_t x = NUM_LEDS;
        if (inbit(SW_PORT, SW50_PIN) == 0)
            NUM_LEDS = 50;
        else if (inbit(SW_PORT, SW100_PIN) == 0)
            NUM_LEDS = 100;
        else if (inbit(SW_PORT, SW150_PIN) == 0)
            NUM_LEDS = 150;
        else if (inbit(SW_PORT, SW200_PIN) == 0)
            NUM_LEDS = 200;

        if (NUM_LEDS != x)
        {
            clearAll();
        }
        if (_status == STT_OLD)
        {
            daobit(LED2_PORT, LED2_PIN);
        }

        setb(ADCCON0, ADCS);
    }

    if (_status != STT_OLD)
    {
        daobit(LED2_PORT, LED2_PIN);
    }
    clrb(T2CON, TF2); // TF2
}
