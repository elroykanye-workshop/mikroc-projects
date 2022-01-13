#line 1 "C:/Users/elroy/Documents/mikroC PRO for PIC/MyProjects/sounder_stuff.c"
short cnt = 0;
void Display(int val) {
 switch (val) {
 case 0:
 PORTA=0b00111111; break;
 case 1:
 PORTB=0b00000110; break;
 case 2:
 PORTB=0b01011011; break;
 case 3:
 PORTB=0b01001111; break;
 case 4:
 PORTB=0b01100110; break;
 case 5:
 PORTB=0b01101101; break;
 }
}
void Pressing() {
 if(Button(&PORTA, 0, 100, 0)) {
 cnt = 0;
 Display(cnt);
 }
 if(Button(&PORTA, 1, 100, 0)) {
 if (cnt < 5) {
 cnt = cnt + 1;
 Display(cnt);
 }
 }
 if(Button(&PORTA, 2, 100, 0)) {
 while(cnt >= 0){
 if (cnt == 0) Sound_Play(500, 500);
 Display(cnt);
 Delay_ms(1000);
 cnt = cnt - 1;
 }
 }
}
void main() {
 TRISB=0x00;
 TRISA=0x1F;

 PORTB=0x00;
 Sound_Init(&PORTB, 7);

 while (1) {
 Pressing();
 }
}
