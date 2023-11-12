/* 
 * File:   adjust_power.h
 * Author: kana
 *
 * Created on November 12, 2023, 12:28 PM
 */

#ifndef ADJUST_POWER_H
#define	ADJUST_POWER_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include "../general.h"

#define PULSE_DURATION 20 // mcsec

#define FULL_POWER  0
#define MID_POWER  1
#define LOW_POWER   2

    void pwr_pulse(void);
    void set_mid_pwr(void);
    void set_full_pwr(void);
    void set_low_pwr(void);
    void setup_RC7(void);

#ifdef	__cplusplus
}
#endif

#endif	/* ADJUST_POWER_H */

