/**
 * N76_DS1307.c
 * N76E Interface Ds1307
 * Created: 2022/05/25
 * Author: TaiVB
 */

#include "include.h"
#include "N76_DS1307.h"

void I2C_config(void)
{
	setb(P1M1, 3); // set P1.3 as open drain
	setb(P1M2, 3);
	setb(P1M1, 4); // set P1.4 as open drain
	setb(P1M2, 4);

	// Set I2C clock rate
	I2CLK = I2C_CLOCK; // I2C clock = Fsys/(4*(I2CLK+1))

	// Enable I2C
	setb(I2CON, I2CEN); // set_I2CEN;
}

void I2C_start(void)
{
	signed int t = timeout_count;
	setb(I2CON, STA);
	clrb(I2CON, SI);
	while ((inbit(I2CON, SI) == 0) && (t > 0))
	{
		t--;
	}
}

void I2C_stop(void)
{
	signed int t = timeout_count;
	setb(I2CON, STO);
	clrb(I2CON, SI);
	while ((inbit(I2CON, STO) == 1) && (t > 0))
	{
		t--;
	};
}

uint8_t I2C_read(uint8_t ack_mode)
{
	signed int t = timeout_count;
	uint8_t value = 0x00;
	setb(I2CON, AA);
	clrb(I2CON, SI);
	while ((inbit(I2CON, SI) == 0) && (t > 0))
	{
		t--;
	}
	value = I2DAT;
	if (ack_mode == I2C_NACK)
	{
		t = timeout_count;
		clrb(I2CON, AA);
		clrb(I2CON, SI);
		while ((inbit(I2CON, SI) == 0) && (t > 0))
		{
			t--;
		}
	}
	return value;
}
void I2C_write(uint8_t value)
{
	signed int t = timeout_count;
	I2DAT = value;
	clrb(I2CON, STA);
	clrb(I2CON, SI);
	while ((inbit(I2CON, SI) == 0) && (t > 0))
	{
		t--;
	}
}

void DS1307_begin(void)
{
	I2C_config();
	DS1307_write(DS1307_CTRL_REG, 0x00);
}

uint8_t DS1307_read(uint8_t address)
{
	uint8_t value = 0x00;
	I2C_start();
	I2C_write(DS1307_WR);
	I2C_write(address);
	I2C_start();
	I2C_write(DS1307_RD);
	value = I2C_read(I2C_NACK);
	I2C_stop();
	return value;
}

void DS1307_write(uint8_t address, uint8_t value)
{
	I2C_start();
	I2C_write(DS1307_WR);
	I2C_write(address);
	I2C_write(value);
	I2C_stop();
}

uint8_t bcd_to_decimal(uint8_t value)
{
	return ((value & 0x0F) + (((value & 0xF0) >> 0x04) * 0x0A));
}
uint8_t decimal_to_bcd(uint8_t value)
{
	return (((value / 0x0A) << 0x04) & 0xF0) | ((value % 0x0A) & 0x0F);
}