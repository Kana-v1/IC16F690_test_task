
#include<xc.h>
#include "change_engine_power.h"

static void plus_btn_state_was_changed = 0;
static void minus_btn_state_was_changed = 0;

static void setup_RA3(void) {
    TRISCbits.TRISC3 = GPIO_INPUT; // ra3as input
    IOCAbits.IOC3 = 1; // enable ra3 interrupt 
}

static void setup_RA0(void) {
    ANSELbits.ANS0 = DIGITAL_IO;
    TRISAbits.TRISA0 = GPIO_INPUT; // ra0 as input
    IOCAbits.IOC0 = 1; // enable ra0 interrupt 
}

void setup_engines_power_interface(void) {
    INTCONbits.INTE = 1; // enable external interrupt
    INTCONbits.INTF = 0; // clear external interrupt flag
    INTCONbits.GIE = 1; // enable global interrupts
    
    setup_RA3();
    setup_RA0();
    setup_leds_GPIO();
}

// task 11
void check_plus_minus_btns_state(void) {
    if (PORTAbits.RA0) {
        plus_btn_state_was_changed = 0; 
    } else if (plus_btn_state_was_changed == 2){ // if btn was already recognized as pressed 
        plus_btn_state_was_changed = 1; // make it be recognized as pressed 
    }

    if (PORTAbits.RA3) {
        minus_btn_state_was_changed = 0;
    } else if (minus_btn_state_was_changed == 2) {
        minus_btn_state_was_changed = 1;
    }    
}


int plus_pressed(void) {
    int res =  !PORTAbits.RA0 && plus_btn_state_was_changed == 1;
    plus_btn_state_was_changed = 2; // void btn being recognized twice as pressed  
    return res;
}

int minus_pressed(void) {
    int res =  !PORTAbits.RA3 && minus_btn_state_was_changed == 1;
    minus_btn_state_was_changed = 2; 
    return res;
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