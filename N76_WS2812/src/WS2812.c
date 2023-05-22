/**
 * WS2812.c
 * Created: 2023/03/30
 * Author: TaiVB
 */

#include <include.h>
#include <stdlib.h>
#include <WS2812.h>
#include <math.h>

__xdata extern uint8_t leds[600];

// __xdata uint8_t curNum = NUM_LEDS;

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

void FadeInOut(uint8_t green, uint8_t red, uint8_t blue)
{
    uint8_t i;
    uint8_t g, r, b;
    uint8_t curEffect = effect;
    uint8_t curColor = _color;

    for (i = 0; i < 255; i = i + NUM_LEDS / 50)
    {
        CHECK_EFF;

        r = i * red / 256;
        g = i * green / 256;
        b = i * blue / 256;
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

void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t ReturnDelay)
{
    curEffect = effect;
    curColor = _color;
    uint8_t i, j;
    for (i = 0; i < NUM_LEDS - EyeSize - 2; i++)
    {
        setAll(0, 0, 0);
        setPixel(i, red / 10, green / 10, blue / 10);
        for (j = 1; j <= EyeSize; j++)
        {
            CHECK_EFF;
            setPixel(i + j, green, red, blue);
        }
        setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
        showStrip();
        _delay_ms(DELAY2);
    }

    _delay_ms(ReturnDelay);

    for (int16_t k = NUM_LEDS - EyeSize - 2; k > 0; k--)
    {
        setAll(0, 0, 0);
        setPixel(k, red / 10, green / 10, blue / 10);
        for (j = 1; j <= EyeSize; j++)
        {
            CHECK_EFF;
            setPixel(k + j, green, red, blue);
        }
        setPixel(k + EyeSize + 1, red / 10, green / 10, blue / 10);
        showStrip();
        _delay_ms(DELAY2);
    }

    _delay_ms(ReturnDelay);
}
void CylonBounceI(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t ReturnDelay)
{
    curEffect = effect;
    curColor = _color;
    uint8_t i, j;
    for (i = 0; i < NUM_LEDS - EyeSize - 2; i++)
    {
        setAll(green, red, blue);
        for (j = 0; j <= EyeSize + 1; j++)
        {
            CHECK_EFF;
            setPixel(i + j, 0, 0, 0);
        }
        showStrip();
        _delay_ms(DELAY2);
    }

    _delay_ms(ReturnDelay);

    for (int16_t k = NUM_LEDS - EyeSize - 2; k > 0; k--)
    {
        setAll(green, red, blue);
        for (j = 0; j <= EyeSize + 1; j++)
        {
            CHECK_EFF;
            setPixel(k + j, 0, 0, 0);
        }
        showStrip();
        _delay_ms(DELAY2);
    }

    _delay_ms(ReturnDelay);
}
void colorWipe(uint8_t green, uint8_t red, uint8_t blue, uint8_t orient)
{
    uint8_t i;
    curEffect = effect;
    curColor = _color;
    for (i = 0; i < NUM_LEDS; i++)
    {
        CHECK_EFF;
        setPixel(orient == 0 ? i : NUM_LEDS - i - 1, green, red, blue);
        showStrip();
        _delay_ms(DELAY2 + 1);
    }
}

void rainbowCycle()
{
    uint8_t i;
    uint8_t r, g, b;
    curEffect = effect;
    curColor = _color;
    uint8_t WheelPos;

    for (uint16_t j = 0; j < 256 * 5; j++)
    { // 5 cycles of all colors on wheel
        for (i = 0; i < NUM_LEDS; i++)
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
void Pattern3(uint8_t g, uint8_t r, uint8_t b, uint8_t orient)
{
    uint8_t i;
    curEffect = effect;
    curColor = _color;
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

    r1 = (r1 <= 12) ? 0 : (int)r1 - (r1 * fadeBy / 256);
    g1 = (g1 <= 12) ? 0 : (int)g1 - (g1 * fadeBy / 256);
    b1 = (b1 <= 12) ? 0 : (int)b1 - (b1 * fadeBy / 256);

    setPixel(pixel, g1, r1, b1);
}

void Pattern1(uint8_t g, uint8_t r, uint8_t b)
{
    uint8_t j;
    uint8_t pixel = 0;
    curEffect = effect;
    curColor = _color;
    float i = 0;
    while (i <= 2 * PI)
    {

        for (j = 0; j < NUM_LEDS; j++)
        {
            fadeToBlackBy(j, 20);
        }
        pixel = (uint8_t)(NUM_LEDS / 2 * (cosf(i) + 1));
        i += 0.01;
        _delay_us(DELAY);

        setPixel(pixel, g, r, b);
        // setPixel(NUM_LEDS - 1 - pixel, g2, r2, b2);
        showStrip();
        CHECK_EFF;
    }
}
void Pattern2(uint8_t g, uint8_t r, uint8_t b, uint8_t g2, uint8_t r2, uint8_t b2)
{
    uint8_t j;
    uint8_t pixel = 0;
    curEffect = effect;
    curColor = _color;
    float i = 0;
    while (i <= 2 * PI)
    {

        for (j = 0; j < NUM_LEDS; j++)
        {
            fadeToBlackBy(j, 20);
        }
        pixel = (uint8_t)(NUM_LEDS / 2 * (cosf(i) + 1));
        i += 0.01;
        _delay_ms(DELAY);

        setPixel(pixel, g, r, b);
        setPixel(NUM_LEDS - 1 - pixel, g2, r2, b2);
        showStrip();
        CHECK_EFF;
    }
}