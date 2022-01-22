// Declaration of global variables

// Declaration of functions

// Main program
void main() {
     TRISA = 0x1f;
     TRISB = 0b11111110;
     
     do {
        PORTB = 0b11111111;
        Delay_ms(50)
     }
}