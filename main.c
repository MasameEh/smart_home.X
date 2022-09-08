#define F_CPU 8000000UL
#include <util/delay.h>
#include "smart_home_config.h"
#include "MCAL\ADC\adc.h"
#include "MCAL\DIO\dio.h"
#include "MCAL\TIMER\timer.h"

#define ADC_STEP (5.0/1024.0)

void main()
{
    timer_config_t timer;
	timer.output_mode = PWM;
	timer.clksrc =TIMER_PRESC_1024;
    
    dio_set_direction(LDR_PORT, LRD_PIN, DIO_DIRECTION_INPUT);
    dio_set_direction(LED_PORT, LED_PIN, DIO_DIRECTION_OUTPUT);
    
    dio_set_direction(OPAMP10_PORT, OPAMP10_PIN, DIO_DIRECTION_INPUT);
    dio_set_direction(OPAMP20_PORT, OPAMP30_PIN, DIO_DIRECTION_INPUT);
    dio_set_direction(OPAMP30_PORT, OPAMP20_PIN, DIO_DIRECTION_INPUT);
    
    dio_set_direction(FAN_PORT, FAN_PIN, DIO_DIRECTION_OUTPUT);
    
    adc_init();
    timer_init(TIMER0, timer);
    OCR0 = 255;
    
    adc_select_channel(0);
        
    while (1)
    {
      
        adc_start_conv();

        uint16_t res = adc_get_data();
        float volt =  (float)res * ADC_STEP;
        
        if (volt < 0.75)
        {
            dio_set_level(LED_PORT, LED_PIN, 1);
        }
        else
        {
            dio_set_level(LED_PORT, LED_PIN, 0);
        }
        
        if( dio_get_level(OPAMP10_PORT, OPAMP10_PIN) == DIO_LEVEL_HIGH) OCR0 = 0; //Duty Cycle is 100%
		else if( dio_get_level(OPAMP20_PORT, OPAMP20_PIN) == DIO_LEVEL_HIGH) OCR0 = 102; //Duty Cycle is 60%
		else if( dio_get_level(OPAMP30_PORT, OPAMP30_PIN) == DIO_LEVEL_HIGH) OCR0 = 178; //Duty Cycle is 30%

       
    }
}
 /*if(dio_get_level(LDR_PORT, LRD_PIN) == 0)
        {
            dio_set_level(LED_PORT,LED_PIN, 1);
        }
        else
            dio_set_level(LED_PORT,LED_PIN, 0);*/
