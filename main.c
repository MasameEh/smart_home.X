
#define F_CPU 8000000UL
#include <util/delay.h>

#include "smart_home_config.h"
#include "E:\AVR_Drivers\MCAL\ADC\adc.h"

#define ADC_STEP (5.0/1024.0)

void main()
{
    
    dio_set_direction(LDR_PORT, LRD_PIN, DIO_DIRECTION_INPUT);
    dio_set_direction(LED_PORT, LED_PIN, DIO_DIRECTION_OUTPUT);
    adc_init();
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
     
       
    }
}
 /*if(dio_get_level(LDR_PORT, LRD_PIN) == 0)
        {
            dio_set_level(LED_PORT,LED_PIN, 1);
        }
        else
            dio_set_level(LED_PORT,LED_PIN, 0);*/