/*
 * File:   main.c
 * Author: ThangVu
 *
 * Created on February 16, 2016, 12:21 PM
 */


#include <xc.h>
// CONFIG1
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = ON       // RE3/MCLR pin function select bit (RE3/MCLR pin function is MCLR)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Code Protection bit (Data memory code protection is disabled)
#pragma config BOREN = ON       // Brown Out Reset Selection bits (BOR enabled)
#pragma config IESO = ON        // Internal External Switchover bit (Internal/External Switchover mode is enabled)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enabled bit (Fail-Safe Clock Monitor is enabled)
#pragma config LVP = OFF        // Low Voltage Programming Enable bit (RB3 pin has digital I/O, HV on MCLR must be used for programming)

// CONFIG2
#pragma config BOR4V = BOR40V   // Brown-out Reset Selection bit (Brown-out Reset set to 4.0V)
#pragma config WRT = OFF        // Flash Program Memory Self Write Enable bits (Write protection off)

#define _XTAL_FREQ 4000000
unsigned int count = 0;
void main(void) {      
    //Variable------------------------------------------------------------------------//   
    TRISC                   = 0x00; //PortC is output
    PORTC                   = 0x00; //Init value for PortC   
    //Config timer0-------------------------------------------------------------------//
    TMR0 = 56;                      //init TMR0 counter
    OPTION_REGbits.T0CS     = 0;    //Use timer0
    OPTION_REGbits.PSA      = 0;    //Use internal crystal
    OPTION_REGbits.PS2      = 0;    //-------------------------------------------------
    OPTION_REGbits.PS1      = 1;    //PS2,PS1,PS0 = 010 means prescale = 8 (Datasheet)
    OPTION_REGbits.PS0      = 0;    //-------------------------------------------------
    //--------------------------------------------------------------------------------//    
	while(1){     
        if(INTCONbits.TMR0IF == 1){ //detect timer0 interrupt
            INTCONbits.TMR0IF = 0;  //clear interrupt flag
            TMR0 = 56;                  
            count++;
            if(count == 625){           
                count = 0;
                PORTC = ~PORTC;     //invert PORTC 
            }
        }
	}
    return;
}
