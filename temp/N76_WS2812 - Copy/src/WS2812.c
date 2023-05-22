/**
 * WS2812.c
 * Created: 2023/03/30
 * Author: TaiVB
 */

#include <include.h>
#include <stdlib.h>
#include <WS2812.h>

extern uint16_t NUM_LEDS;
extern uint16_t _delay;
extern uint8_t effect;
extern uint8_t _status;

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
	
	setAll(0x00, 0x00, 0x00);
	showStrip();
	showStrip();
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



void Pattern3(uint8_t g,uint8_t r,uint8_t b)
{
	for (int i = 0; i < (NUM_LEDS / 2); i++)
	{
		setPixel((NUM_LEDS / 2) + i, g, r, b);
		setPixel(((NUM_LEDS / 2) - 1) - i, g, r, b);
		showStrip();
		_delay_ms(DELAY2);
	}
	for (int i = 0; i < (NUM_LEDS / 2); i++)
	{
		setPixel((NUM_LEDS / 2) + i, 0,0,0);
		setPixel(((NUM_LEDS / 2) - 1) - i,  0,0,0);
		showStrip();
		_delay_ms(DELAY2);
	}
	_delay_ms(300);
}