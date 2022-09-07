# smart_home
ITI ES-summer training final project

The project consists of 3 Micro controllers:

HARDARE:
1- HMI ECU: responsible for the user interface, it's connected to  keypad, LCD, change mode button (INT0) and Motor control button (Any DIO pin) 

2-Motor control ECU: connected to a DC motor, fan and a temperature sensor (LM35)

3-Lighting ECU: connected to 4 leds which represent the car light system. The 4 leds represent car front left light, car front right light, car rear left light and car rear right light.

COMMUNICATION:
1- HMI ECU and Motor Control ECU are connected through UART.
2- HMI ECU and Lighting ECU are connected through I2C.


REQUIRED FUNCTIONALITY:
Once the simulation starts the user should choose which ECU he/she wants to control. The LCD will show two options in two lines 
Motor colling:
The motor temperature is measured using the LM35 sensor, if the temperature became > 70 do the following:
- Turn the fan on for 20 sec.
- If the temperature becomes< 70 within the 20 sec the fan should be turned off.
- If the temperature remained > 70 even after the 20 sec the following condition should happen:
Turn the motor off
Turn all the lights off
Show "System failure" on LCD.
wait for 30 sec untill you can turn the system on again
When system turns on again, repeat the first step of the project (let user choose the mood)
