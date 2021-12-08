void main() {
TRISB = 0x00;
PORTB = 0x00;
     
for(;;) {
RB0_bit = 1;
delay_ms(500);
RB0_bit = 0;
delay_ms(500);
}
     
}