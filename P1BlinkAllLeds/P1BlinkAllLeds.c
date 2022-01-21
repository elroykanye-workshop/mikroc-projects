// Declaration of global variables

// Declaration of functions

// Main program
void main() {
     // Initialisations
     TRISA = 0x1F; // set all PORTA as input
     TRISB = 0x00; // set all PORTB as output
     
     // definition of endless loop
     do {
        PORTB = 0b11111111;
        Delay_ms(5);
        PORTB = 0b00000000;
        Delay_ms(5);
     } while (1); // end of loop
} // end of program