
_initialisation:

;Led_Blink_01.c,1 :: 		void initialisation() {
;Led_Blink_01.c,2 :: 		TRISB = 0x00; // all PORTB set as output
	CLRF       TRISB+0
;Led_Blink_01.c,3 :: 		TRISA = 0x1F; // all PORTA set as input
	MOVLW      31
	MOVWF      TRISA+0
;Led_Blink_01.c,4 :: 		PORTB = 0x00; // put off all PORTB
	CLRF       PORTB+0
;Led_Blink_01.c,5 :: 		}
L_end_initialisation:
	RETURN
; end of _initialisation

_blink_on:

;Led_Blink_01.c,7 :: 		void blink_on() {
;Led_Blink_01.c,8 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;Led_Blink_01.c,9 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_blink_on0:
	DECFSZ     R13+0, 1
	GOTO       L_blink_on0
	DECFSZ     R12+0, 1
	GOTO       L_blink_on0
	DECFSZ     R11+0, 1
	GOTO       L_blink_on0
	NOP
	NOP
;Led_Blink_01.c,10 :: 		}
L_end_blink_on:
	RETURN
; end of _blink_on

_blink_off:

;Led_Blink_01.c,11 :: 		void blink_off() {
;Led_Blink_01.c,12 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Led_Blink_01.c,13 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_blink_off1:
	DECFSZ     R13+0, 1
	GOTO       L_blink_off1
	DECFSZ     R12+0, 1
	GOTO       L_blink_off1
	DECFSZ     R11+0, 1
	GOTO       L_blink_off1
	NOP
	NOP
;Led_Blink_01.c,14 :: 		}
L_end_blink_off:
	RETURN
; end of _blink_off

_blink_all:

;Led_Blink_01.c,16 :: 		void blink_all() {
;Led_Blink_01.c,17 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,18 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,20 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,21 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,23 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,24 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,26 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,27 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,29 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,30 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,32 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,33 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,35 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,36 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,38 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,39 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,41 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,42 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,44 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,45 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,49 :: 		}
L_end_blink_all:
	RETURN
; end of _blink_all

_sequential:

;Led_Blink_01.c,51 :: 		void sequential() {
;Led_Blink_01.c,52 :: 		PORTB = 0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;Led_Blink_01.c,53 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sequential2:
	DECFSZ     R13+0, 1
	GOTO       L_sequential2
	DECFSZ     R12+0, 1
	GOTO       L_sequential2
	DECFSZ     R11+0, 1
	GOTO       L_sequential2
	NOP
	NOP
;Led_Blink_01.c,54 :: 		PORTB = 0b00000010;
	MOVLW      2
	MOVWF      PORTB+0
;Led_Blink_01.c,55 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sequential3:
	DECFSZ     R13+0, 1
	GOTO       L_sequential3
	DECFSZ     R12+0, 1
	GOTO       L_sequential3
	DECFSZ     R11+0, 1
	GOTO       L_sequential3
	NOP
	NOP
;Led_Blink_01.c,56 :: 		PORTB = 0b00000100;
	MOVLW      4
	MOVWF      PORTB+0
;Led_Blink_01.c,57 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sequential4:
	DECFSZ     R13+0, 1
	GOTO       L_sequential4
	DECFSZ     R12+0, 1
	GOTO       L_sequential4
	DECFSZ     R11+0, 1
	GOTO       L_sequential4
	NOP
	NOP
;Led_Blink_01.c,58 :: 		PORTB = 0b00001000;
	MOVLW      8
	MOVWF      PORTB+0
;Led_Blink_01.c,59 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sequential5:
	DECFSZ     R13+0, 1
	GOTO       L_sequential5
	DECFSZ     R12+0, 1
	GOTO       L_sequential5
	DECFSZ     R11+0, 1
	GOTO       L_sequential5
	NOP
	NOP
;Led_Blink_01.c,60 :: 		PORTB = 0b00010000;
	MOVLW      16
	MOVWF      PORTB+0
;Led_Blink_01.c,61 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sequential6:
	DECFSZ     R13+0, 1
	GOTO       L_sequential6
	DECFSZ     R12+0, 1
	GOTO       L_sequential6
	DECFSZ     R11+0, 1
	GOTO       L_sequential6
	NOP
	NOP
;Led_Blink_01.c,62 :: 		PORTB = 0b00100000;
	MOVLW      32
	MOVWF      PORTB+0
;Led_Blink_01.c,63 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sequential7:
	DECFSZ     R13+0, 1
	GOTO       L_sequential7
	DECFSZ     R12+0, 1
	GOTO       L_sequential7
	DECFSZ     R11+0, 1
	GOTO       L_sequential7
	NOP
	NOP
;Led_Blink_01.c,64 :: 		PORTB = 0b01000000;
	MOVLW      64
	MOVWF      PORTB+0
;Led_Blink_01.c,65 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sequential8:
	DECFSZ     R13+0, 1
	GOTO       L_sequential8
	DECFSZ     R12+0, 1
	GOTO       L_sequential8
	DECFSZ     R11+0, 1
	GOTO       L_sequential8
	NOP
	NOP
;Led_Blink_01.c,66 :: 		PORTB = 0b10000000;
	MOVLW      128
	MOVWF      PORTB+0
;Led_Blink_01.c,67 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sequential9:
	DECFSZ     R13+0, 1
	GOTO       L_sequential9
	DECFSZ     R12+0, 1
	GOTO       L_sequential9
	DECFSZ     R11+0, 1
	GOTO       L_sequential9
	NOP
	NOP
;Led_Blink_01.c,68 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Led_Blink_01.c,69 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sequential10:
	DECFSZ     R13+0, 1
	GOTO       L_sequential10
	DECFSZ     R12+0, 1
	GOTO       L_sequential10
	DECFSZ     R11+0, 1
	GOTO       L_sequential10
	NOP
	NOP
;Led_Blink_01.c,70 :: 		}
L_end_sequential:
	RETURN
; end of _sequential

_main:

;Led_Blink_01.c,72 :: 		void main() {
;Led_Blink_01.c,73 :: 		initialisation();
	CALL       _initialisation+0
;Led_Blink_01.c,74 :: 		blink_all();
	CALL       _blink_all+0
;Led_Blink_01.c,75 :: 		sequential();
	CALL       _sequential+0
;Led_Blink_01.c,76 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
