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
#include "task6/engine_manage.h"
#include "task8/change_engine_power.h"
#include "task9/fltr_handler.h"

void __interrupt() isr(void) {
    blink();
    check_fltr_state();
    check_plus_minus_btns_state();
    
    int timer_num = interrupt_caused_by_timer();

    int board_pwr_pulse_should_run = 0;
    int engine_pwr_pulse_should_run = 0;

    if (timer_num) {
        stop_timer(timer_num);

        if (timer_num == TIMER1) {
            board_pwr_pulse_should_run = 1;
        }

        if (timer_num == TIMER2) {
            engine_pwr_pulse_should_run = 1;
        }
    }

    if (is_adc_conversion_done()) {
        reset_adc_interrupt();
        if (is_crossing_zero_point()) {
            set_state_according_to_pwr_btn(); // PORTC does not emit interrupts so we check every time we might change power supply level

            if (board_pwr_pulse_should_run) {
                board_pwr_pulse();
            }

            if (engine_pwr_pulse_should_run) {
                engine_pwr_pulse();
            }
        }

        start_adc_conversion();
    }
    
    if (plus_pressed()) {
        improve_engine_power();
    } else if (minus_pressed()) {
        reduce_engine_power();
    }
}

void global_setup(void) {
    INTCONbits.GIE = 1; //Enable global interrupt
    INTCONbits.PEIE = 1; // enable peripheral interrupts

    setup_timer_hardware();
    setup_RC7();
    setup_RC2();
    turn_board_on();
    setup_engine_managment_ports();
    setup_engines_power_interface();
}

void main(void) {
    //    blink();

    global_setup();
    start_spectating_zero_crossing();

    while (1) {

    }
    return;
}
