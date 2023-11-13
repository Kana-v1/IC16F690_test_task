/* 
 * File:   engine_manage.h
 * Author: kana
 *
 * Created on November 12, 2023, 3:11 PM
 */

#ifndef ENGINE_MANAGE_H
#define	ENGINE_MANAGE_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include "../general.h"

#define ENGINE_TURNED_OFF 0

#define LEVEL_5 45 // % of T/2 
#define LEVEL_4 53 // % of T/2 
#define LEVEL_3 61 // % of T/2 
#define LEVEL_2 69 // % of T/2 
#define LEVEL_1 78 // % of T/2 
#define ENGINE_START_LVL    85 // % of T/2 

    void setup_engine_managment_ports(void);
    void engine_pwr_pulse(void);
    void start_engine(void);
    int increment_engine_lvl(void);
    int dicrement_engine_lvl(void);

#ifdef	__cplusplus
}
#endif

#endif	/* ENGINE_MANAGE_H */

