/*
 * dio.h
 *
 *      Author: Mohamed Sameh
 */

#ifndef MCAL_DIO_DIO_H_
#define MCAL_DIO_DIO_H_

typedef enum
{
    DIO_PORTA = 0,
    DIO_PORTB,
    DIO_PORTC,
    DIO_PORTD,
} dio_t;

typedef enum{
    DIO_PIN0 = 0,
    DIO_PIN1,
    DIO_PIN2,
    DIO_PIN3,
    DIO_PIN4,
    DIO_PIN5,
    DIO_PIN6,
    DIO_PIN7,
} dio_pin_t;

typedef enum
{
    DIO_DIRECTION_INPUT = 0,
    DIO_DIRECTION_OUTPUT = 1
} dio_direction_t;

typedef enum
{
    DIO_LEVEL_LOW = 0,
    DIO_LEVEL_HIGH = 1
} dio_level_t;

void dio_set_direction(dio_t port, dio_pin_t pin, dio_direction_t direction);
void dio_set_port_direction(dio_t port, dio_direction_t direction);
void dio_set_level(dio_t port, dio_pin_t pin, dio_level_t value);
void dio_set_port_level(dio_t port, dio_level_t value);
dio_level_t dio_get_level(dio_t port, dio_pin_t pin);

#endif /* MCAL_DIO_DIO_H_ */
