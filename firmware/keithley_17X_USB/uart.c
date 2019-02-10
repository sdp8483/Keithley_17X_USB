/*
 * uart.c
 *
 *  Created on: Feb 10, 2019
 *      Author: Sam
 */

#include <msp430.h>
#include <stdint.h>
#include "uart.h"

void Init_UART()
{
    // Configure UART pins
    P1SEL0 |= BIT6 | BIT7;                      // set 2-UART pin as second function

    // Configure UART
    UCA0CTLW0 |= UCSWRST;
    UCA0CTLW0 |= UCSSEL_2;                      // set SMCLK as BRCLK

    // Baud Rate calculation. Referred to UG 22.3.10
    // Refer to UG Table 22-5 for common baud rates
    // This is calculated in uart.h
    UCA0BR0 = USCI_BR0_VAL;
    UCA0BR1 = USCI_BR1_VAL;
    UCA0MCTLW = USCI_BRS_VAL;

    UCA0CTLW0 &= ~UCSWRST;                      // Initialize eUSCI
    UCA0IE |= UCTXIE;                           // Enable USCI_A0 TX interrupt
} // Init_UART

void UART_print(char *string, unsigned int len)
{
    string += len-1;                            // go to end of string
    for (unsigned int i = (len-1); i > 0; i--)
    {
        UCA0TXBUF = *string;
        string--;
        __bis_SR_register(LPM3_bits | GIE);     // Enter LPM3 while transmitting, interrupts enabled
    }
} // UART_print
