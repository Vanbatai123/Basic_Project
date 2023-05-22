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

#define COLOR_RED			0x00, 0xFF, 0x00
#define COLOR_MAGENTA		0x00, 0xFF, 0xFF
#define COLOR_BLUE			0x00, 0x00, 0xFF
#define COLOR_CYAN			0xFF, 0x00, 0xFF
#define COLOR_GREEN			0xFF, 0x00, 0x00
#define COLOR_YELLOW		0xFF, 0xFF, 0x00
#define COLOR_WHITE			0xFF, 0xFF, 0xFF

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


/**********************Effects**********************************/
// void RGBLoop();
void FadeInOut(uint8_t green, uint8_t red, uint8_t blue);
void Strobe(uint8_t green, uint8_t red, uint8_t blue, int16_t StrobeCount, int16_t FlashDelay, int16_t EndPause);
void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t SpeedDelay, int16_t ReturnDelay);
void Twinkle(uint8_t green, uint8_t red, uint8_t blue, int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne);
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