/*
 * include.c
 * Created: 2022/02/28
 * Author: taivb
*/


#include "include.h"

void _delay_ms(uint32_t  __ms)
{
    T3CON |= 0x07;                           		//Timer3 Clock = Fsys/128
    set_TR3;                                		//Trigger Timer3 start run
    while (__ms != 0)
    {
        RL3 = 0x83; //Find  define in "Function_define.h" "TIMER VALUE"
        RH3 = 0xFF;
        while (inbit(T3CON,TF3) != 1);		//Check Timer3 Time-Out Flag
        clr_TF3;
        // T = (65535 - reload) * div / F_CPU
        // reload = 65535 - (T * F_CPU / div)
        __ms--;
    }
    clr_TR3;                                		//Stop Timer3
}

void _delay_us(uint32_t _us)
{
	_us = _us * 5 / 4+1;
	while (--_us)
	{
		/* code */
	}
	
}
