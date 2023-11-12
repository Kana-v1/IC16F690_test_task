#include <xc.h>
#include "adjust_power.h"


volatile static unsigned int power_lvl = FULL_POWER;

void setup_RC7(void) {
    ANSELHbits.ANS9 = 0;
    TRISCbits.TRISC7 = 0;
}

void set_low_pwr(void) {
    power_lvl = LOW_POWER;
}

void set_full_pwr(void) {
    power_lvl = FULL_POWER;
}

void set_mid_pwr(void) {
    power_lvl = MID_POWER;
}

void pwr_pulse(void) {
    if (power_lvl == LOW_POWER) {
        return;
    }
    
    if (power_lvl == MID_POWER) {
        const float pulse_shift = 0.7 * T / 2; // 70% of the half-period time
        const unsigned long pulse_shift_us = (unsigned long)(pulse_shift * 1,000,000);
        __delay_us(pulse_shift_us);
    }
    
    PORTCbits.RC7 = 1;
    __delay_us(PULSE_DURATION);
    PORTCbits.RC7 = 0;
}
