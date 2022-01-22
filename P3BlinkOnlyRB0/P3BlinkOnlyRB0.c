// Declaration of global variables
const unsigned short delay = 50;
// Declaration of functions

// Main program
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
