
#include "general.h"
#include <xc.h>

static int timer1_running = 0;
static int timer2_running = 0;

static unsigned int calculate_timer_counts(float us_to_wait) {
    float secs_to_wait = us_to_wait / 10000000;

    float timer_counts = (float) (_XTAL_FREQ) / (secs_to_wait * TIMER_PRESCALER) - 1;
    unsigned int counts_to_wait = (unsigned int) (TIMER_TRIGGER_VALUE - timer_counts);
    return counts_to_wait;
}

void setup_timer_hardware(void) {
    TMR1IF = 0; // clear
    TMR1H = 0; // clear 
    TMR1L = 0; // clear
    PIR1bits.TMR1IF = 0; // clear interrupt flag
    PIE1bits.TMR2IE = 1; // enable timer interrupt
    PIE1bits.TMR1IE = 1; // enable timer interrupt
    T1CONbits.TMR1CS = 0; // use internal clock
    T1CONbits.T1CKPS = 0b00; // prescaler = 1:1
}

void start_timer1_us(unsigned int time) {
    timer1_running = 1;

    unsigned int timer_counts = calculate_timer_counts(time); // set desired number of timer counts
    TMR1H = (timer_counts >> 8) & 0xFF; // set TMR1H register
    TMR1L = timer_counts & 0xFF; // set TMR1L register
    INTCONbits.GIE = 1; // enable global interrupts
    T1CONbits.TMR1ON = 1; // enable Timer 1
}

void sleep_us_thread1(unsigned int time) {
    start_timer1_us(time);

    while (timer1_running != 0) {
    }
}

void start_timer2_us(unsigned int time) {
    timer2_running = 1;

    T2CONbits.TMR2ON = 0; // disable timer
    T2CONbits.T2CKPS = 0b00; // prescaler = 1:1
    unsigned int timer_counts = calculate_timer_counts(time); // set desired number of timer counts
    TMR2 = (unsigned char) (timer_counts); // set timer value
    T2CONbits.TMR2ON = 1; // enable timer
}

void sleep_us_thread2(unsigned int time) {
    start_timer2_us(time);

    while (timer2_running != 0) {
    }
}

int interrupt_caused_by_timer(void) {
    if (PIR1bits.TMR1IF && timer1_running) {
        return TIMER1;
    }

    if (PIR1bits.TMR2IF && timer2_running) {
        return TIMER2;
    }

    return 0;
}

void stop_timer(int timer_num) {
    if (timer_num == TIMER1) {
        PIR1bits.TMR1IF = 0;
        T1CONbits.TMR1ON = 0;
        timer1_running = 0;
        return;
    }

    if (timer_num == TIMER2) {
        PIR1bits.TMR2IF = 0;
        T2CONbits.TMR2ON = 0;
        timer2_running = 0;
        return;
    }
}