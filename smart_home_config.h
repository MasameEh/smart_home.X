/* 
 * File:   smart_home_config.h
 * Author: DeSkToP
 *
 * Created on September 6, 2022, 5:43 PM
 */

#ifndef SMART_HOME_CONFIG_H
#define	SMART_HOME_CONFIG_H

#include "MCAL\DIO\dio.h"

#define LDR_PORT DIO_PORTA
#define LDR_PIN DIO_PIN0

#define LED_PORT DIO_PORTB
#define LED_PIN DIO_PIN0

#define LM35_PORT DIO_PORTA
#define LM35_PIN DIO_PIN1

#define FAN_PORT DIO_PORTB
#define FAN_PIN DIO_PIN3

#endif	/* SMART_HOME_CONFIG_H */

