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

void a_sequential() {
PORTB = 0b00000000;
delay_ms(500);
PORTB = 0b10000000;
delay_ms(500);
PORTB = 0b01000000;
delay_ms(500);
PORTB = 0b00100000;
delay_ms(500);
PORTB = 0b00010000;
delay_ms(500);
PORTB = 0b00001000;
delay_ms(500);
PORTB = 0b00000100;
delay_ms(500);
PORTB = 0b00000010;
delay_ms(500);
PORTB = 0b00000001;
delay_ms(500);
}

void blink_even() {
PORTB = 0b10101010;
delay_ms(500);
PORTB = 0b00000000;
delay_ms(500);
}

void blink_odd() {
PORTB = 0b01010101;
delay_ms(500);
PORTB = 0b00000000;
delay_ms(500);
}

void first_four() {
PORTB = 0b00001111;
delay_ms(500);
PORTB = 0b00000000;
delay_ms(500);
}

void last_four() {
PORTB = 0b11110000;
delay_ms(500);
PORTB = 0b00000000;
delay_ms(500);
}

void entry() {
initialisation();
blink_all();


sequential();
sequential();
sequential();
sequential();
sequential();


a_sequential();
a_sequential();
a_sequential();
a_sequential();
a_sequential();


blink_even();
blink_even();
blink_even();
blink_even();
blink_even();


blink_odd();
blink_odd();
blink_odd();
blink_odd();
blink_odd();


first_four();
first_four();
first_four();
first_four();
first_four();


last_four();
last_four();
last_four();
last_four();
last_four();
}

void main() {
for(;;) {
entry();
}
}
