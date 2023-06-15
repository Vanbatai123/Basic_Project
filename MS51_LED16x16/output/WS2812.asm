;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module WS2812
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _LED__SendByte_
	.globl _LED__SendOne_
	.globl _LED__SendZero_
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
	.globl _setAll_PARM_3
	.globl _setAll_PARM_2
	.globl _setPixel_PARM_4
	.globl _setPixel_PARM_3
	.globl _setPixel_PARM_2
	.globl _curEffect
	.globl _curColor
	.globl _clearAll
	.globl _showStrip
	.globl _setPixel
	.globl _setAll
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
_curColor::
	.ds 1
_curEffect::
	.ds 1
_setPixel_PARM_2:
	.ds 1
_setPixel_PARM_3:
	.ds 1
_setPixel_PARM_4:
	.ds 1
_setAll_PARM_2:
	.ds 1
_setAll_PARM_3:
	.ds 1
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
;Allocation info for local variables in function 'LED__SendZero_'
;------------------------------------------------------------
;	./src/WS2812.c:23: void LED__SendZero_()
;	-----------------------------------------
;	 function LED__SendZero_
;	-----------------------------------------
_LED__SendZero_:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/WS2812.c:25: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
;	./src/WS2812.c:26: _nop_();
	nop
;	./src/WS2812.c:27: _nop_();
	nop
;	./src/WS2812.c:28: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./src/WS2812.c:29: _nop_();
	nop
;	./src/WS2812.c:30: _nop_();
	nop
;	./src/WS2812.c:31: _nop_();
	nop
;	./src/WS2812.c:32: _nop_();
	nop
;	./src/WS2812.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendOne_'
;------------------------------------------------------------
;	./src/WS2812.c:34: void LED__SendOne_()
;	-----------------------------------------
;	 function LED__SendOne_
;	-----------------------------------------
_LED__SendOne_:
;	./src/WS2812.c:36: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
;	./src/WS2812.c:37: _nop_();
	nop
;	./src/WS2812.c:38: _nop_();
	nop
;	./src/WS2812.c:39: _nop_();
	nop
;	./src/WS2812.c:40: _nop_();
	nop
;	./src/WS2812.c:41: _nop_();
	nop
;	./src/WS2812.c:42: _nop_();
	nop
;	./src/WS2812.c:43: _nop_();
	nop
;	./src/WS2812.c:44: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./src/WS2812.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendByte_'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/WS2812.c:46: void LED__SendByte_(uint8_t dat)
;	-----------------------------------------
;	 function LED__SendByte_
;	-----------------------------------------
_LED__SendByte_:
;	./src/WS2812.c:48: if (dat & 0x80)
	mov	a,dpl
	mov	r7,a
	jnb	acc.7,00102$
;	./src/WS2812.c:49: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00103$
00102$:
;	./src/WS2812.c:51: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00103$:
;	./src/WS2812.c:52: if (dat & 0x40)
	mov	a,r7
	jnb	acc.6,00105$
;	./src/WS2812.c:53: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00106$
00105$:
;	./src/WS2812.c:55: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00106$:
;	./src/WS2812.c:56: if (dat & 0x20)
	mov	a,r7
	jnb	acc.5,00108$
;	./src/WS2812.c:57: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00109$
00108$:
;	./src/WS2812.c:59: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00109$:
;	./src/WS2812.c:60: if (dat & 0x10)
	mov	a,r7
	jnb	acc.4,00111$
;	./src/WS2812.c:61: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00112$
00111$:
;	./src/WS2812.c:63: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00112$:
;	./src/WS2812.c:64: if (dat & 0x08)
	mov	a,r7
	jnb	acc.3,00114$
;	./src/WS2812.c:65: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00115$
00114$:
;	./src/WS2812.c:67: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00115$:
;	./src/WS2812.c:68: if (dat & 0x04)
	mov	a,r7
	jnb	acc.2,00117$
;	./src/WS2812.c:69: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00118$
00117$:
;	./src/WS2812.c:71: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00118$:
;	./src/WS2812.c:72: if (dat & 0x02)
	mov	a,r7
	jnb	acc.1,00120$
;	./src/WS2812.c:73: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00121$
00120$:
;	./src/WS2812.c:75: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00121$:
;	./src/WS2812.c:76: if (dat & 0x01)
	mov	a,r7
	jnb	acc.0,00123$
;	./src/WS2812.c:77: LED__SendOne_();
	ljmp	_LED__SendOne_
00123$:
;	./src/WS2812.c:79: LED__SendZero_();
;	./src/WS2812.c:80: }
	ljmp	_LED__SendZero_
;------------------------------------------------------------
;Allocation info for local variables in function 'clearAll'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:82: void clearAll()
;	-----------------------------------------
;	 function clearAll
;	-----------------------------------------
_clearAll:
;	./src/WS2812.c:85: for (i = 0; i < 300; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	./src/WS2812.c:87: LED__SendByte_(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_LED__SendByte_
;	./src/WS2812.c:88: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
;	./src/WS2812.c:89: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
	pop	ar6
	pop	ar7
;	./src/WS2812.c:85: for (i = 0; i < 300; i++)
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
00111$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,#0x2c
	mov	a,r5
	subb	a,#0x01
	jc	00102$
;	./src/WS2812.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showStrip'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/WS2812.c:93: void showStrip()
;	-----------------------------------------
;	 function showStrip
;	-----------------------------------------
_showStrip:
;	./src/WS2812.c:96: for (i = 0; i < NUM_LEDS; ++i)
	mov	r7,#0x00
00103$:
	mov	ar5,r7
	mov	r6,#0x00
	clr	c
	mov	a,r5
	subb	a,_NUM_LEDS
	mov	a,r6
	subb	a,(_NUM_LEDS + 1)
	jnc	00105$
;	./src/WS2812.c:98: LED__SendByte_(leds[i * 3]);
	mov	__mulint_PARM_2,r7
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0003
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	a,r5
	add	a,#_leds
	mov	dpl,a
	mov	a,r6
	addc	a,#(_leds >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar6
	push	ar5
	lcall	_LED__SendByte_
	pop	ar5
	pop	ar6
;	./src/WS2812.c:99: LED__SendByte_(leds[i * 3 + 1]);
	mov	a,#0x01
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	a,r3
	add	a,#_leds
	mov	dpl,a
	mov	a,r4
	addc	a,#(_leds >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar6
	push	ar5
	lcall	_LED__SendByte_
	pop	ar5
	pop	ar6
;	./src/WS2812.c:100: LED__SendByte_(leds[i * 3 + 2]);
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,#_leds
	mov	dpl,a
	mov	a,r6
	addc	a,#(_leds >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	lcall	_LED__SendByte_
	pop	ar7
;	./src/WS2812.c:96: for (i = 0; i < NUM_LEDS; ++i)
	inc	r7
	sjmp	00103$
00105$:
;	./src/WS2812.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPixel'
;------------------------------------------------------------
;green                     Allocated with name '_setPixel_PARM_2'
;red                       Allocated with name '_setPixel_PARM_3'
;blue                      Allocated with name '_setPixel_PARM_4'
;Pixel                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:105: void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setPixel
;	-----------------------------------------
_setPixel:
	mov	r6,dpl
	mov	r7,dph
;	./src/WS2812.c:107: leds[Pixel * 3] = green;
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_leds
	mov	dpl,a
	mov	a,r7
	addc	a,#(_leds >> 8)
	mov	dph,a
	mov	a,_setPixel_PARM_2
	movx	@dptr,a
;	./src/WS2812.c:108: leds[Pixel * 3 + 1] = red;
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r4
	add	a,#_leds
	mov	dpl,a
	mov	a,r5
	addc	a,#(_leds >> 8)
	mov	dph,a
	mov	a,_setPixel_PARM_3
	movx	@dptr,a
;	./src/WS2812.c:109: leds[Pixel * 3 + 2] = blue;
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,#_leds
	mov	dpl,a
	mov	a,r7
	addc	a,#(_leds >> 8)
	mov	dph,a
	mov	a,_setPixel_PARM_4
	movx	@dptr,a
;	./src/WS2812.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setAll'
;------------------------------------------------------------
;red                       Allocated with name '_setAll_PARM_2'
;blue                      Allocated with name '_setAll_PARM_3'
;green                     Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/WS2812.c:113: void setAll(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setAll
;	-----------------------------------------
_setAll:
	mov	r7,dpl
;	./src/WS2812.c:116: for (i = 0; i < NUM_LEDS; ++i)
	mov	r6,#0x00
00103$:
	mov	ar4,r6
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,_NUM_LEDS
	mov	a,r5
	subb	a,(_NUM_LEDS + 1)
	jnc	00105$
;	./src/WS2812.c:118: setPixel(i, green, red, blue);
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_setAll_PARM_2
	mov	_setPixel_PARM_4,_setAll_PARM_3
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_setPixel
	pop	ar6
	pop	ar7
;	./src/WS2812.c:116: for (i = 0; i < NUM_LEDS; ++i)
	inc	r6
	sjmp	00103$
00105$:
;	./src/WS2812.c:120: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
