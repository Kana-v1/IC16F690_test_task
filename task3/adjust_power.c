#include <xc.h>
#include "adjust_power.h"


volatile static unsigned int power_lvl = FULL_POWER;

volatile static unsigned int mid_power_shift_is_running = 0;

void setup_RC7(void) {
    ANSELHbits.ANS9 = 0;
    TRISCbits.TRISC7 = 0;
}

void set_low_pwr(void) {
    power_lvl = MID_POWER;
}

void set_full_pwr(void) {
    power_lvl = FULL_POWER;
}

void set_mid_pwr(void) {
    power_lvl = MID_POWER;
}

void board_pwr_pulse(void) {
    if (power_lvl == LOW_POWER) {
        PORTCbits.RC7 = 0;
        return;
    }

    if (power_lvl == MID_POWER && !mid_power_shift_is_running) {
        PORTCbits.RC7 = 0;
        mid_power_shift_is_running = 1;
        const float pulse_shift = 0.7 * T / 2; // 70% of the half-period time
        unsigned int pulse_shift_us = (unsigned int) (pulse_shift * 1, 000, 000);
        start_timer1_us(pulse_shift_us);
        return;
    }
    
    
    if (PORTCbits.RC7) {
        PORTCbits.RC7 = 0;
    } else {
        PORTCbits.RC7 = 1;
    }
    
    start_timer1_us(PWR_MNGMT_PULSE_DURATION);
}
