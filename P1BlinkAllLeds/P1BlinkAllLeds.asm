
_main:

;P1BlinkAllLeds.c,6 :: 		void main() {
;P1BlinkAllLeds.c,8 :: 		TRISA = 0x1F; // set all PORTA as input
	MOVLW      31
	MOVWF      TRISA+0
;P1BlinkAllLeds.c,9 :: 		TRISB = 0x00; // set all PORTB as output
	CLRF       TRISB+0
;P1BlinkAllLeds.c,12 :: 		do {
L_main0:
;P1BlinkAllLeds.c,13 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;P1BlinkAllLeds.c,14 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;P1BlinkAllLeds.c,15 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;P1BlinkAllLeds.c,16 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;P1BlinkAllLeds.c,17 :: 		} while (1); // end of loop
	GOTO       L_main0
;P1BlinkAllLeds.c,18 :: 		} // end of program
L_end_main:
	GOTO       $+0
; end of _main
