void initialisation() {
TRISB = 0x00; // all PORTB set as output
TRISA = 0x1F; // all PORTA set as input
PORTB = 0x00; // put off all PORTB
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
//
blink_on();
blink_off();
//
blink_on();
blink_off();
//
blink_on();
blink_off();
//
blink_on();
blink_off();
//
blink_on();
blink_off();
//
blink_on();
blink_off();
//
blink_on();
blink_off();
//
blink_on();
blink_off();
//
blink_on();
blink_off();
//
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

// sequential 5 times
sequential();
sequential();
sequential();
sequential();
sequential();

// anti sequential 5 times
a_sequential();
a_sequential();
a_sequential();
a_sequential();
a_sequential();

// even 5 times
blink_even();
blink_even();
blink_even();
blink_even();
blink_even();

// odd 5 times
blink_odd();
blink_odd();
blink_odd();
blink_odd();
blink_odd();

// 1st four 5 times
first_four();
first_four();
first_four();
first_four();
first_four();

// last four 5 times
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