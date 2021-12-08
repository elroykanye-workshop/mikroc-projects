#line 1 "C:/Users/Kanye/Documents/Mikroelektronika/mikroC PRO for PIC/Projects/LedBlink/Led_Blink_01.c"
void initialisation() {
TRISB = 0x00;
TRISA = 0x1F;
PORTB = 0x00;
}

void blink_on() {
PORTB = 0b11111111;
delay_ms(500);
}
void blink_off() {
PORTB = 0b00000000;
delay_ms(500);
}

void blink_all() {
blink_on();
blink_off();

blink_on();
blink_off();

blink_on();
blink_off();

blink_on();
blink_off();

blink_on();
blink_off();

blink_on();
blink_off();

blink_on();
blink_off();

blink_on();
blink_off();

blink_on();
blink_off();

blink_on();
blink_off();



}

void sequential() {
PORTB = 0b00000001;
delay_ms(500);
PORTB = 0b00000010;
delay_ms(500);
PORTB = 0b00000100;
delay_ms(500);
PORTB = 0b00001000;
delay_ms(500);
PORTB = 0b00010000;
delay_ms(500);
PORTB = 0b00100000;
delay_ms(500);
PORTB = 0b01000000;
delay_ms(500);
PORTB = 0b10000000;
delay_ms(500);
PORTB = 0b00000000;
delay_ms(500);
}

void main() {
initialisation();
blink_all();
sequential();
}
