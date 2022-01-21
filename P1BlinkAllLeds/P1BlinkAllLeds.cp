#line 1 "C:/Users/elroy/source/GitHub/mikroc-projects/P1BlinkAllLeds/P1BlinkAllLeds.c"





void main() {

 TRISA = 0x1F;
 TRISB = 0x00;


 do {
 PORTB = 0b11111111;
 Delay_ms(500);
 PORTB = 0b00000000;
 Delay_ms(500);
 } while (1);
}
