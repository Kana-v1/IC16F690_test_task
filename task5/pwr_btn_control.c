
#include <xc.h>
#include "pwr_btn_control.h"
#include "../task4/state_change.h"

void setup_RC2(void) {
    ANSELbits.ANS6 = DIGITAL_IO;
    TRISCbits.TRISC2 = GPIO_INPUT; // rc2 as input
}

int is_pwr_btn_pressed(void) {
    return PORTCbits.RC2;
}


void set_state_according_to_pwr_btn(void) {
    if (is_pwr_btn_pressed()) {
        turn_board_on();
        
        // task 10
        start_engine();
        if plus_pressed() {
            set_engine_power_level(5);
            return;
        }
        
        if minus_pressed() {
            set_engine_power_level(1);
            return;
        }
        
        set_engine_power_level(3);
        return;
    } 
    
    turn_board_off();
}
