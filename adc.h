#ifndef _ADC_H_
#define _ADC_H_

#include <stdint.h>
#include "adc_config.h"
typedef enum{
    ADC_AUTORUN,
}adc_trigger_t;

void adc_init(void);
void adc_select_channel(uint8_t channel);
void adc_set_trigger(uint8_t state);
void adc_select_trigger(adc_trigger_t trigger);
void adc_start_conv();
uint8_t adc_is_dataready();
uint16_t adc_get_data();


#endif