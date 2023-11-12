/* 
 * File:   zero_crossing.h
 * Author: kana
 *
 * Created on November 11, 2023, 3:14 PM
 */

#ifndef ZERO_CROSSING_H
#define	ZERO_CROSSING_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdlib.h>
#include <stdio.h>

#define PULL_UP_DISABLED 0x0
#define INPUT 0x1
#define ANALOG_INPUT    0x1
#define V_REF   0x0
#define AN11    0b1011
#define ON  0x1
#define RIGHT_JUSTIFIED 0x1


#define VOLTAGE 5
#define ADC_resolution  10


    void start_spectating_zero_crossing(void);
    void start_adc_conversion(void); 
    int is_adc_conversion_done(void);
    void reset_adc_interrupt(void);
    float get_conversion_result(void);
    int is_crossing_zero_point(void);
    
#ifdef	__cplusplus
}
#endif

#endif	/* ZERO_CROSSING_H */

