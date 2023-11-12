#include <xc.h>
#include "zero_crossing.h"

static void setup_RB5(void) {
    ANSELHbits.ANS11 = ANALOG_INPUT; // ans11 as analog input
    TRISBbits.TRISB5 = INPUT; // PORTB:5 as output;
    IOCBbits.IOCB5 = ON; // enable interrupt on change on RB5;
}

static void setup_ADC(void) {
    PIE1bits.ADIE = ON; // enable ADC interrupt
    PIR1bits.ADIF = 0; // clear the A/D Converter Interrupt interrupt flag
    INTCONbits.PEIE = ON; // enable peripheral interrupt
    
    ADCON0bits.ADON = ON; // turn on ADC
    ADCON0bits.VCFG = V_REF; // set reference voltage source to Vdd
    ADCON0bits.ADFM = RIGHT_JUSTIFIED; // set ADC result' justifition
    ADCON0bits.CHS = AN11; // select an11 as analog channel
    ADCON1bits.ADCS = 0b101; // AD conversion clock Fosc/16
}

void start_adc_conversion(void) {
    ADCON0bits.GO_nDONE = 1;
}

int is_adc_conversion_done(void) {
    return ADCON0bits.ADON && PIR1bits.ADIF; // is ADC on and has already finished his job
}

void reset_adc_interrupt(void) {
    PIE1bits.ADIE = ON; // re-enable ADC interrupt
    PIR1bits.ADIF = 0; // clear A/D conversion completeness flag
}

float get_conversion_result() {
    int adc_res = (ADRESH << 8) | ADRESL;
    
    float voltage = (adc_res * VOLTAGE) / (2^ADC_resolution - 1);

    return voltage;
}

int is_crossing_zero_point(void) {
    return get_conversion_result() == 0;
}

void start_spectating_zero_crossing(void) {
    setup_RB5();
    setup_ADC();
    start_adc_conversion();
}