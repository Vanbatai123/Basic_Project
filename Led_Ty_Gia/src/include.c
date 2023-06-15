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
        __ms--;
    }
    clrb(T3CON, TR3);                                		//Stop Timer3
}
