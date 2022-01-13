
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

;Led_Blink_01.c,12 :: 		void blink_off() {
;Led_Blink_01.c,13 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Led_Blink_01.c,14 :: 		delay_ms(500);
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
;Led_Blink_01.c,15 :: 		}
L_end_blink_off:
	RETURN
; end of _blink_off

_blink_all:

;Led_Blink_01.c,17 :: 		void blink_all() {
;Led_Blink_01.c,18 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,19 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,21 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,22 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,24 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,25 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,27 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,28 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,30 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,31 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,33 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,34 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,36 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,37 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,39 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,40 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,42 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,43 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,45 :: 		blink_on();
	CALL       _blink_on+0
;Led_Blink_01.c,46 :: 		blink_off();
	CALL       _blink_off+0
;Led_Blink_01.c,48 :: 		}
L_end_blink_all:
	RETURN
; end of _blink_all

_sequential:

;Led_Blink_01.c,50 :: 		void sequential() {
;Led_Blink_01.c,51 :: 		PORTB = 0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;Led_Blink_01.c,52 :: 		delay_ms(500);
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
;Led_Blink_01.c,53 :: 		PORTB = 0b00000010;
	MOVLW      2
	MOVWF      PORTB+0
;Led_Blink_01.c,54 :: 		delay_ms(500);
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
;Led_Blink_01.c,55 :: 		PORTB = 0b00000100;
	MOVLW      4
	MOVWF      PORTB+0
;Led_Blink_01.c,56 :: 		delay_ms(500);
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
;Led_Blink_01.c,57 :: 		PORTB = 0b00001000;
	MOVLW      8
	MOVWF      PORTB+0
;Led_Blink_01.c,58 :: 		delay_ms(500);
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
;Led_Blink_01.c,59 :: 		PORTB = 0b00010000;
	MOVLW      16
	MOVWF      PORTB+0
;Led_Blink_01.c,60 :: 		delay_ms(500);
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
;Led_Blink_01.c,61 :: 		PORTB = 0b00100000;
	MOVLW      32
	MOVWF      PORTB+0
;Led_Blink_01.c,62 :: 		delay_ms(500);
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
;Led_Blink_01.c,63 :: 		PORTB = 0b01000000;
	MOVLW      64
	MOVWF      PORTB+0
;Led_Blink_01.c,64 :: 		delay_ms(500);
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
;Led_Blink_01.c,65 :: 		PORTB = 0b10000000;
	MOVLW      128
	MOVWF      PORTB+0
;Led_Blink_01.c,66 :: 		delay_ms(500);
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
;Led_Blink_01.c,67 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Led_Blink_01.c,68 :: 		delay_ms(500);
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
;Led_Blink_01.c,69 :: 		}
L_end_sequential:
	RETURN
; end of _sequential

_a_sequential:

;Led_Blink_01.c,71 :: 		void a_sequential() {
;Led_Blink_01.c,72 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Led_Blink_01.c,73 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_a_sequential11:
	DECFSZ     R13+0, 1
	GOTO       L_a_sequential11
	DECFSZ     R12+0, 1
	GOTO       L_a_sequential11
	DECFSZ     R11+0, 1
	GOTO       L_a_sequential11
	NOP
	NOP
;Led_Blink_01.c,74 :: 		PORTB = 0b10000000;
	MOVLW      128
	MOVWF      PORTB+0
;Led_Blink_01.c,75 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_a_sequential12:
	DECFSZ     R13+0, 1
	GOTO       L_a_sequential12
	DECFSZ     R12+0, 1
	GOTO       L_a_sequential12
	DECFSZ     R11+0, 1
	GOTO       L_a_sequential12
	NOP
	NOP
;Led_Blink_01.c,76 :: 		PORTB = 0b01000000;
	MOVLW      64
	MOVWF      PORTB+0
;Led_Blink_01.c,77 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_a_sequential13:
	DECFSZ     R13+0, 1
	GOTO       L_a_sequential13
	DECFSZ     R12+0, 1
	GOTO       L_a_sequential13
	DECFSZ     R11+0, 1
	GOTO       L_a_sequential13
	NOP
	NOP
;Led_Blink_01.c,78 :: 		PORTB = 0b00100000;
	MOVLW      32
	MOVWF      PORTB+0
;Led_Blink_01.c,79 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_a_sequential14:
	DECFSZ     R13+0, 1
	GOTO       L_a_sequential14
	DECFSZ     R12+0, 1
	GOTO       L_a_sequential14
	DECFSZ     R11+0, 1
	GOTO       L_a_sequential14
	NOP
	NOP
;Led_Blink_01.c,80 :: 		PORTB = 0b00010000;
	MOVLW      16
	MOVWF      PORTB+0
;Led_Blink_01.c,81 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_a_sequential15:
	DECFSZ     R13+0, 1
	GOTO       L_a_sequential15
	DECFSZ     R12+0, 1
	GOTO       L_a_sequential15
	DECFSZ     R11+0, 1
	GOTO       L_a_sequential15
	NOP
	NOP
;Led_Blink_01.c,82 :: 		PORTB = 0b00001000;
	MOVLW      8
	MOVWF      PORTB+0
;Led_Blink_01.c,83 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_a_sequential16:
	DECFSZ     R13+0, 1
	GOTO       L_a_sequential16
	DECFSZ     R12+0, 1
	GOTO       L_a_sequential16
	DECFSZ     R11+0, 1
	GOTO       L_a_sequential16
	NOP
	NOP
;Led_Blink_01.c,84 :: 		PORTB = 0b00000100;
	MOVLW      4
	MOVWF      PORTB+0
;Led_Blink_01.c,85 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_a_sequential17:
	DECFSZ     R13+0, 1
	GOTO       L_a_sequential17
	DECFSZ     R12+0, 1
	GOTO       L_a_sequential17
	DECFSZ     R11+0, 1
	GOTO       L_a_sequential17
	NOP
	NOP
;Led_Blink_01.c,86 :: 		PORTB = 0b00000010;
	MOVLW      2
	MOVWF      PORTB+0
;Led_Blink_01.c,87 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_a_sequential18:
	DECFSZ     R13+0, 1
	GOTO       L_a_sequential18
	DECFSZ     R12+0, 1
	GOTO       L_a_sequential18
	DECFSZ     R11+0, 1
	GOTO       L_a_sequential18
	NOP
	NOP
;Led_Blink_01.c,88 :: 		PORTB = 0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;Led_Blink_01.c,89 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_a_sequential19:
	DECFSZ     R13+0, 1
	GOTO       L_a_sequential19
	DECFSZ     R12+0, 1
	GOTO       L_a_sequential19
	DECFSZ     R11+0, 1
	GOTO       L_a_sequential19
	NOP
	NOP
;Led_Blink_01.c,90 :: 		}
L_end_a_sequential:
	RETURN
; end of _a_sequential

_blink_even:

;Led_Blink_01.c,92 :: 		void blink_even() {
;Led_Blink_01.c,93 :: 		PORTB = 0b10101010;
	MOVLW      170
	MOVWF      PORTB+0
;Led_Blink_01.c,94 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_blink_even20:
	DECFSZ     R13+0, 1
	GOTO       L_blink_even20
	DECFSZ     R12+0, 1
	GOTO       L_blink_even20
	DECFSZ     R11+0, 1
	GOTO       L_blink_even20
	NOP
	NOP
;Led_Blink_01.c,95 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Led_Blink_01.c,96 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_blink_even21:
	DECFSZ     R13+0, 1
	GOTO       L_blink_even21
	DECFSZ     R12+0, 1
	GOTO       L_blink_even21
	DECFSZ     R11+0, 1
	GOTO       L_blink_even21
	NOP
	NOP
;Led_Blink_01.c,97 :: 		}
L_end_blink_even:
	RETURN
; end of _blink_even

_blink_odd:

;Led_Blink_01.c,99 :: 		void blink_odd() {
;Led_Blink_01.c,100 :: 		PORTB = 0b01010101;
	MOVLW      85
	MOVWF      PORTB+0
;Led_Blink_01.c,101 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_blink_odd22:
	DECFSZ     R13+0, 1
	GOTO       L_blink_odd22
	DECFSZ     R12+0, 1
	GOTO       L_blink_odd22
	DECFSZ     R11+0, 1
	GOTO       L_blink_odd22
	NOP
	NOP
;Led_Blink_01.c,102 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Led_Blink_01.c,103 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_blink_odd23:
	DECFSZ     R13+0, 1
	GOTO       L_blink_odd23
	DECFSZ     R12+0, 1
	GOTO       L_blink_odd23
	DECFSZ     R11+0, 1
	GOTO       L_blink_odd23
	NOP
	NOP
;Led_Blink_01.c,104 :: 		}
L_end_blink_odd:
	RETURN
; end of _blink_odd

_first_four:

;Led_Blink_01.c,106 :: 		void first_four() {
;Led_Blink_01.c,107 :: 		PORTB = 0b00001111;
	MOVLW      15
	MOVWF      PORTB+0
;Led_Blink_01.c,108 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_first_four24:
	DECFSZ     R13+0, 1
	GOTO       L_first_four24
	DECFSZ     R12+0, 1
	GOTO       L_first_four24
	DECFSZ     R11+0, 1
	GOTO       L_first_four24
	NOP
	NOP
;Led_Blink_01.c,109 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Led_Blink_01.c,110 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_first_four25:
	DECFSZ     R13+0, 1
	GOTO       L_first_four25
	DECFSZ     R12+0, 1
	GOTO       L_first_four25
	DECFSZ     R11+0, 1
	GOTO       L_first_four25
	NOP
	NOP
;Led_Blink_01.c,111 :: 		}
L_end_first_four:
	RETURN
; end of _first_four

_last_four:

;Led_Blink_01.c,113 :: 		void last_four() {
;Led_Blink_01.c,114 :: 		PORTB = 0b11110000;
	MOVLW      240
	MOVWF      PORTB+0
;Led_Blink_01.c,115 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_last_four26:
	DECFSZ     R13+0, 1
	GOTO       L_last_four26
	DECFSZ     R12+0, 1
	GOTO       L_last_four26
	DECFSZ     R11+0, 1
	GOTO       L_last_four26
	NOP
	NOP
;Led_Blink_01.c,116 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Led_Blink_01.c,117 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_last_four27:
	DECFSZ     R13+0, 1
	GOTO       L_last_four27
	DECFSZ     R12+0, 1
	GOTO       L_last_four27
	DECFSZ     R11+0, 1
	GOTO       L_last_four27
	NOP
	NOP
;Led_Blink_01.c,118 :: 		}
L_end_last_four:
	RETURN
; end of _last_four

_entry:

;Led_Blink_01.c,120 :: 		void entry() {
;Led_Blink_01.c,121 :: 		initialisation();
	CALL       _initialisation+0
;Led_Blink_01.c,122 :: 		blink_all();
	CALL       _blink_all+0
;Led_Blink_01.c,125 :: 		sequential();
	CALL       _sequential+0
;Led_Blink_01.c,126 :: 		sequential();
	CALL       _sequential+0
;Led_Blink_01.c,127 :: 		sequential();
	CALL       _sequential+0
;Led_Blink_01.c,128 :: 		sequential();
	CALL       _sequential+0
;Led_Blink_01.c,129 :: 		sequential();
	CALL       _sequential+0
;Led_Blink_01.c,132 :: 		a_sequential();
	CALL       _a_sequential+0
;Led_Blink_01.c,133 :: 		a_sequential();
	CALL       _a_sequential+0
;Led_Blink_01.c,134 :: 		a_sequential();
	CALL       _a_sequential+0
;Led_Blink_01.c,135 :: 		a_sequential();
	CALL       _a_sequential+0
;Led_Blink_01.c,136 :: 		a_sequential();
	CALL       _a_sequential+0
;Led_Blink_01.c,139 :: 		blink_even();
	CALL       _blink_even+0
;Led_Blink_01.c,140 :: 		blink_even();
	CALL       _blink_even+0
;Led_Blink_01.c,141 :: 		blink_even();
	CALL       _blink_even+0
;Led_Blink_01.c,142 :: 		blink_even();
	CALL       _blink_even+0
;Led_Blink_01.c,143 :: 		blink_even();
	CALL       _blink_even+0
;Led_Blink_01.c,146 :: 		blink_odd();
	CALL       _blink_odd+0
;Led_Blink_01.c,147 :: 		blink_odd();
	CALL       _blink_odd+0
;Led_Blink_01.c,148 :: 		blink_odd();
	CALL       _blink_odd+0
;Led_Blink_01.c,149 :: 		blink_odd();
	CALL       _blink_odd+0
;Led_Blink_01.c,150 :: 		blink_odd();
	CALL       _blink_odd+0
;Led_Blink_01.c,153 :: 		first_four();
	CALL       _first_four+0
;Led_Blink_01.c,154 :: 		first_four();
	CALL       _first_four+0
;Led_Blink_01.c,155 :: 		first_four();
	CALL       _first_four+0
;Led_Blink_01.c,156 :: 		first_four();
	CALL       _first_four+0
;Led_Blink_01.c,157 :: 		first_four();
	CALL       _first_four+0
;Led_Blink_01.c,160 :: 		last_four();
	CALL       _last_four+0
;Led_Blink_01.c,161 :: 		last_four();
	CALL       _last_four+0
;Led_Blink_01.c,162 :: 		last_four();
	CALL       _last_four+0
;Led_Blink_01.c,163 :: 		last_four();
	CALL       _last_four+0
;Led_Blink_01.c,164 :: 		last_four();
	CALL       _last_four+0
;Led_Blink_01.c,165 :: 		}
L_end_entry:
	RETURN
; end of _entry

_main:

;Led_Blink_01.c,167 :: 		void main() {
;Led_Blink_01.c,168 :: 		for(;;) {
L_main28:
;Led_Blink_01.c,169 :: 		entry();
	CALL       _entry+0
;Led_Blink_01.c,170 :: 		}
	GOTO       L_main28
;Led_Blink_01.c,171 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
