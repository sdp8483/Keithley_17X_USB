/*
 * clock.c
 *
 *  Created on: Feb 10, 2019
 *      Author: Sam
 *
 *  Initialize main clock frequency
 */

#include <msp430.h>
#include "clock.h"

void Init_CLK()
{
    // Configure one FRAM waitstate as required by the device datasheet for MCLK
    // operation beyond 8MHz _before_ configuring the clock system.
    FRCTL0 = FRCTLPW | NWAITS_1;

    __bis_SR_register(SCG0);                    // disable FLL
    CSCTL3 |= SELREF__REFOCLK;                  // Set REFO as FLL reference source
    CSCTL0 = 0;                                 // clear DCO and MOD registers
    CSCTL1 &= ~(DCORSEL_7);                     // Clear DCO frequency select bits first
    CSCTL1 |= DCORSEL_5;                        // Set DCO = 16MHz
    CSCTL2 = FLLD_0 + 487;                      // DCOCLKDIV = 16MHz
    __delay_cycles(3);
    __bic_SR_register(SCG0);                    // enable FLL
    while (CSCTL7 & (FLLUNLOCK0 | FLLUNLOCK1)); // FLL locked

    CSCTL4 = SELMS__DCOCLKDIV | SELA__REFOCLK;  // set default REFO(~32768Hz) as ACLK source, ACLK = 32768Hz
                                                // default DCOCLKDIV as MCLK and SMCLK source
} // Init_CLK
