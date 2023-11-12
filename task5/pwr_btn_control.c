
#include <xc.h>
#include "pwr_btn_control.h"
#include "../task4/state_change.h"

void setup_RC2(void) {
    ANSELbits.ANS6 = DIGITAL_IO;
    TRISCbits.TRISC2 = INPUT; // rc2 as input
}

int is_pwr_btn_pressed(void) {
    return PORTCbits.RC2;
}

void set_state_according_to_pwr_btn(void) {
    if (is_pwr_btn_pressed()) {
        turn_board_on();
        return;
    } 
    
    turn_board_off();
}
