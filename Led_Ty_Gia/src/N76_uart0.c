/*
 * n76_uart.c
 * Created: 2021/05/14
 * Author: Van_BasTai
 */

#include "include.h"
#include "n76_uart0.h"

void UART0_begin(void)
{
  clrb(P0M1, 6);
  clrb(P0M2, 6);
  clrb(P0M1, 7);
  clrb(P0M2, 7); // set pin at quad mode

  TH1 = 0xE6;       // set baudrate
  setb(SCON, SM1); // UART0 Mode1,REN=1,TI=1
  setb(SCON, REN); // UART0 Mode1,REN=1,TI=1
  TMOD |= 0x20;    // Timer1 Mode1
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

void UART0_println(char *str)
{
  UART0_print(str);
  UART0_print("\r\n");
}

void UART0_printNum(long num)
{
	char dis[20];
	sprintf(dis, "%li", num);
	UART0_print(dis);
}