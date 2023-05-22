/*
 * stm8_clock.c
 * Created: 2018/08/22
 * Author: Van_BasTai
*/

#include "N76E003.h"

// #include <stdio.h>
// #include <string.h>
				   	
#ifndef F_CPU
#define F_CPU 				16000000UL
#endif
				   
typedef signed char int8_t;
typedef signed short int16_t;
typedef	signed long int32_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned long uint32_t;

//typedef void (*voidFuncPtr)(void);

//#define ISR(a) @svlreg @far @interrupt void a(void)

#define sei()    setb(IE, EA);  /* enable interrupts */
#define cli()    clrb(IE, EA);  /* disable interrupts */

#define setb(reg, bit) 		reg |= (1<<bit)
#define clrb(reg, bit) 		reg &= ~(1<<bit)
#define daobit(reg, bit) 	reg ^= (1<<bit)
#define inbit(reg, bit) 	(reg&(1<<bit)) >> bit

#define setbAP(reg, bit) \
	cli();               \
	TA = 0xAA;           \
	TA = 0x55;           \
	reg |= (1 << bit);   \
	sei();

#define clrbAP(reg, bit) \
	cli();               \
	TA = 0xAA;           \
	TA = 0x55;           \
	reg &= ~(1 << bit);  \
	sei();
 /*
#define pinMode(DDRx, BITx, mode)						\
	if(inbit(mode, BIT_DDR)) setb(DDRx, BITx);			\
	else	clrb(DDRx, BITx);							\
	if(inbit(mode, BIT_CR1)) setb(*(&DDRx+1), BITx);	\
	else	clrb(*(&DDRx+1), BITx);						\
	if(inbit(mode, BIT_CR2)) setb(*(&DDRx+2), BITx);	\
	else	clrb(*(&DDRx+2), BITx);
					*/
#define BIN		2
#define DEC		10
#define HEX		16

#define BIT_DDR 		2
#define BIT_CR1 		1
#define BIT_CR2 		0

// pin mode
#define IN_F			0x00
#define IN_F_INT		0x01
#define IN_U			0x02
#define IN_U_INT		0x03
#define OUT_OD			0x04
#define OUT_OD_FAST		0x05
#define OUT_PP			0x06
#define OUT_PP_FAST		0x07

void _delay_ms(uint32_t  __ms);
void _delay_us(uint32_t _us);