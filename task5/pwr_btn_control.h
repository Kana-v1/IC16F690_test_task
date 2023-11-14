/* 
 * File:   pwr_btn_control.h
 * Author: kana
 *
 * Created on November 12, 2023, 2:03 PM
 */

#ifndef PWR_BTN_CONTROL_H
#define	PWR_BTN_CONTROL_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include "../task6/engine_manage.h"
#include "../task8/change_engine_power.h"   

    void setup_RC2(void);
    int is_pwr_btn_pressed(void);
    void set_state_according_to_pwr_btn(void);
            
#ifdef	__cplusplus
}
#endif

#endif	/* PWR_BTN_CONTROL_H */

