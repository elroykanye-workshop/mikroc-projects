
_main:

;Led_Blink_01.c,1 :: 		void main() {
;Led_Blink_01.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Led_Blink_01.c,3 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Led_Blink_01.c,5 :: 		for(;;) {
L_main0:
;Led_Blink_01.c,6 :: 		RB0_bit = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Led_Blink_01.c,7 :: 		delay_ms(500);
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
;Led_Blink_01.c,8 :: 		RB0_bit = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Led_Blink_01.c,9 :: 		delay_ms(500);
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
;Led_Blink_01.c,10 :: 		}
	GOTO       L_main0
;Led_Blink_01.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
