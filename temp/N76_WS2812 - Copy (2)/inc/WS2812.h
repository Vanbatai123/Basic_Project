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
// #define RANDOM_GRB 	random(255), random(255), random(255)

// #define COLOR_RED			0x00, 0xFF, 0x00
// #define COLOR_MAGENTA		0x00, 0xFF, 0xFF
// #define COLOR_BLUE			0x00, 0x00, 0xFF
// #define COLOR_CYAN			0xFF, 0x00, 0xFF
// #define COLOR_GREEN			0xFF, 0x00, 0x00
// #define COLOR_YELLOW		0xFF, 0xFF, 0x00
// #define COLOR_WHITE			0xFF, 0xFF, 0xFF

#define COLOR_1				COLOR_RED		
#define COLOR_2				COLOR_MAGENTA	
#define COLOR_3				COLOR_BLUE		
#define COLOR_4				COLOR_CYAN		
#define COLOR_5				COLOR_GREEN		
#define COLOR_6				COLOR_YELLOW	
#define COLOR_7				COLOR_WHITE		

#define _nop_() __asm__("nop")

#define	STT_OLD			0x00
#define	STT_NEW			0x12
#define	STT_SAVED		0x34
#define	STT_NOTSAVED	0x56

#define CHECK_EFF	if(curEffect != effect || curColor != _color){_status = STT_NEW;return;}


/**********************Effects**********************************/
// void RGBLoop();
void FadeInOut(uint8_t green, uint8_t red, uint8_t blue);
void Strobe(uint8_t green, uint8_t red, uint8_t blue, int16_t StrobeCount, int16_t EndPause);
void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t ReturnDelay);
// void Twinkle(uint8_t green, uint8_t red, uint8_t blue, int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne);
// void TwinkleRandom(int16_t Count, uint8_t OnlyOne);
// void Sparkle(uint8_t green, uint8_t red, uint8_t blue);
// void SnowSparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SparkleDelay);
// void RunningLights(uint8_t green, uint8_t red, uint8_t blue, int16_t WaveDelay);
void colorWipe(uint8_t green, uint8_t red, uint8_t blue, uint8_t orient);
void rainbowCycle();
// used by rainbowCycle and theaterChaseRainbow
uint8_t *Wheel(uint8_t WheelPos);
void theaterChase(uint8_t green, uint8_t red, uint8_t blue);
void theaterChaseRainbow();
void Pattern3(uint8_t g, uint8_t r, uint8_t b, uint8_t orient);
void fadeToBlackBy(uint16_t pixel, uint8_t fadeBy);
void meteorRain(uint8_t red, uint8_t green, uint8_t blue, uint8_t meteorSize, uint8_t meteorTrailDecay, uint8_t meteorRandomDecay);
void Fire(int Cooling, int Sparking);
void setPixelHeatColor(int Pixel, uint8_t temperature);
void sinWave(uint8_t green, uint8_t red, uint8_t blue);
/**********************Common function**********************************/
// Apply LED color changes
void showStrip();
// Set a LED color (not yet visible)
void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue);
// Set all LEDs to a given color and apply it (visible)
void setAll(uint8_t green, uint8_t red, uint8_t blue);
// clean all led
void clearAll();

uint16_t random(uint16_t howbig);
uint16_t random2(uint16_t howsmall, uint16_t howbig);

#endif