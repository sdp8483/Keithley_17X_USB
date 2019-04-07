/*
 * keithley.c
 *
 *  Created on: Feb 10, 2019
 *      Author: Sam
 */

#include <msp430.h>
#include <stdint.h>
#include <string.h>
#include "delay.h"
#include "keithley.h"

void read_databus(char *string)
{
    // this is the string tx during over flow
    // format + space helper { " \n\r00000+" }
    const char overRange[] = { " \n\r    LO" }; // backwards per optimizers request that for loops count down

    switch (P2IN & BIT1)                        // If over range pin is low, reading has overflown
    {
    case OVER_RANGE_ACTIVE:
        strcpy(string, overRange);
        break;

    case OVER_RANGE_INACTIVE:
        if (P2IN & BIT0)
        {
            string[8] = '-';
        } else {
            string[8] = '+';
        }

        for (unsigned int i = 7; i > 2; i--)
        {
            P1OUT |= BIT4;                      // P1.4 on
            string[i] = (~P1IN & 0xF) + 48;
            delay_512us();                      // delay so P1.4 is visible
            P1OUT &= ~BIT4;                     // toggle P1.4 off
            __bis_SR_register(LPM3_bits | GIE); // Enter LPM3, interrupts enabled
        }
        break;
    default:
        break;
    }

}
