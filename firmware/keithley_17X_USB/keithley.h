/*
 * keithley.h
 *
 *  Created on: Feb 10, 2019
 *      Author: Sam
 */

#ifndef KEITHLEY_H_
#define KEITHLEY_H_

#define OVER_RANGE_ACTIVE   0
#define OVER_RANGE_INACTIVE BIT7

void read_databus(char *string);

#endif /* KEITHLEY_H_ */
