#ifndef EXTER_INT_H_
#define EXTER_INT_H_

#include <stdint.h>

typedef enum
{
    EXTERINT_INT0,
    EXTERINT_INT1,
    EXTERINT_INT2
} exterint_t;

typedef enum
{
    EXTERINT_RISING_EDGE = 0b11,
    EXTERINT_FALLING_EDGE = 0b10,
    EXTERINT_BOTH_EDGES= 0b01,
    EXTERINT_LOW_LEVEL = 0
}exterint_event_t;


void exterint_set_status(exterint_t int_num, uint8_t status, exterint_event_t event);

#endif