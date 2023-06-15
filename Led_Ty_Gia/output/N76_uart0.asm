;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module N76_uart0
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprintf
	.globl _eiph1
	.globl _eip1
	.globl _pmd
	.globl _pmen
	.globl _pdtcnt
	.globl _pdten
	.globl _scon_1
	.globl _eiph
	.globl _aindids
	.globl _spdr
	.globl _spsr
	.globl _spcr2
	.globl _spcr
	.globl _capcon4
	.globl _capcon3
	.globl _b
	.globl _eip
	.globl _c2h
	.globl _c2l
	.globl _pif
	.globl _pipen
	.globl _pinen
	.globl _picon
	.globl _adccon0
	.globl _c1h
	.globl _c1l
	.globl _c0h
	.globl _c0l
	.globl _adcdly
	.globl _adccon2
	.globl _adccon1
	.globl _acc
	.globl _pwmcon1
	.globl _piocon0
	.globl _pwm3l
	.globl _pwm2l
	.globl _pwm1l
	.globl _pwm0l
	.globl _pwmpl
	.globl _pwmcon0
	.globl _fbd
	.globl _pnp
	.globl _pwm3h
	.globl _pwm2h
	.globl _pwm1h
	.globl _pwm0h
	.globl _pwmph
	.globl _psw
	.globl _adcmph
	.globl _adcmpl
	.globl _pwm5l
	.globl _th2
	.globl _pwm4l
	.globl _tl2
	.globl _rcmp2h
	.globl _rcmp2l
	.globl _t2mod
	.globl _t2con
	.globl _ta
	.globl _piocon1
	.globl _rh3
	.globl _pwm5h
	.globl _rl3
	.globl _pwm4h
	.globl _t3con
	.globl _adcrh
	.globl _adcrl
	.globl _i2addr
	.globl _i2con
	.globl _i2toc
	.globl _i2clk
	.globl _i2stat
	.globl _i2dat
	.globl _saddr_1
	.globl _saden_1
	.globl _saden
	.globl _ip
	.globl _pwmintc
	.globl _iph
	.globl _p2s
	.globl _p1sr
	.globl _p1m2
	.globl _p1s
	.globl _p1m1
	.globl _p0sr
	.globl _p0m2
	.globl _p0s
	.globl _p0m1
	.globl _p3
	.globl _iapcn
	.globl _iapfd
	.globl _p3sr
	.globl _p3m2
	.globl _p3s
	.globl _p3m1
	.globl _bodcon1
	.globl _wdcon
	.globl _saddr
	.globl _ie
	.globl _iapah
	.globl _iapal
	.globl _iapuen
	.globl _iaptrg
	.globl _bodcon0
	.globl _auxr1
	.globl _p2
	.globl _chpcon
	.globl _eie1
	.globl _eie
	.globl _sbuf_1
	.globl _sbuf
	.globl _scon
	.globl _cken
	.globl _ckswt
	.globl _ckdiv
	.globl _capcon2
	.globl _capcon1
	.globl _capcon0
	.globl _sfrs
	.globl _p1
	.globl _wkcon
	.globl _ckcon
	.globl _th1
	.globl _th0
	.globl _tl1
	.globl _tl0
	.globl _tmod
	.globl _tcon
	.globl _pcon
	.globl _rwk
	.globl _rctrim1
	.globl _rctrim0
	.globl _dph
	.globl _dpl
	.globl _sp
	.globl _p0
	.globl _UART0_begin
	.globl _UART0_putChar
	.globl _UART0_print
	.globl _UART0_println
	.globl _UART0_printNum
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_p0	=	0x0080
_sp	=	0x0081
_dpl	=	0x0082
_dph	=	0x0083
_rctrim0	=	0x0084
_rctrim1	=	0x0085
_rwk	=	0x0086
_pcon	=	0x0087
_tcon	=	0x0088
_tmod	=	0x0089
_tl0	=	0x008a
_tl1	=	0x008b
_th0	=	0x008c
_th1	=	0x008d
_ckcon	=	0x008e
_wkcon	=	0x008f
_p1	=	0x0090
_sfrs	=	0x0091
_capcon0	=	0x0092
_capcon1	=	0x0093
_capcon2	=	0x0094
_ckdiv	=	0x0095
_ckswt	=	0x0096
_cken	=	0x0097
_scon	=	0x0098
_sbuf	=	0x0099
_sbuf_1	=	0x009a
_eie	=	0x009b
_eie1	=	0x009c
_chpcon	=	0x009f
_p2	=	0x00a0
_auxr1	=	0x00a2
_bodcon0	=	0x00a3
_iaptrg	=	0x00a4
_iapuen	=	0x00a5
_iapal	=	0x00a6
_iapah	=	0x00a7
_ie	=	0x00a8
_saddr	=	0x00a9
_wdcon	=	0x00aa
_bodcon1	=	0x00ab
_p3m1	=	0x00ac
_p3s	=	0x00ac
_p3m2	=	0x00ad
_p3sr	=	0x00ad
_iapfd	=	0x00ae
_iapcn	=	0x00af
_p3	=	0x00b0
_p0m1	=	0x00b1
_p0s	=	0x00b1
_p0m2	=	0x00b2
_p0sr	=	0x00b2
_p1m1	=	0x00b3
_p1s	=	0x00b3
_p1m2	=	0x00b4
_p1sr	=	0x00b4
_p2s	=	0x00b5
_iph	=	0x00b7
_pwmintc	=	0x00b7
_ip	=	0x00b8
_saden	=	0x00b9
_saden_1	=	0x00ba
_saddr_1	=	0x00bb
_i2dat	=	0x00bc
_i2stat	=	0x00bd
_i2clk	=	0x00be
_i2toc	=	0x00bf
_i2con	=	0x00c0
_i2addr	=	0x00c1
_adcrl	=	0x00c2
_adcrh	=	0x00c3
_t3con	=	0x00c4
_pwm4h	=	0x00c4
_rl3	=	0x00c5
_pwm5h	=	0x00c5
_rh3	=	0x00c6
_piocon1	=	0x00c6
_ta	=	0x00c7
_t2con	=	0x00c8
_t2mod	=	0x00c9
_rcmp2l	=	0x00ca
_rcmp2h	=	0x00cb
_tl2	=	0x00cc
_pwm4l	=	0x00cc
_th2	=	0x00cd
_pwm5l	=	0x00cd
_adcmpl	=	0x00ce
_adcmph	=	0x00cf
_psw	=	0x00d0
_pwmph	=	0x00d1
_pwm0h	=	0x00d2
_pwm1h	=	0x00d3
_pwm2h	=	0x00d4
_pwm3h	=	0x00d5
_pnp	=	0x00d6
_fbd	=	0x00d7
_pwmcon0	=	0x00d8
_pwmpl	=	0x00d9
_pwm0l	=	0x00da
_pwm1l	=	0x00db
_pwm2l	=	0x00dc
_pwm3l	=	0x00dd
_piocon0	=	0x00de
_pwmcon1	=	0x00df
_acc	=	0x00e0
_adccon1	=	0x00e1
_adccon2	=	0x00e2
_adcdly	=	0x00e3
_c0l	=	0x00e4
_c0h	=	0x00e5
_c1l	=	0x00e6
_c1h	=	0x00e7
_adccon0	=	0x00e8
_picon	=	0x00e9
_pinen	=	0x00ea
_pipen	=	0x00eb
_pif	=	0x00ec
_c2l	=	0x00ed
_c2h	=	0x00ee
_eip	=	0x00ef
_b	=	0x00f0
_capcon3	=	0x00f1
_capcon4	=	0x00f2
_spcr	=	0x00f3
_spcr2	=	0x00f3
_spsr	=	0x00f4
_spdr	=	0x00f5
_aindids	=	0x00f6
_eiph	=	0x00f7
_scon_1	=	0x00f8
_pdten	=	0x00f9
_pdtcnt	=	0x00fa
_pmen	=	0x00fb
_pmd	=	0x00fc
_eip1	=	0x00fe
_eiph1	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_UART0_printNum_dis_65536_54:
	.ds 20
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_begin'
;------------------------------------------------------------
;	./src/N76_uart0.c:10: void UART0_begin(void)
;	-----------------------------------------
;	 function UART0_begin
;	-----------------------------------------
_UART0_begin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/N76_uart0.c:12: clrb(P0M1, 6);
	anl	_p0m1,#0xbf
;	./src/N76_uart0.c:13: clrb(P0M2, 6);
	anl	_p0m2,#0xbf
;	./src/N76_uart0.c:14: clrb(P0M1, 7);
	anl	_p0m1,#0x7f
;	./src/N76_uart0.c:15: clrb(P0M2, 7); // set pin at quad mode
	anl	_p0m2,#0x7f
;	./src/N76_uart0.c:17: TH1 = 0xE6;       // set baudrate
	mov	_th1,#0xe6
;	./src/N76_uart0.c:18: setb(SCON, SM1); // UART0 Mode1,REN=1,TI=1
	orl	_scon,#0x40
;	./src/N76_uart0.c:19: setb(SCON, REN); // UART0 Mode1,REN=1,TI=1
	orl	_scon,#0x10
;	./src/N76_uart0.c:20: TMOD |= 0x20;    // Timer1 Mode1
	orl	_tmod,#0x20
;	./src/N76_uart0.c:21: setb(PCON, SMOD);
	orl	_pcon,#0x80
;	./src/N76_uart0.c:22: setb(CKCON, T1M);
	orl	_ckcon,#0x10
;	./src/N76_uart0.c:23: clrb(T3CON, BRCK);
	anl	_t3con,#0xdf
;	./src/N76_uart0.c:24: setb(TCON, TR1);
	orl	_tcon,#0x40
;	./src/N76_uart0.c:25: clrb(SCON, TI);
	anl	_scon,#0xfd
;	./src/N76_uart0.c:26: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_putChar'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_uart0.c:27: void UART0_putChar(uint8_t val)
;	-----------------------------------------
;	 function UART0_putChar
;	-----------------------------------------
_UART0_putChar:
	mov	r7,dpl
;	./src/N76_uart0.c:29: clrb(SCON, TI);
	anl	_scon,#0xfd
;	./src/N76_uart0.c:30: SBUF = val;
	mov	_sbuf,r7
;	./src/N76_uart0.c:31: while (inbit(SCON, TI) == 0)
00101$:
	mov	a,#0x02
	anl	a,_scon
	clr	c
	rrc	a
	jz	00101$
;	./src/N76_uart0.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_print'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/N76_uart0.c:35: void UART0_print(char *str)
;	-----------------------------------------
;	 function UART0_print
;	-----------------------------------------
_UART0_print:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/N76_uart0.c:38: while (str[i] != '\0')
	mov	r4,#0x00
00101$:
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jz	00104$
;	./src/N76_uart0.c:39: UART0_putChar(str[i++]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	inc	r4
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_UART0_putChar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	./src/N76_uart0.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_println'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	./src/N76_uart0.c:42: void UART0_println(char *str)
;	-----------------------------------------
;	 function UART0_println
;	-----------------------------------------
_UART0_println:
;	./src/N76_uart0.c:44: UART0_print(str);
	lcall	_UART0_print
;	./src/N76_uart0.c:45: UART0_print("\r\n");
	mov	dptr,#___str_0
	mov	b,#0x80
;	./src/N76_uart0.c:46: }
	ljmp	_UART0_print
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_printNum'
;------------------------------------------------------------
;num                       Allocated to registers r4 r5 r6 r7 
;dis                       Allocated with name '_UART0_printNum_dis_65536_54'
;------------------------------------------------------------
;	./src/N76_uart0.c:48: void UART0_printNum(long num)
;	-----------------------------------------
;	 function UART0_printNum
;	-----------------------------------------
_UART0_printNum:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/N76_uart0.c:51: sprintf(dis, "%li", num);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_UART0_printNum_dis_65536_54
	push	acc
	mov	a,#(_UART0_printNum_dis_65536_54 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	./src/N76_uart0.c:52: UART0_print(dis);
	mov	dptr,#_UART0_printNum_dis_65536_54
	mov	b,#0x40
;	./src/N76_uart0.c:53: }
	ljmp	_UART0_print
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "%li"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
