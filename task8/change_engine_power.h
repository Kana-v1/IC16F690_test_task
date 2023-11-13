/* 
 * File:   change_engine_power.h
 * Author: kana
 *
 * Created on November 13, 2023, 7:18 PM
 */

#ifndef CHANGE_ENGINE_POWER_H
#define	CHANGE_ENGINE_POWER_H

#ifdef	__cplusplus
extern "C" {
#endif


#include<xc.h>
#include "../task1/blink.h"
#include "../task6/engine_manage.h"
    
#define DIGITAL_IO    0

#define GPIO_OUTPUT 0    
#define GPIO_INPUT 1
    
#define NUM_OF_LEVELS 5
    
    void setup_engines_power_interface(void);
    
    void improve_engine_power(void);
    void reduce_engine_power(void);
    
    
#ifdef	__cplusplus
}
#endif

#endif	/* CHANGE_ENGINE_POWER_H */

