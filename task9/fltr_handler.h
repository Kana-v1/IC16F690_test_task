/* 
 * File:   fltr_handler.h
 * Author: kana
 *
 * Created on November 14, 2023, 5:49 PM
 */

#ifndef FLTR_HANDLER_H
#define	FLTR_HANDLER_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include "../task6/engine_manage.h"
#include "../task1/blink.h"

#define GPIO_INPUT 1
#define DIGITAL_IO    0


    void check_fltr_state(void);
    
#ifdef	__cplusplus
}
#endif

#endif	/* FLTR_HANDLER_H */

