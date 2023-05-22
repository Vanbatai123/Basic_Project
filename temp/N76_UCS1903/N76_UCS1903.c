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
#include "include.h"
#include "N76_Flash.h"

#define true 		1
#define false 		0

#define LED_PIN		6
#define LED_PORT	P0
#define LED_PxM1	P0M1
#define LED_PxM2	P0M2

#define BTN_PIN		4
#define BTN_PORT	P0
#define BTN_PxM1	P0M1
#define BTN_PxM2	P0M2

#define SW200_PIN	3
#define SW150_PIN	2
#define SW100_PIN	1
#define SW50_PIN	0
#define SW_PORT		P0
#define SW_PxM1		P0M1
#define SW_PxM2		P0M2
#define ADDR_EFF	0x2000
#define DELAY		200/NUM_LEDS * _delay / 10 + 1
#define DELAY2		200/NUM_LEDS * _delay / 100 + 1
#define RANDOM_GRB 	random(255), random(255), random(255)
#define _nop_() __asm__("nop")

#define	STT_OLD			0x00
#define	STT_NEW			0x12
#define	STT_SAVED		0x34
#define	STT_NOTSAVED	0x56

uint16_t NUM_LEDS =	10;
uint16_t _delay =	4096;
uint8_t effect=0;
uint8_t _status=0;
uint8_t cnt=0;

// void RGBLoop();
void FadeInOut(uint8_t green, uint8_t red, uint8_t blue);
void Strobe(uint8_t green, uint8_t red, uint8_t blue, int16_t StrobeCount, int16_t FlashDelay, int16_t EndPause);
void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t SpeedDelay, int16_t ReturnDelay);
// void Twinkle(uint8_t green, uint8_t red, uint8_t blue, int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne);
void TwinkleRandom(int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne);
void Sparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay);
void SnowSparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SparkleDelay, int16_t SpeedDelay);
// void RunningLights(uint8_t green, uint8_t red, uint8_t blue, int16_t WaveDelay);
void colorWipe(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay);
void rainbowCycle(int16_t SpeedDelay);
// used by rainbowCycle and theaterChaseRainbow
uint8_t *Wheel(uint8_t WheelPos);
void theaterChase(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay);
void theaterChaseRainbow(int16_t SpeedDelay);
// *** REPLACE TO HERE ***
// ***************************************
// ** FastLed/NeoPixel Common Functions **
// ***************************************
// Apply LED color changes
void showStrip();
// Set a LED color (not yet visible)
void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue);
// Set all LEDs to a given color and apply it (visible)
void setAll(uint8_t green, uint8_t red, uint8_t blue);

uint16_t random(uint16_t howbig)
{
	if (howbig == 0)
	{
		return 0;
	}
	return rand() % howbig;
}

uint16_t random2(uint16_t howsmall, uint16_t howbig)
{
	if (howsmall >= howbig)
	{
		return howsmall;
	}
	uint16_t diff = howbig - howsmall;
	return random(diff) + howsmall;
}

void LED__SendZero_()
{
	setb(LED_PORT, LED_PIN);
	_nop_();
	_nop_();
	clrb(LED_PORT, LED_PIN);
	_nop_();
	_nop_();
	_nop_();
	_nop_();
}
void LED__SendOne_()
{
	setb(LED_PORT, LED_PIN);
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	clrb(LED_PORT, LED_PIN);
}
void LED__SendByte_(uint8_t dat)
{
	if (dat & 0x80)
		LED__SendOne_();
	else
		LED__SendZero_();
	if (dat & 0x40)
		LED__SendOne_();
	else
		LED__SendZero_();
	if (dat & 0x20)
		LED__SendOne_();
	else
		LED__SendZero_();
	if (dat & 0x10)
		LED__SendOne_();
	else
		LED__SendZero_();
	if (dat & 0x08)
		LED__SendOne_();
	else
		LED__SendZero_();
	if (dat & 0x04)
		LED__SendOne_();
	else
		LED__SendZero_();
	if (dat & 0x02)
		LED__SendOne_();
	else
		LED__SendZero_();
	if (dat & 0x01)
		LED__SendOne_();
	else
		LED__SendZero_();
}

void clearAll()
{
	for (uint16_t i = 0; i < 300; i++)
	{
		LED__SendByte_(0);
		LED__SendByte_(0);
		LED__SendByte_(0);
	}
}

void showStrip()
{
	for (uint8_t i = 0; i < NUM_LEDS; ++i)
	{
		uint8_t g, r, b;
		g = xRamRead(i * 3);
		r = xRamRead(i * 3 + 1);
		b = xRamRead(i * 3 + 2);

		LED__SendByte_(g);
		LED__SendByte_(r);
		LED__SendByte_(b);
	}
}

// Set a LED color (not yet visible)
void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue)
{
	xRamWrite(Pixel * 3, green);
	xRamWrite(Pixel * 3 + 1, red);
	xRamWrite(Pixel * 3 + 2, blue);
}

// Set all LEDs to a given color and apply it (visible)
void setAll(uint8_t green, uint8_t red, uint8_t blue)
{
	for (int16_t i = 0; i < NUM_LEDS; ++i)
	{
		setPixel(i, green, red, blue);
	}
}
void FadeInOut(uint8_t green, uint8_t red, uint8_t blue)
{
	uint8_t g, r, b;
	uint8_t curEffect = effect;

	for (int16_t k = 0; k < 255; k = k + NUM_LEDS/50)
	{
		if (curEffect != effect) {_status=STT_NEW;return;}
		
		r = k * red / 256;
		g = k * green / 256;
		b = k * blue / 256;
		setAll(g, r, b);
		showStrip();
		_delay_ms(DELAY2);
	}

	for (int16_t k = 255; k > 0; k = k - NUM_LEDS/25)
	{
		if (curEffect != effect) {_status=STT_NEW;return;}
		r = (k / 256.0) * red;
		g = (k / 256.0) * green;
		b = (k / 256.0) * blue;
		setAll(g, r, b);
		showStrip();
		_delay_ms(DELAY2);
	}
}

void Strobe(uint8_t green, uint8_t red, uint8_t blue, int16_t StrobeCount, int16_t FlashDelay, int16_t EndPause)
{
	uint8_t curEffect = effect;
	for (int16_t j = 0; j < StrobeCount; j++)
	{
		if (curEffect != effect) {_status=STT_NEW;return;}
		setAll(green, red, blue);
		showStrip();
		_delay_ms(DELAY2);
		setAll(0, 0, 0);
		showStrip();
		_delay_ms(DELAY2);
	}
	_delay_ms(EndPause);
}

void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t SpeedDelay, int16_t ReturnDelay)
{
	uint8_t curEffect = effect;
	for (int16_t i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	{
		setAll(0, 0, 0);
		setPixel(i, red / 10, green / 10, blue / 10);
		for (int16_t j = 1; j <= EyeSize; j++)
		{
			if (curEffect != effect) {_status=STT_NEW;return;}
			setPixel(i + j, green, red, blue);
		}
		setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
		showStrip();
		_delay_ms(DELAY2);
	}

	_delay_ms(ReturnDelay);

	for (int16_t i = NUM_LEDS - EyeSize - 2; i > 0; i--)
	{
		setAll(0, 0, 0);
		setPixel(i, red / 10, green / 10, blue / 10);
		for (int16_t j = 1; j <= EyeSize; j++)
		{
			if (curEffect != effect) {_status=STT_NEW;return;}
			setPixel(i + j, green, red, blue);
		}
		setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
		showStrip();
		_delay_ms(DELAY2);
	}

	_delay_ms(ReturnDelay);
}

void Twinkle(uint8_t green, uint8_t red, uint8_t blue, int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne)
{
	uint8_t curEffect = effect;
	setAll(0, 0, 0);
	for (int16_t i = 0; i < Count; i++)
	{
		if (curEffect != effect) {_status=STT_NEW;return;}
		setPixel(random(NUM_LEDS), green, red, blue);
		showStrip();
		_delay_ms(SpeedDelay);
		if (OnlyOne)
		{
			setAll(0, 0, 0);
		}
	}

	_delay_ms(SpeedDelay);
}

void TwinkleRandom(int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne)
{
	uint8_t curEffect = effect;
	setAll(0, 0, 0);
	showStrip();
	for (int16_t i = 0; i < Count; i++)
	{
		if (curEffect != effect) {_status=STT_NEW;return;}
		setPixel(random(NUM_LEDS), random(255), random(255), random(255));
		showStrip();
		_delay_ms(DELAY);
		if (OnlyOne)
		{
			setAll(0, 0, 0);
		}
	}

	_delay_us(SpeedDelay);
}

void Sparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay)
{
	int16_t Pixel = random(NUM_LEDS);
	setPixel(Pixel, green, red, blue);
	showStrip();
	_delay_ms(DELAY);
	setPixel(Pixel, 0, 0, 0);
}

void SnowSparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SparkleDelay, int16_t SpeedDelay)
{
	setAll(green, red, blue);

	int16_t Pixel = random(NUM_LEDS);
	setPixel(Pixel, 0xFF, 0xFF, 0xFF);
	showStrip();
	_delay_ms(SparkleDelay);
	setPixel(Pixel, green, red, blue);
	showStrip();
	_delay_ms(DELAY);
}

void colorWipe(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay)
{	
	uint8_t curEffect = effect;
	for (uint16_t i = 0; i < NUM_LEDS; i++)
	{
		if (curEffect != effect) {_status=STT_NEW;return;}
		setPixel(i, green, red, blue);
		showStrip();
		_delay_ms(DELAY2+1);
	}
}

void rainbowCycle(int16_t SpeedDelay)
{
	uint8_t *c;
	uint16_t i, j;
	uint8_t curEffect = effect;

	for (j = 0; j < 256 * 5; j++)
	{ // 5 cycles of all colors on wheel
		for (i = 0; i < NUM_LEDS; i++)
		{
			if (curEffect != effect) {_status=STT_NEW;return;}
			c = Wheel(((i * 256 / NUM_LEDS) + j) & 255);
			setPixel(i, *c, *(c + 1), *(c + 2));
		}
		showStrip();
		_delay_ms(DELAY);
	}
}

// used by rainbowCycle and theaterChaseRainbow
uint8_t *Wheel(uint8_t WheelPos)
{
	static uint8_t c[3];
	uint8_t curEffect = effect;

	if (WheelPos < 85)
	{
		c[0] = WheelPos * 3;
		c[1] = 255 - WheelPos * 3;
		c[2] = 0;
	}
	else if (WheelPos < 170)
	{
		WheelPos -= 85;
		c[0] = 255 - WheelPos * 3;
		c[1] = 0;
		c[2] = WheelPos * 3;
	}
	else
	{
		WheelPos -= 170;
		c[0] = 0;
		c[1] = WheelPos * 3;
		c[2] = 255 - WheelPos * 3;
	}

	return c;
}

void theaterChase(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay)
{
	uint8_t curEffect = effect;

	for (int16_t j = 0; j < 10; j++)
	{ // do 10 cycles of chasing
		for (int16_t q = 0; q < 3; q++)
		{
			for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
			{
				if (curEffect != effect) {_status=STT_NEW;return;}
				setPixel(i + q, green, red, blue); // turn every third pixel on
			}
			showStrip();

			_delay_ms(DELAY);

			for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
			{
				if (curEffect != effect) {_status=STT_NEW;return;}
				setPixel(i + q, 0, 0, 0); // turn every third pixel off
			}
		}
	}
}

void theaterChaseRainbow(int16_t SpeedDelay)
{
	uint8_t *c;
	uint8_t curEffect = effect;

	for (int16_t j = 0; j < 256; j++)
	{ // cycle all 256 colors in the wheel
		for (int16_t q = 0; q < 3; q++)
		{
			for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
			{
				if (curEffect != effect) {_status=STT_NEW;return;}
				c = Wheel((i + j) % 255);
				setPixel(i + q, *c, *(c + 1), *(c + 2)); // turn every third pixel on
			}
			showStrip();

			_delay_ms(DELAY);

			for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
			{
				if (curEffect != effect) {_status=STT_NEW;return;}
				setPixel(i + q, 0, 0, 0); // turn every third pixel off
			}
		}
	}
}


void TIM2_begin(uint8_t tim_div_x, uint16_t reload)
{
	
	// T = (65535 - reload) * div / F_CPU
	// reload = 65535 - (T * F_CPU / div)

	// 	TIMER2_DIV_512;
	T2MOD&=~0x70;
	T2MOD|=tim_div_x;
	// T2MOD&=0xDF;
	// 	TIMER2_Auto_Reload_Delay_Mode;
	T2CON&=~(1<<0);T2MOD|=(1<<7);T2MOD|=(1<<3);

	// 	RCMP2L = TIMER_DIV128_VALUE_100ms;
	RCMP2L = reload;//100ms
	// 	RCMP2H = TIMER_DIV128_VALUE_100ms>>8;
	RCMP2H = reload>>8;
	// 	TL2 = 0;
	// 	TH2 = 0;
	TL2 = 0;
	TH2 = 0;

    // set_ET2;                                    // Enable Timer2 interrupt
    setb(EIE, 7);                                    // Enable Timer2 interrupt
	//   set_EA;
	sei();
    // set_TR2;                                    // Timer2 run
    setb(T2CON, 2);                                    // Timer2 run
}

void main(void)
{
	effect=APROM_read_byte(ADDR_EFF);
	if (effect>=12) effect=0;
	
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
	
	//ADC
	ADCCON0&=0xF0;
	ADCCON0|=0x07;
	
	// P11_Input_Mode;
	clrb(P1M2, 1);
	setb(P1M1, 1);
	AINDIDS=0x00;
	AINDIDS|=(1<<7);
	ADCCON1|=(1<<0);
	setb(IE, EADC);//enable interruppt ADC

	//Pin interrupt
	setb(PICON, 6);
	setb(PINEN, BTN_PIN);// enable falling edge
	clrb(PIPEN, BTN_PIN);// disable rasing edge

    // // enable external interrupt
    setb(EIE , 1); // set external interrupt 0 at falling edge

	clearAll();
	TIM2_begin(0x70, 65536-15625);
    sei();           // Enable global interrupt
	
	setb(ADCCON0, 6);
	if (inbit(SW_PORT, SW50_PIN) == 0) NUM_LEDS = 50;
	else if (inbit(SW_PORT, SW100_PIN) == 0) NUM_LEDS = 100;
	else if (inbit(SW_PORT, SW150_PIN) == 0) NUM_LEDS = 150;
	else if (inbit(SW_PORT, SW200_PIN) == 0) NUM_LEDS = 200;

	while (1)
	{
		switch (effect)
		{
			case 0:
			{
				// RGBLoop - no parameters
				FadeInOut(0x00, 0xFF, 0x00); // r
				if (_status==STT_NEW) break;
				FadeInOut(0xFF, 0x00, 0x00); // g
				if (_status==STT_NEW) break;
				FadeInOut(0x00, 0x00, 0xFF); // b
				break;
			}
			case 1:
			{
				// FadeInOut - Color (green, red, blue)
				FadeInOut( random(0xFF), random(0xFF),  random(0xFF)); // green
				break;
			}

			case 2:
			{
				// Strobe - Color (green, red, blue), number of flashes, flash speed, end pause
				Strobe(0xFF, 0xFF, 0xFF, 10, 50, 1000);
				break;
			}

			case 3:
			{
				// CylonBounce - Color (green, red, blue), eye size, speed _delay_ms, end pause
				CylonBounce(RANDOM_GRB, 4, 10, 50);
				break;
			}

			case 4:
			{
				// Twinkle - Color (green, red, blue), count, speed _delay_ms, only one twinkle (true/false)
				Twinkle(0xFF, 0x00, 0x00, 10, 100, false);
				break;
			}

			case 5:
			{
				// TwinkleRandom - twinkle count, speed _delay_ms, only one (true/false)
				TwinkleRandom(NUM_LEDS/5*2, 100, false);
				break;
			}

			case 6:
			{
				// Sparkle - Color (green, red, blue), speed _delay_ms
				Sparkle(0xFF, 0xFF, 0xFF, 0);
				break;
			}

			case 7:
			{
				// SnowSparkle - Color (green, red, blue), sparkle _delay_ms, speed _delay_ms
				SnowSparkle(0x10, 0x10, 0x10, 20, random2(100, 1000));
				break;
			}

			case 8:
			{
				// colorWipe - Color (green, red, blue), speed _delay_ms
				colorWipe(RANDOM_GRB, 50);
				if (_status==STT_NEW) break;
				colorWipe(0x00,0x00,0x00, 50);
				break;
			}

			case 9:
			{
				// rainbowCycle - speed _delay_ms
				rainbowCycle(20);
				break;
			}

			case 10:
			{
				// theatherChase - Color (green, red, blue), speed _delay_ms
				theaterChase(RANDOM_GRB, 50);
				break;
			}

			case 11:
			{
				// theaterChaseRainbow - Speed _delay_ms
				theaterChaseRainbow(50);
				break;
			}
		}
		if (_status == STT_NEW)
		{
				_status = STT_NOTSAVED;
				cnt = 0;
		}
	}
}

ISR(ADC_INT_FUCTION, INTERRUPT_ADC)
{
	_delay = (ADCRH << 4) | ADCRL;
	clrb(ADCCON0, 7);
}

ISR(PIN_INT_FUCTION, INTERRUPT_PIN)
{
	if (PIF == 0x10)
	{
		if (++effect>=12)	effect=0;
		clearAll();
	}
	PIF = 0x00; // clear interrupt flag
	_delay_us(500000);
}
ISR(timer2, INTERRUPT_TIMER2)
{
	uint16_t x=NUM_LEDS;
	if (_status == STT_NOTSAVED)
		cnt++;
	if (cnt == 20 && _status == STT_NOTSAVED)
	{
		Erase_APROM(ADDR_EFF);
		APROM_write_byte(ADDR_EFF, effect);
		_status = STT_OLD;
		cnt == 0;
	}

	if (inbit(SW_PORT, SW50_PIN) == 0) NUM_LEDS = 50;
	else if (inbit(SW_PORT, SW100_PIN) == 0) NUM_LEDS = 100;
	else if (inbit(SW_PORT, SW150_PIN) == 0) NUM_LEDS = 150;
	else if (inbit(SW_PORT, SW200_PIN) == 0) NUM_LEDS = 200;
	if (NUM_LEDS != x) clearAll();

	clrb(T2CON, 7);//TF2
	setb(ADCCON0, 6);
}
