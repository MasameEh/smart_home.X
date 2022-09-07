#ifndef _ADC_H_
#define _ADC_H_

#include <stdint.h>

/**************
 *   TYPEDEF
***************/
typedef enum{
    AREF=0b00,
    AVCC=0b01,
    INTERNAL2_56V=0b11,
}adc_ref_t;

typedef enum{
    PRESCALAR_2 = 0b00,
    PRESCALAR_4 = 0b10,
    PRESCALAR_8 = 0b11,
    PRESCALAR_16 = 0b01,
    PRESCALAR_32 = 0b101,
    PRESCALAR_64 = 0b011,
    PRESCALAR_128 = 0b111,
}adc_prescalar_val;


/**************
 *   USERDEF
***************/
#define ADC_REF_VALUE     AVCC
#define ADC_AUTO_TRIGGER  0
#define ADC_INT_ENABLE    0
#define ADC_PRESCALAR_SEL PRESCALAR_64

typedef enum
{
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