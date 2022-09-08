/*
 * timer.c
 *
 * Created: 08/09/2022 04:58:54
 *  Author: M-aa2
 */ 

#include "timer.h"
#include <avr/io.h>


void timer_init(timer_t timer, timer_config_t config)
{
	switch (timer)
	{
		case TIMER0:
		// set_mode
		TCCR0 = 0;
		//set output mode
		TCCR0 |= (config.output_mode % 2) << WGM00;
		TCCR0 |= (config.output_mode / 2) << WGM01;
		
		TCCR0 |= config.ctc_mode << COM00;
		//clock source
		TCCR0 |= config.clksrc << CS00;
		//interrupt enable
		if(config.output_mode == NORMAL)
		{
			TIMSK &= ~(0b1<<TOIE0);
		}
		break;

		default:
		break;
	}
}
