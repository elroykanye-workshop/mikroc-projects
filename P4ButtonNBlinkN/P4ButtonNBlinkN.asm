
_main:

;P4ButtonNBlinkN.c,9 :: 		void main() {
;P4ButtonNBlinkN.c,10 :: 		TRISA = 0x1f;
	MOVLW      31
	MOVWF      TRISA+0
;P4ButtonNBlinkN.c,11 :: 		TRISB = 0b11110000;
	MOVLW      240
	MOVWF      TRISB+0
;P4ButtonNBlinkN.c,13 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;P4ButtonNBlinkN.c,15 :: 		do {
L_main0:
;P4ButtonNBlinkN.c,16 :: 		if(Button(&PORTA, 0, hold, 1)) {
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main3
;P4ButtonNBlinkN.c,17 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;P4ButtonNBlinkN.c,18 :: 		}
L_main3:
;P4ButtonNBlinkN.c,19 :: 		if(Button(&PORTA, 1, hold, 1)) {
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;P4ButtonNBlinkN.c,20 :: 		PORTB.F1 = 1;
	BSF        PORTB+0, 1
;P4ButtonNBlinkN.c,21 :: 		}
L_main4:
;P4ButtonNBlinkN.c,22 :: 		if(Button(&PORTA, 2, hold, 1)) {
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main5
;P4ButtonNBlinkN.c,23 :: 		PORTB.F2 = 1;
	BSF        PORTB+0, 2
;P4ButtonNBlinkN.c,24 :: 		}
L_main5:
;P4ButtonNBlinkN.c,25 :: 		if(Button(&PORTA, 3, hold, 1)) {
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      3
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main6
;P4ButtonNBlinkN.c,26 :: 		PORTB.F3 = 1;
	BSF        PORTB+0, 3
;P4ButtonNBlinkN.c,27 :: 		}
L_main6:
;P4ButtonNBlinkN.c,28 :: 		if(Button(&PORTA, 4, hold, 1)) {
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      4
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main7
;P4ButtonNBlinkN.c,29 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;P4ButtonNBlinkN.c,30 :: 		}
L_main7:
;P4ButtonNBlinkN.c,31 :: 		} while (1);
	GOTO       L_main0
;P4ButtonNBlinkN.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
