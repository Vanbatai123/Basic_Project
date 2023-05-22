/**
 * WS2812.c
 * Created: 2023/03/30
 * Author: TaiVB
 */

#include <include.h>
#include <stdlib.h>
#include <WS2812.h>

__xdata extern uint8_t leds[600];
uint8_t mang[13] = {1, 4, 8, 20, 50, 95, 100, 95, 50, 20, 8, 4, 1};

// __xdata uint8_t curNum = NUM_LEDS;

extern uint16_t NUM_LEDS;
extern uint16_t _delay;
extern uint8_t effect;
extern uint8_t _color;
extern uint8_t curEffect;
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
}

void showStrip()
{
	for (uint8_t i = 0; i < NUM_LEDS; ++i)
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
	for (int16_t i = 0; i < NUM_LEDS; ++i)
	{
		setPixel(i, green, red, blue);
	}
}
void FadeInOut(uint8_t green, uint8_t red, uint8_t blue)
{
	uint8_t g, r, b;
	uint8_t curEffect = effect;
	uint8_t curColor = _color;


	for (int16_t k = 0; k < 255; k = k + NUM_LEDS / 50)
	{
		CHECK_EFF;

		r = k * red / 256;
		g = k * green / 256;
		b = k * blue / 256;
		setAll(g, r, b);
		showStrip();
		_delay_ms(DELAY2);
	}

	for (int16_t k = 255; k > 0; k = k - NUM_LEDS / 25)
	{
		CHECK_EFF;
		r = (k / 256.0) * red;
		g = (k / 256.0) * green;
		b = (k / 256.0) * blue;
		setAll(g, r, b);
		showStrip();
		_delay_ms(DELAY2);
	}
}

void Strobe(uint8_t green, uint8_t red, uint8_t blue, int16_t StrobeCount, int16_t EndPause)
{
	uint8_t curEffect = effect;
	uint8_t curColor = _color;
	for (int16_t j = 0; j < StrobeCount; j++)
	{
		CHECK_EFF;
		setAll(green, red, blue);
		showStrip();
		_delay_ms(DELAY2);
		setAll(0, 0, 0);
		showStrip();
		_delay_ms(DELAY2);
	}
	_delay_ms(EndPause);
}

void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t ReturnDelay)
{
	uint8_t curEffect = effect;
	uint8_t curColor = _color;
	for (int16_t i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	{
		setAll(0, 0, 0);
		setPixel(i, red / 10, green / 10, blue / 10);
		for (int16_t j = 1; j <= EyeSize; j++)
		{
			CHECK_EFF;
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
			CHECK_EFF;
			setPixel(i + j, green, red, blue);
		}
		setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
		showStrip();
		_delay_ms(DELAY2);
	}

	_delay_ms(ReturnDelay);
}
/*
void Twinkle(uint8_t green, uint8_t red, uint8_t blue, int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne)
{
	uint8_t curEffect = effect;
	uint8_t curColor = _color;
	setAll(0, 0, 0);
	for (int16_t i = 0; i < Count; i++)
	{
		if (curEffect != effect)
		{
			_status = STT_NEW;
			return;
		}
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

void Sparkle(uint8_t green, uint8_t red, uint8_t blue)
{
	int16_t Pixel = random(NUM_LEDS);
	setPixel(Pixel, green, red, blue);
	showStrip();
	_delay_ms(DELAY);
	setPixel(Pixel, 0, 0, 0);
}

void SnowSparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SparkleDelay)
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
*/
void colorWipe(uint8_t green, uint8_t red, uint8_t blue, uint8_t orient)
{
	uint8_t curEffect = effect;
	uint8_t curColor = _color;
	for (uint16_t i = 0; i < NUM_LEDS; i++)
	{
		CHECK_EFF;
		setPixel(orient == 0 ? i : NUM_LEDS - i - 1, green, red, blue);
		showStrip();
		_delay_ms(DELAY2 + 1);
	}
}

void rainbowCycle()
{
	uint8_t r, g, b;
	uint8_t curEffect = effect;
	uint8_t curColor = _color;
	uint8_t WheelPos;

	for (uint16_t j = 0; j < 256 * 5; j++)
	{ // 5 cycles of all colors on wheel
		for (uint16_t i = 0; i < NUM_LEDS; i++)
		{
			CHECK_EFF;
			WheelPos = (((i * 256 / NUM_LEDS) + j) & 255);

			if (WheelPos < 85)
			{
				g = WheelPos * 3;
				r = 255 - WheelPos * 3;
				b = 0;
			}
			else if (WheelPos < 170)
			{
				WheelPos -= 85;
				g = 255 - WheelPos * 3;
				r = 0;
				b = WheelPos * 3;
			}
			else
			{
				WheelPos -= 170;
				g = 0;
				r = WheelPos * 3;
				b = 255 - WheelPos * 3;
			}

			setPixel(i, g, r, b);
		}
		showStrip();
		_delay_ms(DELAY);
	}
}
/*
// used by rainbowCycle and theaterChaseRainbow
uint8_t *Wheel(uint8_t WheelPos)
{
	static uint8_t c[3];
	uint8_t curEffect = effect;
	uint8_t curColor = _color;

	if (WheelPos < 85)
	{
		g = WheelPos * 3;
		r = 255 - WheelPos * 3;
		b = 0;
	}
	else if (WheelPos < 170)
	{
		WheelPos -= 85;
		g = 255 - WheelPos * 3;
		r = 0;
		b = WheelPos * 3;
	}
	else
	{
		WheelPos -= 170;
		g = 0;
		r = WheelPos * 3;
		b = 255 - WheelPos * 3;
	}

	return c;
}
*/
void theaterChase(uint8_t green, uint8_t red, uint8_t blue)
{
	uint8_t curEffect = effect;
	uint8_t curColor = _color;

	for (int16_t j = 0; j < 10; j++)
	{ // do 10 cycles of chasing
		for (int16_t q = 0; q < 3; q++)
		{
			for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
			{
				CHECK_EFF;
				setPixel(i + q, green, red, blue); // turn every third pixel on
			}
			showStrip();

			_delay_ms(DELAY);

			for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
			{
				CHECK_EFF;
				setPixel(i + q, 0, 0, 0); // turn every third pixel off
			}
		}
	}
}

void theaterChaseRainbow()
{
	uint8_t r, b, g;
	uint8_t curEffect = effect;
	uint8_t curColor = _color;
	uint8_t WheelPos;

	for (int16_t j = 0; j < 256; j++)
	{ // cycle all 256 colors in the wheel
		for (int16_t q = 0; q < 3; q++)
		{
			for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
			{
				CHECK_EFF;
				// c = Wheel((i + j) % 255);
				WheelPos = ((i + j) % 255);

				if (WheelPos < 85)
				{
					g = WheelPos * 3;
					r = 255 - WheelPos * 3;
					b = 0;
				}
				else if (WheelPos < 170)
				{
					WheelPos -= 85;
					g = 255 - WheelPos * 3;
					r = 0;
					b = WheelPos * 3;
				}
				else
				{
					WheelPos -= 170;
					g = 0;
					r = WheelPos * 3;
					b = 255 - WheelPos * 3;
				}

				setPixel(i + q, g, r, b);
				// setPixel(i + q, *c, *(c + 1), *(c + 2)); // turn every third pixel on
			}
			showStrip();

			_delay_ms(DELAY);

			for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
			{
				CHECK_EFF;
				setPixel(i + q, 0, 0, 0); // turn every third pixel off
			}
		}
	}
}

void Pattern3(uint8_t g, uint8_t r, uint8_t b, uint8_t orient)
{
	uint8_t curEffect = effect;
	uint8_t curColor = _color;
	for (int i = 0; i < (NUM_LEDS / 2); i++)
	{
		CHECK_EFF;
		setPixel(orient ? (NUM_LEDS / 2) + i : NUM_LEDS - 1 - i, g, r, b);
		setPixel(orient ? ((NUM_LEDS / 2) - 1) - i : i, g, r, b);
		showStrip();
		_delay_ms(DELAY2);
	}
	_delay_ms(300);
}

void fadeToBlackBy(uint16_t pixel, uint8_t fadeBy)
{
	uint8_t r1, g1, b1;

	// oldColor = strip.getPixelColor(ledNo);
	r1 = leds[3 * pixel + 1];
	g1 = leds[3 * pixel];
	b1 = leds[3 * pixel + 2];

	r1 = (r1 <= 10) ? 0 : (int)r1 - (r1 * fadeBy / 256);
	g1 = (g1 <= 10) ? 0 : (int)g1 - (g1 * fadeBy / 256);
	b1 = (b1 <= 10) ? 0 : (int)b1 - (b1 * fadeBy / 256);

	setPixel(pixel, g1, r1, b1);
}

void meteorRain(uint8_t red, uint8_t green, uint8_t blue, uint8_t meteorSize, uint8_t meteorTrailDecay, uint8_t meteorRandomDecay)
{
	// uint8_t curEffect = effect;
	// uint8_t curColor = _color;

	// setAll(0, 0, 0);
	// for (int i = 0; i < NUM_LEDS + NUM_LEDS; i++)
	// {
	// 	// fade brightness all LEDs one step
	// 	for (int j = 0; j < NUM_LEDS; j++)
	// 	{
	// 		if ((!meteorRandomDecay) || (random(10) > 5))
	// 		{
	// 			fadeToBlackBy(j, meteorTrailDecay);
	// 		}
	// 		CHECK_EFF;
	// 	}

	// 	// draw meteor
	// 	for (int j = 0; j < meteorSize; j++)
	// 	{
	// 		if ((i - j < NUM_LEDS) && (i - j >= 0))
	// 		{
	// 			CHECK_EFF;
	// 			setPixel(i - j, red, green, blue);
	// 		}
	// 	}

	// 	showStrip();
	// 	_delay_ms(DELAY2);
	// }
}
/*
void Fire(int Cooling, int Sparking)
{
	uint8_t curEffect = effect;
	uint8_t curColor = _color;
	__xdata static uint8_t heat[162];
	int cooldown;

	// Step 1.  Cool down every cell a little
	for (int i = 0; i < NUM_LEDS; i++)
	{
		cooldown = random2(0, ((Cooling * 10) / NUM_LEDS) + 2);

		if (cooldown > heat[i])
		{
			heat[i] = 0;
		}
		else
		{
			heat[i] = heat[i] - cooldown;
		}
		CHECK_EFF;
	}

	// Step 2.  Heat from each cell drifts 'up' and diffuses a little
	for (int k = NUM_LEDS - 1; k >= 2; k--)
	{
		heat[k] = (heat[k - 1] + heat[k - 2] + heat[k - 2]) / 3;
		CHECK_EFF;
	}

	// Step 3.  Randomly ignite new 'sparks' near the bottom
	if (random(255) < Sparking)
	{
		int y = random(7);
		heat[y] = heat[y] + random2(160, 255);
		// heat[y] = random(160,255);
	}

	// Step 4.  Convert heat to LED colors
	for (int j = 0; j < NUM_LEDS; j++)
	{
		setPixelHeatColor(j, heat[j]);
		CHECK_EFF;
	}

	showStrip();
	_delay_ms(DELAY2);
}

void setPixelHeatColor(int Pixel, uint8_t temperature)
{
	// Scale 'heat' down from 0-255 to 0-191
	uint8_t t192 = (uint8_t)((temperature / 255.0) * 191);

	// calculate ramp up from
	uint8_t heatramp = t192 & 0x3F; // 0..63
	heatramp <<= 2;					// scale up to 0..252

	// figure out which third of the spectrum we're in:
	if (t192 > 0x80)
	{ // hottest
		setPixel(Pixel, 255, 255, heatramp);
	}
	else if (t192 > 0x40)
	{ // middle
		setPixel(Pixel, heatramp, 255, 0);
	}
	else
	{ // coolest
		setPixel(Pixel, 0, heatramp, 0);
	}
}
*/
void sinWave(uint8_t green, uint8_t red, uint8_t blue)
{
	uint8_t dem = 0;
	uint8_t curEffect = effect;
	uint8_t curColor = _color;
	for (uint8_t j = 0; j < 13; j++)
	{
		dem = j;
		for (int i = 0; i < NUM_LEDS; i++)
		{
			setPixel(i, mang[dem]*green/100, mang[dem]*red/100, mang[dem]*blue/100);
			if (dem++ == 12)
			{
				dem = 0;
			}
			CHECK_EFF;
		}
		showStrip();
		_delay_ms(DELAY2);
	}
}