#line 1 "C:/Users/elroy/source/GitHub/mikroc-projects/P3BlinkOnlyRB0/P3BlinkOnlyRB0.c"

const unsigned short delay = 50;



void main() {
 TRISA = 0x1f;
 TRISB = 0b11111110;

 do {
 PORTB = 0b11111111;
 Delay_ms(delay);
 PORTB = 0b00000000;
 Delay_ms(delay);
 } while(1);
}
