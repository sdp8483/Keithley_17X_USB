/*
 * gpio.c
 *
 *  Created on: Feb 10, 2019
 *      Author: Sam
 */

#include <msp430.h>
#include <stdint.h>
#include "gpio.h"

void Init_GPIO()
{
    /*  Inputs from Keithley 17X
     *  All inputs are inverted due to opto, this is reflected in notes
     *  Signal  | Keithley Pin  | MSP430 Port   | NOTES
     *  ===============================================
     *  CLK     | 14            | P2.0          | high when a new value is ready
     *  D5      | 8             | P2.1          | low when left most digit is being displayed
     *  SIGN    | 3             | P2.6          | low when input is +, high when -
     *  OVER    | 6             | P2.7          | low when input is over range
     *   RANGE  |               |               |
     *  B1      | 10            | P1.0          | inverted bit0
     *  B2      | 11            | P1.1          | inverted bit1
     *  B4      | 12            | P1.2          | inverted bit2
     *  B8      | 13            | P1.3          | inverted bit3
     *  DIGITAL | 9             |               | keithley ground
     *   COMMON |               |               |
     */

    // P1.x Inputs
    P1DIR &= ~(BIT0 + BIT1 + BIT2 + BIT3);      // set to input
    P1REN |= BIT0 | BIT1 | BIT2 | BIT3;         // enable pullup resistors
    P1OUT |= BIT0 | BIT1 | BIT2 | BIT3;         // required to enable pullup resistors

    // P2.x Inputs
    P2DIR &= ~(BIT0 + BIT1 + BIT6 + BIT7);      // set to input
    P2REN |= BIT0 | BIT1 | BIT6 | BIT7;         // enable pullup resistors
    P2OUT |= BIT0 | BIT1 | BIT6 | BIT7;         // required to enable pullup resistors

    // Debugging Output
    P1DIR |= BIT4;                              // Use P1.4 as timing debug output
    P1OUT &= ~BIT4;                             // Set to low initially

    //P2IES &= ~BIT0;                             // Interrupt when P2.0 transitions from low to high
    P2IES &= ~BIT6;                             // Interrupt when P2.6 transitions from low to high

    // Configure unused pins
    P1DIR |= BIT5 | BIT6 | BIT7;
    P2DIR |= BIT2 | BIT3 | BIT4 | BIT5;
    P1REN |= BIT5 | BIT6 | BIT7;
    P2REN |= BIT2 | BIT3 | BIT4 | BIT5;
    P1OUT &= ~(BIT5 + BIT6 + BIT7);
    P2OUT &= ~(BIT2 + BIT3 + BIT4 + BIT5);
} // Init_GPIO
