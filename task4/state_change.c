#include "state_change.h"

void turn_board_on(void) {
    set_full_pwr();
}

void turn_board_off(void) {
    set_low_pwr();
}