/**
 * WS2812.h
 * Created: 2023/03/30
 * Author: TaiVB
 */

#ifndef WS2812_H
#define WS2812_H

#define true 		1
#define false 		0

#define LED_PIN		6
#define LED_PORT	P0
#define LED_PxM1	P0M1
#define LED_PxM2	P0M2

#define BTNE_PIN	4
#define BTNE_PORT	P1
#define BTNE_PxM1	P1M1
#define BTNE_PxM2	P1M2

#define BTNC_PIN	3
#define BTNC_PORT	P1
#define BTNC_PxM1	P1M1
#define BTNC_PxM2	P1M2

#define SW200_PIN	3
#define SW150_PIN	2
#define SW100_PIN	1
#define SW50_PIN	0
#define SW_PORT		P0
#define SW_PxM1		P0M1
#define SW_PxM2		P0M2
#define ADDR_EFF	0x3000
#define ADDR_COLOR	0x3001
#define DELAY		200/NUM_LEDS * _delay / 10 + 1
#define DELAY2		200/NUM_LEDS * _delay / 100 + 1
<<<<<<< HEAD
=======
#define DELAY3		200/NUM_LEDS * _delay / 300 + 1
// #define RANDOM_GRB 	random(255), random(255), random(255)
>>>>>>> 70fbbfa16cd8480cff11e056a004b56e6d185941

#define COLOR_RED			3,		239,	7
#define COLOR_VIOLET		64,		160,    198
#define COLOR_ORANGE		153,	255,	0
#define COLOR_YELLOW		235, 	255, 	0
#define COLOR_GREEN			185, 	29, 	84
#define COLOR_BLUE  		13, 	21, 	247
#define COLOR_INDIGO		0,		110,	255
#define COLOR_WHITE		    244,	253,	220

#define _nop_() __asm__("nop")

#define	STT_OLD			0x00
#define	STT_NEW			0x12
#define	STT_SAVED		0x34
#define	STT_NOTSAVED	0x56

#define CHECK_EFF	if(curEffect != effect || curColor != _color){_status = STT_NEW;return;}


/**********************Effects**********************************/
void FadeInOut(uint8_t green, uint8_t red, uint8_t blue);
void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t ReturnDelay);
void CylonBounceI(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t ReturnDelay);
void colorWipe(uint8_t green, uint8_t red, uint8_t blue, uint8_t orient);
void rainbowCycle();
void Pattern3(uint8_t g, uint8_t r, uint8_t b, uint8_t orient);
void Pattern1(uint8_t g, uint8_t r, uint8_t b);
// void Pattern2(uint8_t g, uint8_t r, uint8_t b);
void Pattern2(uint8_t g, uint8_t r, uint8_t b,uint8_t g2, uint8_t r2, uint8_t b2);

/**********************Common function**********************************/
// Apply LED color changes
void showStrip();
// Set a LED color (not yet visible)
void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue);
// Set all LEDs to a given color and apply it (visible)
void setAll(uint8_t green, uint8_t red, uint8_t blue);
// clean all led
void clearAll();

#endif