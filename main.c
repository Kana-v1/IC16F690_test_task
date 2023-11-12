/*
 * File:   main.c
 * Author: kana
 *
 * Created on November 7, 2023, 6:04 PM
 */


#include <xc.h>
#include "general.h"
#include "task1/blink.h"
#include "task2/zero_crossing.h"
#include "task3/adjust_power.h"
#include "task4/state_change.h"
#include "task5/pwr_btn_control.h"

void __interrupt() isr(void) {
    if (is_adc_conversion_done()) {
        reset_adc_interrupt();
        if (is_crossing_zero_point()) {
            set_state_according_to_pwr_btn(); // PORTC does not emit interrupts
            pwr_pulse();
        }
        
        start_adc_conversion();
    }

    return;
}

void global_setup(void) {
    INTCONbits.GIE = 1; //Enable global interrupt
    setup_RC7();
    setup_RC2();
    turn_board_on();    
}

void main(void) {
    blink();
    
    global_setup();
    
    start_spectating_zero_crossing();
    
    while (1){
        
    }
    return;
}
