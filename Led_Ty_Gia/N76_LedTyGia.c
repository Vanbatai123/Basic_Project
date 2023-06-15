/*
 * test UART0 project
 * Created: 2021/10/23
 * Author: taivb
 */
#include "include.h"
#include "N76_uart0.h"
#include "N76_DS1307.h"
#include "N76_Max7219_595.h"
#include "N76_Flash.h"

#define HEADER_BEGIN 0x4000
#define DATA_BEGIN 0x4002
#define NUM_OF_MAX7219 0x4000
#define DS1307_POS 0x4001

#define IR_CODE_PWR 0xFFFFA25D
#define IR_CODE_MENU 0xFFFFE21D
#define IR_CODE_TEST 0x000022DD
#define IR_CODE_RETURN 0xFFFFC23D
#define IR_CODE_RUN 0xFFFFA857
#define IR_CODE_CLEAR 0xFFFFB04F
#define IR_CODE_UP 0x000002FD
#define IR_CODE_DOWN 0xFFFF9867
#define IR_CODE_LEFT 0xFFFFE01F
#define IR_CODE_RIGHT 0xFFFF906F
#define IR_CODE_NUM0 0x00006897
#define IR_CODE_NUM1 0x000030CF
#define IR_CODE_NUM2 0x000018E7
#define IR_CODE_NUM3 0x00007A85
#define IR_CODE_NUM4 0x000010EF
#define IR_CODE_NUM5 0x000038C7
#define IR_CODE_NUM6 0x00005AA5
#define IR_CODE_NUM7 0x000042BD
#define IR_CODE_NUM8 0x00004AB5
#define IR_CODE_NUM9 0x000052AD

struct
{
	uint8_t s;
	uint8_t m;
	uint8_t h;
	uint8_t dy;
	uint8_t dt;
	uint8_t mt;
	uint8_t yr;
} time;
uint8_t sec_tt = 0;

uint16_t txdata;
uint16_t count_ms, count_ms1, start_status;
int16_t count_data;
uint32_t data, data2;
uint8_t _IR_received = 0;
uint8_t repeat = 0;

uint8_t const ma[] = {0xC0, 0XF9, 0XA4, 0XB0, 0X99, 0X92, 0X82, 0XF8, 0X80, 0X90};
// extern struct  time;

void UART_printNum(uint32_t num)
{
	uint8_t temp = 0;
	UART0_putChar('0');
	UART0_putChar('x');
	for (uint8_t i = 0; i < 8; i++)
	{
		temp = (uint8_t)((num >> (4 * (7 - i))) & 0x0000000F);
		if (temp <= 9)
			UART0_putChar(temp + 48);
		else if (temp > 9)
			UART0_putChar(temp + 55);
	}
	UART0_putChar('\n');
}

void get_time(void)
{
	time.s = DS1307_read(DS1307_SEC_REG);
	time.m = DS1307_read(DS1307_MIN_REG);
	time.h = DS1307_read(DS1307_HOUR_REG);
	time.dy = DS1307_read(DS1307_DAY_REG);
	time.dt = DS1307_read(DS1307_DATE_REG);
	time.mt = DS1307_read(DS1307_MONTH_REG);
	time.yr = DS1307_read(DS1307_YEAR_REG);

	// Convert BCD to decimal
	time.s = bcd_to_decimal(time.s);
	time.m = bcd_to_decimal(time.m);
	time.h = bcd_to_decimal(time.h);
	time.dy = bcd_to_decimal(time.dy);
	time.dt = bcd_to_decimal(time.dt);
	time.mt = bcd_to_decimal(time.mt);
	time.yr = bcd_to_decimal(time.yr);

	if (time.dy == 1)
		time.dy = 8;
}
void set_time(void)
{
	time.s = decimal_to_bcd(time.s);
	time.m = decimal_to_bcd(time.m);
	time.h = decimal_to_bcd(time.h);
	time.dy = decimal_to_bcd(time.dy);
	time.dt = decimal_to_bcd(time.dt);
	time.mt = decimal_to_bcd(time.mt);
	time.yr = decimal_to_bcd(time.yr);

	// Convert decimal to BCD
	DS1307_write(DS1307_SEC_REG, time.s);
	DS1307_write(DS1307_MIN_REG, time.m);
	DS1307_write(DS1307_HOUR_REG, time.h);
	DS1307_write(DS1307_DAY_REG, time.dy);
	DS1307_write(DS1307_DATE_REG, time.dt);
	DS1307_write(DS1307_MONTH_REG, time.mt);
	DS1307_write(DS1307_YEAR_REG, time.yr);
}

void printDigits(int digits)
{
	// các thành phần thời gian được ngăn chách bằng dấu :
	UART0_print(":");

	if (digits < 10)
		UART0_putChar('0');
	UART0_printNum(digits);
}

void digitalClockDisplay()
{
	// digital clock display of the time
	UART0_printNum(time.h);
	printDigits(time.m);
	printDigits(time.s);
	UART0_print(" ");
	UART0_printNum(time.dy);
	UART0_print(" ");
	UART0_printNum(time.dt);
	UART0_print(" ");
	UART0_printNum(time.mt);
	UART0_print(" ");
	UART0_printNum(time.yr);
	UART0_println("");
}

void IR_begin()
{
	setb(P3M1, 0);
	clrb(P3M2, 0);
	setb(P3, 0);

	// enable external interrupt
	setb(TCON, IT0); // set external interrupt 0 at falling edge
	setb(IE, EX0);	 // enable external 0 interrupt

	// enable 0.5ms timer
	TMOD &= 0xF0; // Timer 0 mode 1
	TMOD |= 0x01;
	TL0 = 0xBF; // = 65535 - Reload value
	TH0 = 0xE0;
	setb(CKCON, T0M); // Timer 0 use F_CPU instead of F_CPU/12 like other 8051
	setb(IE, ET0);	  // Enable timer 0 interrupt

	sei();			 // Enable global interrupt
	setb(TCON, TR0); // Run timer 0
}

/**
 * main function
 */
void main(void)
{
	UART0_begin();
	MAX7219_begin();

	// P15_PushPull_Mode;
	DS1307_begin();
	IR_begin();

	time.s = 1;
	time.m = 34;
	time.h = 20;
	// get_time();
	time.dy = 3;
	time.dt = 31;
	time.mt = 5;
	time.yr = 22;
	uint8_t numOfMax = 1;
	// set_time();
	/*APROM_write_byte(NUM_OF_MAX7219, 1);
	APROM_write_byte(DS1307_POS, 0);

	uint8_t posOfDS1307 = 0;
	numOfMax = APROM_read_byte(NUM_OF_MAX7219);
	posOfDS1307 = APROM_read_byte(DS1307_POS);
	UART0_println("START");*/

	while (1)
	{
		get_time();
		if (sec_tt != time.s)
		{
			sec_tt = time.s;
			// digitalClockDisplay();

			MAX7219_transfer(0x33, 1, 5);
			MAX7219_transfer(0x33, 2, 9);
			MAX7219_transfer(0x33, 3, 9);
			MAX7219_transfer(0x33, 4, 1);
			MAX7219_transfer(0x33, 5, 3 | CODEB_DP);
			MAX7219_transfer(0x33, 6, 0);
			MAX7219_transfer(0x33, 7, 3 | CODEB_DP);
			MAX7219_transfer(0x33, 8, 1);
			
			MAX7219_transfer(0x23, 1, time.yr % 10);
			MAX7219_transfer(0x23, 2, time.yr / 10);
			MAX7219_transfer(0x23, 3, time.mt % 10 | CODEB_DP);
			MAX7219_transfer(0x23, 4, time.mt / 10);
			MAX7219_transfer(0x23, 5, time.dt % 10 | CODEB_DP);
			MAX7219_transfer(0x23, 6, time.dt / 10);
			MAX7219_transfer(0x23, 7, 0x0F);
			MAX7219_transfer(0x23, 8, time.dy);

			MAX7219_transfer(0x13, 1, time.s % 10);
			MAX7219_transfer(0x13, 2, time.s / 10);
			MAX7219_transfer(0x13, 3, sec_tt % 2 ? CODEB_MINUS : CODEB_BLANK);
			MAX7219_transfer(0x13, 4, time.m % 10);
			MAX7219_transfer(0x13, 5, time.m / 10);
			MAX7219_transfer(0x13, 6, sec_tt % 2 ? CODEB_MINUS : CODEB_BLANK);
			MAX7219_transfer(0x13, 7, time.h % 10);
			MAX7219_transfer(0x13, 8, time.h / 10);

			/*
						MAX7219_transfer(3, 1, 2);
						MAX7219_transfer(3, 2, 3);
						MAX7219_transfer(3, 3, 4);
						MAX7219_transfer(3, 4, 5);
						MAX7219_transfer(3, 5, 6);
						MAX7219_transfer(3, 6, 7);
						MAX7219_transfer(3, 7, 8);
						MAX7219_transfer(3, 8, CODEB_H);*/
		}

		if (_IR_received == 1)
		{
			UART_printNum(data2);
			_IR_received = 0;

			switch (data2)
			{
			case IR_CODE_PWR:
				UART0_println("IR_CODE_PWR");
				break;
			case IR_CODE_MENU:
				UART0_println("IR_CODE_MENU");
				break;
			case IR_CODE_TEST:
				UART0_println("IR_CODE_TEST");
				break;
			case IR_CODE_RETURN:
				UART0_println("IR_CODE_RETURN");
				break;
			case IR_CODE_RUN:
				UART0_println("IR_CODE_RUN");
				break;
			case IR_CODE_CLEAR:
				UART0_println("IR_CODE_CLEAR");
				break;
			case IR_CODE_UP:
				UART0_println("IR_CODE_UP");
				break;
			case IR_CODE_DOWN:
				UART0_println("IR_CODE_DOWN");
				break;
			case IR_CODE_LEFT:
				UART0_println("IR_CODE_LEFT");
				break;
			case IR_CODE_RIGHT:
				UART0_println("IR_CODE_RIGHT");
				break;
			case IR_CODE_NUM0:
				UART0_println("IR_CODE_NUM0");
				break;
			case IR_CODE_NUM1:
				UART0_println("IR_CODE_NUM1");
				break;
			case IR_CODE_NUM2:
				UART0_println("IR_CODE_NUM2");
				break;
			case IR_CODE_NUM3:
				UART0_println("IR_CODE_NUM3");
				break;
			case IR_CODE_NUM4:
				UART0_println("IR_CODE_NUM4");
				break;
			case IR_CODE_NUM5:
				UART0_println("IR_CODE_NUM5");
				break;
			case IR_CODE_NUM6:
				UART0_println("IR_CODE_NUM6");
				break;
			case IR_CODE_NUM7:
				UART0_println("IR_CODE_NUM7");
				break;
			case IR_CODE_NUM8:
				UART0_println("IR_CODE_NUM8");
				break;
			case IR_CODE_NUM9:
				UART0_println("IR_CODE_NUM9");
				break;

			default:
				break;
			}
		}
	}
	/*
	while (1)
	{
		UART0_printNum(APROM_read_byte(NUM_OF_MAX7219));
		UART0_print("   ");
		UART0_printNum(APROM_read_byte(DS1307_POS));

		UART0_print("\r\n");
		_delay_ms(1000);
	}*/
}

ISR(TIMER_0P5MS, INTERRUPT_TIMER0)
{
	TL0 = 0xBF;
	TH0 = 0xE0;
	count_ms++;
	if (count_ms == 50)
		count_ms = 0;
}

ISR(PIN_INT_FUCTION, INTERRUPT_INT0)
{
	count_ms1 = count_ms;
	count_ms = 0;
	count_data++;
	// if ((count_ms1 >= 20) && (count_ms1 <= 28)) // 10s-14ms
	if ((count_ms1 >= 26) && (count_ms1 <= 28)) // 12.5s-14ms
	{
		count_data = -1;
		start_status = 1;
		count_ms1 = 0;
	}
	else if ((count_ms1 >= 20) && (count_ms1 <= 25)) // 10s-12ms
	{
		if (++repeat == 5)
		{
			repeat = 4;
			_IR_received = 1;
			data2 = 0xFFFFFF;
		}
	}
	else if ((start_status == 1) && (count_data >= 0) && (count_data <= 31))
	{
		if ((count_ms1 >= 4) && (count_ms1 <= 6)) // 2ms->3ms //detect logic 1.
		{
			data |= 1 << (31 - count_data);
			count_ms1 = 0;
		}
		else if (count_ms1 < 4) // nho hon <2ms //detect logic 0.
		{
			count_ms1 = 0;
		}
		else // error data reset all
		{
			count_ms1 = 0;
			start_status = 0;
			count_data = 0;
			data = 0;
		}
	}
	else if ((start_status == 0) && (count_ms1 > 28)) /// error detect xung _IR_receivedrt
	{
		count_ms1 = 0;
		start_status = 0;
		count_data = 0;
		data = 0;
	}
	if (count_data == 32) // reset sau khi detect 32 bit data
	{
		repeat = 0;
		_IR_received = 1;
		data2 = data;

		count_data = 0;
		data = 0;
		start_status = 0;
		count_ms1 = 0;
	}
}