
_main:

;P2BlinkAllGradual.c,6 :: 		void main() {
;P2BlinkAllGradual.c,7 :: 		TRISA = 0x1f;
	MOVLW      31
	MOVWF      TRISA+0
;P2BlinkAllGradual.c,8 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;P2BlinkAllGradual.c,10 :: 		do {
L_main0:
;P2BlinkAllGradual.c,11 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;P2BlinkAllGradual.c,12 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;P2BlinkAllGradual.c,14 :: 		PORTB = 0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,15 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
;P2BlinkAllGradual.c,16 :: 		PORTB = 0b00000011;
	MOVLW      3
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,17 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;P2BlinkAllGradual.c,18 :: 		PORTB = 0b00000111;
	MOVLW      7
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,19 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;P2BlinkAllGradual.c,20 :: 		PORTB = 0b00001111;
	MOVLW      15
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,21 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
;P2BlinkAllGradual.c,22 :: 		PORTB = 0b00011111;
	MOVLW      31
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,23 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;P2BlinkAllGradual.c,24 :: 		PORTB = 0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,25 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
;P2BlinkAllGradual.c,26 :: 		PORTB = 0b01111111;
	MOVLW      127
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,27 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
;P2BlinkAllGradual.c,29 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,31 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
;P2BlinkAllGradual.c,32 :: 		PORTB = 0b01111111;
	MOVLW      127
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,33 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
;P2BlinkAllGradual.c,34 :: 		PORTB = 0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,35 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
;P2BlinkAllGradual.c,36 :: 		PORTB = 0b00011111;
	MOVLW      31
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,37 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	NOP
;P2BlinkAllGradual.c,38 :: 		PORTB = 0b00001111;
	MOVLW      15
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,39 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
;P2BlinkAllGradual.c,40 :: 		PORTB = 0b00000111;
	MOVLW      7
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,41 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;P2BlinkAllGradual.c,42 :: 		PORTB = 0b00000011;
	MOVLW      3
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,43 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
;P2BlinkAllGradual.c,44 :: 		PORTB = 0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;P2BlinkAllGradual.c,45 :: 		Delay_ms(delay);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;P2BlinkAllGradual.c,46 :: 		} while(1);
	GOTO       L_main0
;P2BlinkAllGradual.c,48 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
