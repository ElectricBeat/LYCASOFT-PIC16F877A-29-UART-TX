opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	dw 0X3F3A ;#
	FNCALL	_main,_Lcd_Intialization
	FNCALL	_main,_Uart_Intialization
	FNCALL	_main,_Lcd_Command
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_TX_String
	FNCALL	_Lcd_Intialization,_Lcd_Command
	FNCALL	_Lcd_String,_Lcd_Data
	FNCALL	_TX_String,_TX
	FNROOT	_main
	global	_PORTD
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_2:	
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	76	;'L'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	89	;'Y'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	strings
STR_3	equ	STR_2+0
	file	"UART TX.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd_Command
?_Lcd_Command:	; 0 bytes @ 0x0
	global	??_Lcd_Command
??_Lcd_Command:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_Lcd_Intialization
?_Lcd_Intialization:	; 0 bytes @ 0x0
	global	?_Uart_Intialization
?_Uart_Intialization:	; 0 bytes @ 0x0
	global	??_Uart_Intialization
??_Uart_Intialization:	; 0 bytes @ 0x0
	global	?_TX
?_TX:	; 0 bytes @ 0x0
	global	??_TX
??_TX:	; 0 bytes @ 0x0
	global	?_TX_String
?_TX_String:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	TX@x
TX@x:	; 1 bytes @ 0x0
	ds	1
	global	??_TX_String
??_TX_String:	; 0 bytes @ 0x1
	ds	1
	global	Lcd_Command@cmd
Lcd_Command@cmd:	; 1 bytes @ 0x2
	global	Lcd_Data@Data
Lcd_Data@Data:	; 1 bytes @ 0x2
	global	TX_String@Str
TX_String@Str:	; 1 bytes @ 0x2
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x3
	global	??_Lcd_Intialization
??_Lcd_Intialization:	; 0 bytes @ 0x3
	ds	1
	global	Lcd_String@Str
Lcd_String@Str:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
;;Data sizes: Strings 22, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; TX_String@Str	PTR const unsigned char  size(1) Largest target is 12
;;		 -> STR_3(CODE[12]), 
;;
;; Lcd_String@Str	PTR const unsigned char  size(1) Largest target is 12
;;		 -> STR_2(CODE[12]), STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd_String
;;   _Lcd_Intialization->_Lcd_Command
;;   _Lcd_String->_Lcd_Data
;;   _TX_String->_TX
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     165
;;                  _Lcd_Intialization
;;                 _Uart_Intialization
;;                        _Lcd_Command
;;                         _Lcd_String
;;                          _TX_String
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Intialization                                    0     0      0      30
;;                        _Lcd_Command
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_String                                           2     2      0      60
;;                                              3 COMMON     2     2      0
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _TX_String                                            2     2      0      45
;;                                              1 COMMON     2     2      0
;;                                 _TX
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_Data                                             3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Command                                          3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _TX                                                   1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Uart_Intialization                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd_Intialization
;;     _Lcd_Command
;;   _Uart_Intialization
;;   _Lcd_Command
;;   _Lcd_String
;;     _Lcd_Data
;;   _TX_String
;;     _TX
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 82 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Intialization
;;		_Uart_Intialization
;;		_Lcd_Command
;;		_Lcd_String
;;		_TX_String
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	83
	
l2689:	
;UART TX.c: 83: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	84
;UART TX.c: 84: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	86
	
l2691:	
;UART TX.c: 86: Lcd_Intialization();
	fcall	_Lcd_Intialization
	line	87
	
l2693:	
;UART TX.c: 87: Uart_Intialization();
	fcall	_Uart_Intialization
	line	89
	
l2695:	
;UART TX.c: 89: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	90
	
l2697:	
;UART TX.c: 90: Lcd_String("LYCA SOFT");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l2699
	line	92
;UART TX.c: 92: while(1)
	
l717:	
	line	94
	
l2699:	
;UART TX.c: 93: {
;UART TX.c: 94: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	95
	
l2701:	
;UART TX.c: 95: Lcd_String("HELLO WORLD");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_Lcd_String
	line	97
	
l2703:	
;UART TX.c: 97: TX_String("HELLO WORLD");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_TX_String
	goto	l2699
	line	98
	
l718:	
	line	92
	goto	l2699
	
l719:	
	line	99
	
l720:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd_Intialization
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:

;; *************** function _Lcd_Intialization *****************
;; Defined at:
;;		line 51 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text131
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	line	51
	global	__size_of_Lcd_Intialization
	__size_of_Lcd_Intialization	equ	__end_of_Lcd_Intialization-_Lcd_Intialization
	
_Lcd_Intialization:	
	opt	stack 6
; Regs used in _Lcd_Intialization: [wreg+status,2+status,0+pclath+cstack]
	line	52
	
l2687:	
;UART TX.c: 52: Lcd_Command(0x02);
	movlw	(02h)
	fcall	_Lcd_Command
	line	53
;UART TX.c: 53: Lcd_Command(0x28);
	movlw	(028h)
	fcall	_Lcd_Command
	line	54
;UART TX.c: 54: Lcd_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd_Command
	line	55
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Intialization
	__end_of_Lcd_Intialization:
;; =============== function _Lcd_Intialization ends ============

	signat	_Lcd_Intialization,88
	global	_Lcd_String
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 43 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_2(12), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  Str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_2(12), STR_1(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text132
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	line	43
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 6
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@Str stored from wreg
	movwf	(Lcd_String@Str)
	line	44
	
l2679:	
;UART TX.c: 44: while(*Str != 0)
	goto	l2685
	
l694:	
	line	46
	
l2681:	
;UART TX.c: 45: {
;UART TX.c: 46: Lcd_Data(*Str++);
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd_Data
	
l2683:	
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@Str),f
	goto	l2685
	line	47
	
l693:	
	line	44
	
l2685:	
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l2681
u2260:
	goto	l696
	
l695:	
	line	48
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	_TX_String
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _TX_String *****************
;; Defined at:
;;		line 74 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_3(12), 
;; Auto vars:     Size  Location     Type
;;  Str             1    2[COMMON] PTR const unsigned char 
;;		 -> STR_3(12), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_TX
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text133
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	line	74
	global	__size_of_TX_String
	__size_of_TX_String	equ	__end_of_TX_String-_TX_String
	
_TX_String:	
	opt	stack 6
; Regs used in _TX_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;TX_String@Str stored from wreg
	movwf	(TX_String@Str)
	line	75
	
l2671:	
;UART TX.c: 75: while(*Str != 0)
	goto	l2677
	
l712:	
	line	77
	
l2673:	
;UART TX.c: 76: {
;UART TX.c: 77: TX(*Str++);
	movf	(TX_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_TX
	
l2675:	
	movlw	(01h)
	movwf	(??_TX_String+0)+0
	movf	(??_TX_String+0)+0,w
	addwf	(TX_String@Str),f
	goto	l2677
	line	78
	
l711:	
	line	75
	
l2677:	
	movf	(TX_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2673
u2250:
	goto	l714
	
l713:	
	line	79
	
l714:	
	return
	opt stack 0
GLOBAL	__end_of_TX_String
	__end_of_TX_String:
;; =============== function _TX_String ends ============

	signat	_TX_String,4216
	global	_Lcd_Data
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 28 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;; This function uses a non-reentrant model
;;
psect	text134
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	line	28
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 6
; Regs used in _Lcd_Data: [wreg+status,2+status,0]
;Lcd_Data@Data stored from wreg
	movwf	(Lcd_Data@Data)
	line	29
	
l2651:	
;UART TX.c: 29: PORTD = (Data & 0XF0);
	movf	(Lcd_Data@Data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	30
	
l2653:	
;UART TX.c: 30: RD2 = 1;
	bsf	(66/8),(66)&7
	line	31
	
l2655:	
;UART TX.c: 31: RD3 = 1;
	bsf	(67/8),(67)&7
	line	32
	
l2657:	
;UART TX.c: 32: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2277:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2277
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2277
	clrwdt
opt asmopt_on

	line	33
	
l2659:	
;UART TX.c: 33: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	35
	
l2661:	
;UART TX.c: 35: PORTD = ((Data<<4) & 0xF0);
	movf	(Lcd_Data@Data),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u2245:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u2245
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	36
	
l2663:	
;UART TX.c: 36: RD2 = 1;
	bsf	(66/8),(66)&7
	line	37
	
l2665:	
;UART TX.c: 37: RD3 = 1;
	bsf	(67/8),(67)&7
	line	38
	
l2667:	
;UART TX.c: 38: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2287:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2287
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2287
	clrwdt
opt asmopt_on

	line	39
	
l2669:	
;UART TX.c: 39: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	40
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Command
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 13 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Intialization
;;		_main
;; This function uses a non-reentrant model
;;
psect	text135
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	line	13
	global	__size_of_Lcd_Command
	__size_of_Lcd_Command	equ	__end_of_Lcd_Command-_Lcd_Command
	
_Lcd_Command:	
	opt	stack 7
; Regs used in _Lcd_Command: [wreg+status,2+status,0]
;Lcd_Command@cmd stored from wreg
	movwf	(Lcd_Command@cmd)
	line	14
	
l2631:	
;UART TX.c: 14: PORTD = (cmd & 0XF0);
	movf	(Lcd_Command@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	15
	
l2633:	
;UART TX.c: 15: RD2 = 0;
	bcf	(66/8),(66)&7
	line	16
	
l2635:	
;UART TX.c: 16: RD3 = 1;
	bsf	(67/8),(67)&7
	line	17
	
l2637:	
;UART TX.c: 17: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2297:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2297
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2297
	clrwdt
opt asmopt_on

	line	18
	
l2639:	
;UART TX.c: 18: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	20
	
l2641:	
;UART TX.c: 20: PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_Command@cmd),w
	movwf	(??_Lcd_Command+0)+0
	movlw	(04h)-1
u2235:
	clrc
	rlf	(??_Lcd_Command+0)+0,f
	addlw	-1
	skipz
	goto	u2235
	clrc
	rlf	(??_Lcd_Command+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	21
	
l2643:	
;UART TX.c: 21: RD2 = 0;
	bcf	(66/8),(66)&7
	line	22
	
l2645:	
;UART TX.c: 22: RD3 = 1;
	bsf	(67/8),(67)&7
	line	23
	
l2647:	
;UART TX.c: 23: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2307:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2307
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2307
	clrwdt
opt asmopt_on

	line	24
	
l2649:	
;UART TX.c: 24: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	25
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
;; =============== function _Lcd_Command ends ============

	signat	_Lcd_Command,4216
	global	_TX
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:

;; *************** function _TX *****************
;; Defined at:
;;		line 68 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TX_String
;; This function uses a non-reentrant model
;;
psect	text136
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	line	68
	global	__size_of_TX
	__size_of_TX	equ	__end_of_TX-_TX
	
_TX:	
	opt	stack 6
; Regs used in _TX: [wreg]
;TX@x stored from wreg
	movwf	(TX@x)
	line	69
	
l1771:	
;UART TX.c: 69: TXREG = x;
	movf	(TX@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	70
;UART TX.c: 70: while(!TXIF);
	goto	l705
	
l706:	
	
l705:	
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l705
u10:
	goto	l708
	
l707:	
	line	71
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_TX
	__end_of_TX:
;; =============== function _TX ends ============

	signat	_TX,4216
	global	_Uart_Intialization
psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:

;; *************** function _Uart_Intialization *****************
;; Defined at:
;;		line 58 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text137
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\28-UART TX\CODE\UART TX.c"
	line	58
	global	__size_of_Uart_Intialization
	__size_of_Uart_Intialization	equ	__end_of_Uart_Intialization-_Uart_Intialization
	
_Uart_Intialization:	
	opt	stack 7
; Regs used in _Uart_Intialization: [wreg]
	line	59
	
l1767:	
;UART TX.c: 59: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	60
;UART TX.c: 60: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	61
	
l1769:	
;UART TX.c: 61: SPBRG = 129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	62
;UART TX.c: 62: TXSTA = 0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	63
;UART TX.c: 63: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	65
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_Uart_Intialization
	__end_of_Uart_Intialization:
;; =============== function _Uart_Intialization ends ============

	signat	_Uart_Intialization,88
psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
