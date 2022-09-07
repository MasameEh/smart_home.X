#include "adc.h"
#include <avr/io.h>



void adc_init(void)
{
    //
    ADMUX &= ~(0b11<<REFS0);
    ADMUX |= ADC_REF_VALUE<<REFS0;

    ADMUX &= ~(0b1<<ADLAR);

    ADCSRA = 0;
    ADCSRA |= ADC_AUTO_TRIGGER<<ADATE;
    ADCSRA |= ADC_INT_ENABLE<<ADIE;
    ADCSRA |= ADC_PRESCALAR_SEL<<ADPS0;
 
    //enable adc
    ADCSRA |= 0b1<<ADEN;
}


void adc_select_channel(uint8_t channel)
{
    ADMUX &= ~(0b11111<<MUX0);
    ADMUX |= channel<<MUX0;
}

void adc_set_trigger(uint8_t state)
{
    if(state == 0)
    {
        ADCSRA &= ~(0b1<<ADATE);
    }
    else
    {
        ADCSRA |= 0b1<<ADATE;
    }
}


void adc_select_trigger(adc_trigger_t trigger)
{
    SFIOR &= ~(0b111<<ADTS0);
    SFIOR |= trigger<<ADTS0;
}


void adc_start_conv()
{
    ADCSRA |= 0b1<<ADSC;
}
uint8_t adc_is_dataready()
{
    uint8_t result = 0x01&(ADCSRA>>ADIF);  //read flag
    ADCSRA |= 0b1 <<ADIF;  //clear flag
    return result;
}
uint16_t adc_get_data()
{
    uint16_t adc_val;
    adc_val = ADCL;
    adc_val |= ADCH << 8;
    return adc_val;
}