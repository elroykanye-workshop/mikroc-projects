
_Display:

;sounder_stuff.c,2 :: 		void Display(int val) {
;sounder_stuff.c,3 :: 		switch (val) {
	GOTO       L_Display0
;sounder_stuff.c,4 :: 		case 0:
L_Display2:
;sounder_stuff.c,5 :: 		PORTA=0b00111111; break;
	MOVLW      63
	MOVWF      PORTA+0
	GOTO       L_Display1
;sounder_stuff.c,6 :: 		case 1:
L_Display3:
;sounder_stuff.c,7 :: 		PORTB=0b00000110; break;
	MOVLW      6
	MOVWF      PORTB+0
	GOTO       L_Display1
;sounder_stuff.c,8 :: 		case 2:
L_Display4:
;sounder_stuff.c,9 :: 		PORTB=0b01011011; break;
	MOVLW      91
	MOVWF      PORTB+0
	GOTO       L_Display1
;sounder_stuff.c,10 :: 		case 3:
L_Display5:
;sounder_stuff.c,11 :: 		PORTB=0b01001111; break;
	MOVLW      79
	MOVWF      PORTB+0
	GOTO       L_Display1
;sounder_stuff.c,12 :: 		case 4:
L_Display6:
;sounder_stuff.c,13 :: 		PORTB=0b01100110; break;
	MOVLW      102
	MOVWF      PORTB+0
	GOTO       L_Display1
;sounder_stuff.c,14 :: 		case 5:
L_Display7:
;sounder_stuff.c,15 :: 		PORTB=0b01101101; break;
	MOVLW      109
	MOVWF      PORTB+0
	GOTO       L_Display1
;sounder_stuff.c,16 :: 		}
L_Display0:
	MOVLW      0
	XORWF      FARG_Display_val+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Display19
	MOVLW      0
	XORWF      FARG_Display_val+0, 0
L__Display19:
	BTFSC      STATUS+0, 2
	GOTO       L_Display2
	MOVLW      0
	XORWF      FARG_Display_val+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Display20
	MOVLW      1
	XORWF      FARG_Display_val+0, 0
L__Display20:
	BTFSC      STATUS+0, 2
	GOTO       L_Display3
	MOVLW      0
	XORWF      FARG_Display_val+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Display21
	MOVLW      2
	XORWF      FARG_Display_val+0, 0
L__Display21:
	BTFSC      STATUS+0, 2
	GOTO       L_Display4
	MOVLW      0
	XORWF      FARG_Display_val+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Display22
	MOVLW      3
	XORWF      FARG_Display_val+0, 0
L__Display22:
	BTFSC      STATUS+0, 2
	GOTO       L_Display5
	MOVLW      0
	XORWF      FARG_Display_val+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Display23
	MOVLW      4
	XORWF      FARG_Display_val+0, 0
L__Display23:
	BTFSC      STATUS+0, 2
	GOTO       L_Display6
	MOVLW      0
	XORWF      FARG_Display_val+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Display24
	MOVLW      5
	XORWF      FARG_Display_val+0, 0
L__Display24:
	BTFSC      STATUS+0, 2
	GOTO       L_Display7
L_Display1:
;sounder_stuff.c,17 :: 		}
L_end_Display:
	RETURN
; end of _Display

_Pressing:

;sounder_stuff.c,18 :: 		void Pressing() {
;sounder_stuff.c,19 :: 		if(Button(&PORTA, 0, 100, 0)) {
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Pressing8
;sounder_stuff.c,20 :: 		cnt = 0;
	CLRF       _cnt+0
;sounder_stuff.c,21 :: 		Display(cnt);
	CLRF       FARG_Display_val+0
	CLRF       FARG_Display_val+1
	CALL       _Display+0
;sounder_stuff.c,22 :: 		}
L_Pressing8:
;sounder_stuff.c,23 :: 		if(Button(&PORTA, 1, 100, 0)) {
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Pressing9
;sounder_stuff.c,24 :: 		if (cnt < 5) {
	MOVLW      128
	XORWF      _cnt+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Pressing10
;sounder_stuff.c,25 :: 		cnt = cnt + 1;
	INCF       _cnt+0, 1
;sounder_stuff.c,26 :: 		Display(cnt);
	MOVF       _cnt+0, 0
	MOVWF      FARG_Display_val+0
	MOVLW      0
	BTFSC      FARG_Display_val+0, 7
	MOVLW      255
	MOVWF      FARG_Display_val+1
	CALL       _Display+0
;sounder_stuff.c,27 :: 		}
L_Pressing10:
;sounder_stuff.c,28 :: 		}
L_Pressing9:
;sounder_stuff.c,29 :: 		if(Button(&PORTA, 2, 100, 0)) {
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Pressing11
;sounder_stuff.c,30 :: 		while(cnt >= 0){
L_Pressing12:
	MOVLW      128
	XORWF      _cnt+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Pressing13
;sounder_stuff.c,31 :: 		if (cnt == 0) Sound_Play(500, 500);
	MOVF       _cnt+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_Pressing14
	MOVLW      244
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
L_Pressing14:
;sounder_stuff.c,32 :: 		Display(cnt);
	MOVF       _cnt+0, 0
	MOVWF      FARG_Display_val+0
	MOVLW      0
	BTFSC      FARG_Display_val+0, 7
	MOVLW      255
	MOVWF      FARG_Display_val+1
	CALL       _Display+0
;sounder_stuff.c,33 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_Pressing15:
	DECFSZ     R13+0, 1
	GOTO       L_Pressing15
	DECFSZ     R12+0, 1
	GOTO       L_Pressing15
	DECFSZ     R11+0, 1
	GOTO       L_Pressing15
	NOP
	NOP
;sounder_stuff.c,34 :: 		cnt = cnt - 1;
	DECF       _cnt+0, 1
;sounder_stuff.c,35 :: 		}
	GOTO       L_Pressing12
L_Pressing13:
;sounder_stuff.c,36 :: 		}
L_Pressing11:
;sounder_stuff.c,37 :: 		}
L_end_Pressing:
	RETURN
; end of _Pressing

_main:

;sounder_stuff.c,38 :: 		void main() {
;sounder_stuff.c,39 :: 		TRISB=0x00;
	CLRF       TRISB+0
;sounder_stuff.c,40 :: 		TRISA=0x1F;
	MOVLW      31
	MOVWF      TRISA+0
;sounder_stuff.c,42 :: 		PORTB=0x00;
	CLRF       PORTB+0
;sounder_stuff.c,43 :: 		Sound_Init(&PORTB, 7);
	MOVLW      PORTB+0
	MOVWF      FARG_Sound_Init_snd_port+0
	MOVLW      7
	MOVWF      FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;sounder_stuff.c,45 :: 		while (1) {
L_main16:
;sounder_stuff.c,46 :: 		Pressing();
	CALL       _Pressing+0
;sounder_stuff.c,47 :: 		}
	GOTO       L_main16
;sounder_stuff.c,48 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
