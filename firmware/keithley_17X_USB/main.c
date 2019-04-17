/* main.c
 *
 * Created on: Feb 9, 2019
 *      Author: Sam
 *
 * Firmware for Keithley 17X USB option
 */

#include <msp430.h> 
#include <stdint.h>
#include "uart.h"
#include "clock.h"
#include "gpio.h"
#include "delay.h"
#include "keithley.h"

char reading[] = { " \n\r00000+" };             // this is the reading from the Keithley meter
                                                // this string is backwards to optimize for loops per TI advise
int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;                   // Stop watchdog timer
    SFRRPCR |= SYSRSTRE | SYSRSTUP;             // Enable internal pullup resistor on reset pin
    Init_CLK();                                 // Set main clock to 16MHz
    Init_GPIO();                                // Configure GPIO

    PM5CTL0 &= ~LOCKLPM5;                       // Disable the GPIO power-on default high-impedance mode
                                                // to activate previously configured port settings
    Init_UART();

    TB0CCTL0 |= CCIE;                           // TBCCR0 interrupt enabled
    TB0CCR0 = 32000;                            // should interrupt at ~2ms [500Hz]
    TB0CTL = TBSSEL__SMCLK | MC__STOP;          // SMCLK=16MHz, don't start yet

    while (1)
    {
        P2IFG &= ~BIT6;                         // clear pending interrupts
        P2IE |= BIT6;                           // enable interrupt on P2.6, Keithley D5

        __bis_SR_register(LPM3_bits | GIE);     // Enter LPM3, interrupts enabled
        delay_512us();                          // delay so reading is near middle of signals
        TB0CTL ^= MC__UP;                       // toggle timer on

        read_databus(reading);                  // read Keithley databus and save to reading

        TB0CTL ^= MC__UP;                       // toggle timer off

        UART_print(reading, sizeof(reading));   // Send reading via UART
    }
}

// =============================================
// INTERUPT VECTORS LIE BELOW, CAUTION THEY BYTE!
// =============================================


// P2 interrupt, triggered by P2.6 rising edge
#pragma vector=PORT2_VECTOR
__interrupt void PORT2_ISR(void)
{
    P2IE &= ~BIT6;                              // disable any further interrupts
    __bic_SR_register_on_exit(LPM3_bits);       // Exit LPM3
}

#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector=USCI_A0_VECTOR
__interrupt void USCI_A0_ISR(void)
#elif defined(__GNUC__)
void __attribute__ ((interrupt(USCI_A0_VECTOR))) USCI_A0_ISR (void)
#else
#error Compiler not supported!
#endif
{
    switch (__even_in_range(UCA0IV, USCI_UART_UCTXCPTIFG))
    {
    case USCI_NONE:
        break;
    case USCI_UART_UCRXIFG:                     // Receive interrupt flag, set when UCA0RXBUF receives a char
        break;
    case USCI_UART_UCTXIFG:                     // Transmit interrupt flag, set when UCA0TXBUF empty
        __bic_SR_register_on_exit(LPM3_bits);   // Exit LPM3
        break;
    case USCI_UART_UCSTTIFG:
        break;
    case USCI_UART_UCTXCPTIFG:
        break;
    default:
        break;
    }
}

// Timer B0 interrupt service routine
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector = TIMER0_B0_VECTOR
__interrupt void Timer_B (void)
#elif defined(__GNUC__)
void __attribute__ ((interrupt(TIMER0_A0_VECTOR))) Timer_A (void)
#else
#error Compiler not supported!
#endif
{
    __bic_SR_register_on_exit(LPM3_bits);       // Exit LPM3
}

// WDT interrupt service routine
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector = WDT_VECTOR
__interrupt void WDT_ISR(void)
#else
#error Compiler not supported!
#endif
{
    WDTCTL = WDTPW + WDTHOLD;                   // Stop WDT
    __bic_SR_register_on_exit(LPM3_bits);       // Exit LPM3
}
