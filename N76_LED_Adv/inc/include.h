/*
 * stm8_clock.c
 * Created: 2018/08/22
 * Author: Van_BasTai
*/

#include "N76E003.h"
				   	
#ifndef F_CPU
#define F_CPU 				16000000UL
#endif
				   
typedef signed char 		int8_t;
typedef signed short 		int16_t;
typedef	signed long 		int32_t;
typedef unsigned char 		uint8_t;
typedef unsigned short 		uint16_t;
typedef unsigned long 		uint32_t;

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

#define BIN						2
#define DEC						10
#define HEX						16

// pin mode
#define QUASI					0x00
#define OUTPUT_PP				0x01
#define INPUT					0x10
#define OUTPUT_OD				0x11


#define XRAM_I2C_TX_IDX			0x02BC
#define XRAM_I2C_TX_LEN			0x02BD
#define XRAM_I2C_RX_IDX			0x02BE
#define XRAM_I2C_RX_LEN			0x02BF
#define XRAM_I2C_TX_BUFF		0x02C0
#define XRAM_I2C_RX_BUFF		0x02E0

#define CONCAT2(a,b) a##b

// mode: QUASI, OUTPUT_PP, INPUT, OUTPUT_OD
#define pinMode(PORTx, BITx, mode)                     \
	if(mode & 0xF0) setb(CONCAT2(PORTx,  m1), BITx); else clrb(CONCAT2(PORTx,  m1), BITx); \
	if(mode & 0x0F) setb(CONCAT2(PORTx,  m2), BITx); else clrb(CONCAT2(PORTx,  m2), BITx);

// ADC
#define Enable_ADC_AIN0			ADCCON0&=0xF0;P17_Input_Mode;AINDIDS=0x00;setb(AINDIDS, 0);setb(ADCCON1, 0)								//P17
#define Enable_ADC_AIN1			ADCCON0&=0xF0;ADCCON0|=0x01;pinMode(P3, 0, INPUT);AINDIDS=0x00;setb(AINDIDS, 1);setb(ADCCON1, 0)		//P30
#define Enable_ADC_AIN2			ADCCON0&=0xF0;ADCCON0|=0x02;pinMode(P0, 7, INPUT);AINDIDS=0x00;setb(AINDIDS, 2);setb(ADCCON1, 0)		//P07
#define Enable_ADC_AIN3			ADCCON0&=0xF0;ADCCON0|=0x03;pinMode(P0, 6, INPUT);AINDIDS=0x00;setb(AINDIDS, 3);setb(ADCCON1, 0)		//P06
#define Enable_ADC_AIN4			ADCCON0&=0xF0;ADCCON0|=0x04;pinMode(P0, 5, INPUT);AINDIDS=0x00;setb(AINDIDS, 4);setb(ADCCON1, 0)		//P05
#define Enable_ADC_AIN5			ADCCON0&=0xF0;ADCCON0|=0x05;pinMode(P0, 4, INPUT);AINDIDS=0x00;setb(AINDIDS, 5);setb(ADCCON1, 0)		//P04
#define Enable_ADC_AIN6			ADCCON0&=0xF0;ADCCON0|=0x06;pinMode(P0, 3, INPUT);AINDIDS=0x00;setb(AINDIDS, 6);setb(ADCCON1, 0)		//P03
#define Enable_ADC_AIN7			ADCCON0&=0xF0;ADCCON0|=0x07;pinMode(P1, 1, INPUT);AINDIDS=0x00;setb(AINDIDS, 7);setb(ADCCON1, 0)		//P11
#define Enable_ADC_BandGap		ADCCON0|=setb(ADCCON1, 3);ADCCON0&=0xF8;																//Band-gap 1.22V
#define	Enable_ADC_Interrupt	setb(IE, EADC);	//enable interruppt ADC

/****************************************************************************
  Enable INT port 0~3
***************************************************************************/
#define 	Enable_INT_Port0					PICON &= 0xFB;
#define		Enable_INT_Port1					PICON |= 0x01;
#define		Enable_INT_Port2					PICON |= 0x02;
#define		Enable_INT_Port3					PICON |= 0x03;
/*****************************************************************************
Enable each bit low level trig mode
*****************************************************************************/
#define		Enable_BIT7_LowLevel_Trig			PICON&=0x7F;PINEN|=0x80;PIPEN&=0x7F
#define		Enable_BIT6_LowLevel_Trig			PICON&=0x7F;PINEN|=0x40;PIPEN&=0xBF
#define		Enable_BIT5_LowLevel_Trig			PICON&=0xBF;PINEN|=0x20;PIPEN&=0xDF
#define		Enable_BIT4_LowLevel_Trig			PICON&=0xBF;PINEN|=0x10;PIPEN&=0xEF
#define		Enable_BIT3_LowLevel_Trig			PICON&=0xDF;PINEN|=0x08;PIPEN&=0xF7
#define		Enable_BIT2_LowLevel_Trig			PICON&=0xEF;PINEN|=0x04;PIPEN&=0xFB
#define		Enable_BIT1_LowLevel_Trig			PICON&=0xF7;PINEN|=0x02;PIPEN&=0xFD
#define		Enable_BIT0_LowLevel_Trig			PICON&=0xFD;PINEN|=0x01;PIPEN&=0xFE
/*****************************************************************************
Enable each bit high level trig mode
*****************************************************************************/
#define		Enable_BIT7_HighLevel_Trig			PICON&=0x7F;PINEN&=0x7F;PIPEN|=0x80
#define		Enable_BIT6_HighLevel_Trig			PICON&=0x7F;PINEN&=0xBF;PIPEN|=0x40
#define		Enable_BIT5_HighLevel_Trig			PICON&=0xBF;PINEN&=0xDF;PIPEN|=0x20
#define		Enable_BIT4_HighLevel_Trig			PICON&=0xBF;PINEN&=0xEF;PIPEN|=0x10
#define		Enable_BIT3_HighLevel_Trig			PICON&=0xDF;PINEN&=0xF7;PIPEN|=0x08
#define		Enable_BIT2_HighLevel_Trig			PICON&=0xEF;PINEN&=0xFB;PIPEN|=0x04
#define		Enable_BIT1_HighLevel_Trig			PICON&=0xF7;PINEN&=0xFD;PIPEN|=0x02
#define		Enable_BIT0_HighLevel_Trig			PICON&=0xFD;PINEN&=0xFE;PIPEN|=0x01
/*****************************************************************************
Enable each bit falling edge trig mode
*****************************************************************************/
#define		Enable_BIT7_FallEdge_Trig			PICON|=0x80;PINEN|=0x80;PIPEN&=0x7F
#define		Enable_BIT6_FallEdge_Trig			PICON|=0x80;PINEN|=0x40;PIPEN&=0xBF
#define		Enable_BIT5_FallEdge_Trig			PICON|=0x40;PINEN|=0x20;PIPEN&=0xDF
#define		Enable_BIT4_FallEdge_Trig			PICON|=0x40;PINEN|=0x10;PIPEN&=0xEF
#define		Enable_BIT3_FallEdge_Trig			PICON|=0x20;PINEN|=0x08;PIPEN&=0xF7
#define		Enable_BIT2_FallEdge_Trig			PICON|=0x10;PINEN|=0x04;PIPEN&=0xFB
#define		Enable_BIT1_FallEdge_Trig			PICON|=0x08;PINEN|=0x02;PIPEN&=0xFD
#define		Enable_BIT0_FallEdge_Trig			PICON|=0x04;PINEN|=0x01;PIPEN&=0xFE
/*****************************************************************************
Enable each bit rasing edge trig mode
*****************************************************************************/
#define		Enable_BIT7_RasingEdge_Trig			PICON|=0x80;PINEN&=0x7F;PIPEN|=0x80
#define		Enable_BIT6_RasingEdge_Trig			PICON|=0x80;PINEN&=0xBF;PIPEN|=0x40
#define		Enable_BIT5_RasingEdge_Trig			PICON|=0x40;PINEN&=0xDF;PIPEN|=0x20
#define		Enable_BIT4_RasingEdge_Trig			PICON|=0x40;PINEN&=0xEF;PIPEN|=0x10
#define		Enable_BIT3_RasingEdge_Trig			PICON|=0x20;PINEN&=0xF7;PIPEN|=0x08
#define		Enable_BIT2_RasingEdge_Trig			PICON|=0x10;PINEN&=0xFB;PIPEN|=0x04
#define		Enable_BIT1_RasingEdge_Trig			PICON|=0x08;PINEN|=0xFD;PIPEN&=0x02
#define		Enable_BIT0_RasingEdge_Trig			PICON|=0x04;PINEN|=0xFE;PIPEN&=0x01

#define		Enable_PinInt						setb(EIE , EPI); // set external interrupt 0 at falling edge

/************************************End of Pin interrupt*************************************************/

void _delay_ms(uint32_t  __ms);
void _delay_us(uint32_t _us);