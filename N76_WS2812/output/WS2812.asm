;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module WS2812
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fadeToBlackBy
	.globl _LED__SendByte_
	.globl _LED__SendOne_
	.globl _LED__SendZero_
	.globl _cosf
	.globl __delay_us
	.globl __delay_ms
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
	.globl _Pattern2_PARM_6
	.globl _Pattern2_PARM_5
	.globl _Pattern2_PARM_4
	.globl _Pattern2_PARM_3
	.globl _Pattern2_PARM_2
	.globl _Pattern1_PARM_3
	.globl _Pattern1_PARM_2
	.globl _fadeToBlackBy_PARM_2
	.globl _Pattern3_PARM_4
	.globl _Pattern3_PARM_3
	.globl _Pattern3_PARM_2
	.globl _colorWipe_PARM_4
	.globl _colorWipe_PARM_3
	.globl _colorWipe_PARM_2
	.globl _CylonBounceI_PARM_5
	.globl _CylonBounceI_PARM_4
	.globl _CylonBounceI_PARM_3
	.globl _CylonBounceI_PARM_2
	.globl _CylonBounce_PARM_5
	.globl _CylonBounce_PARM_4
	.globl _CylonBounce_PARM_3
	.globl _CylonBounce_PARM_2
	.globl _FadeInOut_PARM_3
	.globl _FadeInOut_PARM_2
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
	.globl _FadeInOut
	.globl _CylonBounce
	.globl _CylonBounceI
	.globl _colorWipe
	.globl _rainbowCycle
	.globl _Pattern3
	.globl _Pattern1
	.globl _Pattern2
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
_FadeInOut_PARM_2:
	.ds 1
_FadeInOut_PARM_3:
	.ds 1
_FadeInOut_green_65536_80:
	.ds 1
_FadeInOut_g_65536_81:
	.ds 1
_FadeInOut_r_65536_81:
	.ds 1
_FadeInOut_curEffect_65536_81:
	.ds 1
_FadeInOut_curColor_65536_81:
	.ds 1
_FadeInOut_k_131072_85:
	.ds 2
_CylonBounce_PARM_2:
	.ds 1
_CylonBounce_PARM_3:
	.ds 1
_CylonBounce_PARM_4:
	.ds 2
_CylonBounce_PARM_5:
	.ds 2
_CylonBounce_green_65536_88:
	.ds 1
_CylonBounce_i_65537_90:
	.ds 1
_CylonBounce_j_65537_90:
	.ds 1
_CylonBounce_sloc0_1_0:
	.ds 1
_CylonBounce_sloc1_1_0:
	.ds 1
_CylonBounceI_PARM_2:
	.ds 1
_CylonBounceI_PARM_3:
	.ds 1
_CylonBounceI_PARM_4:
	.ds 2
_CylonBounceI_PARM_5:
	.ds 2
_CylonBounceI_green_65536_101:
	.ds 1
_CylonBounceI_j_65537_103:
	.ds 1
_CylonBounceI_sloc0_1_0:
	.ds 2
_colorWipe_PARM_2:
	.ds 1
_colorWipe_PARM_3:
	.ds 1
_colorWipe_PARM_4:
	.ds 1
_rainbowCycle_WheelPos_65537_120:
	.ds 1
_Pattern3_PARM_2:
	.ds 1
_Pattern3_PARM_3:
	.ds 1
_Pattern3_PARM_4:
	.ds 1
_Pattern3_sloc0_1_0:
	.ds 2
_fadeToBlackBy_PARM_2:
	.ds 1
_fadeToBlackBy_pixel_65536_134:
	.ds 2
_Pattern1_PARM_2:
	.ds 1
_Pattern1_PARM_3:
	.ds 1
_Pattern1_g_65536_136:
	.ds 1
_Pattern1_i_65537_138:
	.ds 4
_Pattern2_PARM_2:
	.ds 1
_Pattern2_PARM_3:
	.ds 1
_Pattern2_PARM_4:
	.ds 1
_Pattern2_PARM_5:
	.ds 1
_Pattern2_PARM_6:
	.ds 1
_Pattern2_g_65536_143:
	.ds 1
_Pattern2_i_65537_145:
	.ds 4
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
_fadeToBlackBy_sloc0_1_0:
	.ds 1
_Pattern1_sloc0_1_0:
	.ds 1
_Pattern2_sloc0_1_0:
	.ds 1
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
;	./src/WS2812.c:24: void LED__SendZero_()
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
;	./src/WS2812.c:26: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
;	./src/WS2812.c:27: _nop_();
	nop
;	./src/WS2812.c:28: _nop_();
	nop
;	./src/WS2812.c:29: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./src/WS2812.c:30: _nop_();
	nop
;	./src/WS2812.c:31: _nop_();
	nop
;	./src/WS2812.c:32: _nop_();
	nop
;	./src/WS2812.c:33: _nop_();
	nop
;	./src/WS2812.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendOne_'
;------------------------------------------------------------
;	./src/WS2812.c:35: void LED__SendOne_()
;	-----------------------------------------
;	 function LED__SendOne_
;	-----------------------------------------
_LED__SendOne_:
;	./src/WS2812.c:37: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
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
;	./src/WS2812.c:44: _nop_();
	nop
;	./src/WS2812.c:45: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./src/WS2812.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendByte_'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/WS2812.c:47: void LED__SendByte_(uint8_t dat)
;	-----------------------------------------
;	 function LED__SendByte_
;	-----------------------------------------
_LED__SendByte_:
;	./src/WS2812.c:49: if (dat & 0x80)
	mov	a,dpl
	mov	r7,a
	jnb	acc.7,00102$
;	./src/WS2812.c:50: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00103$
00102$:
;	./src/WS2812.c:52: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00103$:
;	./src/WS2812.c:53: if (dat & 0x40)
	mov	a,r7
	jnb	acc.6,00105$
;	./src/WS2812.c:54: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00106$
00105$:
;	./src/WS2812.c:56: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00106$:
;	./src/WS2812.c:57: if (dat & 0x20)
	mov	a,r7
	jnb	acc.5,00108$
;	./src/WS2812.c:58: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00109$
00108$:
;	./src/WS2812.c:60: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00109$:
;	./src/WS2812.c:61: if (dat & 0x10)
	mov	a,r7
	jnb	acc.4,00111$
;	./src/WS2812.c:62: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00112$
00111$:
;	./src/WS2812.c:64: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00112$:
;	./src/WS2812.c:65: if (dat & 0x08)
	mov	a,r7
	jnb	acc.3,00114$
;	./src/WS2812.c:66: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00115$
00114$:
;	./src/WS2812.c:68: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00115$:
;	./src/WS2812.c:69: if (dat & 0x04)
	mov	a,r7
	jnb	acc.2,00117$
;	./src/WS2812.c:70: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00118$
00117$:
;	./src/WS2812.c:72: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00118$:
;	./src/WS2812.c:73: if (dat & 0x02)
	mov	a,r7
	jnb	acc.1,00120$
;	./src/WS2812.c:74: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00121$
00120$:
;	./src/WS2812.c:76: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00121$:
;	./src/WS2812.c:77: if (dat & 0x01)
	mov	a,r7
	jnb	acc.0,00123$
;	./src/WS2812.c:78: LED__SendOne_();
	ljmp	_LED__SendOne_
00123$:
;	./src/WS2812.c:80: LED__SendZero_();
;	./src/WS2812.c:81: }
	ljmp	_LED__SendZero_
;------------------------------------------------------------
;Allocation info for local variables in function 'clearAll'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:83: void clearAll()
;	-----------------------------------------
;	 function clearAll
;	-----------------------------------------
_clearAll:
;	./src/WS2812.c:86: for (i = 0; i < 300; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	./src/WS2812.c:88: LED__SendByte_(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_LED__SendByte_
;	./src/WS2812.c:89: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
;	./src/WS2812.c:90: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
	pop	ar6
	pop	ar7
;	./src/WS2812.c:86: for (i = 0; i < 300; i++)
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
;	./src/WS2812.c:92: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showStrip'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/WS2812.c:94: void showStrip()
;	-----------------------------------------
;	 function showStrip
;	-----------------------------------------
_showStrip:
;	./src/WS2812.c:97: for (i = 0; i < NUM_LEDS; ++i)
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
;	./src/WS2812.c:99: LED__SendByte_(leds[i * 3]);
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
;	./src/WS2812.c:100: LED__SendByte_(leds[i * 3 + 1]);
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
;	./src/WS2812.c:101: LED__SendByte_(leds[i * 3 + 2]);
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
;	./src/WS2812.c:97: for (i = 0; i < NUM_LEDS; ++i)
	inc	r7
	sjmp	00103$
00105$:
;	./src/WS2812.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPixel'
;------------------------------------------------------------
;green                     Allocated with name '_setPixel_PARM_2'
;red                       Allocated with name '_setPixel_PARM_3'
;blue                      Allocated with name '_setPixel_PARM_4'
;Pixel                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:106: void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setPixel
;	-----------------------------------------
_setPixel:
	mov	r6,dpl
	mov	r7,dph
;	./src/WS2812.c:108: leds[Pixel * 3] = green;
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
;	./src/WS2812.c:109: leds[Pixel * 3 + 1] = red;
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
;	./src/WS2812.c:110: leds[Pixel * 3 + 2] = blue;
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
;	./src/WS2812.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setAll'
;------------------------------------------------------------
;red                       Allocated with name '_setAll_PARM_2'
;blue                      Allocated with name '_setAll_PARM_3'
;green                     Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/WS2812.c:114: void setAll(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setAll
;	-----------------------------------------
_setAll:
	mov	r7,dpl
;	./src/WS2812.c:117: for (i = 0; i < NUM_LEDS; ++i)
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
;	./src/WS2812.c:119: setPixel(i, green, red, blue);
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
;	./src/WS2812.c:117: for (i = 0; i < NUM_LEDS; ++i)
	inc	r6
	sjmp	00103$
00105$:
;	./src/WS2812.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FadeInOut'
;------------------------------------------------------------
;red                       Allocated with name '_FadeInOut_PARM_2'
;blue                      Allocated with name '_FadeInOut_PARM_3'
;green                     Allocated with name '_FadeInOut_green_65536_80'
;i                         Allocated to registers r4 
;g                         Allocated with name '_FadeInOut_g_65536_81'
;r                         Allocated with name '_FadeInOut_r_65536_81'
;b                         Allocated to registers 
;curEffect                 Allocated with name '_FadeInOut_curEffect_65536_81'
;curColor                  Allocated with name '_FadeInOut_curColor_65536_81'
;k                         Allocated with name '_FadeInOut_k_131072_85'
;------------------------------------------------------------
;	./src/WS2812.c:123: void FadeInOut(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function FadeInOut
;	-----------------------------------------
_FadeInOut:
	mov	_FadeInOut_green_65536_80,dpl
;	./src/WS2812.c:127: uint8_t curEffect = effect;
	mov	_FadeInOut_curEffect_65536_81,_effect
;	./src/WS2812.c:128: uint8_t curColor = _color;
	mov	_FadeInOut_curColor_65536_81,__color
;	./src/WS2812.c:130: for (i = 0; i < 255; i = i + NUM_LEDS / 50)
	mov	r4,#0x00
00109$:
;	./src/WS2812.c:132: CHECK_EFF;
	mov	a,_effect
	cjne	a,_FadeInOut_curEffect_65536_81,00101$
	mov	a,__color
	cjne	a,_FadeInOut_curColor_65536_81,00148$
	sjmp	00102$
00148$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:134: r = i * red / 256;
	mov	b,r4
	mov	a,_FadeInOut_PARM_2
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	push	ar4
	lcall	__divsint
	mov	r2,dpl
	pop	ar4
;	./src/WS2812.c:135: g = i * green / 256;
	mov	b,r4
	mov	a,_FadeInOut_green_65536_80
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	push	ar4
	push	ar2
	lcall	__divsint
	mov	r1,dpl
	pop	ar2
	pop	ar4
;	./src/WS2812.c:136: b = i * blue / 256;
	mov	b,r4
	mov	a,_FadeInOut_PARM_3
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	push	ar4
	push	ar2
	push	ar1
	lcall	__divsint
	mov	r0,dpl
	pop	ar1
	pop	ar2
	mov	_setAll_PARM_3,r0
;	./src/WS2812.c:137: setAll(g, r, b);
	mov	_setAll_PARM_2,r2
	mov	dpl,r1
	lcall	_setAll
;	./src/WS2812.c:138: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:139: _delay_ms(DELAY2);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r2,a
	clr	a
	addc	a,b
	mov	r3,a
	mov	ar0,r2
	mov	ar1,r3
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__delay_ms
;	./src/WS2812.c:130: for (i = 0; i < 255; i = i + NUM_LEDS / 50)
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	mov	__divuint_PARM_2,#0x32
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	mov	a,r2
	add	a,r4
	mov	r4,a
	cjne	r4,#0xff,00149$
00149$:
	jnc	00150$
	ljmp	00109$
00150$:
;	./src/WS2812.c:142: for (int16_t k = 255; k > 0; k = k - NUM_LEDS / 25)
	mov	_FadeInOut_k_131072_85,#0xff
	mov	(_FadeInOut_k_131072_85 + 1),#0x00
00112$:
	mov	r1,_FadeInOut_k_131072_85
	mov	r2,(_FadeInOut_k_131072_85 + 1)
	clr	c
	clr	a
	subb	a,r1
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00151$
	ret
00151$:
;	./src/WS2812.c:144: CHECK_EFF;
	mov	a,_effect
	cjne	a,_FadeInOut_curEffect_65536_81,00105$
	mov	a,__color
	cjne	a,_FadeInOut_curColor_65536_81,00154$
	sjmp	00106$
00154$:
00105$:
	mov	__status,#0x12
	ret
00106$:
;	./src/WS2812.c:145: r = (k / 256.0) * red;
	mov	dpl,_FadeInOut_k_131072_85
	mov	dph,(_FadeInOut_k_131072_85 + 1)
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r5,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_FadeInOut_PARM_2
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	lcall	___uchar2fs
	mov	r3,dpl
	mov	r4,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	_FadeInOut_r_65536_81,dpl
;	./src/WS2812.c:146: g = (k / 256.0) * green;
	mov	dpl,_FadeInOut_green_65536_80
	lcall	___uchar2fs
	mov	r3,dpl
	mov	r4,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	_FadeInOut_g_65536_81,dpl
;	./src/WS2812.c:147: b = (k / 256.0) * blue;
	mov	dpl,_FadeInOut_PARM_3
	lcall	___uchar2fs
	mov	r3,dpl
	mov	r4,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	_setAll_PARM_3,dpl
;	./src/WS2812.c:148: setAll(g, r, b);
	mov	_setAll_PARM_2,_FadeInOut_r_65536_81
	mov	dpl,_FadeInOut_g_65536_81
	lcall	_setAll
;	./src/WS2812.c:149: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:150: _delay_ms(DELAY2);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	__delay_ms
;	./src/WS2812.c:142: for (int16_t k = 255; k > 0; k = k - NUM_LEDS / 25)
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	mov	__divuint_PARM_2,#0x19
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	r3,_FadeInOut_k_131072_85
	mov	r4,(_FadeInOut_k_131072_85 + 1)
	mov	a,r3
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r4
	subb	a,r7
	mov	r7,a
	mov	_FadeInOut_k_131072_85,r6
	mov	(_FadeInOut_k_131072_85 + 1),r7
;	./src/WS2812.c:152: }
	ljmp	00112$
;------------------------------------------------------------
;Allocation info for local variables in function 'CylonBounce'
;------------------------------------------------------------
;red                       Allocated with name '_CylonBounce_PARM_2'
;blue                      Allocated with name '_CylonBounce_PARM_3'
;EyeSize                   Allocated with name '_CylonBounce_PARM_4'
;ReturnDelay               Allocated with name '_CylonBounce_PARM_5'
;green                     Allocated with name '_CylonBounce_green_65536_88'
;i                         Allocated with name '_CylonBounce_i_65537_90'
;j                         Allocated with name '_CylonBounce_j_65537_90'
;k                         Allocated to registers 
;sloc0                     Allocated with name '_CylonBounce_sloc0_1_0'
;sloc1                     Allocated with name '_CylonBounce_sloc1_1_0'
;------------------------------------------------------------
;	./src/WS2812.c:154: void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t ReturnDelay)
;	-----------------------------------------
;	 function CylonBounce
;	-----------------------------------------
_CylonBounce:
	mov	_CylonBounce_green_65536_88,dpl
;	./src/WS2812.c:156: curEffect = effect;
	mov	_curEffect,_effect
;	./src/WS2812.c:157: curColor = _color;
	mov	_curColor,__color
;	./src/WS2812.c:159: for (i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	mov	_CylonBounce_i_65537_90,#0x00
00115$:
	mov	r4,_CylonBounce_PARM_4
	mov	r5,(_CylonBounce_PARM_4 + 1)
	mov	a,_NUM_LEDS
	clr	c
	subb	a,r4
	mov	r2,a
	mov	a,(_NUM_LEDS + 1)
	subb	a,r5
	mov	r3,a
	mov	a,r2
	add	a,#0xfe
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	r0,_CylonBounce_i_65537_90
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jc	00165$
	ljmp	00105$
00165$:
;	./src/WS2812.c:161: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./src/WS2812.c:162: setPixel(i, red / 10, green / 10, blue / 10);
	mov	r2,_CylonBounce_i_65537_90
	mov	r3,#0x00
	mov	r0,_CylonBounce_PARM_2
	mov	r1,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r0
	mov	dph,r1
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r0,dpl
	mov	r1,_CylonBounce_green_65536_88
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r1
	mov	dph,r7
	push	ar0
	lcall	__divsint
	mov	r1,dpl
	pop	ar0
	mov	r6,_CylonBounce_PARM_3
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar1
	push	ar0
	lcall	__divsint
	mov	r6,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	_setPixel_PARM_2,r0
	mov	_setPixel_PARM_3,r1
	mov	_setPixel_PARM_4,r6
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar1
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar1
	pop	ar6
;	./src/WS2812.c:163: for (j = 1; j <= EyeSize; j++)
	mov	_CylonBounce_j_65537_90,#0x01
00112$:
	mov	r2,_CylonBounce_j_65537_90
	mov	r3,#0x00
	clr	c
	mov	a,_CylonBounce_PARM_4
	subb	a,r2
	mov	a,(_CylonBounce_PARM_4 + 1)
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00104$
;	./src/WS2812.c:165: CHECK_EFF;
	mov	a,_effect
	cjne	a,_curEffect,00101$
	mov	a,__color
	cjne	a,_curColor,00169$
	sjmp	00102$
00169$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:166: setPixel(i + j, green, red, blue);
	push	ar6
	mov	r2,_CylonBounce_i_65537_90
	mov	r3,#0x00
	mov	r6,_CylonBounce_j_65537_90
	mov	r7,#0x00
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	_setPixel_PARM_2,_CylonBounce_green_65536_88
	mov	_setPixel_PARM_3,_CylonBounce_PARM_2
	mov	_setPixel_PARM_4,_CylonBounce_PARM_3
	push	ar6
	push	ar1
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar1
	pop	ar6
;	./src/WS2812.c:163: for (j = 1; j <= EyeSize; j++)
	inc	_CylonBounce_j_65537_90
	pop	ar6
	sjmp	00112$
00104$:
;	./src/WS2812.c:168: setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
	mov	r3,_CylonBounce_i_65537_90
	mov	r7,#0x00
	mov	a,_CylonBounce_PARM_4
	add	a,r3
	mov	r3,a
	mov	a,(_CylonBounce_PARM_4 + 1)
	addc	a,r7
	mov	r7,a
	inc	r3
	cjne	r3,#0x00,00170$
	inc	r7
00170$:
	mov	dpl,r3
	mov	dph,r7
	mov	_setPixel_PARM_2,r0
	mov	_setPixel_PARM_3,r1
	mov	_setPixel_PARM_4,r6
	lcall	_setPixel
;	./src/WS2812.c:169: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:170: _delay_ms(DELAY2);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	mov	a,r2
	lcall	__delay_ms
;	./src/WS2812.c:159: for (i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	inc	_CylonBounce_i_65537_90
	ljmp	00115$
00105$:
;	./src/WS2812.c:173: _delay_ms(ReturnDelay);
	mov	r2,_CylonBounce_PARM_5
	mov	a,(_CylonBounce_PARM_5 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:175: for (int16_t k = NUM_LEDS - EyeSize - 2; k > 0; k--)
	mov	a,_NUM_LEDS
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,(_NUM_LEDS + 1)
	subb	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#0xfe
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
00121$:
	mov	ar0,r4
	mov	ar1,r5
	clr	c
	clr	a
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00171$
	ljmp	00110$
00171$:
;	./src/WS2812.c:177: setAll(0, 0, 0);
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setAll
;	./src/WS2812.c:178: setPixel(k, red / 10, green / 10, blue / 10);
	mov	r0,_CylonBounce_PARM_2
	mov	r1,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r1
	mov	dpl,r0
	mov	dph,r1
	lcall	__divsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r1,_CylonBounce_green_65536_88
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r1
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	__divsint
	mov	r6,dpl
	mov	_CylonBounce_sloc0_1_0,r6
	mov	r6,_CylonBounce_PARM_3
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	_CylonBounce_sloc1_1_0,r6
	mov	_setPixel_PARM_2,r0
	mov	_setPixel_PARM_3,_CylonBounce_sloc0_1_0
	mov	_setPixel_PARM_4,_CylonBounce_sloc1_1_0
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:179: for (j = 1; j <= EyeSize; j++)
	mov	_CylonBounce_j_65537_90,#0x01
;	./src/WS2812.c:189: _delay_ms(ReturnDelay);
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
;	./src/WS2812.c:179: for (j = 1; j <= EyeSize; j++)
00118$:
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	r1,_CylonBounce_j_65537_90
	mov	r7,#0x00
	clr	c
	mov	a,_CylonBounce_PARM_4
	subb	a,r1
	mov	a,(_CylonBounce_PARM_4 + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	jc	00109$
;	./src/WS2812.c:181: CHECK_EFF;
	mov	a,_effect
	cjne	a,_curEffect,00106$
	mov	a,__color
	cjne	a,_curColor,00175$
	sjmp	00107$
00175$:
00106$:
	mov	__status,#0x12
	ret
00107$:
;	./src/WS2812.c:182: setPixel(k + j, green, red, blue);
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	r1,_CylonBounce_j_65537_90
	mov	r7,#0x00
	mov	ar3,r4
	mov	ar6,r5
	mov	a,r1
	add	a,r3
	mov	r1,a
	mov	a,r7
	addc	a,r6
	mov	r7,a
	mov	dpl,r1
	mov	dph,r7
	mov	_setPixel_PARM_2,_CylonBounce_green_65536_88
	mov	_setPixel_PARM_3,_CylonBounce_PARM_2
	mov	_setPixel_PARM_4,_CylonBounce_PARM_3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:179: for (j = 1; j <= EyeSize; j++)
	inc	_CylonBounce_j_65537_90
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	ljmp	00118$
00109$:
;	./src/WS2812.c:184: setPixel(k + EyeSize + 1, red / 10, green / 10, blue / 10);
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_CylonBounce_PARM_4
	add	a,r4
	mov	r1,a
	mov	a,(_CylonBounce_PARM_4 + 1)
	addc	a,r5
	mov	r7,a
	inc	r1
	cjne	r1,#0x00,00176$
	inc	r7
00176$:
	mov	dpl,r1
	mov	dph,r7
	mov	_setPixel_PARM_2,r0
	mov	_setPixel_PARM_3,_CylonBounce_sloc0_1_0
	mov	_setPixel_PARM_4,_CylonBounce_sloc1_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setPixel
;	./src/WS2812.c:185: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:186: _delay_ms(DELAY2);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	add	a,#0x01
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	mov	a,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:175: for (int16_t k = NUM_LEDS - EyeSize - 2; k > 0; k--)
	dec	r4
	cjne	r4,#0xff,00177$
	dec	r5
00177$:
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	ljmp	00121$
00110$:
;	./src/WS2812.c:189: _delay_ms(ReturnDelay);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
;	./src/WS2812.c:190: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'CylonBounceI'
;------------------------------------------------------------
;red                       Allocated with name '_CylonBounceI_PARM_2'
;blue                      Allocated with name '_CylonBounceI_PARM_3'
;EyeSize                   Allocated with name '_CylonBounceI_PARM_4'
;ReturnDelay               Allocated with name '_CylonBounceI_PARM_5'
;green                     Allocated with name '_CylonBounceI_green_65536_101'
;i                         Allocated to registers r6 
;j                         Allocated with name '_CylonBounceI_j_65537_103'
;k                         Allocated to registers 
;sloc0                     Allocated with name '_CylonBounceI_sloc0_1_0'
;------------------------------------------------------------
;	./src/WS2812.c:191: void CylonBounceI(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t ReturnDelay)
;	-----------------------------------------
;	 function CylonBounceI
;	-----------------------------------------
_CylonBounceI:
	mov	_CylonBounceI_green_65536_101,dpl
;	./src/WS2812.c:193: curEffect = effect;
	mov	_curEffect,_effect
;	./src/WS2812.c:194: curColor = _color;
	mov	_curColor,__color
;	./src/WS2812.c:196: for (i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	mov	r6,#0x00
00115$:
	mov	r4,_CylonBounceI_PARM_4
	mov	r5,(_CylonBounceI_PARM_4 + 1)
	mov	a,_NUM_LEDS
	clr	c
	subb	a,r4
	mov	r2,a
	mov	a,(_NUM_LEDS + 1)
	subb	a,r5
	mov	r3,a
	mov	a,r2
	add	a,#0xfe
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	ar0,r6
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jc	00165$
	ljmp	00105$
00165$:
;	./src/WS2812.c:198: setAll(green, red, blue);
	mov	_setAll_PARM_2,_CylonBounceI_PARM_2
	mov	_setAll_PARM_3,_CylonBounceI_PARM_3
	mov	dpl,_CylonBounceI_green_65536_101
	push	ar6
	lcall	_setAll
	pop	ar6
;	./src/WS2812.c:199: for (j = 0; j <= EyeSize + 1; j++)
	mov	r3,#0x00
00112$:
	mov	r1,_CylonBounceI_PARM_4
	mov	r2,(_CylonBounceI_PARM_4 + 1)
	inc	r1
	cjne	r1,#0x00,00166$
	inc	r2
00166$:
	mov	_CylonBounceI_sloc0_1_0,r3
	mov	(_CylonBounceI_sloc0_1_0 + 1),#0x00
	clr	c
	mov	a,r1
	subb	a,_CylonBounceI_sloc0_1_0
	mov	a,r2
	xrl	a,#0x80
	mov	b,(_CylonBounceI_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00104$
;	./src/WS2812.c:201: CHECK_EFF;
	mov	a,_effect
	cjne	a,_curEffect,00101$
	mov	a,__color
	cjne	a,_curColor,00170$
	sjmp	00102$
00170$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:202: setPixel(i + j, 0, 0, 0);
	mov	ar1,r6
	mov	r2,#0x00
	mov	a,_CylonBounceI_sloc0_1_0
	add	a,r1
	mov	r1,a
	mov	a,(_CylonBounceI_sloc0_1_0 + 1)
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	_setPixel_PARM_2,#0x00
	mov	_setPixel_PARM_3,#0x00
	mov	_setPixel_PARM_4,#0x00
	push	ar6
	push	ar3
	lcall	_setPixel
	pop	ar3
	pop	ar6
;	./src/WS2812.c:199: for (j = 0; j <= EyeSize + 1; j++)
	inc	r3
	sjmp	00112$
00104$:
;	./src/WS2812.c:204: showStrip();
	push	ar6
	lcall	_showStrip
;	./src/WS2812.c:205: _delay_ms(DELAY2);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r2,a
	clr	a
	addc	a,b
	mov	r3,a
	mov	ar0,r2
	mov	ar1,r3
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__delay_ms
	pop	ar6
;	./src/WS2812.c:196: for (i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	inc	r6
	ljmp	00115$
00105$:
;	./src/WS2812.c:208: _delay_ms(ReturnDelay);
	mov	r1,_CylonBounceI_PARM_5
	mov	a,(_CylonBounceI_PARM_5 + 1)
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r6,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	__delay_ms
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	./src/WS2812.c:210: for (int16_t k = NUM_LEDS - EyeSize - 2; k > 0; k--)
	mov	a,_NUM_LEDS
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,(_NUM_LEDS + 1)
	subb	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#0xfe
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
00121$:
	mov	ar0,r4
	mov	ar7,r5
	clr	c
	clr	a
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00171$
	ljmp	00110$
00171$:
;	./src/WS2812.c:212: setAll(green, red, blue);
	mov	_setAll_PARM_2,_CylonBounceI_PARM_2
	mov	_setAll_PARM_3,_CylonBounceI_PARM_3
	mov	dpl,_CylonBounceI_green_65536_101
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_setAll
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	./src/WS2812.c:213: for (j = 0; j <= EyeSize + 1; j++)
	mov	_CylonBounceI_j_65537_103,#0x00
00118$:
	mov	r0,_CylonBounceI_PARM_4
	mov	r7,(_CylonBounceI_PARM_4 + 1)
	inc	r0
	cjne	r0,#0x00,00172$
	inc	r7
00172$:
	mov	_CylonBounceI_sloc0_1_0,_CylonBounceI_j_65537_103
	mov	(_CylonBounceI_sloc0_1_0 + 1),#0x00
	clr	c
	mov	a,r0
	subb	a,_CylonBounceI_sloc0_1_0
	mov	a,r7
	xrl	a,#0x80
	mov	b,(_CylonBounceI_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00109$
;	./src/WS2812.c:215: CHECK_EFF;
	mov	a,_effect
	cjne	a,_curEffect,00106$
	mov	a,__color
	cjne	a,_curColor,00176$
	sjmp	00107$
00176$:
00106$:
	mov	__status,#0x12
	ret
00107$:
;	./src/WS2812.c:216: setPixel(k + j, 0, 0, 0);
	mov	ar0,r4
	mov	ar7,r5
	mov	a,_CylonBounceI_sloc0_1_0
	add	a,r0
	mov	r0,a
	mov	a,(_CylonBounceI_sloc0_1_0 + 1)
	addc	a,r7
	mov	r7,a
	mov	dpl,r0
	mov	dph,r7
	mov	_setPixel_PARM_2,#0x00
	mov	_setPixel_PARM_3,#0x00
	mov	_setPixel_PARM_4,#0x00
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_setPixel
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	./src/WS2812.c:213: for (j = 0; j <= EyeSize + 1; j++)
	inc	_CylonBounceI_j_65537_103
	sjmp	00118$
00109$:
;	./src/WS2812.c:218: showStrip();
	push	ar1
	push	ar2
	push	ar3
	push	ar6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_showStrip
;	./src/WS2812.c:219: _delay_ms(DELAY2);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	add	a,#0x01
	mov	r0,a
	clr	a
	addc	a,b
	mov	r3,a
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r0
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	__delay_ms
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	./src/WS2812.c:210: for (int16_t k = NUM_LEDS - EyeSize - 2; k > 0; k--)
	dec	r4
	cjne	r4,#0xff,00177$
	dec	r5
00177$:
	pop	ar6
	pop	ar3
	pop	ar2
	pop	ar1
	ljmp	00121$
00110$:
;	./src/WS2812.c:222: _delay_ms(ReturnDelay);
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r6
;	./src/WS2812.c:223: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'colorWipe'
;------------------------------------------------------------
;red                       Allocated with name '_colorWipe_PARM_2'
;blue                      Allocated with name '_colorWipe_PARM_3'
;orient                    Allocated with name '_colorWipe_PARM_4'
;green                     Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/WS2812.c:224: void colorWipe(uint8_t green, uint8_t red, uint8_t blue, uint8_t orient)
;	-----------------------------------------
;	 function colorWipe
;	-----------------------------------------
_colorWipe:
	mov	r7,dpl
;	./src/WS2812.c:227: curEffect = effect;
	mov	_curEffect,_effect
;	./src/WS2812.c:228: curColor = _color;
	mov	_curColor,__color
;	./src/WS2812.c:229: for (i = 0; i < NUM_LEDS; i++)
	mov	r6,#0x00
00106$:
	mov	ar4,r6
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,_NUM_LEDS
	mov	a,r5
	subb	a,(_NUM_LEDS + 1)
	jc	00128$
	ret
00128$:
;	./src/WS2812.c:231: CHECK_EFF;
	mov	a,_effect
	cjne	a,_curEffect,00101$
	mov	a,__color
	cjne	a,_curColor,00131$
	sjmp	00102$
00131$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:232: setPixel(orient == 0 ? i : NUM_LEDS - i - 1, green, red, blue);
	mov	a,_colorWipe_PARM_4
	jnz	00110$
	mov	ar4,r6
	mov	r5,a
	sjmp	00111$
00110$:
	mov	ar2,r6
	mov	r3,#0x00
	mov	r0,_NUM_LEDS
	mov	r1,(_NUM_LEDS + 1)
	mov	a,r0
	clr	c
	subb	a,r2
	mov	r0,a
	mov	a,r1
	subb	a,r3
	mov	r1,a
	mov	a,r0
	add	a,#0xff
	mov	r4,a
	mov	a,r1
	addc	a,#0xff
	mov	r5,a
00111$:
	mov	dpl,r4
	mov	dph,r5
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_colorWipe_PARM_2
	mov	_setPixel_PARM_4,_colorWipe_PARM_3
	push	ar7
	push	ar6
	lcall	_setPixel
;	./src/WS2812.c:233: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:234: _delay_ms(DELAY2 + 1);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	add	a,#0x02
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	mov	a,r2
	lcall	__delay_ms
	pop	ar6
	pop	ar7
;	./src/WS2812.c:229: for (i = 0; i < NUM_LEDS; i++)
	inc	r6
;	./src/WS2812.c:236: }
	ljmp	00106$
;------------------------------------------------------------
;Allocation info for local variables in function 'rainbowCycle'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;r                         Allocated to registers r2 
;g                         Allocated to registers r3 
;b                         Allocated to registers r1 
;WheelPos                  Allocated with name '_rainbowCycle_WheelPos_65537_120'
;j                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:238: void rainbowCycle()
;	-----------------------------------------
;	 function rainbowCycle
;	-----------------------------------------
_rainbowCycle:
;	./src/WS2812.c:242: curEffect = effect;
	mov	_curEffect,_effect
;	./src/WS2812.c:243: curColor = _color;
	mov	_curColor,__color
;	./src/WS2812.c:246: for (uint16_t j = 0; j < 256 * 5; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00116$:
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x100 - 0x05
	add	a,r5
	jnc	00155$
	ret
00155$:
;	./src/WS2812.c:248: for (i = 0; i < NUM_LEDS; i++)
	mov	r5,#0x00
00113$:
	mov	ar3,r5
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,_NUM_LEDS
	mov	a,r4
	subb	a,(_NUM_LEDS + 1)
	jc	00156$
	ljmp	00110$
00156$:
;	./src/WS2812.c:250: CHECK_EFF;
	mov	a,_effect
	cjne	a,_curEffect,00101$
	mov	a,__color
	cjne	a,_curColor,00159$
	sjmp	00102$
00159$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:251: WheelPos = (((i * 256 / NUM_LEDS) + j) & 255);
	mov	ar3,r5
	mov	ar4,r3
	mov	r3,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	__divuint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar4,r6
	mov	a,r4
	add	a,r3
	mov	r4,a
;	./src/WS2812.c:253: if (WheelPos < 85)
	cjne	r4,#0x55,00160$
00160$:
	jnc	00108$
;	./src/WS2812.c:255: g = WheelPos * 3;
	mov	a,r4
	mov	b,#0x03
	mul	ab
	mov	r3,a
;	./src/WS2812.c:256: r = 255 - WheelPos * 3;
	mov	ar2,r4
	mov	a,r2
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	r2,a
;	./src/WS2812.c:257: b = 0;
	mov	r1,#0x00
	sjmp	00109$
00108$:
;	./src/WS2812.c:259: else if (WheelPos < 170)
	cjne	r4,#0xaa,00162$
00162$:
	jnc	00105$
;	./src/WS2812.c:261: WheelPos -= 85;
	mov	ar0,r4
	mov	a,r0
	add	a,#0xab
;	./src/WS2812.c:262: g = 255 - WheelPos * 3;
	mov	_rainbowCycle_WheelPos_65537_120,a
	mov	r0,a
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	r3,a
;	./src/WS2812.c:263: r = 0;
	mov	r2,#0x00
;	./src/WS2812.c:264: b = WheelPos * 3;
	mov	a,_rainbowCycle_WheelPos_65537_120
	mov	b,#0x03
	mul	ab
	mov	r1,a
	sjmp	00109$
00105$:
;	./src/WS2812.c:268: WheelPos -= 170;
	mov	a,r4
	add	a,#0x56
;	./src/WS2812.c:269: g = 0;
;	./src/WS2812.c:270: r = WheelPos * 3;
	mov	r4,a
	mov	r3,#0x00
	mov	b,#0x03
	mul	ab
	mov	r2,a
;	./src/WS2812.c:271: b = 255 - WheelPos * 3;
	mov	a,r4
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	r1,a
00109$:
;	./src/WS2812.c:274: setPixel(i, g, r, b);
	mov	ar0,r5
	mov	r4,#0x00
	mov	_setPixel_PARM_2,r3
	mov	_setPixel_PARM_3,r2
	mov	_setPixel_PARM_4,r1
	mov	dpl,r0
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_setPixel
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:248: for (i = 0; i < NUM_LEDS; i++)
	inc	r5
	ljmp	00113$
00110$:
;	./src/WS2812.c:276: showStrip();
	push	ar7
	push	ar6
	lcall	_showStrip
;	./src/WS2812.c:277: _delay_ms(DELAY);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	mov	a,r2
	lcall	__delay_ms
	pop	ar6
	pop	ar7
;	./src/WS2812.c:246: for (uint16_t j = 0; j < 256 * 5; j++)
	inc	r6
	cjne	r6,#0x00,00164$
	inc	r7
00164$:
;	./src/WS2812.c:279: }
	ljmp	00116$
;------------------------------------------------------------
;Allocation info for local variables in function 'Pattern3'
;------------------------------------------------------------
;r                         Allocated with name '_Pattern3_PARM_2'
;b                         Allocated with name '_Pattern3_PARM_3'
;orient                    Allocated with name '_Pattern3_PARM_4'
;g                         Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;sloc0                     Allocated with name '_Pattern3_sloc0_1_0'
;------------------------------------------------------------
;	./src/WS2812.c:280: void Pattern3(uint8_t g, uint8_t r, uint8_t b, uint8_t orient)
;	-----------------------------------------
;	 function Pattern3
;	-----------------------------------------
_Pattern3:
	mov	r7,dpl
;	./src/WS2812.c:283: curEffect = effect;
	mov	_curEffect,_effect
;	./src/WS2812.c:284: curColor = _color;
	mov	_curColor,__color
;	./src/WS2812.c:285: for (int i = 0; i < (NUM_LEDS / 2); i++)
	mov	r5,#0x00
	mov	r6,#0x00
00106$:
	mov	r3,_NUM_LEDS
	mov	r4,(_NUM_LEDS + 1)
	mov	ar1,r3
	mov	a,r4
	clr	c
	rrc	a
	xch	a,r1
	rrc	a
	xch	a,r1
	mov	r2,a
	mov	_Pattern3_sloc0_1_0,r5
	mov	(_Pattern3_sloc0_1_0 + 1),r6
	clr	c
	mov	a,_Pattern3_sloc0_1_0
	subb	a,r1
	mov	a,(_Pattern3_sloc0_1_0 + 1)
	subb	a,r2
	jc	00134$
	ljmp	00104$
00134$:
;	./src/WS2812.c:287: CHECK_EFF;
	mov	a,_effect
	cjne	a,_curEffect,00101$
	mov	a,__color
	cjne	a,_curColor,00137$
	sjmp	00102$
00137$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:288: setPixel(orient ? (NUM_LEDS / 2) + i : NUM_LEDS - 1 - i, g, r, b);
	mov	a,_Pattern3_PARM_4
	jz	00110$
	mov	a,_Pattern3_sloc0_1_0
	add	a,r1
	mov	r1,a
	mov	a,(_Pattern3_sloc0_1_0 + 1)
	addc	a,r2
	mov	r2,a
	sjmp	00111$
00110$:
	dec	r3
	cjne	r3,#0xff,00139$
	dec	r4
00139$:
	mov	a,r3
	clr	c
	subb	a,_Pattern3_sloc0_1_0
	mov	r1,a
	mov	a,r4
	subb	a,(_Pattern3_sloc0_1_0 + 1)
	mov	r2,a
00111$:
	mov	dpl,r1
	mov	dph,r2
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_Pattern3_PARM_2
	mov	_setPixel_PARM_4,_Pattern3_PARM_3
	push	ar7
	push	ar6
	push	ar5
	lcall	_setPixel
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:289: setPixel(orient ? ((NUM_LEDS / 2) - 1) - i : i, g, r, b);
	mov	a,_Pattern3_PARM_4
	jz	00112$
	mov	r3,_NUM_LEDS
	mov	a,(_NUM_LEDS + 1)
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	dec	r3
	cjne	r3,#0xff,00141$
	dec	r4
00141$:
	mov	ar1,r5
	mov	ar2,r6
	mov	a,r3
	clr	c
	subb	a,r1
	mov	r3,a
	mov	a,r4
	subb	a,r2
	mov	r4,a
	sjmp	00113$
00112$:
	mov	ar3,r5
	mov	ar4,r6
00113$:
	mov	dpl,r3
	mov	dph,r4
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_Pattern3_PARM_2
	mov	_setPixel_PARM_4,_Pattern3_PARM_3
	push	ar7
	push	ar6
	push	ar5
	lcall	_setPixel
;	./src/WS2812.c:290: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:291: _delay_ms(DELAY2);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r3,a
	clr	a
	addc	a,b
	mov	r4,a
	mov	ar1,r3
	mov	ar2,r4
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:285: for (int i = 0; i < (NUM_LEDS / 2); i++)
	inc	r5
	cjne	r5,#0x00,00142$
	inc	r6
00142$:
	ljmp	00106$
00104$:
;	./src/WS2812.c:293: _delay_ms(300);
	mov	dptr,#0x012c
	clr	a
	mov	b,a
;	./src/WS2812.c:294: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'fadeToBlackBy'
;------------------------------------------------------------
;fadeBy                    Allocated with name '_fadeToBlackBy_PARM_2'
;pixel                     Allocated with name '_fadeToBlackBy_pixel_65536_134'
;r1                        Allocated to registers r1 
;g1                        Allocated to registers r6 
;b1                        Allocated to registers 
;------------------------------------------------------------
;	./src/WS2812.c:296: void fadeToBlackBy(uint16_t pixel, uint8_t fadeBy)
;	-----------------------------------------
;	 function fadeToBlackBy
;	-----------------------------------------
_fadeToBlackBy:
	mov	_fadeToBlackBy_pixel_65536_134,dpl
	mov	(_fadeToBlackBy_pixel_65536_134 + 1),dph
;	./src/WS2812.c:301: r1 = leds[3 * pixel + 1];
	mov	__mulint_PARM_2,_fadeToBlackBy_pixel_65536_134
	mov	(__mulint_PARM_2 + 1),(_fadeToBlackBy_pixel_65536_134 + 1)
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	a,#0x01
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	a,r2
	add	a,#_leds
	mov	dpl,a
	mov	a,r3
	addc	a,#(_leds >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
;	./src/WS2812.c:302: g1 = leds[3 * pixel];
	mov	a,r4
	add	a,#_leds
	mov	dpl,a
	mov	a,r5
	addc	a,#(_leds >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
;	./src/WS2812.c:303: b1 = leds[3 * pixel + 2];
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#_leds
	mov	dpl,a
	mov	a,r5
	addc	a,#(_leds >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
;	./src/WS2812.c:305: r1 = (r1 <= 12) ? 0 : (int)r1 - (r1 * fadeBy / 256);
	mov	a,r3
	add	a,#0xff - 0x0c
	mov	_fadeToBlackBy_sloc0_1_0,c
	jc	00103$
	mov	r1,#0x00
	mov	r4,#0x00
	sjmp	00104$
00103$:
	mov	ar0,r3
	mov	b,r3
	mov	a,_fadeToBlackBy_PARM_2
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	push	ar5
	push	ar2
	push	ar0
	lcall	__divsint
	mov	r3,dpl
	mov	r7,dph
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r0
	clr	c
	subb	a,r3
	mov	r0,a
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r4,a
00104$:
;	./src/WS2812.c:306: g1 = (g1 <= 12) ? 0 : (int)g1 - (g1 * fadeBy / 256);
	mov	a,r2
	add	a,#0xff - 0x0c
	mov	_fadeToBlackBy_sloc0_1_0,c
	jc	00105$
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00106$
00105$:
	mov	ar4,r2
	mov	b,r2
	mov	a,_fadeToBlackBy_PARM_2
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	push	ar5
	push	ar4
	push	ar1
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	pop	ar4
	pop	ar5
	mov	a,r4
	clr	c
	subb	a,r2
	mov	r4,a
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
00106$:
;	./src/WS2812.c:307: b1 = (b1 <= 12) ? 0 : (int)b1 - (b1 * fadeBy / 256);
	mov	a,r5
	add	a,#0xff - 0x0c
	mov	_fadeToBlackBy_sloc0_1_0,c
	jc	00107$
	mov	r4,#0x00
	mov	r7,#0x00
	sjmp	00108$
00107$:
	mov	ar3,r5
	mov	b,r5
	mov	a,_fadeToBlackBy_PARM_2
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	push	ar6
	push	ar3
	push	ar1
	lcall	__divsint
	mov	r2,dpl
	mov	r5,dph
	pop	ar1
	pop	ar3
	pop	ar6
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r3,a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r7,a
00108$:
	mov	_setPixel_PARM_4,r4
;	./src/WS2812.c:309: setPixel(pixel, g1, r1, b1);
	mov	_setPixel_PARM_2,r6
	mov	_setPixel_PARM_3,r1
	mov	dpl,_fadeToBlackBy_pixel_65536_134
	mov	dph,(_fadeToBlackBy_pixel_65536_134 + 1)
;	./src/WS2812.c:310: }
	ljmp	_setPixel
;------------------------------------------------------------
;Allocation info for local variables in function 'Pattern1'
;------------------------------------------------------------
;r                         Allocated with name '_Pattern1_PARM_2'
;b                         Allocated with name '_Pattern1_PARM_3'
;g                         Allocated with name '_Pattern1_g_65536_136'
;j                         Allocated to registers r2 
;pixel                     Allocated to registers r7 
;i                         Allocated with name '_Pattern1_i_65537_138'
;------------------------------------------------------------
;	./src/WS2812.c:312: void Pattern1(uint8_t g, uint8_t r, uint8_t b)
;	-----------------------------------------
;	 function Pattern1
;	-----------------------------------------
_Pattern1:
	mov	_Pattern1_g_65536_136,dpl
;	./src/WS2812.c:316: curEffect = effect;
	mov	_curEffect,_effect
;	./src/WS2812.c:317: curColor = _color;
	mov	_curColor,__color
;	./src/WS2812.c:318: float i = 0;
	clr	a
	mov	_Pattern1_i_65537_138,a
	mov	(_Pattern1_i_65537_138 + 1),a
	mov	(_Pattern1_i_65537_138 + 2),a
	mov	(_Pattern1_i_65537_138 + 3),a
;	./src/WS2812.c:319: while (i <= 2 * PI)
00105$:
	push	_Pattern1_i_65537_138
	push	(_Pattern1_i_65537_138 + 1)
	push	(_Pattern1_i_65537_138 + 2)
	push	(_Pattern1_i_65537_138 + 3)
	mov	dptr,#0x0fdb
	mov	b,#0xc9
	mov	a,#0x40
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,dpl
	add	a,#0xff
	mov	_Pattern1_sloc0_1_0,c
	jnc	00134$
	ret
00134$:
;	./src/WS2812.c:322: for (j = 0; j < NUM_LEDS; j++)
	mov	r2,#0x00
00109$:
	mov	ar0,r2
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,_NUM_LEDS
	mov	a,r1
	subb	a,(_NUM_LEDS + 1)
	jnc	00101$
;	./src/WS2812.c:324: fadeToBlackBy(j, 20);
	mov	_fadeToBlackBy_PARM_2,#0x14
	mov	dpl,r0
	mov	dph,r1
	push	ar2
	lcall	_fadeToBlackBy
	pop	ar2
;	./src/WS2812.c:322: for (j = 0; j < NUM_LEDS; j++)
	inc	r2
	sjmp	00109$
00101$:
;	./src/WS2812.c:326: pixel = (uint8_t)(NUM_LEDS / 2 * (cosf(i) + 1));
	mov	r1,_NUM_LEDS
	mov	a,(_NUM_LEDS + 1)
	clr	c
	rrc	a
	xch	a,r1
	rrc	a
	xch	a,r1
	mov	r2,a
	mov	dpl,_Pattern1_i_65537_138
	mov	dph,(_Pattern1_i_65537_138 + 1)
	mov	b,(_Pattern1_i_65537_138 + 2)
	mov	a,(_Pattern1_i_65537_138 + 3)
	push	ar2
	push	ar1
	lcall	_cosf
	mov	r0,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar2
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	r7,dpl
;	./src/WS2812.c:327: i += 0.01;
	push	ar7
	mov	a,#0x0a
	push	acc
	mov	a,#0xd7
	push	acc
	mov	a,#0x23
	push	acc
	mov	a,#0x3c
	push	acc
	mov	dpl,_Pattern1_i_65537_138
	mov	dph,(_Pattern1_i_65537_138 + 1)
	mov	b,(_Pattern1_i_65537_138 + 2)
	mov	a,(_Pattern1_i_65537_138 + 3)
	lcall	___fsadd
	mov	_Pattern1_i_65537_138,dpl
	mov	(_Pattern1_i_65537_138 + 1),dph
	mov	(_Pattern1_i_65537_138 + 2),b
	mov	(_Pattern1_i_65537_138 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	./src/WS2812.c:328: _delay_us(DELAY);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r5,a
	clr	a
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	mov	a,r3
	lcall	__delay_us
	pop	ar7
;	./src/WS2812.c:330: setPixel(pixel, g, r, b);
	mov	r6,#0x00
	mov	_setPixel_PARM_2,_Pattern1_g_65536_136
	mov	_setPixel_PARM_3,_Pattern1_PARM_2
	mov	_setPixel_PARM_4,_Pattern1_PARM_3
	mov	dpl,r7
	mov	dph,r6
	lcall	_setPixel
;	./src/WS2812.c:332: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:333: CHECK_EFF;
	mov	a,_effect
	cjne	a,_curEffect,00102$
	mov	a,__color
	cjne	a,_curColor,00138$
	ljmp	00105$
00138$:
00102$:
	mov	__status,#0x12
;	./src/WS2812.c:335: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Pattern2'
;------------------------------------------------------------
;r                         Allocated with name '_Pattern2_PARM_2'
;b                         Allocated with name '_Pattern2_PARM_3'
;g2                        Allocated with name '_Pattern2_PARM_4'
;r2                        Allocated with name '_Pattern2_PARM_5'
;b2                        Allocated with name '_Pattern2_PARM_6'
;g                         Allocated with name '_Pattern2_g_65536_143'
;j                         Allocated to registers r2 
;pixel                     Allocated to registers r7 
;i                         Allocated with name '_Pattern2_i_65537_145'
;------------------------------------------------------------
;	./src/WS2812.c:336: void Pattern2(uint8_t g, uint8_t r, uint8_t b, uint8_t g2, uint8_t r2, uint8_t b2)
;	-----------------------------------------
;	 function Pattern2
;	-----------------------------------------
_Pattern2:
	mov	_Pattern2_g_65536_143,dpl
;	./src/WS2812.c:340: curEffect = effect;
	mov	_curEffect,_effect
;	./src/WS2812.c:341: curColor = _color;
	mov	_curColor,__color
;	./src/WS2812.c:342: float i = 0;
	clr	a
	mov	_Pattern2_i_65537_145,a
	mov	(_Pattern2_i_65537_145 + 1),a
	mov	(_Pattern2_i_65537_145 + 2),a
	mov	(_Pattern2_i_65537_145 + 3),a
;	./src/WS2812.c:343: while (i <= 2 * PI)
00105$:
	push	_Pattern2_i_65537_145
	push	(_Pattern2_i_65537_145 + 1)
	push	(_Pattern2_i_65537_145 + 2)
	push	(_Pattern2_i_65537_145 + 3)
	mov	dptr,#0x0fdb
	mov	b,#0xc9
	mov	a,#0x40
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,dpl
	add	a,#0xff
	mov	_Pattern2_sloc0_1_0,c
	jnc	00134$
	ret
00134$:
;	./src/WS2812.c:346: for (j = 0; j < NUM_LEDS; j++)
	mov	r2,#0x00
00109$:
	mov	ar0,r2
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,_NUM_LEDS
	mov	a,r1
	subb	a,(_NUM_LEDS + 1)
	jnc	00101$
;	./src/WS2812.c:348: fadeToBlackBy(j, 20);
	mov	_fadeToBlackBy_PARM_2,#0x14
	mov	dpl,r0
	mov	dph,r1
	push	ar2
	lcall	_fadeToBlackBy
	pop	ar2
;	./src/WS2812.c:346: for (j = 0; j < NUM_LEDS; j++)
	inc	r2
	sjmp	00109$
00101$:
;	./src/WS2812.c:350: pixel = (uint8_t)(NUM_LEDS / 2 * (cosf(i) + 1));
	mov	r1,_NUM_LEDS
	mov	a,(_NUM_LEDS + 1)
	clr	c
	rrc	a
	xch	a,r1
	rrc	a
	xch	a,r1
	mov	r2,a
	mov	dpl,_Pattern2_i_65537_145
	mov	dph,(_Pattern2_i_65537_145 + 1)
	mov	b,(_Pattern2_i_65537_145 + 2)
	mov	a,(_Pattern2_i_65537_145 + 3)
	push	ar2
	push	ar1
	lcall	_cosf
	mov	r0,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar2
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	r7,dpl
;	./src/WS2812.c:351: i += 0.01;
	push	ar7
	mov	a,#0x0a
	push	acc
	mov	a,#0xd7
	push	acc
	mov	a,#0x23
	push	acc
	mov	a,#0x3c
	push	acc
	mov	dpl,_Pattern2_i_65537_145
	mov	dph,(_Pattern2_i_65537_145 + 1)
	mov	b,(_Pattern2_i_65537_145 + 2)
	mov	a,(_Pattern2_i_65537_145 + 3)
	lcall	___fsadd
	mov	_Pattern2_i_65537_145,dpl
	mov	(_Pattern2_i_65537_145 + 1),dph
	mov	(_Pattern2_i_65537_145 + 2),b
	mov	(_Pattern2_i_65537_145 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	./src/WS2812.c:352: _delay_ms(DELAY2);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r5,a
	clr	a
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	mov	a,r3
	lcall	__delay_ms
	pop	ar7
;	./src/WS2812.c:354: setPixel(pixel, g, r, b);
	mov	ar5,r7
	mov	r6,#0x00
	mov	_setPixel_PARM_2,_Pattern2_g_65536_143
	mov	_setPixel_PARM_3,_Pattern2_PARM_2
	mov	_setPixel_PARM_4,_Pattern2_PARM_3
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	lcall	_setPixel
	pop	ar7
;	./src/WS2812.c:355: setPixel(NUM_LEDS - 1 - pixel, g2, r2, b2);
	mov	r5,_NUM_LEDS
	mov	r6,(_NUM_LEDS + 1)
	dec	r5
	cjne	r5,#0xff,00136$
	dec	r6
00136$:
	mov	r4,#0x00
	mov	a,r5
	clr	c
	subb	a,r7
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	_setPixel_PARM_2,_Pattern2_PARM_4
	mov	_setPixel_PARM_3,_Pattern2_PARM_5
	mov	_setPixel_PARM_4,_Pattern2_PARM_6
	lcall	_setPixel
;	./src/WS2812.c:356: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:357: CHECK_EFF;
	mov	a,_effect
	cjne	a,_curEffect,00102$
	mov	a,__color
	cjne	a,_curColor,00139$
	ljmp	00105$
00139$:
00102$:
	mov	__status,#0x12
;	./src/WS2812.c:359: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
