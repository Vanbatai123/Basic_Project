/*
 * include.c
 * Created: 2022/02/28
 * Author: taivb
*/


#include "include.h"

void _delay_ms(uint32_t  __ms)
{
    T3CON |= 0x07;                           		//Timer3 Clock = Fsys/128
    setb(T3CON, TR3);                                		//Trigger Timer3 start run
    while (__ms != 0)
    {
        RL3 = 0x83; //Find  define in "Function_define.h" "TIMER VALUE"
        RH3 = 0xFF;
        while (inbit(T3CON,TF3) != 1);		//Check Timer3 Time-Out Flag
        clrb(T3CON, TF3);
        // T = (65535 - reload) * div / F_CPU
        // reload = 65535 - (T * F_CPU / div)
        __ms--;
    }
    clrb(T3CON, TR3);                                		//Stop Timer3
}

void _delay_us(uint32_t _us)
{
	_us = _us * 5 / 4+1;
	while (--_us)
	{
		/* code */
	}
	
}

uint8_t xRamRead(uint16_t addr)
{
	__asm__("MOVX A,@DPTR");
	__asm__("MOV DPL,A");
}

void xRamWrite(uint16_t addr, uint8_t value)
{
	__asm__("MOV A,_xRamWrite_PARM_2");
	__asm__("MOVX @DPTR,A");
}

uint8_t xRamInc(uint16_t addr)
{
	__asm__("MOVX A,@DPTR");
	__asm__("INC A");
	__asm__("MOVX @DPTR,A");
	__asm__("MOV DPL,A");
}
uint8_t xRamDec(uint16_t addr)
{
	__asm__("MOVX A,@DPTR");
	__asm__("DEC A");
	__asm__("MOVX @DPTR,A");
	__asm__("MOV DPL,A");
}