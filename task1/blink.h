/* 
 * File:   blink.h
 * Author: kana
 *
 * Created on November 9, 2023, 9:05 PM
 */

#ifndef BLINK_H
#define	BLINK_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdint.h>


#pragma config FOSC = INTRCIO   // INTRCIO oscillator. I/O functions on RA4, RA5 
    
    typedef struct {
        volatile unsigned char* GPIO_port;
        volatile unsigned char* TRIS_port;
        int index;
    } LED_info; 
   
#define _XTAL_FREQ (4000000UL) // Fosc = 4MHz

    
void blink(void);

#ifdef	__cplusplus
}
#endif

#endif	/* BLINK_H */

