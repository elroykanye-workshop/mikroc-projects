
_init:

;P5FunctionsWithBlinkingLeds.c,4 :: 		void init() {
;P5FunctionsWithBlinkingLeds.c,5 :: 		TRISA = 0x1f;
	MOVLW      31
	MOVWF      TRISA+0
;P5FunctionsWithBlinkingLeds.c,6 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;P5FunctionsWithBlinkingLeds.c,7 :: 		PORTB = 0;
	CLRF       PORTB+0
;P5FunctionsWithBlinkingLeds.c,8 :: 		}
L_end_init:
	RETURN
; end of _init

_main:

;P5FunctionsWithBlinkingLeds.c,11 :: 		void main() {
;P5FunctionsWithBlinkingLeds.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
