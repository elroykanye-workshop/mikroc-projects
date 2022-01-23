// Declare global variables
const unsigned short delay = 50;
const unsigned short hold = 50;
const unsigned short play = 500;

// Declare functions


// Main program
void main() {
     TRISA = 0x1f;
     TRISB = 0b11110000;
     PORTB = 0x00;


     do {
         if(Button(&PORTA, 0, hold, 1)) {
             Sound_Init(&PORTB, 0);
             Sound_Play(500, play);
         }
         if(Button(&PORTA, 1, hold, 1)) {
             Sound_Init(&PORTB, 1);
             Sound_Play(600, play);
         }
         if(Button(&PORTA, 2, hold, 1)) {
             Sound_Init(&PORTB, 2);
             Sound_Play(700, play);
         }
         if(Button(&PORTA, 3, hold, 1)) {
             Sound_Init(&PORTB, 3);
             Sound_Play(800, play);
         }
         if(Button(&PORTA, 4, hold, 1)) {
             PORTB = 0b00000000;
         }
     } while (1);
}