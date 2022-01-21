#line 1 "C:/Users/elroy/source/GitHub/mikroc-projects/P2BlinkAllGradual/P2BlinkAllGradual.c"

const unsigned short delay = 25;



void main() {
 TRISA = 0x1f;
 TRISB = 0x00;

 do {
 PORTB = 0b00000000;
 Delay_ms(delay);

 PORTB = 0b00000001;
 Delay_ms(delay);
 PORTB = 0b00000011;
 Delay_ms(delay);
 PORTB = 0b00000111;
 Delay_ms(delay);
 PORTB = 0b00001111;
 Delay_ms(delay);
 PORTB = 0b00011111;
 Delay_ms(delay);
 PORTB = 0b00111111;
 Delay_ms(delay);
 PORTB = 0b01111111;
 Delay_ms(delay);

 PORTB = 0b11111111;

 Delay_ms(delay);
 PORTB = 0b01111111;
 Delay_ms(delay);
 PORTB = 0b00111111;
 Delay_ms(delay);
 PORTB = 0b00011111;
 Delay_ms(delay);
 PORTB = 0b00001111;
 Delay_ms(delay);
 PORTB = 0b00000111;
 Delay_ms(delay);
 PORTB = 0b00000011;
 Delay_ms(delay);
 PORTB = 0b00000001;
 Delay_ms(delay);
 } while(1);

}
