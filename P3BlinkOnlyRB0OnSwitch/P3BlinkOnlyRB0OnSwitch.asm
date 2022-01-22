
_main:

;P3BlinkOnlyRB0OnSwitch.c,7 :: 		void main() {
;P3BlinkOnlyRB0OnSwitch.c,8 :: 		TRISA = 0x1f;
	MOVLW      31
	MOVWF      TRISA+0
;P3BlinkOnlyRB0OnSwitch.c,9 :: 		TRISB = 0b11111110;
	MOVLW      254
	MOVWF      TRISB+0
;P3BlinkOnlyRB0OnSwitch.c,10 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;P3BlinkOnlyRB0OnSwitch.c,12 :: 		do {
L_main0:
;P3BlinkOnlyRB0OnSwitch.c,13 :: 		if (PORTA.F0 == 1) {
	BTFSS      PORTA+0, 0
	GOTO       L_main3
;P3BlinkOnlyRB0OnSwitch.c,14 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;P3BlinkOnlyRB0OnSwitch.c,15 :: 		Delay_ms(delay);
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
;P3BlinkOnlyRB0OnSwitch.c,16 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;P3BlinkOnlyRB0OnSwitch.c,17 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;P3BlinkOnlyRB0OnSwitch.c,18 :: 		} else {
	GOTO       L_main6
L_main3:
;P3BlinkOnlyRB0OnSwitch.c,19 :: 		PORTB.F1 = 0;
	BCF        PORTB+0, 1
;P3BlinkOnlyRB0OnSwitch.c,20 :: 		}
L_main6:
;P3BlinkOnlyRB0OnSwitch.c,21 :: 		} while(1);
	GOTO       L_main0
;P3BlinkOnlyRB0OnSwitch.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
