// Declaration of global variables
const unsigned short delay = 50;

// Declaration of functions
void init() {
     TRISA = 0x1f;
     TRISB = 0x00;
     PORTB = 0;
     Delay_ms(delay);
}

void gradually_on() {
     PORTB.F0 = 1;
     Delay_ms(delay);
     PORTB.F1 = 1;
     Delay_ms(delay);
     PORTB.F2 = 1;
     Delay_ms(delay);
     PORTB.F3 = 1;
     Delay_ms(delay);
     PORTB.F4 = 1;
     Delay_ms(delay);
     PORTB.F5 = 1;
     Delay_ms(delay);
     PORTB.F6 = 1;
     Delay_ms(delay);
     PORTB.F7 = -1;
     Delay_ms(delay);
}

void gradually_off() {
     PORTB.F0 = 0;
     Delay_ms(delay);
     PORTB.F1 = 0;
     Delay_ms(delay);
     PORTB.F2 = 0;
     Delay_ms(delay);
     PORTB.F3 = 0;
     Delay_ms(delay);
     PORTB.F4 = 0;
     Delay_ms(delay);
     PORTB.F5 = 0;
     Delay_ms(delay);
     PORTB.F6 = 0;
     Delay_ms(delay);
     PORTB.F7 = 0;
     Delay_ms(delay);
}

void all_twice() {
     PORTB = 0xff;
     Delay_ms(delay);
     PORTB = 0x00;
     Delay_ms(delay);
}

// Main Program
void main() {
     init();
     do {
       gradually_on();
       gradually_off();
       all_twice(); all_twice();
     } while(1);
}