/**
 * N76_Max7219_595.c
 * N76E Interface 74HC595 and MAX7219
 * Created: 2022/05/25
 * Author: TaiVB
 */

#include "include.h"
#include "N76_Max7219_595.h"

void SPI_begin(void)
{
	setb(SPSR, DISMODF); // SS pin user define
	clrb(SPCR, SSOE);	 // SS pin user define
	SPCR |= (1 << SPIEN) | (1 << MSTR) | (1 << SPR1) | (1 << SPR0);
	//  SPIEN: enable, MSTR: Master mode, CPHA: Phase, SPR1:0: pre-scaler = 128 1MHz
	clrb(SPI_PxM1_CLK, SPI_PIN_CLK);
	clrb(SPI_PxM1_MOSI, SPI_PIN_MOSI);
	setb(SPI_PxM1_MISO, SPI_PIN_MISO);
	clrb(SPI_PxM1_SS, SPI_PIN_SS);
	clrb(SPI_PxM1_SS, SPI_PIN_SS2);

	setb(SPI_PxM2_CLK, SPI_PIN_CLK);
	setb(SPI_PxM2_MOSI, SPI_PIN_MOSI);
	setb(SPI_PxM2_MISO, SPI_PIN_MISO);
	setb(SPI_PxM2_SS, SPI_PIN_SS);
	setb(SPI_PxM2_SS, SPI_PIN_SS2);

	setb(SPI_Px_SS, SPI_PIN_SS2);
	setb(SPI_Px_SS, SPI_PIN_SS);
}

void SPI_transfer(uint8_t data)
{
	SPDR = data;
	__asm__("nop");
	while (inbit(SPSR, SPIF) == 0)
		; // wait
	clrb(SPSR, SPIF);
}
/*
uint32_t pow10(uint8_t n)
{
	uint32_t r = 1;
	while (n--)
		r *= 10;
	return r;
}
*/
void MAX7219_begin(void)
{
	SPI_begin();

	MAX7219_transferAll(3, SCAN_LIMIT, 0x07);
	MAX7219_transferAll(3, DECODE_MODE, 0xFF);
	MAX7219_transferAll(3, SHUTDOWN, 0x01);
	MAX7219_transferAll(3, DISPLAY_TEST, 0x00);
	MAX7219_transferAll(3, INTENSITY, 0x01);
}

void MAX7219_transferAll(int8_t chip, const uint8_t addr, const uint8_t data)
{
	clrb(SPI_Px_SS, SPI_PIN_SS);
	while (chip--)
	{
		SPI_transfer(addr);
		SPI_transfer(data);
	}
	setb(SPI_Px_SS, SPI_PIN_SS);
}

void MAX7219_transfer(uint8_t chip, const uint8_t addr, const uint8_t data)
{
	uint8_t total = chip & 0x0F; // 8
	chip = chip >> 4;			 // 3

	clrb(SPI_Px_SS, SPI_PIN_SS);
	// send first nops
	while (--total >= chip)
	{
		SPI_transfer(0x00);
		SPI_transfer(0x00);
	}

	// send address and data
	SPI_transfer(addr);
	SPI_transfer(data);

	// send last nops
	while (--chip >= 1)
	{
		SPI_transfer(0x00);
		SPI_transfer(0x00);
	}
	setb(SPI_Px_SS, SPI_PIN_SS);
}

void HC595_transfer(uint8_t data)
{
	SPI_transfer(data);
	clrb(SPI_Px_SS, SPI_PIN_SS2);
	setb(SPI_Px_SS, SPI_PIN_SS2);
}