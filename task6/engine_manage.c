
#include <xc.h>
#include "engine_manage.h"

volatile unsigned int current_lvl = LEVEL_5;
volatile unsigned int desired_lvl = LEVEL_5;

volatile int should_shift = 1;
volatile int should_pulse = 0;

static void setup_RA1(void) {
    ANSELbits.ANS1 = DIGITAL_IO;
    TRISAbits.TRISA1 = GPIO_OUTPUT;
    WPUAbits.WPU1 = PULL_UP_DISABLED;
    IOCAbits.IOC1 = INTERRUPT_DISABLE;
}

static void setup_RA2(void) {
    ANSELbits.ANS2 = DIGITAL_IO;
    TRISAbits.TRISA2 = GPIO_OUTPUT;
    WPUAbits.WPU2 = PULL_UP_DISABLED;
    IOCAbits.IOC2 = INTERRUPT_DISABLE;
}

void setup_engine_managment_ports(void) {
    setup_RA1();
    setup_RA2();
}

static void send_pulse(void) {
    float pulse_shift = current_lvl * T / 2 / 100;
    unsigned int pulse_shift_us = (unsigned int) (pulse_shift * 1, 000, 000);
    if (should_shift) {
        start_timer2_us(pulse_shift_us);
        should_shift = 0;
        should_pulse = 1;
        return;
    }

    if (should_pulse) {
        PORTAbits.RA1 = 1;
        PORTAbits.RA2 = 1;

        sleep_us_thread2(PWR_MNGMT_PULSE_DURATION);

        return;
    }

    PORTAbits.RA1 = 0;
    PORTAbits.RA2 = 0;

    should_shift = 0;
    should_pulse = 1;
}

void engine_pwr_pulse(void) {
    if (current_lvl == ENGINE_TURNED_OFF) {
        return;
    }

    send_pulse();
    if (current_lvl > desired_lvl) {
        --current_lvl;
    }
}

void start_engine(void) {
    current_lvl = ENGINE_START_LVL;
}

static int set_engine_power_level(unsigned int lvl) {
    int level = 0;

    switch (lvl) {
        case 1:
            level = LEVEL_1;
            break;
        case 2:
            level = LEVEL_2;
            break;
        case 3:
            level = LEVEL_3;
            break;
        case 4:
            level = LEVEL_4;
            break;
        case 5: level = LEVEL_5;
            break;
        default:
            break;
    }
    
    if (lvl < 1) {
        level = LEVEL_1;
        lvl = 1;
    }
    
    if (lvl > 5) {
        level = LEVEL_5;
        lvl = 5;
    }
    
    current_lvl = lvl;
    desired_lvl = lvl;
    
    return lvl;
}

int increment_engine_lvl(void) {
    return set_engine_power_level(current_lvl + 1);
}

int dicrement_engine_lvl(void) {
    return set_engine_power_level(current_lvl - 1);
}