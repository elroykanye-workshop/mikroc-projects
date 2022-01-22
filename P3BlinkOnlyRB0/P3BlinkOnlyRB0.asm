
_main:

;P3BlinkOnlyRB0.c,6 :: 		void main() {
;P3BlinkOnlyRB0.c,7 :: 		TRISA = 0x1f;
	MOVLW      31
	MOVWF      TRISA+0
;P3BlinkOnlyRB0.c,8 :: 		TRISB = 0b11111110;
	MOVLW      254
	MOVWF      TRISB+0
;P3BlinkOnlyRB0.c,10 :: 		do {
L_main0:
;P3BlinkOnlyRB0.c,11 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;P3BlinkOnlyRB0.c,12 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;P3BlinkOnlyRB0.c,13 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;P3BlinkOnlyRB0.c,14 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;P3BlinkOnlyRB0.c,15 :: 		} while(1);
	GOTO       L_main0
;P3BlinkOnlyRB0.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
