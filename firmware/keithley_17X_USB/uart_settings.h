/*
 * uart_settings.h
 *
 *  Created on: Feb 9, 2019
 *      Author: Sam
 *
 *  C preprocessor code copied from:
 *      http://embedded-funk.net/writing-c-code-smartly-1-using-your-c-preprocessor-as-your-calculator/
 *
 *  This makes UART register settings and calulations so much easier,
 */

#ifndef UART_SETTINGS_H_
#define UART_SETTINGS_H_

#define USCI_INPUT_CLK      (16000000UL)    // Hz, This is the UART clock
#define USCI_BAUD_RATE      (115200UL)      // This is the desired baud rate

#define USCI_DIV_INT              (USCI_INPUT_CLK/USCI_BAUD_RATE)
#define USCI_BR0_VAL              (USCI_DIV_INT & 0x00FF)
#define USCI_BR1_VAL              ((USCI_DIV_INT >> 8) & 0xFF)

#define USCI_DIV_FRAC_NUMERATOR   (USCI_INPUT_CLK - (USCI_DIV_INT*USCI_BAUD_RATE))
#define USCI_DIV_FRAC_NUM_X_8     (USCI_DIV_FRAC_NUMERATOR*8)
#define USCI_DIV_FRAC_X_8         (USCI_DIV_FRAC_NUM_X_8/USCI_BAUD_RATE)

#if (((USCI_DIV_FRAC_NUM_X_8-(USCI_DIV_FRAC_X_8*USCI_BAUD_RATE))*10)/USCI_BAUD_RATE < 5)
#define USCI_BRS_VAL              (USCI_DIV_FRAC_X_8<< 1)
#else
#define USCI_BRS_VAL              ((USCI_DIV_FRAC_X_8+1)<< 1)
#endif

#endif /* UART_SETTINGS_H_ */
