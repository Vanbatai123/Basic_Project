/*
 * n76_uart.h
 * Created: 2021/05/13
 * Author: Van_BasTai
*/

#ifndef N76_UART0_H
#define N76_UART0_H

//static volatile voidFuncPtr UART0_HANDLER = NULL;

void UART0_begin(void);
void UART0_putChar(uint8_t val);
void UART0_print(char* str);
void UART0_println(char* str);
void UART0_printNum(long num);
//void UART0_printNumln(long num, uint8_t base);

#endif