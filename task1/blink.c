
#include <xc.h>
#include "blink.h"

LED_info** gather_LED_info(void) {
    LED_info* LED1 = (LED_info*) malloc(sizeof (LED_info));
    LED1->GPIO_port = &PORTA;
    LED1->TRIS_port = &TRISA;
    LED1->index = 4;

    LED_info* LED2 = (LED_info*) malloc(sizeof (LED_info));
    LED2->GPIO_port = &PORTC;
    LED2->TRIS_port = &TRISC;
    LED2->index = 5;

    LED_info* LED3 = (LED_info*) malloc(sizeof (LED_info));
    LED3->GPIO_port = &PORTC;
    LED3->TRIS_port = &TRISC;
    LED3->index = 4;

    LED_info* LED4 = (LED_info*) malloc(sizeof (LED_info));
    LED4->GPIO_port = &PORTB;
    LED4->TRIS_port = &TRISB;
    LED4->index = 7;

    LED_info* LED5 = (LED_info*) malloc(sizeof (LED_info));
    LED5->GPIO_port = &PORTA;
    LED5->TRIS_port = &TRISA;
    LED5->index = 5;

    LED_info** leds_info = (LED_info**) malloc(5 * sizeof (LED_info*));
    leds_info[0] = LED1;
    leds_info[1] = LED2;
    leds_info[2] = LED3;
    leds_info[3] = LED4;
    leds_info[4] = LED5;

    return leds_info;
}

void setup_leds_GPIO(void) {
    OSCCONbits.SCS = 0;
    ANSELbits.ANS3 = 0;
}

void led_on(LED_info* led) {
    int shift = led->index;
    *led->TRIS_port &= ~(1 << shift);
    *led->GPIO_port |= 1 << shift;
}

void led_off(LED_info* led) {
    int shift = led->index;
    *led->GPIO_port &= ~(1 << shift);
}

void wave_blink(void) {
    setup_leds_GPIO();
    LED_info** leds_info = gather_LED_info();

    for (int i = 0; i < 5; i++) {
        led_on(leds_info[i]);
        __delay_ms(100);
        led_off(leds_info[i]);
    }
}

static unsigned int blink_counter = 0;
static int turned_on = 0;
static int leds_to_blink = 0;

void start_blink(unsigned int num_of_leds_to_blink) {
    leds_to_blink = num_of_leds_to_blink;

    LED_info** leds = gather_LED_info();
    for (int i = 0; i < 5; i++) {
        led_off(leds[i]);
    }
}

void stop_blink(void) {
    leds_to_blink = 0;
    blink_counter = 0;
    turned_on = 1;

    LED_info** leds = gather_LED_info();
    for (int i = 0; i < 5; i++) {
        led_off(leds[i]);
    }
}

void blink(void) {
    if (leds_to_blink == 0) {
        return;
    }

    blink_counter++;

    // wait some time between turning LEDs on and off 
    if (blink_counter < 500000) {
        return;
    }
    
    LED_info** leds = gather_LED_info();

    for (int i = 0; i < leds_to_blink; i +) {
        if (turned_on) {
            led_off(leds[i]);
            continue;
        }

        led_on(leds[i]);        
    }
    
    if (turned_on) {
        turned_on = 0;
        return;
    }
    
    turned_on = 1;
    blink_counter = 0;
}


