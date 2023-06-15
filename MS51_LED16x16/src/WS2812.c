/**
 * WS2812.c
 * Created: 2023/03/30
 * Author: TaiVB
 */

#include <include.h>
#include <stdlib.h>
#include <WS2812.h>
#include <math.h>

__xdata extern uint8_t leds[768];


extern uint16_t NUM_LEDS;
extern uint16_t _delay;
extern uint8_t effect;
extern uint8_t _color;
extern uint8_t _status;
uint8_t curColor;
uint8_t curEffect;

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
	uint16_t i;
	for (i = 0; i < 300; i++)
	{
		LED__SendByte_(0);
		LED__SendByte_(0);
		LED__SendByte_(0);
	}
}

void showStrip()
{
	uint8_t i;
	for (i = 0; i < NUM_LEDS; ++i)
	{
		LED__SendByte_(leds[i * 3]);
		LED__SendByte_(leds[i * 3 + 1]);
		LED__SendByte_(leds[i * 3 + 2]);
	}
}

// Set a LED color (not yet visible)
void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue)
{
	leds[Pixel * 3] = green;
	leds[Pixel * 3 + 1] = red;
	leds[Pixel * 3 + 2] = blue;
}

// Set all LEDs to a given color and apply it (visible)
void setAll(uint8_t green, uint8_t red, uint8_t blue)
{
	uint8_t i;
	for (i = 0; i < NUM_LEDS; ++i)
	{
		setPixel(i, green, red, blue);
	}
}
