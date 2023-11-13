/* 
 * File:   general.h
 * Author: kana
 *
 * Created on November 12, 2023, 1:33 PM
 */

#ifndef GENERAL_H
#define	GENERAL_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <math.h>
    
#define _XTAL_FREQ (4000000UL) // Fosc = 4MHz
#define freq    50 // assume 220V 50Hz
#define T 1/freq

#define DIGITAL_IO    0

#define GPIO_OUTPUT 0    
#define GPIO_INPUT 1
#define PULL_UP_DISABLED 0
#define INTERRUPT_DISABLE 0 
    
#define PWR_MNGMT_PULSE_DURATION 20 // power management pulse duration. mcsec

    
#define TIMER1 1
#define TIMER2 2
#define TIMER_TRIGGER_VALUE 0xFFFF
 
#define TIMER_PRESCALER 1
    
    void setup_timer_hardware(void);
    void start_timer1_us(unsigned int time);
    void start_timer2_us(unsigned int time);
    void sleep_us_thread2(unsigned int time);
    void sleep_us_thread1(unsigned int time);
    int interrupt_caused_by_timer(void);
    void stop_timer(int timer_num);

#ifdef	__cplusplus
}
#endif

#endif	/* GENERAL_H */

