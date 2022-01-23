
_init:

;P5FunctionsWithBlinkingLeds.c,5 :: 		void init() {
;P5FunctionsWithBlinkingLeds.c,6 :: 		TRISA = 0x1f;
	MOVLW      31
	MOVWF      TRISA+0
;P5FunctionsWithBlinkingLeds.c,7 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;P5FunctionsWithBlinkingLeds.c,8 :: 		PORTB = 0;
	CLRF       PORTB+0
;P5FunctionsWithBlinkingLeds.c,9 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_init0:
	DECFSZ     R13+0, 1
	GOTO       L_init0
	DECFSZ     R12+0, 1
	GOTO       L_init0
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,10 :: 		}
L_end_init:
	RETURN
; end of _init

_gradually_on:

;P5FunctionsWithBlinkingLeds.c,12 :: 		void gradually_on() {
;P5FunctionsWithBlinkingLeds.c,13 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;P5FunctionsWithBlinkingLeds.c,14 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_on1:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_on1
	DECFSZ     R12+0, 1
	GOTO       L_gradually_on1
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,15 :: 		PORTB.F1 = 1;
	BSF        PORTB+0, 1
;P5FunctionsWithBlinkingLeds.c,16 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_on2:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_on2
	DECFSZ     R12+0, 1
	GOTO       L_gradually_on2
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,17 :: 		PORTB.F2 = 1;
	BSF        PORTB+0, 2
;P5FunctionsWithBlinkingLeds.c,18 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_on3:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_on3
	DECFSZ     R12+0, 1
	GOTO       L_gradually_on3
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,19 :: 		PORTB.F3 = 1;
	BSF        PORTB+0, 3
;P5FunctionsWithBlinkingLeds.c,20 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_on4:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_on4
	DECFSZ     R12+0, 1
	GOTO       L_gradually_on4
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,21 :: 		PORTB.F4 = 1;
	BSF        PORTB+0, 4
;P5FunctionsWithBlinkingLeds.c,22 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_on5:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_on5
	DECFSZ     R12+0, 1
	GOTO       L_gradually_on5
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,23 :: 		PORTB.F5 = 1;
	BSF        PORTB+0, 5
;P5FunctionsWithBlinkingLeds.c,24 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_on6:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_on6
	DECFSZ     R12+0, 1
	GOTO       L_gradually_on6
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,25 :: 		PORTB.F6 = 1;
	BSF        PORTB+0, 6
;P5FunctionsWithBlinkingLeds.c,26 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_on7:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_on7
	DECFSZ     R12+0, 1
	GOTO       L_gradually_on7
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,27 :: 		PORTB.F7 = -1;
	BSF        PORTB+0, 7
;P5FunctionsWithBlinkingLeds.c,28 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_on8:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_on8
	DECFSZ     R12+0, 1
	GOTO       L_gradually_on8
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,29 :: 		}
L_end_gradually_on:
	RETURN
; end of _gradually_on

_gradually_off:

;P5FunctionsWithBlinkingLeds.c,31 :: 		void gradually_off() {
;P5FunctionsWithBlinkingLeds.c,32 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;P5FunctionsWithBlinkingLeds.c,33 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_off9:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_off9
	DECFSZ     R12+0, 1
	GOTO       L_gradually_off9
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,34 :: 		PORTB.F1 = 0;
	BCF        PORTB+0, 1
;P5FunctionsWithBlinkingLeds.c,35 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_off10:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_off10
	DECFSZ     R12+0, 1
	GOTO       L_gradually_off10
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,36 :: 		PORTB.F2 = 0;
	BCF        PORTB+0, 2
;P5FunctionsWithBlinkingLeds.c,37 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_off11:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_off11
	DECFSZ     R12+0, 1
	GOTO       L_gradually_off11
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,38 :: 		PORTB.F3 = 0;
	BCF        PORTB+0, 3
;P5FunctionsWithBlinkingLeds.c,39 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_off12:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_off12
	DECFSZ     R12+0, 1
	GOTO       L_gradually_off12
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,40 :: 		PORTB.F4 = 0;
	BCF        PORTB+0, 4
;P5FunctionsWithBlinkingLeds.c,41 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_off13:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_off13
	DECFSZ     R12+0, 1
	GOTO       L_gradually_off13
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,42 :: 		PORTB.F5 = 0;
	BCF        PORTB+0, 5
;P5FunctionsWithBlinkingLeds.c,43 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_off14:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_off14
	DECFSZ     R12+0, 1
	GOTO       L_gradually_off14
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,44 :: 		PORTB.F6 = 0;
	BCF        PORTB+0, 6
;P5FunctionsWithBlinkingLeds.c,45 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_off15:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_off15
	DECFSZ     R12+0, 1
	GOTO       L_gradually_off15
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,46 :: 		PORTB.F7 = 0;
	BCF        PORTB+0, 7
;P5FunctionsWithBlinkingLeds.c,47 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gradually_off16:
	DECFSZ     R13+0, 1
	GOTO       L_gradually_off16
	DECFSZ     R12+0, 1
	GOTO       L_gradually_off16
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,48 :: 		}
L_end_gradually_off:
	RETURN
; end of _gradually_off

_all_twice:

;P5FunctionsWithBlinkingLeds.c,50 :: 		void all_twice() {
;P5FunctionsWithBlinkingLeds.c,51 :: 		PORTB = 0xff;
	MOVLW      255
	MOVWF      PORTB+0
;P5FunctionsWithBlinkingLeds.c,52 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_all_twice17:
	DECFSZ     R13+0, 1
	GOTO       L_all_twice17
	DECFSZ     R12+0, 1
	GOTO       L_all_twice17
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,53 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;P5FunctionsWithBlinkingLeds.c,54 :: 		Delay_ms(delay);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_all_twice18:
	DECFSZ     R13+0, 1
	GOTO       L_all_twice18
	DECFSZ     R12+0, 1
	GOTO       L_all_twice18
	NOP
	NOP
;P5FunctionsWithBlinkingLeds.c,55 :: 		}
L_end_all_twice:
	RETURN
; end of _all_twice

_main:

;P5FunctionsWithBlinkingLeds.c,58 :: 		void main() {
;P5FunctionsWithBlinkingLeds.c,59 :: 		do {
L_main19:
;P5FunctionsWithBlinkingLeds.c,60 :: 		init();
	CALL       _init+0
;P5FunctionsWithBlinkingLeds.c,61 :: 		gradually_on();
	CALL       _gradually_on+0
;P5FunctionsWithBlinkingLeds.c,62 :: 		gradually_off();
	CALL       _gradually_off+0
;P5FunctionsWithBlinkingLeds.c,63 :: 		all_twice(); all_twice();
	CALL       _all_twice+0
	CALL       _all_twice+0
;P5FunctionsWithBlinkingLeds.c,64 :: 		} while(1);
	GOTO       L_main19
;P5FunctionsWithBlinkingLeds.c,65 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
