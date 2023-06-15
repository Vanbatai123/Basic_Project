;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module N76_DS1307
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _DS1307_write_PARM_2
	.globl _I2C_config
	.globl _I2C_start
	.globl _I2C_stop
	.globl _I2C_read
	.globl _I2C_write
	.globl _DS1307_begin
	.globl _DS1307_read
	.globl _DS1307_write
	.globl _bcd_to_decimal
	.globl _decimal_to_bcd
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
_DS1307_write_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'I2C_config'
;------------------------------------------------------------
;	./src/N76_DS1307.c:11: void I2C_config(void)
;	-----------------------------------------
;	 function I2C_config
;	-----------------------------------------
_I2C_config:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/N76_DS1307.c:13: setb(P1M1, 3); // set P1.3 as open drain
	orl	_p1m1,#0x08
;	./src/N76_DS1307.c:14: setb(P1M2, 3);
	orl	_p1m2,#0x08
;	./src/N76_DS1307.c:15: setb(P1M1, 4); // set P1.4 as open drain
	orl	_p1m1,#0x10
;	./src/N76_DS1307.c:16: setb(P1M2, 4);
	orl	_p1m2,#0x10
;	./src/N76_DS1307.c:19: I2CLK = I2C_CLOCK; // I2C clock = Fsys/(4*(I2CLK+1))
	mov	_i2clk,#0x27
;	./src/N76_DS1307.c:22: setb(I2CON, I2CEN); // set_I2CEN;
	orl	_i2con,#0x40
;	./src/N76_DS1307.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_start'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/N76_DS1307.c:25: void I2C_start(void)
;	-----------------------------------------
;	 function I2C_start
;	-----------------------------------------
_I2C_start:
;	./src/N76_DS1307.c:28: setb(I2CON, STA);
	orl	_i2con,#0x20
;	./src/N76_DS1307.c:29: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_DS1307.c:30: while ((inbit(I2CON, SI) == 0) && (t > 0))
	mov	r6,#0xe8
	mov	r7,#0x03
00102$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
	jnz	00105$
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	./src/N76_DS1307.c:32: t--;
	dec	r6
	cjne	r6,#0xff,00122$
	dec	r7
00122$:
	sjmp	00102$
00105$:
;	./src/N76_DS1307.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_stop'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/N76_DS1307.c:36: void I2C_stop(void)
;	-----------------------------------------
;	 function I2C_stop
;	-----------------------------------------
_I2C_stop:
;	./src/N76_DS1307.c:39: setb(I2CON, STO);
	orl	_i2con,#0x10
;	./src/N76_DS1307.c:40: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_DS1307.c:41: while ((inbit(I2CON, STO) == 1) && (t > 0))
	mov	r6,#0xe8
	mov	r7,#0x03
00102$:
	mov	a,#0x10
	anl	a,_i2con
	swap	a
	anl	a,#0x0f
	mov	r5,a
	cjne	r5,#0x01,00105$
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	./src/N76_DS1307.c:43: t--;
	dec	r6
	cjne	r6,#0xff,00123$
	dec	r7
00123$:
	sjmp	00102$
00105$:
;	./src/N76_DS1307.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_read'
;------------------------------------------------------------
;ack_mode                  Allocated to registers r7 
;t                         Allocated to registers r5 r6 
;value                     Allocated to registers r6 
;------------------------------------------------------------
;	./src/N76_DS1307.c:47: uint8_t I2C_read(uint8_t ack_mode)
;	-----------------------------------------
;	 function I2C_read
;	-----------------------------------------
_I2C_read:
	mov	r7,dpl
;	./src/N76_DS1307.c:51: setb(I2CON, AA);
	orl	_i2con,#0x04
;	./src/N76_DS1307.c:52: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_DS1307.c:53: while ((inbit(I2CON, SI) == 0) && (t > 0))
	mov	r5,#0xe8
	mov	r6,#0x03
00102$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r4,a
	jnz	00104$
	clr	c
	clr	a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	./src/N76_DS1307.c:55: t--;
	dec	r5
	cjne	r5,#0xff,00145$
	dec	r6
00145$:
	sjmp	00102$
00104$:
;	./src/N76_DS1307.c:57: value = I2DAT;
	mov	r6,_i2dat
;	./src/N76_DS1307.c:58: if (ack_mode == I2C_NACK)
	cjne	r7,#0x01,00110$
;	./src/N76_DS1307.c:61: clrb(I2CON, AA);
	anl	_i2con,#0xfb
;	./src/N76_DS1307.c:62: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_DS1307.c:63: while ((inbit(I2CON, SI) == 0) && (t > 0))
	mov	r5,#0xe8
	mov	r7,#0x03
00106$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r4,a
	jnz	00110$
	clr	c
	clr	a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	./src/N76_DS1307.c:65: t--;
	dec	r5
	cjne	r5,#0xff,00150$
	dec	r7
00150$:
	sjmp	00106$
00110$:
;	./src/N76_DS1307.c:68: return value;
	mov	dpl,r6
;	./src/N76_DS1307.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_write'
;------------------------------------------------------------
;value                     Allocated to registers 
;t                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/N76_DS1307.c:70: void I2C_write(uint8_t value)
;	-----------------------------------------
;	 function I2C_write
;	-----------------------------------------
_I2C_write:
	mov	_i2dat,dpl
;	./src/N76_DS1307.c:74: clrb(I2CON, STA);
	anl	_i2con,#0xdf
;	./src/N76_DS1307.c:75: clrb(I2CON, SI);
	anl	_i2con,#0xf7
;	./src/N76_DS1307.c:76: while ((inbit(I2CON, SI) == 0) && (t > 0))
	mov	r6,#0xe8
	mov	r7,#0x03
00102$:
	mov	a,#0x08
	anl	a,_i2con
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
	jnz	00105$
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	./src/N76_DS1307.c:78: t--;
	dec	r6
	cjne	r6,#0xff,00122$
	dec	r7
00122$:
	sjmp	00102$
00105$:
;	./src/N76_DS1307.c:80: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DS1307_begin'
;------------------------------------------------------------
;	./src/N76_DS1307.c:82: void DS1307_begin(void)
;	-----------------------------------------
;	 function DS1307_begin
;	-----------------------------------------
_DS1307_begin:
;	./src/N76_DS1307.c:84: I2C_config();
	lcall	_I2C_config
;	./src/N76_DS1307.c:85: DS1307_write(DS1307_CTRL_REG, 0x00);
	mov	_DS1307_write_PARM_2,#0x00
	mov	dpl,#0x07
;	./src/N76_DS1307.c:86: }
	ljmp	_DS1307_write
;------------------------------------------------------------
;Allocation info for local variables in function 'DS1307_read'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_DS1307.c:88: uint8_t DS1307_read(uint8_t address)
;	-----------------------------------------
;	 function DS1307_read
;	-----------------------------------------
_DS1307_read:
	mov	r7,dpl
;	./src/N76_DS1307.c:91: I2C_start();
	push	ar7
	lcall	_I2C_start
;	./src/N76_DS1307.c:92: I2C_write(DS1307_WR);
	mov	dpl,#0xd0
	lcall	_I2C_write
	pop	ar7
;	./src/N76_DS1307.c:93: I2C_write(address);
	mov	dpl,r7
	lcall	_I2C_write
;	./src/N76_DS1307.c:94: I2C_start();
	lcall	_I2C_start
;	./src/N76_DS1307.c:95: I2C_write(DS1307_RD);
	mov	dpl,#0xd1
	lcall	_I2C_write
;	./src/N76_DS1307.c:96: value = I2C_read(I2C_NACK);
	mov	dpl,#0x01
	lcall	_I2C_read
	mov	r7,dpl
;	./src/N76_DS1307.c:97: I2C_stop();
	push	ar7
	lcall	_I2C_stop
	pop	ar7
;	./src/N76_DS1307.c:98: return value;
	mov	dpl,r7
;	./src/N76_DS1307.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DS1307_write'
;------------------------------------------------------------
;value                     Allocated with name '_DS1307_write_PARM_2'
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_DS1307.c:101: void DS1307_write(uint8_t address, uint8_t value)
;	-----------------------------------------
;	 function DS1307_write
;	-----------------------------------------
_DS1307_write:
	mov	r7,dpl
;	./src/N76_DS1307.c:103: I2C_start();
	push	ar7
	lcall	_I2C_start
;	./src/N76_DS1307.c:104: I2C_write(DS1307_WR);
	mov	dpl,#0xd0
	lcall	_I2C_write
	pop	ar7
;	./src/N76_DS1307.c:105: I2C_write(address);
	mov	dpl,r7
	lcall	_I2C_write
;	./src/N76_DS1307.c:106: I2C_write(value);
	mov	dpl,_DS1307_write_PARM_2
	lcall	_I2C_write
;	./src/N76_DS1307.c:107: I2C_stop();
;	./src/N76_DS1307.c:108: }
	ljmp	_I2C_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'bcd_to_decimal'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_DS1307.c:110: uint8_t bcd_to_decimal(uint8_t value)
;	-----------------------------------------
;	 function bcd_to_decimal
;	-----------------------------------------
_bcd_to_decimal:
	mov	r7,dpl
;	./src/N76_DS1307.c:112: return ((value & 0x0F) + (((value & 0xF0) >> 0x04) * 0x0A));
	mov	ar6,r7
	anl	ar6,#0x0f
	anl	ar7,#0xf0
	clr	a
	swap	a
	xch	a,r7
	swap	a
	anl	a,#0x0f
	xrl	a,r7
	xch	a,r7
	anl	a,#0x0f
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	jnb	acc.3,00103$
	orl	a,#0xf0
00103$:
	mov	a,r7
	mov	b,#0x0a
	mul	ab
	add	a,r6
	mov	dpl,a
;	./src/N76_DS1307.c:113: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'decimal_to_bcd'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_DS1307.c:114: uint8_t decimal_to_bcd(uint8_t value)
;	-----------------------------------------
;	 function decimal_to_bcd
;	-----------------------------------------
_decimal_to_bcd:
	mov	r7,dpl
;	./src/N76_DS1307.c:116: return (((value / 0x0A) << 0x04) & 0xF0) | ((value % 0x0A) & 0x0F);
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
	anl	ar4,#0xf0
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	pop	ar4
	mov	a,#0x0f
	anl	a,r6
	orl	a,r4
	mov	dpl,a
;	./src/N76_DS1307.c:117: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
