/* main.c
 *
 * Created on: Feb 9, 2019
 *      Author: Sam
 *
 * Firmware for Keithley 17X USB option
 */

#include <msp430.h> 
#include <stdint.h>
#include "uart_settings.h"

void Init_CLK();
void Init_GPIO();
void Init_UART();
void WDT_delay();

char reading[] = { " \n\r00000+" };

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;                   // Stop watchdog timer
    SFRRPCR |= SYSRSTRE | SYSRSTUP; // Enable internal pullup resistor on reset pin
    Init_CLK();                                 // Set main clock to 16MHz
    Init_GPIO();                                // Configure GPIO

    PM5CTL0 &= ~LOCKLPM5; // Disable the GPIO power-on default high-impedance mode
                          // to activate 1previously configured port settings
    Init_UART();

    while (1)
    {
        P2IFG &= ~BIT0;                        // clear pending interrupts
        P2IE |= BIT0;                              // enable interrupt on P2.1
        __bis_SR_register(LPM3_bits | GIE);    // Enter LPM3, interrupts enabled

        // awake from P2.0
        if (P2IN & BIT6)
        {
            reading[8] = '-';
        }
        else
        {
            reading[8] = '+';
        }

        for (unsigned int i = 7; i > 2; i--)
        {
            WDT_delay();
            reading[i] = (~P1IN & 0xF) + 48;
            WDT_delay();
            WDT_delay();
            WDT_delay();
        }

        for (unsigned int i = (sizeof(reading) - 1); i > 0; i--)
        {
            UCA0TXBUF = reading[i];
            __bis_SR_register(LPM3_bits | GIE); // Enter LPM3, interrupts enabled
        }
    }
}

// Port2 Interrupt Vector handler
#pragma vector=PORT2_VECTOR
__interrupt void PORT2_ISR(void)
{
    P2IE &= ~BIT0;                             // disable any further interrupts
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
    case USCI_UART_UCRXIFG: // Receive interrupt flag, set when UCA0RXBUF receives a char
        break;
    case USCI_UART_UCTXIFG: // Transmit interrupt flag, set when UCA0TXBUF empty
        __bic_SR_register_on_exit(LPM3_bits);       // Exit LPM3
        break;
    case USCI_UART_UCSTTIFG:                //
        break;
    case USCI_UART_UCTXCPTIFG: // transmit ready interrupt flag, entire byte in internal shift register is shifted out and UCA0TXBUF is empty
        break;
    default:
        break;
    }
}

// WDT interrupt service routine
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector = WDT_VECTOR
__interrupt void WDT_ISR(void)
#else
#error Compiler not supported!
#endif
{
    WDTCTL = WDTPW + WDTHOLD;               // Stop WDT
    __bic_SR_register_on_exit(LPM3_bits);   // Exit LPM3
}

// Initialize main clock
void Init_CLK()
{
    // Configure one FRAM waitstate as required by the device datasheet for MCLK
    // operation beyond 8MHz _before_ configuring the clock system.
    FRCTL0 = FRCTLPW | NWAITS_1;

    __bis_SR_register(SCG0);                           // disable FLL
    CSCTL3 |= SELREF__REFOCLK;               // Set REFO as FLL reference source
    CSCTL0 = 0;                                   // clear DCO and MOD registers
    CSCTL1 &= ~(DCORSEL_7);             // Clear DCO frequency select bits first
    CSCTL1 |= DCORSEL_5;                               // Set DCO = 16MHz
    CSCTL2 = FLLD_0 + 487;                             // DCOCLKDIV = 16MHz
    __delay_cycles(3);
    __bic_SR_register(SCG0);                    // enable FLL
    while (CSCTL7 & (FLLUNLOCK0 | FLLUNLOCK1))
        ; // FLL locked

    CSCTL4 = SELMS__DCOCLKDIV | SELA__REFOCLK; // set default REFO(~32768Hz) as ACLK source, ACLK = 32768Hz
                                               // default DCOCLKDIV as MCLK and SMCLK source
} // Init_CLK

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
    P1OUT |= BIT0 | BIT1 | BIT2 | BIT3;   // required to enable pullup resistors

    // P2.x Inputs
    P2DIR &= ~(BIT0 + BIT1 + BIT6 + BIT7);      // set to input
    P2REN |= BIT0 | BIT1 | BIT6 | BIT7;         // enable pullup resistors
    P2OUT |= BIT0 | BIT1 | BIT6 | BIT7;   // required to enable pullup resistors

    P2IES &= ~BIT0;          // Interrupt when P2.0 transitions from low to high

    // Configure unused pins
    P1DIR |= BIT4 | BIT5 | BIT6 | BIT7;
    P2DIR |= BIT2 | BIT3 | BIT4 | BIT5;
    P1REN |= BIT4 | BIT5 | BIT6 | BIT7;
    P2REN |= BIT2 | BIT3 | BIT4 | BIT5;
    P1OUT &= ~(BIT4 + BIT5 + BIT6 + BIT7);
    P2OUT &= ~(BIT2 + BIT3 + BIT4 + BIT5);
} // Init_GPIO

void Init_UART()
{
    // Configure UART pins
    P1SEL0 |= BIT6 | BIT7;                  // set 2-UART pin as second function

    // Configure UART
    UCA0CTLW0 |= UCSWRST;
    UCA0CTLW0 |= UCSSEL_2;                    // set SMCLK as BRCLK

    // Baud Rate calculation. Referred to UG 22.3.10
    // Refer to UG Table 22-5 for common baud rates
    // This is calculated in uart_settings.h
    UCA0BR0 = USCI_BR0_VAL;
    UCA0BR1 = USCI_BR1_VAL;
    UCA0MCTLW = USCI_BRS_VAL;

    UCA0CTLW0 &= ~UCSWRST;                    // Initialize eUSCI
    UCA0IE |= UCTXIE;                         // Enable USCI_A0 TX interrupt
} // Init_UART

void WDT_delay()
{
    // WDT as 0.512 ms interval counter
    SFRIFG1 &= ~WDTIFG;
    WDTCTL = WDTPW + WDTSSEL_0 + WDTTMSEL + WDTCNTCL + WDTIS_5;
    SFRIE1 |= WDTIE;
    __bis_SR_register(LPM3_bits);               // Enter LPM3
} //WDT_delay

