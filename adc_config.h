#ifndef _ADC_CONFIG_H_
#define _ADC_CONFIG_H_

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

#endif
