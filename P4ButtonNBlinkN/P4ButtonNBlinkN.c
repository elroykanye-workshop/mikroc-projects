// Declare global variables
const unsigned short delay = 50;
const unsigned short hold = 50;

// Declare functions


// Main program
void main() {
     TRISA = 0x1f;
     TRISB = 0b11110000;
     
     PORTB = 0b00000000;
     
     do {
         if(Button(&PORTA, 0, hold, 1)) {
             PORTB.F0 = 1;
         }
         if(Button(&PORTA, 1, hold, 1)) {
             PORTB.F1 = 1;
         }
         if(Button(&PORTA, 2, hold, 1)) {
             PORTB.F2 = 1;
         }
         if(Button(&PORTA, 3, hold, 1)) {
             PORTB.F3 = 1;
         }
         if(Button(&PORTA, 4, hold, 1)) {
             PORTB = 0b00000000;
         }
     } while (1);
}