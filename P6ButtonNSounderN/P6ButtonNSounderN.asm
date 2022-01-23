
_main:

;P6ButtonNSounderN.c,10 :: 		void main() {
;P6ButtonNSounderN.c,11 :: 		TRISA = 0x1f;
	MOVLW      31
	MOVWF      TRISA+0
;P6ButtonNSounderN.c,12 :: 		TRISB = 0b11110000;
	MOVLW      240
	MOVWF      TRISB+0
;P6ButtonNSounderN.c,13 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;P6ButtonNSounderN.c,16 :: 		do {
L_main0:
;P6ButtonNSounderN.c,17 :: 		if(Button(&PORTA, 0, hold, 1)) {
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
;P6ButtonNSounderN.c,18 :: 		Sound_Init(&PORTB, 0);
	MOVLW      PORTB+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;P6ButtonNSounderN.c,19 :: 		Sound_Play(500, play);
	MOVLW      244
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;P6ButtonNSounderN.c,20 :: 		}
L_main3:
;P6ButtonNSounderN.c,21 :: 		if(Button(&PORTA, 1, hold, 1)) {
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
;P6ButtonNSounderN.c,22 :: 		Sound_Init(&PORTB, 1);
	MOVLW      PORTB+0
	MOVWF      FARG_Sound_Init_snd_port+0
	MOVLW      1
	MOVWF      FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;P6ButtonNSounderN.c,23 :: 		Sound_Play(600, play);
	MOVLW      88
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;P6ButtonNSounderN.c,24 :: 		}
L_main4:
;P6ButtonNSounderN.c,25 :: 		if(Button(&PORTA, 2, hold, 1)) {
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
;P6ButtonNSounderN.c,26 :: 		Sound_Init(&PORTB, 2);
	MOVLW      PORTB+0
	MOVWF      FARG_Sound_Init_snd_port+0
	MOVLW      2
	MOVWF      FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;P6ButtonNSounderN.c,27 :: 		Sound_Play(700, play);
	MOVLW      188
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;P6ButtonNSounderN.c,28 :: 		}
L_main5:
;P6ButtonNSounderN.c,29 :: 		if(Button(&PORTA, 3, hold, 1)) {
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
;P6ButtonNSounderN.c,30 :: 		Sound_Init(&PORTB, 3);
	MOVLW      PORTB+0
	MOVWF      FARG_Sound_Init_snd_port+0
	MOVLW      3
	MOVWF      FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;P6ButtonNSounderN.c,31 :: 		Sound_Play(800, play);
	MOVLW      32
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;P6ButtonNSounderN.c,32 :: 		}
L_main6:
;P6ButtonNSounderN.c,33 :: 		if(Button(&PORTA, 4, hold, 1)) {
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
;P6ButtonNSounderN.c,34 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;P6ButtonNSounderN.c,35 :: 		}
L_main7:
;P6ButtonNSounderN.c,36 :: 		} while (1);
	GOTO       L_main0
;P6ButtonNSounderN.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
