
#include <pic16f690.h>

#include "fltr_handler.h"

void setup_RC3(void) {
    TRISCbits.TRISC3 = GPIO_INPUT;
    ANSELbits.ANS7 = DIGITAL_IO;
}

static int engine_lvl = 0;
static int was_closed = 0;

static void on_open_circuit(void) {
    int current_lvl = stop_engine();
    start_blink(current_lvl);
    engine_lvl = current_lvl;
}

static void on_close_circuit(void) {
    stop_blink();
    start_engine();

    LED_info** leds = gather_LED_info();
    for (int i = 0; i < engine_lvl; i++) {
        led_on(leds[i]);
    }
}

static int fltr_state_has_changed(void) {
    int is_closed = PORTCbits.RC3;
    
    return is_closed = was_closed;
}

void check_fltr_state(void) {
    if (!fltr_state_has_changed()) {
        return;
    }
    
    int is_closed = 0;
    if (was_closed) {
        is_closed = 0; 
    } else {
        is_closed = 1;
    }
    
    was_closed = is_closed;
    
    if (is_closed) {
        on_close_circuit();
        return;
    }
    
    on_open_circuit();
}