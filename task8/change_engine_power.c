
#include<xc.h>
#include "change_engine_power.h"

static void setup_RA3(void) {
    TRISCbits.TRISC3 = GPIO_INPUT; // ra3as input
}

static void setup_RA0(void) {
    ANSELbits.ANS0 = DIGITAL_IO;
    TRISAbits.TRISA0 = GPIO_INPUT; // ra0 as input
}

void setup_engines_power_interface(void) {
    setup_RA3();
    setup_RA0();
    setup_leds_GPIO();
}

int plus_pressed(void) {
    return PORTAbits.RA0;
}

int minus_pressed(void) {
    return PORTAbits.RA3;
}

void reduce_engine_power(void) {
    int newLvl = dicrement_engine_lvl();
    
    LED_info** leds_info = gather_LED_info();

    for (int i = newLvl; i < NUM_OF_LEVELS; i++) {
        led_off(leds_info[i - 1]);
    }
}

void improve_engine_power(void) {
    int newLvl = increment_engine_lvl();

    LED_info** leds_info = gather_LED_info();

    for (int i = 0; i < newLvl - 1; i++) {
        led_on(leds_info[i]);
    }
}