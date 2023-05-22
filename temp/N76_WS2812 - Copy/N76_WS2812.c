/*
 * Light_WS2812 library example - RGB_blinky
 *
 * cycles one LED through green, red, blue
 *
 * This example is configured for a ATtiny85 with PLL clock fuse set and
 * the WS2812 string connected to PB4.
 */

// #include <stdio.h>
// #include "C:\Program Files\SDCC\include\math.h"
#include <stdlib.h>
#include <math.h>
#include <include.h>
#include <N76_Flash.h>
#include <WS2812.h>

#define LED2_PIN 5
#define LED2_PORT P0
#define LED2_PxM1 P0M1
#define LED2_PxM2 P0M2

uint16_t NUM_LEDS;
uint16_t _delay;
uint8_t effect;
uint8_t _status = STT_NOTSAVED;
uint8_t _cnt;

void TIM2_begin(uint8_t tim_div_x, uint16_t reload)
{
	// T = (65535 - reload) * div / F_CPU
	// reload = 65535 - (T * F_CPU / div)

	// 	TIMER2_DIV_256;
	T2MOD &= ~0x70;
	T2MOD |= tim_div_x;
	// T2MOD&=0xDF;
	// 	TIMER2_Auto_Reload_Delay_Mode;
	T2CON &= ~(1 << 0);
	T2MOD |= (1 << 7);
	T2MOD |= (1 << 3);

	// 	RCMP2L = TIMER_DIV128_VALUE_100ms;
	RCMP2L = reload; // 100ms
	// 	RCMP2H = TIMER_DIV128_VALUE_100ms>>8;
	RCMP2H = reload >> 8;
	TL2 = 0;
	TH2 = 0;

	setb(EIE, ET2); // Enable Timer2 interrupt
	sei();
	setb(T2CON, TR2); // Timer2 run
}

void main(void)
{
	effect = APROM_read_byte(ADDR_EFF);
	if (effect >= 11)
		effect = 0;

	clrb(LED2_PxM1, LED2_PIN);
	setb(LED2_PxM2, LED2_PIN);
	clrb(LED2_PORT, LED2_PIN);
	// int x = sinf(1);
	CKDIV = 0x00; // 16MHz
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

	clrb(BTN_PxM1, BTN_PIN);
	setb(BTN_PxM2, BTN_PIN);
	setb(BTN_PORT, BTN_PIN);

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
	setb(PICON, PIT45);
	setb(PINEN, BTN_PIN); // enable falling edge
	clrb(PIPEN, BTN_PIN); // disable rasing edge

	// // enable external interrupt
	setb(EIE, EPI); // set external interrupt 0 at falling edge

	clearAll();
	TIM2_begin(0x60, 65536 - 15625);
	sei(); // Enable global interrupt
	int i= sinf(1);
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
			// RGBLoop - no parameters
			FadeInOut(COLOR_1);
			if (_status == STT_NEW)
				break;
			FadeInOut(COLOR_2);
			if (_status == STT_NEW)
				break;
			FadeInOut(COLOR_3);
			if (_status == STT_NEW)
				break;
			FadeInOut(COLOR_4);
			if (_status == STT_NEW)
				break;
			FadeInOut(COLOR_5);
			if (_status == STT_NEW)
				break;
			FadeInOut(COLOR_6);
			if (_status == STT_NEW)
				break;
			FadeInOut(COLOR_7);
			break;
		}
		case 1:
		{
			// Strobe - Color (green, red, blue), number of flashes, flash speed, end pause
			Strobe(0xFF, 0xFF, 0xFF, 10, 50, 1000);
			break;
		}

		case 2:
		{
			// CylonBounce - Color (green, red, blue), eye size, speed _delay_ms, end pause
			CylonBounce(RANDOM_GRB, 4, 10, 50);
			break;
		}

		case 3:
		{
			// Twinkle - Color (green, red, blue), count, speed _delay_ms, only one twinkle (true/false)
			Twinkle(0xFF, 0x00, 0x00, 10, 100, false);
			break;
		}

		case 4:
		{
			// TwinkleRandom - twinkle count, speed _delay_ms, only one (true/false)
			TwinkleRandom(NUM_LEDS / 5 * 2, 100, false);
			break;
		}

		case 5:
		{
			// Sparkle - Color (green, red, blue), speed _delay_ms
			Sparkle(0xFF, 0xFF, 0xFF, 0);
			break;
		}

		case 6:
		{
			// SnowSparkle - Color (green, red, blue), sparkle _delay_ms, speed _delay_ms
			SnowSparkle(0x10, 0x10, 0x10, 20, random2(100, 1000));
			break;
		}

		case 7:
		{
			// colorWipe - Color (green, red, blue), speed _delay_ms
			colorWipe(RANDOM_GRB, 50);
			if (_status == STT_NEW)
				break;
			colorWipe(0x00, 0x00, 0x00, 50);
			break;
		}

		case 8:
		{
			// rainbowCycle - speed _delay_ms
			rainbowCycle(20);
			break;
		}

		case 9:
		{
			// theatherChase - Color (green, red, blue), speed _delay_ms
			theaterChase(RANDOM_GRB, 50);
			break;
		}

		case 10:
		{
			// theaterChaseRainbow - Speed _delay_ms
			theaterChaseRainbow(50);
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
	if (PIF == 0x10 && _status != STT_OLD)
	{
		if (++effect >= 11)
			effect = 0;
		clearAll();
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
			Erase_APROM(ADDR_EFF);
			APROM_write_byte(ADDR_EFF, effect); // write effect to APROM
			clrb(EIE, EPI);						// clear pin interrupt
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
