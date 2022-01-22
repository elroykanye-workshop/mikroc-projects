#line 1 "C:/Users/elroy/source/GitHub/mikroc-projects/P3BlinkOnlyRB0OnSwitch/P3BlinkOnlyRB0OnSwitch.c"

const unsigned short delay = 50;




void main() {
 TRISA = 0x1f;
 TRISB = 0b11111110;
 PORTB.F0 = 0;

 do {
 if (PORTA.F0 == 1) {
 PORTB.F0 = 1;
 Delay_ms(delay);
 PORTB.F0 = 0;
 Delay_ms(delay);
 } else {
 PORTB.F1 = 0;
 }
 } while(1);

}
