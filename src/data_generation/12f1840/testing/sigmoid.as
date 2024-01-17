subtitle "Microchip MPLAB XC8 C Compiler v2.36 (Free license) build 20220127204148 Og9 "

pagewidth 120

	opt flic

	processor	12F1840
include "/Applications/microchip/xc8/v2.36/pic/include/proc/12f1840.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
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
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 55 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
INDF0 equ 00h ;# 
# 75 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
INDF1 equ 01h ;# 
# 95 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PCL equ 02h ;# 
# 115 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
STATUS equ 03h ;# 
# 178 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
FSR0L equ 04h ;# 
# 198 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
FSR0H equ 05h ;# 
# 222 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
FSR1L equ 06h ;# 
# 242 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
FSR1H equ 07h ;# 
# 262 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
BSR equ 08h ;# 
# 314 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
WREG equ 09h ;# 
# 334 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PCLATH equ 0Ah ;# 
# 354 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
INTCON equ 0Bh ;# 
# 432 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PORTA equ 0Ch ;# 
# 482 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PIR1 equ 011h ;# 
# 544 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PIR2 equ 012h ;# 
# 584 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TMR0 equ 015h ;# 
# 604 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TMR1 equ 016h ;# 
# 611 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TMR1L equ 016h ;# 
# 631 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TMR1H equ 017h ;# 
# 651 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
T1CON equ 018h ;# 
# 723 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
T1GCON equ 019h ;# 
# 800 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TMR2 equ 01Ah ;# 
# 820 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PR2 equ 01Bh ;# 
# 840 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
T2CON equ 01Ch ;# 
# 911 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CPSCON0 equ 01Eh ;# 
# 971 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CPSCON1 equ 01Fh ;# 
# 1005 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TRISA equ 08Ch ;# 
# 1055 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PIE1 equ 091h ;# 
# 1117 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PIE2 equ 092h ;# 
# 1157 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
OPTION_REG equ 095h ;# 
# 1240 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PCON equ 096h ;# 
# 1291 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
WDTCON equ 097h ;# 
# 1350 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
OSCTUNE equ 098h ;# 
# 1408 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
OSCCON equ 099h ;# 
# 1480 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
OSCSTAT equ 09Ah ;# 
# 1542 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
ADRES equ 09Bh ;# 
# 1549 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
ADRESL equ 09Bh ;# 
# 1569 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
ADRESH equ 09Ch ;# 
# 1589 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
ADCON0 equ 09Dh ;# 
# 1669 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
ADCON1 equ 09Eh ;# 
# 1735 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
LATA equ 010Ch ;# 
# 1780 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CM1CON0 equ 0111h ;# 
# 1837 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CM1CON1 equ 0112h ;# 
# 1897 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CMOUT equ 0115h ;# 
# 1917 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
BORCON equ 0116h ;# 
# 1950 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
FVRCON equ 0117h ;# 
# 2026 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
DACCON0 equ 0118h ;# 
# 2081 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
DACCON1 equ 0119h ;# 
# 2133 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SRCON0 equ 011Ah ;# 
# 2204 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SRCON1 equ 011Bh ;# 
# 2256 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
APFCON equ 011Dh ;# 
# 2261 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
APFCON0 equ 011Dh ;# 
# 2398 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
ANSELA equ 018Ch ;# 
# 2445 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
EEADR equ 0191h ;# 
# 2452 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
EEADRL equ 0191h ;# 
# 2472 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
EEADRH equ 0192h ;# 
# 2492 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
EEDAT equ 0193h ;# 
# 2499 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
EEDATL equ 0193h ;# 
# 2504 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
EEDATA equ 0193h ;# 
# 2537 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
EEDATH equ 0194h ;# 
# 2557 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
EECON1 equ 0195h ;# 
# 2619 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
EECON2 equ 0196h ;# 
# 2639 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
VREGCON equ 0197h ;# 
# 2673 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
RCREG equ 0199h ;# 
# 2693 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TXREG equ 019Ah ;# 
# 2713 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SP1BRG equ 019Bh ;# 
# 2720 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SP1BRGL equ 019Bh ;# 
# 2725 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SPBRG equ 019Bh ;# 
# 2729 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SPBRGL equ 019Bh ;# 
# 2774 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SP1BRGH equ 019Ch ;# 
# 2779 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SPBRGH equ 019Ch ;# 
# 2812 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
RCSTA equ 019Dh ;# 
# 2874 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TXSTA equ 019Eh ;# 
# 2936 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
BAUDCON equ 019Fh ;# 
# 2988 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
WPUA equ 020Ch ;# 
# 3046 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSP1BUF equ 0211h ;# 
# 3051 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSPBUF equ 0211h ;# 
# 3084 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSP1ADD equ 0212h ;# 
# 3089 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSPADD equ 0212h ;# 
# 3122 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSP1MSK equ 0213h ;# 
# 3127 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSPMSK equ 0213h ;# 
# 3160 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSP1STAT equ 0214h ;# 
# 3165 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSPSTAT equ 0214h ;# 
# 3282 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSP1CON1 equ 0215h ;# 
# 3287 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSPCON1 equ 0215h ;# 
# 3291 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSPCON equ 0215h ;# 
# 3486 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSP1CON2 equ 0216h ;# 
# 3491 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSPCON2 equ 0216h ;# 
# 3608 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSP1CON3 equ 0217h ;# 
# 3613 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
SSPCON3 equ 0217h ;# 
# 3730 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CCPR1 equ 0291h ;# 
# 3737 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CCPR1L equ 0291h ;# 
# 3757 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CCPR1H equ 0292h ;# 
# 3777 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CCP1CON equ 0293h ;# 
# 3859 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PWM1CON equ 0294h ;# 
# 3929 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CCP1AS equ 0295h ;# 
# 3934 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
ECCP1AS equ 0295h ;# 
# 4091 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PSTR1CON equ 0296h ;# 
# 4125 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
IOCAP equ 0391h ;# 
# 4183 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
IOCAN equ 0392h ;# 
# 4241 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
IOCAF equ 0393h ;# 
# 4299 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
CLKRCON equ 039Ah ;# 
# 4375 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
MDCON equ 039Ch ;# 
# 4426 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
MDSRC equ 039Dh ;# 
# 4479 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
MDCARL equ 039Eh ;# 
# 4544 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
MDCARH equ 039Fh ;# 
# 4609 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
STATUS_SHAD equ 0FE4h ;# 
# 4641 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
WREG_SHAD equ 0FE5h ;# 
# 4661 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
BSR_SHAD equ 0FE6h ;# 
# 4681 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4701 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4721 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4741 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4761 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4781 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
STKPTR equ 0FEDh ;# 
# 4801 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TOSL equ 0FEEh ;# 
# 4821 "/Applications/microchip/xc8/v2.36/pic/include/proc/pic12f1840.h"
TOSH equ 0FEFh ;# 
	debug_source C
	FNCALL	_main,___bmul
	FNCALL	_main,_sigmoid
	FNCALL	_sigmoid,___ftadd
	FNCALL	_sigmoid,___ftdiv
	FNCALL	_sigmoid,___ftneg
	FNCALL	_sigmoid,_exp
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftdiv
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftmul
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftsub
	FNCALL	_exp,___fttol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_ldexp,___ftge
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	_eval_poly,___wmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	global	main@F130
psect	idataBANK2,class=CODE,space=0,delta=2,noexec
global __pidataBANK2
__pidataBANK2:
	file	"../datasets/cfiles/sigmoid.c"
	line	12

;initializer for main@F130
	retlw	0x0
	retlw	0x0
	retlw	0x40

	retlw	0x0
	retlw	0xa
	retlw	0x42

	retlw	0xcd
	retlw	0x54
	retlw	0x41

	retlw	0x0
	retlw	0x40
	retlw	0x41

	retlw	0xcd
	retlw	0x9f
	retlw	0x42

	retlw	0x33
	retlw	0x35
	retlw	0x42

	retlw	0xc3
	retlw	0xed
	retlw	0x40

	retlw	0xcd
	retlw	0x8c
	retlw	0x3f

	retlw	0x0
	retlw	0xb8
	retlw	0x42

	retlw	0x0
	retlw	0x4
	retlw	0x42

	global	exp@coeff
psect	stringtext1,class=STRCODE,delta=2,noexec
global __pstringtext1
__pstringtext1:
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/exp.c"
	line	17
exp@coeff:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x72
	retlw	0x31
	retlw	0x3f

	retlw	0xfe
	retlw	0x75
	retlw	0x3e

	retlw	0x58
	retlw	0x63
	retlw	0x3d

	retlw	0x95
	retlw	0x1d
	retlw	0x3c

	retlw	0xc5
	retlw	0xae
	retlw	0x3a

	retlw	0x79
	retlw	0x21
	retlw	0x39

	retlw	0x94
	retlw	0x80
	retlw	0x37

	retlw	0x93
	retlw	0xa7
	retlw	0x35

	retlw	0x56
	retlw	0x15
	retlw	0x34

	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	exp@coeff
	global	_errno
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"sigmoid.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_errno:
       ds      2

psect	dataBANK2,class=BANK2,space=1,noexec
global __pdataBANK2
__pdataBANK2:
	file	"../datasets/cfiles/sigmoid.c"
	line	12
main@F130:
       ds      30

	file	"sigmoid.as"
	line	#
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to BANK2
	global __pidataBANK2,__pdataBANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK2)
	movwf fsr0l
	movlw high(__pidataBANK2)|80h
	movwf fsr0h
	movlw low(__pdataBANK2)
	movwf fsr1l
	movlw high(__pdataBANK2)
	movwf fsr1h
	movlw 01Eh
	fcall init_ram
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@signal
main@signal:	; 30 bytes @ 0x0
	ds	30
	global	main@output
main@output:	; 30 bytes @ 0x1E
	ds	30
	global	main@i
main@i:	; 2 bytes @ 0x3C
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?___ftge:	; 1 bit 
?___bmul:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
?_frexp:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	ds	1
??___bmul:	; 1 bytes @ 0x1
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
??___ftneg:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_frexp:	; 1 bytes @ 0x4
??___wmul:	; 1 bytes @ 0x4
??___fttol:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 1 bytes @ 0x5
	ds	1
??___ftge:	; 1 bytes @ 0x6
	ds	2
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x8
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	2
??___awtoft:	; 1 bytes @ 0xB
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	ds	1
??_eval_poly:	; 1 bytes @ 0xE
??_sigmoid:	; 1 bytes @ 0xE
??___ftsub:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftmul:	; 1 bytes @ 0x0
	global	?___altoft
?___altoft:	; 3 bytes @ 0x0
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x0
	ds	4
??___altoft:	; 1 bytes @ 0x4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x4
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x5
	ds	1
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x6
	ds	1
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x7
	ds	1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x8
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x9
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0xA
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0xA
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xD
	ds	3
??___ftadd:	; 1 bytes @ 0x10
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x14
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x15
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x16
	ds	1
	global	?_floor
?_floor:	; 3 bytes @ 0x17
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x17
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x17
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x17
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x17
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x17
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x17
	global	floor@x
floor@x:	; 3 bytes @ 0x17
	ds	3
??_floor:	; 1 bytes @ 0x1A
	global	eval_poly@d
eval_poly@d:	; 2 bytes @ 0x1A
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1A
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x1A
	ds	1
	global	floor@i
floor@i:	; 3 bytes @ 0x1B
	ds	1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x1C
	ds	1
??___ftdiv:	; 1 bytes @ 0x1D
	ds	1
	global	floor@expon
floor@expon:	; 2 bytes @ 0x1E
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x1E
	ds	3
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x21
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x21
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x21
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x22
	ds	2
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x24
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x25
	ds	1
??_ldexp:	; 1 bytes @ 0x26
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x26
	ds	2
	global	?_exp
?_exp:	; 3 bytes @ 0x28
	global	exp@x
exp@x:	; 3 bytes @ 0x28
	ds	3
??_exp:	; 1 bytes @ 0x2B
	ds	1
	global	_exp$680
_exp$680:	; 3 bytes @ 0x2C
	ds	3
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x2F
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x31
	ds	1
	global	?_sigmoid
?_sigmoid:	; 3 bytes @ 0x32
	global	sigmoid@x
sigmoid@x:	; 3 bytes @ 0x32
	ds	3
	global	sigmoid@result
sigmoid@result:	; 3 bytes @ 0x35
	ds	3
	global	_sigmoid$677
_sigmoid$677:	; 3 bytes @ 0x38
	ds	3
	global	_sigmoid$678
_sigmoid$678:	; 3 bytes @ 0x3B
	ds	3
??_main:	; 1 bytes @ 0x3E
	ds	5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    30
;!    Data        30
;!    BSS         2
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     67      69
;!    BANK1            80     62      62
;!    BANK2            80      0      30

;!
;!Pointer List with Targets:
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> floor@expon(BANK0[2]), 
;!
;!    eval_poly@d	PTR const  size(2) Largest target is 30
;!		 -> exp@coeff(CODE[30]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _exp->___awtoft
;!    _exp->___ftmul
;!    _exp->___fttol
;!    _floor->___fttol
;!    ___altoft->___fttol
;!    _eval_poly->___ftmul
;!    ___ftmul->___ftpack
;!    ___ftsub->___awtoft
;!    ___ftadd->___ftmul
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sigmoid
;!    _sigmoid->_exp
;!    _exp->_ldexp
;!    _ldexp->_eval_poly
;!    _floor->___ftadd
;!    _eval_poly->___ftadd
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftmul
;!    ___ftdiv->___ftadd
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                67    67      0   33407
;!                                             62 BANK0      5     5      0
;!                                              0 BANK1     62    62      0
;!                             ___bmul
;!                            _sigmoid
;! ---------------------------------------------------------------------------------
;! (1) _sigmoid                                             12     9      3   33125
;!                                             50 BANK0     12     9      3
;!                             ___bmul (ARG)
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftneg
;!                                _exp
;! ---------------------------------------------------------------------------------
;! (2) _exp                                                 10     7      3   27100
;!                                             40 BANK0     10     7      3
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;! ---------------------------------------------------------------------------------
;! (3) _ldexp                                                7     2      5    1126
;!                                             33 BANK0      7     2      5
;!                             ___ftge
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _floor                                                9     6      3    7175
;!                                             23 BANK0      9     6      3
;!                           ___altoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (4) _frexp                                                6     2      4     314
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___fttol                                             14    10      4     358
;!                                              0 COMMON    14    10      4
;! ---------------------------------------------------------------------------------
;! (4) ___ftge                                               6     0      6     772
;!                                              0 COMMON     6     0      6
;! ---------------------------------------------------------------------------------
;! (4) ___altoft                                             8     4      4    2177
;!                                              0 BANK0      8     4      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _eval_poly                                           10     3      7    6525
;!                                             23 BANK0     10     3      7
;!                            ___ftadd
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4     412
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___ftmul                                             16    10      6    2526
;!                                              8 COMMON     6     0      6
;!                                              0 BANK0     10    10      0
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    3423
;!                                             23 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             13     7      6    3250
;!                                             10 BANK0     13     7      6
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftneg                                              3     0      3     151
;!                                              0 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             16    10      6    2480
;!                                             23 BANK0     16    10      6
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             6     3      3    2130
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    1986
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) ___bmul                                               4     3      1     144
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___bmul
;!   _sigmoid
;!     ___bmul (ARG)
;!     ___ftadd (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!       ___wmul (ARG)
;!     ___ftdiv (ARG)
;!       ___ftadd (ARG)
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!     ___ftneg (ARG)
;!     _exp (ARG)
;!       ___awtoft
;!         ___ftpack
;!       ___ftdiv
;!       ___ftge
;!       ___ftmul
;!       ___ftneg
;!       ___ftsub
;!         ___awtoft (ARG)
;!         ___ftadd (ARG)
;!       ___fttol
;!       _eval_poly
;!         ___ftadd
;!         ___ftmul
;!         ___wmul
;!       _floor
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!         ___ftadd
;!         ___ftge
;!         ___fttol
;!         _frexp
;!       _ldexp
;!         ___ftge
;!         _eval_poly (ARG)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM              F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      E       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      AF       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     43      45       6       86.2%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50     3E      3E       8       77.5%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0      1E      10       37.5%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!DATA                 0      0      AF      11        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "../datasets/cfiles/sigmoid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   60[BANK1 ] int 
;;  output         30   30[BANK1 ] [10]
;;  signal         30    0[BANK1 ] [10]
;; Return value:  Size  Location     Type
;;                  2    9[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0      62       0
;;      Temps:          0       5       0       0
;;      Totals:         0       5      62       0
;;Total ram usage:       67 bytes
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___bmul
;;		_sigmoid
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"../datasets/cfiles/sigmoid.c"
	line	11
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../datasets/cfiles/sigmoid.c"
	line	11
	
_main:	
;incstack = 0
	callstack 11
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	13
	
l1661:	
	movlw	low(main@F130)
	movwf	fsr1l
	movlw	high(main@F130)
	movwf	fsr1h
	movlw	low(main@signal)
	movwf	fsr0l
	movlw	high(main@signal)
	movwf	fsr0h
	movlw	30
	movwf	(??_main+0)+0
u1910:
	moviw	fsr1++
	movwi	fsr0++
	decfsz	(??_main+0)+0,f
	goto	u1910
	line	16
	
l1663:	
	movlb 1	; select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	line	17
	
l1669:	
	movlw	low(03h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(___bmul@multiplicand)
	movlb 1	; select bank1
	movf	(main@i)^080h,w
	fcall	___bmul
	addlw	low(main@signal|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(sigmoid@x)
	moviw	[1]fsr1
	movwf	(sigmoid@x+1)
	moviw	[2]fsr1
	movwf	(sigmoid@x+2)
	fcall	_sigmoid
	movf	(0+?_sigmoid),w
	movwf	(??_main+1)+0
	movf	(1+?_sigmoid),w
	movwf	((??_main+1)+0+1)
	movf	(2+?_sigmoid),w
	movwf	((??_main+1)+0+2)
	movlw	low(03h)
	movwf	(??_main+4)+0
	movf	(??_main+4)+0,w
	movwf	(___bmul@multiplicand)
	movlb 1	; select bank1
	movf	(main@i)^080h,w
	fcall	___bmul
	addlw	low(main@output|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	0+(??_main+1)+0,w
	movwi	[0]fsr1
	movf	1+(??_main+1)+0,w
	movwi	[1]fsr1
	movf	2+(??_main+1)+0,w
	movwi	[2]fsr1
	line	16
	
l1671:	
	movlw	01h
	movlb 1	; select bank1
	addwf	(main@i)^080h,f
	movlw	0
	addwfc	(main@i+1)^080h,f
	
l1673:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u1925
	movlw	0Ah
	movlb 1	; select bank1
	subwf	(main@i)^080h,w
u1925:

	skipc
	goto	u1921
	goto	u1920
u1921:
	goto	l1669
u1920:
	line	21
	
l14:	
	global	start
	ljmp	start
	callstack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_sigmoid

;; *************** function _sigmoid *****************
;; Defined at:
;;		line 5 in file "../datasets/cfiles/sigmoid.c"
;; Parameters:    Size  Location     Type
;;  x               3   50[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  result          3   53[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       9       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftneg
;;		_exp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext1
__ptext1:	;psect for function _sigmoid
psect	text1
	file	"../datasets/cfiles/sigmoid.c"
	line	5
	
_sigmoid:	
;incstack = 0
	callstack 11
; Regs used in _sigmoid: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	7
	
l1637:	
	movf	(sigmoid@x),w
	movwf	(___ftneg@f1)
	movf	(sigmoid@x+1),w
	movwf	(___ftneg@f1+1)
	movf	(sigmoid@x+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(_sigmoid$677)
	movf	(1+(?___ftneg)),w
	movwf	(_sigmoid$677+1)
	movf	(2+(?___ftneg)),w
	movwf	(_sigmoid$677+2)
	
l1639:	
	movf	(_sigmoid$677),w
	movwf	(exp@x)
	movf	(_sigmoid$677+1),w
	movwf	(exp@x+1)
	movf	(_sigmoid$677+2),w
	movwf	(exp@x+2)
	fcall	_exp
	movf	(0+(?_exp)),w
	movwf	(_sigmoid$678)
	movf	(1+(?_exp)),w
	movwf	(_sigmoid$678+1)
	movf	(2+(?_exp)),w
	movwf	(_sigmoid$678+2)
	
l1641:	
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movf	(_sigmoid$678),w
	movwf	(___ftadd@f2)
	movf	(_sigmoid$678+1),w
	movwf	(___ftadd@f2+1)
	movf	(_sigmoid$678+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x80
	movwf	(___ftdiv@f1+1)
	movlw	0x3f
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(sigmoid@result)
	movf	(1+(?___ftdiv)),w
	movwf	(sigmoid@result+1)
	movf	(2+(?___ftdiv)),w
	movwf	(sigmoid@result+2)
	line	8
	
l1643:	
	movf	(sigmoid@result),w
	movwf	(?_sigmoid)
	movf	(sigmoid@result+1),w
	movwf	(?_sigmoid+1)
	movf	(sigmoid@result+2),w
	movwf	(?_sigmoid+2)
	line	9
	
l5:	
	return
	callstack 0
GLOBAL	__end_of_sigmoid
	__end_of_sigmoid:
	signat	_sigmoid,4219
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/exp.c"
;; Parameters:    Size  Location     Type
;;  x               3   40[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exponent        2   47[BANK0 ] int 
;;  sign            1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   40[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0      10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_sigmoid
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=2
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/exp.c"
	line	12
global __ptext2
__ptext2:	;psect for function _exp
psect	text2
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/exp.c"
	line	12
	
_exp:	
;incstack = 0
	callstack 11
; Regs used in _exp: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	31
	
l1591:	
	movf	(exp@x+2),w
	iorwf	(exp@x+1),w
	iorwf	(exp@x),w
	skipz
	goto	u1811
	goto	u1810
u1811:
	goto	l1597
u1810:
	line	32
	
l1593:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x3f
	movwf	(?_exp+2)
	goto	l601
	line	34
	
l1597:	
	movlw	0x72
	movwf	(___ftge@ff1)
	movlw	0x31
	movwf	(___ftge@ff1+1)
	movlw	0x44
	movwf	(___ftge@ff1+2)
	movf	(exp@x),w
	movwf	(___ftge@ff2)
	movf	(exp@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1821
	goto	u1820
u1821:
	goto	l1603
u1820:
	line	35
	
l1599:	
	movlw	022h
	movwf	(_errno)
	movlw	0
	movwf	((_errno))+1
	line	36
	movlw	0xff
	movwf	(?_exp)
	movlw	0x7f
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l601
	line	38
	
l1603:	
	movf	(exp@x),w
	movwf	(___ftge@ff1)
	movf	(exp@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x49
	movwf	(___ftge@ff2)
	movlw	0x3a
	movwf	(___ftge@ff2+1)
	movlw	0xc4
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1831
	goto	u1830
u1831:
	goto	l1609
u1830:
	line	39
	
l1605:	
	movlw	022h
	movwf	(_errno)
	movlw	0
	movwf	((_errno))+1
	line	40
	movlw	0x0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l601
	line	43
	
l1609:	
	movf	(exp@x),w
	movwf	(___ftge@ff1)
	movf	(exp@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u1841
	goto	u1840
u1841:
	movlw	1
	goto	u1850
u1840:
	movlw	0
u1850:
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	movwf	(exp@sign)
	line	44
	
l1611:	
	movf	((exp@sign)),w
	btfsc	status,2
	goto	u1861
	goto	u1860
u1861:
	goto	l1615
u1860:
	line	45
	
l1613:	
	movf	(exp@x),w
	movwf	(___ftneg@f1)
	movf	(exp@x+1),w
	movwf	(___ftneg@f1+1)
	movf	(exp@x+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(exp@x)
	movf	(1+(?___ftneg)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftneg)),w
	movwf	(exp@x+2)
	line	46
	
l1615:	
	movlw	0xaa
	movwf	(___ftmul@f1)
	movlw	0xb8
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(exp@x),w
	movwf	(___ftmul@f2)
	movf	(exp@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(exp@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(exp@x)
	movf	(1+(?___ftmul)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftmul)),w
	movwf	(exp@x+2)
	line	47
	
l1617:	
	movf	(exp@x),w
	movwf	(floor@x)
	movf	(exp@x+1),w
	movwf	(floor@x+1)
	movf	(exp@x+2),w
	movwf	(floor@x+2)
	fcall	_floor
	movf	(0+(?_floor)),w
	movwf	(_exp$680)
	movf	(1+(?_floor)),w
	movwf	(_exp$680+1)
	movf	(2+(?_floor)),w
	movwf	(_exp$680+2)
	
l1619:	
	movf	(_exp$680),w
	movwf	(___fttol@f1)
	movf	(_exp$680+1),w
	movwf	(___fttol@f1+1)
	movf	(_exp$680+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	movwf	(exp@exponent+1)
	movf	(0+(?___fttol)),w
	movwf	(exp@exponent)
	line	48
	
l1621:	
	movf	(exp@exponent+1),w
	movwf	(___awtoft@c+1)
	movf	(exp@exponent),w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(___ftsub@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftsub@f2+2)
	movf	(exp@x),w
	movwf	(___ftsub@f1)
	movf	(exp@x+1),w
	movwf	(___ftsub@f1+1)
	movf	(exp@x+2),w
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(exp@x)
	movf	(1+(?___ftsub)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftsub)),w
	movwf	(exp@x+2)
	line	49
	
l1623:	
	movf	(exp@x),w
	movwf	(eval_poly@x)
	movf	(exp@x+1),w
	movwf	(eval_poly@x+1)
	movf	(exp@x+2),w
	movwf	(eval_poly@x+2)
	movlw	low(((exp@coeff)|8000h))
	movwf	(eval_poly@d)
	movlw	high(((exp@coeff)|8000h))
	movwf	((eval_poly@d))+1
	movlw	09h
	movwf	(eval_poly@n)
	movlw	0
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	movf	(0+(?_eval_poly)),w
	movwf	(ldexp@value)
	movf	(1+(?_eval_poly)),w
	movwf	(ldexp@value+1)
	movf	(2+(?_eval_poly)),w
	movwf	(ldexp@value+2)
	movf	(exp@exponent+1),w
	movwf	(ldexp@newexp+1)
	movf	(exp@exponent),w
	movwf	(ldexp@newexp)
	fcall	_ldexp
	movf	(0+(?_ldexp)),w
	movwf	(exp@x)
	movf	(1+(?_ldexp)),w
	movwf	(exp@x+1)
	movf	(2+(?_ldexp)),w
	movwf	(exp@x+2)
	line	50
	
l1625:	
	movf	((exp@sign)),w
	btfsc	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l605
u1870:
	line	52
	
l1627:	
		incf	((exp@x)),w
	movlw	127
	skipnz
	xorwf	((exp@x+1)),w
	movlw	127
	skipnz
	xorwf	((exp@x+2)),w
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l1633
u1880:
	line	53
	
l1629:	
	movlw	0x0
	movlb 0	; select bank0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l601
	line	54
	
l1633:	
	movlb 0	; select bank0
	movf	(exp@x),w
	movwf	(___ftdiv@f2)
	movf	(exp@x+1),w
	movwf	(___ftdiv@f2+1)
	movf	(exp@x+2),w
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x80
	movwf	(___ftdiv@f1+1)
	movlw	0x3f
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(?_exp)
	movf	(1+(?___ftdiv)),w
	movwf	(?_exp+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_exp+2)
	goto	l601
	line	55
	
l605:	
	line	56
	line	57
	
l601:	
	return
	callstack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4219
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   33[BANK0 ] unsigned char 
;;  newexp          2   36[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   33[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       5       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftge
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=2
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/frexp.c"
	line	277
global __ptext3
__ptext3:	;psect for function _ldexp
psect	text3
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/frexp.c"
	line	277
	
_ldexp:	
;incstack = 0
	callstack 12
; Regs used in _ldexp: [wreg+status,2+status,0+pclath+cstack]
	line	279
	
l1553:	
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l1559
u1770:
	line	280
	
l1555:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l633
	line	282
	
l1559:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	lslf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	movf	1+(??_ldexp+0)+0,w
	addwfc	(ldexp@newexp+1),f
	line	283
	rlf	0+(ldexp@value)+01h,w
	rlf	0+(ldexp@value)+01h,w
	andlw	1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	movf	1+(??_ldexp+0)+0,w
	addwfc	(ldexp@newexp+1),f
	line	287
	
l1561:	
	btfss	(ldexp@newexp+1),7
	goto	u1781
	goto	u1780
u1781:
	goto	l1569
u1780:
	line	288
	
l1563:	
	movlw	022h
	movwf	(_errno)
	movlw	0
	movwf	((_errno))+1
	line	289
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l633
	line	291
	
l1569:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	(??_ldexp+0)+0
	movlw	(01h)^80h
	subwf	(??_ldexp+0)+0,w
	skipz
	goto	u1795
	movlw	0
	subwf	(ldexp@newexp),w
u1795:

	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l1585
u1790:
	line	292
	
l1571:	
	movlw	022h
	movlb 0	; select bank0
	movwf	(_errno)
	movlw	0
	movwf	((_errno))+1
	line	293
	
l1573:	
	movf	(ldexp@value),w
	movwf	(___ftge@ff1)
	movf	(ldexp@value+1),w
	movwf	(___ftge@ff1+1)
	movf	(ldexp@value+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1801
	goto	u1800
u1801:
	goto	l1581
u1800:
	line	294
	
l1575:	
	movlw	0xff
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0xff
	movwf	(?_ldexp+2)
	goto	l633
	line	296
	
l1581:	
	movlw	0xff
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l633
	line	300
	
l1585:	
	movlb 0	; select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	movf	(ldexp@newexp),w
	andlw	01h
	movwf	(??_ldexp+0)+0
	rrf	(??_ldexp+0)+0,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+01h,w
	xorwf	(??_ldexp+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+01h
	line	306
	
l1587:	
	line	307
	
l633:	
	return
	callstack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8315
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   23[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   27[BANK0 ] int 
;;  expon           2   30[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       5       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=2
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/floor.c"
	line	13
global __ptext4
__ptext4:	;psect for function _floor
psect	text4
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/floor.c"
	line	13
	
_floor:	
;incstack = 0
	callstack 11
; Regs used in _floor: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	18
	
l1515:	
	movf	(floor@x),w
	movwf	(frexp@value)
	movf	(floor@x+1),w
	movwf	(frexp@value+1)
	movf	(floor@x+2),w
	movwf	(frexp@value+2)
	movlw	(low(floor@expon|((0x0)<<8)))&0ffh
	movwf	(??_floor+0)+0
	movf	(??_floor+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l1517:	
	btfss	(floor@expon+1),7
	goto	u1721
	goto	u1720
u1721:
	goto	l1529
u1720:
	line	20
	
l1519:	
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1731
	goto	u1730
u1731:
	goto	l1525
u1730:
	line	21
	
l1521:	
	movlw	0x0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l621
	line	22
	
l1525:	
	movlw	0x0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l621
	line	24
	
l1529:	
	movlw	0
	subwf	(floor@expon+1),w
	movlw	015h
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l1533
u1740:
	line	25
	
l1531:	
	goto	l621
	line	26
	
l1533:	
	movf	(floor@x),w
	movwf	(___fttol@f1)
	movf	(floor@x+1),w
	movwf	(___fttol@f1+1)
	movf	(floor@x+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	movwf	(___altoft@c+3)
	movf	(2+(?___fttol)),w
	movwf	(___altoft@c+2)
	movf	(1+(?___fttol)),w
	movwf	(___altoft@c+1)
	movf	(0+(?___fttol)),w
	movwf	(___altoft@c)

	fcall	___altoft
	movf	(0+(?___altoft)),w
	movwf	(floor@i)
	movf	(1+(?___altoft)),w
	movwf	(floor@i+1)
	movf	(2+(?___altoft)),w
	movwf	(floor@i+2)
	line	27
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movf	(floor@i),w
	movwf	(___ftge@ff2)
	movf	(floor@i+1),w
	movwf	(___ftge@ff2+1)
	movf	(floor@i+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1751
	goto	u1750
u1751:
	goto	l1539
u1750:
	line	28
	
l1535:	
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movf	(floor@i),w
	movwf	(___ftadd@f2)
	movf	(floor@i+1),w
	movwf	(___ftadd@f2+1)
	movf	(floor@i+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?_floor)
	movf	(1+(?___ftadd)),w
	movwf	(?_floor+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_floor+2)
	goto	l621
	line	29
	
l1539:	
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	line	30
	
l621:	
	return
	callstack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[COMMON] int 
;;  eptr            1    3[COMMON] PTR int 
;;		 -> floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=2
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/frexp.c"
	line	254
global __ptext5
__ptext5:	;psect for function _frexp
psect	text5
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/frexp.c"
	line	254
	
_frexp:	
;incstack = 0
	callstack 12
; Regs used in _frexp: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	256
	
l1429:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u1621
	goto	u1620
u1621:
	goto	l1435
u1620:
	line	257
	
l1431:	
	movf	(frexp@eptr),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l629
	line	261
	
l1435:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	lslf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	movf	(frexp@eptr),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_frexp+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_frexp+0)+0,w
	movwi	[1]fsr1
	line	262
	rlf	0+(frexp@value)+01h,w
	rlf	0+(frexp@value)+01h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_frexp+0)+0,w
	iorwf	indf1,f
	addfsr	fsr1,1
	movf	1+(??_frexp+0)+0,w
	iorwf	indf1,f
	line	263
	
l1437:	
	movf	(frexp@eptr),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	082h
	addwf	indf1,f
	addfsr	fsr1,1
	movlw	0FFh
	addwfc	indf1,f
	addfsr	fsr1,-1
	line	268
	
l1439:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l1441:	
	bcf	0+(frexp@value)+01h,7
	line	274
	
l629:	
	return
	callstack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[COMMON] unsigned long 
;;  exp1            1   13[COMMON] unsigned char 
;;  sign1           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         6       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:        14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/fttol.c"
	line	44
global __ptext6
__ptext6:	;psect for function ___fttol
psect	text6
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/fttol.c"
	line	44
	
___fttol:	
;incstack = 0
	callstack 12
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1387:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	(((___fttol@exp1))),w
	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l1393
u1520:
	line	50
	
l1389:	
	movlw	high highword(0)
	movwf	(?___fttol+3)
	movlw	low highword(0)
	movwf	(?___fttol+2)
	movlw	high(0)
	movwf	(?___fttol+1)
	movlw	low(0)
	movwf	(?___fttol)

	goto	l460
	line	51
	
l1393:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1535:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1530:
	decfsz	wreg,f
	goto	u1535
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1395:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1397:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1399:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1401:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l1403:	
	btfss	(___fttol@exp1),7
	goto	u1541
	goto	u1540
u1541:
	goto	l1413
u1540:
	line	57
	
l1405:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1551
	goto	u1550
u1551:
	goto	l1411
u1550:
	goto	l1389
	line	60
	
l1411:	
	movlw	01h
u1565:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u1565

	line	61
	movlw	low(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l1411
u1570:
	goto	l1421
	line	63
	
l1413:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l467
u1580:
	goto	l1389
	line	66
	
l1419:	
	movlw	01h
u1595:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u1595
	line	67
	movlw	01h
	subwf	(___fttol@exp1),f
	line	68
	
l467:	
	line	65
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l1419
u1600:
	line	70
	
l1421:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l1425
u1610:
	line	71
	
l1423:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l1425:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l460:	
	return
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         6       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;;		_floor
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftge.c"
	line	4
global __ptext7
__ptext7:	;psect for function ___ftge
psect	text7
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftge.c"
	line	4
	
___ftge:	
;incstack = 0
	callstack 12
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1311:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1391
	goto	u1390
u1391:
	goto	l1315
u1390:
	line	7
	
l1313:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l1315:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1401
	goto	u1400
u1401:
	goto	l1319
u1400:
	line	9
	
l1317:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l1319:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1321:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1323:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1415
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1415
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1415:
	skipnc
	goto	u1411
	goto	u1410
u1411:
	goto	l1327
u1410:
	
l1325:	
	clrc
	
	goto	l433
	
l1327:	
	setc
	
	line	13
	
l433:	
	return
	callstack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    0[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1    7[BANK0 ] unsigned char 
;;  exp             1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/altoft.c"
	line	42
global __ptext8
__ptext8:	;psect for function ___altoft
psect	text8
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/altoft.c"
	line	42
	
___altoft:	
;incstack = 0
	callstack 11
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l1225:	
	clrf	(___altoft@sign)
	line	46
	
l1227:	
	movlw	low(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l1229:	
	btfss	(___altoft@c+3),7
	goto	u1131
	goto	u1130
u1131:
	goto	l1235
u1130:
	line	48
	
l1231:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	clrf	(___altoft@sign)
	incf	(___altoft@sign),f
	goto	l1235
	line	53
	
l1233:	
	movlw	01h
u1145:
	lsrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	decfsz	wreg,f
	goto	u1145

	line	54
	movlw	low(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	line	52
	
l1235:	
	movlw	high highword(0FF000000h)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1233
u1150:
	line	56
	
l1237:	
	movf	(___altoft@c),w
	movwf	(___ftpack@arg)
	movf	(___altoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___altoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___altoft@exp),w
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___altoft@sign),w
	movwf	(??___altoft+1)+0
	movf	(??___altoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	line	57
	
l267:	
	return
	callstack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   23[BANK0 ] float 
;;  d               2   26[BANK0 ] PTR const 
;;		 -> exp@coeff(30), 
;;  n               2   28[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   30[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       7       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=2
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/evalpoly.c"
	line	4
global __ptext9
__ptext9:	;psect for function _eval_poly
psect	text9
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/evalpoly.c"
	line	4
	
_eval_poly:	
;incstack = 0
	callstack 11
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l1543:	
	movf	(eval_poly@n+1),w
	movwf	(___wmul@multiplier+1)
	movf	(eval_poly@n),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(eval_poly@d),w
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movf	(eval_poly@d+1),w
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(eval_poly@res)
	moviw	[1]fsr0
	movwf	(eval_poly@res+1)
	moviw	[2]fsr0
	movwf	(eval_poly@res+2)
	line	9
	goto	l1547
	line	10
	
l1545:	
	movlw	0FFh
	addwf	(eval_poly@n),f
	movlw	0FFh
	addwfc	(eval_poly@n+1),f
	movf	((eval_poly@n+1)),w
	movwf	(___wmul@multiplier+1)
	movf	((eval_poly@n)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(eval_poly@d),w
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movf	(eval_poly@d+1),w
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftadd@f1)
	moviw	[1]fsr0
	movwf	(___ftadd@f1+1)
	moviw	[2]fsr0
	movwf	(___ftadd@f1+2)
	movf	(eval_poly@res),w
	movwf	(___ftmul@f1)
	movf	(eval_poly@res+1),w
	movwf	(___ftmul@f1+1)
	movf	(eval_poly@res+2),w
	movwf	(___ftmul@f1+2)
	movf	(eval_poly@x),w
	movwf	(___ftmul@f2)
	movf	(eval_poly@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(eval_poly@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(eval_poly@res)
	movf	(1+(?___ftadd)),w
	movwf	(eval_poly@res+1)
	movf	(2+(?___ftadd)),w
	movwf	(eval_poly@res+2)
	line	9
	
l1547:	
	movf	((eval_poly@n)),w
iorwf	((eval_poly@n+1)),w
	btfss	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l1545
u1760:
	line	11
	
l1549:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	line	12
	
l614:	
	return
	callstack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/Umul16.c"
	line	15
global __ptext10
__ptext10:	;psect for function ___wmul
psect	text10
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 12
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1211:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l1213:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1091
	goto	u1090
u1091:
	goto	l164
u1090:
	line	46
	
l1215:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l164:	
	line	47
	movlw	01h
	
u1105:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u1105
	line	48
	
l1217:	
	movlw	01h
	
u1115:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u1115
	line	49
	
l1219:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1213
u1120:
	line	52
	
l1221:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l166:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3    5[BANK0 ] unsigned um
;;  sign            1    9[BANK0 ] unsigned char 
;;  cntr            1    8[BANK0 ] unsigned char 
;;  exp             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         6       0       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       4       0       0
;;      Totals:         6      10       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_exp
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftmul.c"
	line	62
global __ptext11
__ptext11:	;psect for function ___ftmul
psect	text11
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftmul.c"
	line	62
	
___ftmul:	
;incstack = 0
	callstack 11
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1331:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	(((___ftmul@exp))),w
	btfss	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l1337
u1420:
	line	68
	
l1333:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l439
	line	69
	
l1337:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	(((___ftmul@sign))),w
	btfss	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l1343
u1430:
	line	70
	
l1339:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l439
	line	71
	
l1343:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	
l1345:	
	movf	0+(___ftmul@f1)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@sign)
	line	73
	
l1347:	
	movf	0+(___ftmul@f2)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	
l1349:	
	movlw	low(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1351:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1353:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1355:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1357:	
	movlw	low(0)
	movwf	(___ftmul@f3_as_product)
	movlw	high(0)
	movwf	(___ftmul@f3_as_product+1)
	movlw	low highword(0)
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1359:	
	movlw	low(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	136
	
l1361:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1441
	goto	u1440
u1441:
	goto	l1365
u1440:
	line	137
	
l1363:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	line	138
	
l1365:	
	movlw	01h
u1455:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u1455

	line	139
	
l1367:	
	movlw	01h
u1465:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u1465
	line	140
	
l1369:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l1361
u1470:
	line	143
	
l1371:	
	movlw	low(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	145
	
l1373:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1481
	goto	u1480
u1481:
	goto	l1377
u1480:
	line	146
	
l1375:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	line	147
	
l1377:	
	movlw	01h
u1495:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u1495

	line	148
	
l1379:	
	movlw	01h
u1505:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u1505

	line	149
	
l1381:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l1373
u1510:
	line	156
	
l1383:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	157
	
l439:	
	return
	callstack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   23[BANK0 ] float 
;;  f1              3   26[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftsub.c"
	line	17
global __ptext12
__ptext12:	;psect for function ___ftsub
psect	text12
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftsub.c"
	line	17
	
___ftsub:	
;incstack = 0
	callstack 11
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l1507:	
	movf	(___ftsub@f2+2),w
	iorwf	(___ftsub@f2+1),w
	iorwf	(___ftsub@f2),w
	skipnz
	goto	u1711
	goto	u1710
u1711:
	goto	l1511
u1710:
	line	23
	
l1509:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	25
	
l1511:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	26
	
l456:	
	return
	callstack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   10[BANK0 ] float 
;;  f2              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   22[BANK0 ] unsigned char 
;;  exp2            1   21[BANK0 ] unsigned char 
;;  sign            1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sigmoid
;;		___ftsub
;;		_eval_poly
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftadd.c"
	line	86
global __ptext13
__ptext13:	;psect for function ___ftadd
psect	text13
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftadd.c"
	line	86
	
___ftadd:	
;incstack = 0
	callstack 11
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1241:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	movf	((___ftadd@exp1)),w
	btfsc	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l1247
u1160:
	
l1243:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1171
	goto	u1170
u1171:
	goto	l1251
u1170:
	
l1245:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1181
	goto	u1180
u1181:
	goto	l1251
u1180:
	line	93
	
l1247:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l393
	line	94
	
l1251:	
	movf	((___ftadd@exp2)),w
	btfsc	status,2
	goto	u1191
	goto	u1190
u1191:
	goto	l396
u1190:
	
l1253:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1201
	goto	u1200
u1201:
	goto	l1257
u1200:
	
l1255:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l1257
u1210:
	
l396:	
	line	95
	goto	l393
	line	96
	
l1257:	
	movlw	low(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1259:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1221
	goto	u1220
u1221:
	goto	l397
u1220:
	line	98
	
l1261:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l397:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1231
	goto	u1230
u1231:
	goto	l398
u1230:
	line	100
	
l1263:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l398:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1265:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1267:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1241
	goto	u1240
u1241:
	goto	l1279
u1240:
	line	110
	
l1269:	
	movlw	01h
u1255:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u1255
	line	111
	movlw	01h
	subwf	(___ftadd@exp2),f
	line	112
	
l1271:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1261
	goto	u1260
u1261:
	goto	l1277
u1260:
	
l1273:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l1269
u1270:
	goto	l1277
	line	114
	
l1275:	
	movlw	01h
u1285:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u1285

	line	115
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	line	113
	
l1277:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1291
	goto	u1290
u1291:
	goto	l1275
u1290:
	goto	l407
	line	117
	
l1279:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1301
	goto	u1300
u1301:
	goto	l407
u1300:
	line	121
	
l1281:	
	movlw	01h
u1315:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u1315
	line	122
	movlw	01h
	subwf	(___ftadd@exp1),f
	line	123
	
l1283:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1321
	goto	u1320
u1321:
	goto	l1289
u1320:
	
l1285:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l1281
u1330:
	goto	l1289
	line	125
	
l1287:	
	movlw	01h
u1345:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u1345

	line	126
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	line	124
	
l1289:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1351
	goto	u1350
u1351:
	goto	l1287
u1350:
	line	129
	
l407:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l1293
u1360:
	line	131
	
l1291:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	line	134
	
l1293:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l1297
u1370:
	line	136
	
l1295:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	139
	
l1297:	
	clrf	(___ftadd@sign)
	line	140
	
l1299:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l1301:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1381
	goto	u1380
u1381:
	goto	l1307
u1380:
	line	142
	
l1303:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1305:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l1307:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l393:	
	return
	callstack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sigmoid
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftneg.c"
	line	15
global __ptext14
__ptext14:	;psect for function ___ftneg
psect	text14
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftneg.c"
	line	15
	
___ftneg:	
;incstack = 0
	callstack 13
; Regs used in ___ftneg: [wreg]
	line	17
	
l1499:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u1701
	goto	u1700
u1701:
	goto	l1503
u1700:
	line	18
	
l1501:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l1503:	
	line	20
	
l450:	
	return
	callstack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   23[BANK0 ] float 
;;  f1              3   26[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   34[BANK0 ] float 
;;  sign            1   38[BANK0 ] unsigned char 
;;  exp             1   37[BANK0 ] unsigned char 
;;  cntr            1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sigmoid
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftdiv.c"
	line	56
global __ptext15
__ptext15:	;psect for function ___ftdiv
psect	text15
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/ftdiv.c"
	line	56
	
___ftdiv:	
;incstack = 0
	callstack 12
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l1457:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	(((___ftdiv@exp))),w
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l1463
u1640:
	line	64
	
l1459:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l424
	line	65
	
l1463:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	(((___ftdiv@sign))),w
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l1469
u1650:
	line	66
	
l1465:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l424
	line	67
	
l1469:	
	movlw	low(0)
	movwf	(___ftdiv@f3)
	movlw	high(0)
	movwf	(___ftdiv@f3+1)
	movlw	low highword(0)
	movwf	(___ftdiv@f3+2)
	line	68
	
l1471:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l1473:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@sign)
	line	70
	movf	0+(___ftdiv@f2)+02h,w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	xorwf	(___ftdiv@sign),f
	line	71
	movlw	low(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	72
	
l1475:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l1477:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l1479:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l1481:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l1483:	
	movlw	low(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	line	78
	
l1485:	
	movlw	01h
u1665:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u1665
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1675
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1675
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1675:
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l1491
u1670:
	line	80
	
l1487:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	81
	
l1489:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l1491:	
	movlw	01h
u1685:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u1685
	line	84
	
l1493:	
	movlw	01h
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l1485
u1690:
	line	85
	
l1495:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	86
	
l424:	
	return
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/awtoft.c"
	line	32
global __ptext16
__ptext16:	;psect for function ___awtoft
psect	text16
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/awtoft.c"
	line	32
	
___awtoft:	
;incstack = 0
	callstack 12
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1445:	
	clrf	(___awtoft@sign)
	line	37
	
l1447:	
	btfss	(___awtoft@c+1),7
	goto	u1631
	goto	u1630
u1631:
	goto	l1453
u1630:
	line	38
	
l1449:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1451:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l1453:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l366:	
	return
	callstack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         5       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/float.c"
	line	62
global __ptext17
__ptext17:	;psect for function ___ftpack
psect	text17
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/float.c"
	line	62
	
___ftpack:	
;incstack = 0
	callstack 11
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1179:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u971
	goto	u970
u971:
	goto	l1183
u970:
	
l1181:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u981
	goto	u980
u981:
	goto	l1189
u980:
	line	65
	
l1183:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l372
	line	67
	
l1187:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u995:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u995

	line	66
	
l1189:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1001
	goto	u1000
u1001:
	goto	l1187
u1000:
	goto	l376
	line	71
	
l1191:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1193:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1195:	
	movlw	01h
u1015:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u1015

	line	74
	
l376:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1021
	goto	u1020
u1021:
	goto	l1191
u1020:
	goto	l1199
	line	76
	
l1197:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1035:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u1035
	line	75
	
l1199:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u1041
	goto	u1040
u1041:
	goto	l383
u1040:
	
l1201:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u1051
	goto	u1050
u1051:
	goto	l1197
u1050:
	
l383:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l384
u1060:
	line	80
	
l1203:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l384:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1205:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1075:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1070:
	decfsz	wreg,f
	goto	u1075
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1207:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l385
u1080:
	line	84
	
l1209:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l385:	
	line	85
	line	86
	
l372:	
	return
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "/Applications/microchip/xc8/v2.36/pic/sources/c90/common/Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/Umul8.c"
	line	4
global __ptext18
__ptext18:	;psect for function ___bmul
psect	text18
	file	"/Applications/microchip/xc8/v2.36/pic/sources/c90/common/Umul8.c"
	line	4
	
___bmul:	
;incstack = 0
	callstack 15
; Regs used in ___bmul: [wreg+status,2+status,0]
	movwf	(___bmul@multiplier)
	line	6
	
l1647:	
	clrf	(___bmul@product)
	line	43
	
l1649:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l1653
u1890:
	line	44
	
l1651:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	line	45
	
l1653:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1655:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l1649
u1900:
	line	50
	
l1657:	
	movf	(___bmul@product),w
	line	51
	
l190:	
	return
	callstack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
