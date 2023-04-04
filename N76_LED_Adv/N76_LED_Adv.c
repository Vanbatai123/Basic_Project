/*
 * N76_LED_Adv.c
 * Created: 2023/03/26
 * Author: taivb
 */

#include <include.h>
#include <N76_Flash.h>

#define DEBUG 			0

#define HEADER_BEGIN	0x0820
#define DATA_BEGIN		0x0840

#if DEBUG == 1
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#endif


uint8_t cnt_br = 0, col0 = 0;
uint8_t dl1 = 0, dl2 = 0, dl3 = 0, dl4 = 0, dl5 = 0;
uint16_t row1 = 0, row2 = 0, row3 = 0, row4 = 0, row5 = 0;

uint8_t COL1 = 0, COL2 = 0, COL3 = 0, COL4 = 0, COL5 = 0;
uint16_t ROW1 = 0, ROW2 = 0, ROW3 = 0, ROW4 = 0, ROW5 = 0;
uint16_t PT01 = 0, PT02 = 0, PT03 = 0, PT04 = 0, PT05 = 0;

/**
 * set up timer 3
 * @par tim_div_x: Timer 3 prescaler
 * @par reload: number of tick
 */
void TIM3_begin(uint8_t tim_div_x, uint16_t reload)
{

	// Set the Prescaler value
	T3CON |= tim_div_x; // Prescaler = (1 << TIM2_PSCR)

	// Set the Autoreload value
	RH3 = (uint8_t)(reload >> 8);
	RL3 = (uint8_t)(reload & 0x00FF);

	// Enable update interrupt
	setb(EIE1, ET3);  // enable Timer3 interrupt
	sei();			  // enable interrupts
	setb(T3CON, TR3); // Timer3 run
}

/*
0: 01345  3B C4
1: 0123457  BF 40
*/

/**
 * turn the led on
 *
 */
void setl(uint8_t numb)
{
	if (numb == 0)
		setb(P0, 5);
	/*else if (numb == 1)
	  setb(P0, 6);
	else if (numb == 2)
	  setb(P0, 7);*/
	else if (numb == 1)
		setb(P3, 0);
	else if (numb == 2)
		setb(P0, 4);
	else if (numb == 3)
		setb(P0, 3);
	else if (numb == 4)
		setb(P0, 1);
	else if (numb == 5)
		setb(P0, 0);
	else if (numb == 6)
		setb(P1, 0);
	else if (numb == 7)
		setb(P1, 1);
	else if (numb == 8)
		setb(P1, 2);
	else if (numb == 9)
		setb(P1, 3);
	else if (numb == 10)
		setb(P1, 4);
	else if (numb == 11)
		setb(P1, 7);
	else if (numb == 12)
		setb(P1, 5);
}

/**
 * turn the led off
 *
 */
void clrl(uint8_t numb)
{
	if (numb == 0)
		clrb(P0, 5);
	/*else if (numb == 1)
	  clrb(P0, 6);
	else if (numb == 2)
	  clrb(P0, 7);*/
	else if (numb == 1)
		clrb(P3, 0);
	else if (numb == 2)
		clrb(P0, 4);
	else if (numb == 3)
		clrb(P0, 3);
	else if (numb == 4)
		clrb(P0, 1);
	else if (numb == 5)
		clrb(P0, 0);
	else if (numb == 6)
		clrb(P1, 0);
	else if (numb == 7)
		clrb(P1, 1);
	else if (numb == 8)
		clrb(P1, 2);
	else if (numb == 9)
		clrb(P1, 3);
	else if (numb == 10)
		clrb(P1, 4);
	else if (numb == 11)
		clrb(P1, 7);
	else if (numb == 12)
		clrb(P1, 5);
}

void GPIO_config(void)
{
	// set led pin as output
	P1M1 &= 0x40;
	P1M2 |= 0xBF;

	P0M1 &= 0xC4;
	P0M2 |= 0x3B;

	clrb(P0M1, 5);
	setb(P0M2, 5);

	clrb(P3M1, 0);
	setb(P3M2, 0);

	// clrb(P0M1, 6);
	// setb(P0M2, 6);

	// clrb(P0M1, 7);
	// setb(P0M2, 7);

	for (uint8_t i = 0; i < 13; i++) // off all led
	{
		clrl(i);
	}
}
#if DEBUG == 1
void UART0_config(void)
{
	clrb(P0M1, 6);
	clrb(P0M2, 6);
	clrb(P0M1, 7);
	clrb(P0M2, 7); // set pin at quad mode

	TH1 = 148;		 // set baudrate
	setb(SCON, SM1); // UART0 Mode1,REN=1,TI=1
	setb(SCON, REN); // UART0 Mode1,REN=1,TI=1
	TMOD |= 0x20;	 // Timer1 Mode1
	setb(PCON, SMOD);
	setb(CKCON, T1M);
	clrb(T3CON, BRCK);
	setb(TCON, TR1);
	clrb(SCON, TI);
}
void UART0_putChar(uint8_t val)
{
	clrb(SCON, TI);
	SBUF = val;
	while (inbit(SCON, TI) == 0)
		; // uncomment when not using interrupt
}

void UART0_print(char *str)
{
	uint8_t i = 0;
	while (str[i] != '\0')
		UART0_putChar(str[i++]);
}
void UART0_printNum(uint16_t num)
{
	char ix[4];
	sprintf(ix, "%x\r\n", num);
	UART0_print(ix);
}
#endif

void main(void)
{
	CKDIV = 0x01; // 16MHz / 2 = 8MHz
	GPIO_config();

	// read initialize value COL, ROW
	COL1 = APROM_read_byte(HEADER_BEGIN); // 15
	COL2 = APROM_read_byte(HEADER_BEGIN + 1);
	COL3 = APROM_read_byte(HEADER_BEGIN + 2);
	COL4 = APROM_read_byte(HEADER_BEGIN + 3);
	COL5 = APROM_read_byte(HEADER_BEGIN + 4);

	ROW1 = APROM_read_2byte(HEADER_BEGIN + 5);
	ROW2 = APROM_read_2byte(HEADER_BEGIN + 7);
	ROW3 = APROM_read_2byte(HEADER_BEGIN + 9);
	ROW4 = APROM_read_2byte(HEADER_BEGIN + 11);
	ROW5 = APROM_read_2byte(HEADER_BEGIN + 13);

	PT01 = APROM_read_2byte(HEADER_BEGIN + 15);
	PT02 = APROM_read_2byte(HEADER_BEGIN + 17);
	PT03 = APROM_read_2byte(HEADER_BEGIN + 19);
	PT04 = APROM_read_2byte(HEADER_BEGIN + 21);
	PT05 = APROM_read_2byte(HEADER_BEGIN + 23);

#if DEBUG == 1
	UART0_config();
	while (1)
	{
		UART0_printNum(APROM_read_2byte(0x0820 + 1));
		_delay_ms(1000);
	}
#endif
	TIM3_begin(0x07, 65535 - 60);

	while (1)
	{
		if (COL1 != 0)
		{
			if (dl1++ == APROM_read_byte(PT01 + COL1 + (COL1 + 1) * row1))
			{
				dl1 = 0;
				if (++row1 == ROW1)
					row1 = 0;
			}
		}
		if (COL2 != 0)
		{
			if (dl2++ == APROM_read_byte(PT02 + COL2 + (COL2 + 1) * row2))
			{
				dl2 = 0;
				if (++row2 == ROW2)
					row2 = 0;
			}
		}
		if (COL3 != 0)
		{
			if (dl3++ == APROM_read_byte(PT03 + COL3 + (COL3 + 1) * row3))
			{
				dl3 = 0;
				if (++row3 == ROW3)
					row3 = 0;
			}
		}

		if (COL4 != 0)
		{
			if (dl4++ == APROM_read_byte(PT04 + COL4 + (COL4 + 1) * row4))
			{
				dl4 = 0;
				if (++row4 == ROW4)
					row4 = 0;
			}
		}

		if (COL5 != 0)
		{
			if (dl4++ == APROM_read_byte(PT05 + COL5 + (COL5 + 1) * row5))
			{
				dl5 = 0;
				if (++row5 == ROW5)
					row5 = 0;
			}
		}
		_delay_ms(12);
	}
}

//<!> timer3 overflow interrupt function
ISR(timer3, INTERRUPT_TIMER3)
{
	if (cnt_br++ == 15)
		cnt_br = 0;

	if (COL1 != 0)
	{
		for (col0 = 0; col0 < COL1; col0++)
		{
			if (cnt_br < APROM_read_byte(PT01 + (COL1 + 1) * row1 + col0))
				setl(col0);
			else
				clrl(col0);
		}
	}
	if (COL2 != 0)
	{
		for (col0 = 0; col0 < COL2; col0++)
		{
			if (cnt_br < APROM_read_byte(PT02 + (COL2 + 1) * row2 + col0))
				setl(col0 + COL1);
			else
				clrl(col0 + COL1);
		}
	}

	if (COL3 != 0)
	{
		for (col0 = 0; col0 < COL3; col0++)
		{
			if (cnt_br < APROM_read_byte(PT03 + (COL3 + 1) * row3 + col0))
				setl(col0 + COL1 + COL2);
			else
				clrl(col0 + COL1 + COL2);
		}
	}

	if (COL4 != 0)
	{
		for (col0 = 0; col0 < COL4; col0++)
		{
			if (cnt_br < APROM_read_byte(PT04 + (COL4 + 1) * row4 + col0))
				setl(col0 + COL1 + COL2 + COL3);
			else
				clrl(col0 + COL1 + COL2 + COL3);
		}
	}

	if (COL5 != 0)
	{
		for (col0 = 0; col0 < COL5; col0++)
		{
			if (cnt_br < APROM_read_byte(PT05 + (COL5 + 1) * row5 + col0))
				setl(col0 + COL1 + COL2 + COL3 + COL4);
			else
				clrl(col0 + COL1 + COL2 + COL3 + COL4);
		}
	}

	clrb(T3CON, TF3);
}
