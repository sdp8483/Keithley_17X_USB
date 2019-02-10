/*
 * delay.c
 *
 *  Created on: Feb 10, 2019
 *      Author: Sam
 */

#include <msp430.h>
#include <stdint.h>
#include "delay.h"

void delay_32us()
{
    // WDT as 32us interval counter
    SFRIFG1 &= ~WDTIFG;
    WDTCTL = WDTPW + WDTSSEL_0 + WDTTMSEL + WDTCNTCL + WDTIS_6;
    SFRIE1 |= WDTIE;
    __bis_SR_register(LPM3_bits);               // Enter LPM3
} //WDT_delay


void delay_512us()
{
    // WDT as 512us interval counter
    SFRIFG1 &= ~WDTIFG;
    WDTCTL = WDTPW + WDTSSEL_0 + WDTTMSEL + WDTCNTCL + WDTIS_5;
    SFRIE1 |= WDTIE;
    __bis_SR_register(LPM3_bits);               // Enter LPM3
} //WDT_delay
