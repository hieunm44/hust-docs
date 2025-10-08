//MinhNguyen
#define _XTAL_FREQ 20000000
#define TMR2PRESCALE 4

#include <xc.h>

// BEGIN CONFIG
#pragma config FOSC = HS // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF // Watchdog Timer Enable bit (WDT enabled)
#pragma config PWRTE = OFF // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF // Flash Program Memory Code Protection bit (Code protection off)
//END CONFIG

long freq;

PWM1_Init(long fre)
{
  PR2 = (_XTAL_FREQ/(fre*4*TMR2PRESCALE)) - 1;
  CCP1M3 = 1; CCP1M2 = 1;  //Configure the CCP1 module 
  T2CKPS0 = 1;T2CKPS1 = 0; TMR2ON = 1; //Configure the Timer module
  TRISC2 = 0; // make port pin on C as output
  freq = fre;
}


PWM1_Duty(unsigned int duty)
{
  if(duty<1024)
  {
    duty = ((float)duty/1023)*_XTAL_FREQ/(freq*TMR2PRESCALE);
    CCP1X = duty & 2; //Store the 1st bit
    CCP1Y = duty & 1; //Store the 0th bit
    CCPR1L = duty>>2; // Store the remaining 8 bíts
  }
}

PWM1_Stop()
{
  CCP1M3 = 0;
  CCP1M2 = 0;
}
void main()
{
  unsigned int i=0;
  PWM1_Init(5000);

  TRISD = 0xFF; //make port pin on D as input
  
  PWM1_Duty(0);
  do
  {
    if(RD0 == 0 && i<1000){
      i += 100;
    }
    if(RD1 == 0 && i>0){
      i -= 100;
    }
    PWM1_Duty(i);


    __delay_ms(50);
  }while(1);
}