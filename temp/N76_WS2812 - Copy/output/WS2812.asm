;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module WS2812
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Pattern3
	.globl _LED__SendByte_
	.globl _LED__SendOne_
	.globl _LED__SendZero_
	.globl _rand
	.globl _xRamWrite
	.globl _xRamRead
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
	.globl _Pattern3_PARM_3
	.globl _Pattern3_PARM_2
	.globl _theaterChase_PARM_4
	.globl _theaterChase_PARM_3
	.globl _theaterChase_PARM_2
	.globl _colorWipe_PARM_4
	.globl _colorWipe_PARM_3
	.globl _colorWipe_PARM_2
	.globl _SnowSparkle_PARM_5
	.globl _SnowSparkle_PARM_4
	.globl _SnowSparkle_PARM_3
	.globl _SnowSparkle_PARM_2
	.globl _Sparkle_PARM_4
	.globl _Sparkle_PARM_3
	.globl _Sparkle_PARM_2
	.globl _TwinkleRandom_PARM_3
	.globl _TwinkleRandom_PARM_2
	.globl _Twinkle_PARM_6
	.globl _Twinkle_PARM_5
	.globl _Twinkle_PARM_4
	.globl _Twinkle_PARM_3
	.globl _Twinkle_PARM_2
	.globl _CylonBounce_PARM_6
	.globl _CylonBounce_PARM_5
	.globl _CylonBounce_PARM_4
	.globl _CylonBounce_PARM_3
	.globl _CylonBounce_PARM_2
	.globl _Strobe_PARM_6
	.globl _Strobe_PARM_5
	.globl _Strobe_PARM_4
	.globl _Strobe_PARM_3
	.globl _Strobe_PARM_2
	.globl _FadeInOut_PARM_3
	.globl _FadeInOut_PARM_2
	.globl _setAll_PARM_3
	.globl _setAll_PARM_2
	.globl _setPixel_PARM_4
	.globl _setPixel_PARM_3
	.globl _setPixel_PARM_2
	.globl _random2_PARM_2
	.globl _random
	.globl _random2
	.globl _clearAll
	.globl _showStrip
	.globl _setPixel
	.globl _setAll
	.globl _FadeInOut
	.globl _Strobe
	.globl _CylonBounce
	.globl _Twinkle
	.globl _TwinkleRandom
	.globl _Sparkle
	.globl _SnowSparkle
	.globl _colorWipe
	.globl _rainbowCycle
	.globl _Wheel
	.globl _theaterChase
	.globl _theaterChaseRainbow
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
_random2_PARM_2:
	.ds 2
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
_FadeInOut_green_65536_74:
	.ds 1
_FadeInOut_g_65536_75:
	.ds 1
_FadeInOut_r_65536_75:
	.ds 1
_FadeInOut_curEffect_65536_75:
	.ds 1
_FadeInOut_k_131072_79:
	.ds 2
_Strobe_PARM_2:
	.ds 1
_Strobe_PARM_3:
	.ds 1
_Strobe_PARM_4:
	.ds 2
_Strobe_PARM_5:
	.ds 2
_Strobe_PARM_6:
	.ds 2
_CylonBounce_PARM_2:
	.ds 1
_CylonBounce_PARM_3:
	.ds 1
_CylonBounce_PARM_4:
	.ds 2
_CylonBounce_PARM_5:
	.ds 2
_CylonBounce_PARM_6:
	.ds 2
_CylonBounce_green_65536_87:
	.ds 1
_CylonBounce_curEffect_65536_88:
	.ds 1
_CylonBounce_i_131072_89:
	.ds 2
_CylonBounce_j_262144_96:
	.ds 2
_CylonBounce_sloc0_1_0:
	.ds 1
_CylonBounce_sloc1_1_0:
	.ds 1
_Twinkle_PARM_2:
	.ds 1
_Twinkle_PARM_3:
	.ds 1
_Twinkle_PARM_4:
	.ds 2
_Twinkle_PARM_5:
	.ds 2
_Twinkle_PARM_6:
	.ds 1
_TwinkleRandom_PARM_2:
	.ds 2
_TwinkleRandom_PARM_3:
	.ds 1
_TwinkleRandom_Count_65536_105:
	.ds 2
_TwinkleRandom_curEffect_65536_106:
	.ds 1
_Sparkle_PARM_2:
	.ds 1
_Sparkle_PARM_3:
	.ds 1
_Sparkle_PARM_4:
	.ds 2
_SnowSparkle_PARM_2:
	.ds 1
_SnowSparkle_PARM_3:
	.ds 1
_SnowSparkle_PARM_4:
	.ds 2
_SnowSparkle_PARM_5:
	.ds 2
_colorWipe_PARM_2:
	.ds 1
_colorWipe_PARM_3:
	.ds 1
_colorWipe_PARM_4:
	.ds 2
_rainbowCycle_j_65536_122:
	.ds 2
_rainbowCycle_curEffect_65536_122:
	.ds 1
_Wheel_c_65536_129:
	.ds 3
_theaterChase_PARM_2:
	.ds 1
_theaterChase_PARM_3:
	.ds 1
_theaterChase_PARM_4:
	.ds 2
_theaterChase_j_131072_135:
	.ds 2
_theaterChaseRainbow_c_65536_146:
	.ds 3
_theaterChaseRainbow_curEffect_65536_146:
	.ds 1
_theaterChaseRainbow_j_131072_147:
	.ds 2
_theaterChaseRainbow_q_262144_149:
	.ds 2
_Pattern3_PARM_2:
	.ds 1
_Pattern3_PARM_3:
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
;Allocation info for local variables in function 'random'
;------------------------------------------------------------
;howbig                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:16: uint16_t random(uint16_t howbig)
;	-----------------------------------------
;	 function random
;	-----------------------------------------
_random:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	./src/WS2812.c:18: if (howbig == 0)
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	./src/WS2812.c:20: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	./src/WS2812.c:22: return rand() % howbig;
	push	ar7
	push	ar6
	lcall	_rand
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	__moduint_PARM_2,r6
	mov	(__moduint_PARM_2 + 1),r7
;	./src/WS2812.c:23: }
	ljmp	__moduint
;------------------------------------------------------------
;Allocation info for local variables in function 'random2'
;------------------------------------------------------------
;howbig                    Allocated with name '_random2_PARM_2'
;howsmall                  Allocated to registers r6 r7 
;diff                      Allocated to registers 
;------------------------------------------------------------
;	./src/WS2812.c:25: uint16_t random2(uint16_t howsmall, uint16_t howbig)
;	-----------------------------------------
;	 function random2
;	-----------------------------------------
_random2:
	mov	r6,dpl
	mov	r7,dph
;	./src/WS2812.c:27: if (howsmall >= howbig)
	clr	c
	mov	a,r6
	subb	a,_random2_PARM_2
	mov	a,r7
	subb	a,(_random2_PARM_2 + 1)
	jc	00102$
;	./src/WS2812.c:29: return howsmall;
	mov	dpl,r6
	mov	dph,r7
	ret
00102$:
;	./src/WS2812.c:31: uint16_t diff = howbig - howsmall;
	mov	a,_random2_PARM_2
	clr	c
	subb	a,r6
	mov	dpl,a
	mov	a,(_random2_PARM_2 + 1)
	subb	a,r7
	mov	dph,a
;	./src/WS2812.c:32: return random(diff) + howsmall;
	push	ar7
	push	ar6
	lcall	_random
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	add	a,r6
	mov	dpl,a
	mov	a,r7
	addc	a,b
	mov	dph,a
;	./src/WS2812.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendZero_'
;------------------------------------------------------------
;	./src/WS2812.c:35: void LED__SendZero_()
;	-----------------------------------------
;	 function LED__SendZero_
;	-----------------------------------------
_LED__SendZero_:
;	./src/WS2812.c:37: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
;	./src/WS2812.c:38: _nop_();
	nop
;	./src/WS2812.c:39: _nop_();
	nop
;	./src/WS2812.c:40: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./src/WS2812.c:41: _nop_();
	nop
;	./src/WS2812.c:42: _nop_();
	nop
;	./src/WS2812.c:43: _nop_();
	nop
;	./src/WS2812.c:44: _nop_();
	nop
;	./src/WS2812.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendOne_'
;------------------------------------------------------------
;	./src/WS2812.c:46: void LED__SendOne_()
;	-----------------------------------------
;	 function LED__SendOne_
;	-----------------------------------------
_LED__SendOne_:
;	./src/WS2812.c:48: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
;	./src/WS2812.c:49: _nop_();
	nop
;	./src/WS2812.c:50: _nop_();
	nop
;	./src/WS2812.c:51: _nop_();
	nop
;	./src/WS2812.c:52: _nop_();
	nop
;	./src/WS2812.c:53: _nop_();
	nop
;	./src/WS2812.c:54: _nop_();
	nop
;	./src/WS2812.c:55: _nop_();
	nop
;	./src/WS2812.c:56: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./src/WS2812.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendByte_'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/WS2812.c:58: void LED__SendByte_(uint8_t dat)
;	-----------------------------------------
;	 function LED__SendByte_
;	-----------------------------------------
_LED__SendByte_:
;	./src/WS2812.c:60: if (dat & 0x80)
	mov	a,dpl
	mov	r7,a
	jnb	acc.7,00102$
;	./src/WS2812.c:61: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00103$
00102$:
;	./src/WS2812.c:63: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00103$:
;	./src/WS2812.c:64: if (dat & 0x40)
	mov	a,r7
	jnb	acc.6,00105$
;	./src/WS2812.c:65: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00106$
00105$:
;	./src/WS2812.c:67: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00106$:
;	./src/WS2812.c:68: if (dat & 0x20)
	mov	a,r7
	jnb	acc.5,00108$
;	./src/WS2812.c:69: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00109$
00108$:
;	./src/WS2812.c:71: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00109$:
;	./src/WS2812.c:72: if (dat & 0x10)
	mov	a,r7
	jnb	acc.4,00111$
;	./src/WS2812.c:73: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00112$
00111$:
;	./src/WS2812.c:75: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00112$:
;	./src/WS2812.c:76: if (dat & 0x08)
	mov	a,r7
	jnb	acc.3,00114$
;	./src/WS2812.c:77: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00115$
00114$:
;	./src/WS2812.c:79: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00115$:
;	./src/WS2812.c:80: if (dat & 0x04)
	mov	a,r7
	jnb	acc.2,00117$
;	./src/WS2812.c:81: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00118$
00117$:
;	./src/WS2812.c:83: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00118$:
;	./src/WS2812.c:84: if (dat & 0x02)
	mov	a,r7
	jnb	acc.1,00120$
;	./src/WS2812.c:85: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00121$
00120$:
;	./src/WS2812.c:87: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00121$:
;	./src/WS2812.c:88: if (dat & 0x01)
	mov	a,r7
	jnb	acc.0,00123$
;	./src/WS2812.c:89: LED__SendOne_();
	ljmp	_LED__SendOne_
00123$:
;	./src/WS2812.c:91: LED__SendZero_();
;	./src/WS2812.c:92: }
	ljmp	_LED__SendZero_
;------------------------------------------------------------
;Allocation info for local variables in function 'clearAll'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:94: void clearAll()
;	-----------------------------------------
;	 function clearAll
;	-----------------------------------------
_clearAll:
;	./src/WS2812.c:96: for (uint16_t i = 0; i < 300; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,#0x2c
	mov	a,r5
	subb	a,#0x01
	jnc	00101$
;	./src/WS2812.c:98: LED__SendByte_(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_LED__SendByte_
;	./src/WS2812.c:99: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
;	./src/WS2812.c:100: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
	pop	ar6
	pop	ar7
;	./src/WS2812.c:96: for (uint16_t i = 0; i < 300; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	./src/WS2812.c:103: setAll(0x00, 0x00, 0x00);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./src/WS2812.c:104: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:105: showStrip();
;	./src/WS2812.c:106: }
	ljmp	_showStrip
;------------------------------------------------------------
;Allocation info for local variables in function 'showStrip'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;g                         Allocated to registers r4 
;r                         Allocated to registers r3 
;b                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/WS2812.c:108: void showStrip()
;	-----------------------------------------
;	 function showStrip
;	-----------------------------------------
_showStrip:
;	./src/WS2812.c:110: for (uint8_t i = 0; i < NUM_LEDS; ++i)
	mov	r7,#0x00
00103$:
	mov	ar5,r7
	mov	r6,#0x00
	clr	c
	mov	a,r5
	subb	a,_NUM_LEDS
	mov	a,r6
	subb	a,(_NUM_LEDS + 1)
	jc	00116$
	ret
00116$:
;	./src/WS2812.c:113: g = xRamRead(i * 3);
	mov	__mulint_PARM_2,r7
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0003
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov  r6,dph
	push	ar6
	push	ar5
	lcall	_xRamRead
	mov	r4,dpl
	pop	ar5
	pop	ar6
;	./src/WS2812.c:114: r = xRamRead(i * 3 + 1);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar5
	push	ar4
	lcall	_xRamRead
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
;	./src/WS2812.c:115: b = xRamRead(i * 3 + 2);
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	push	ar4
	push	ar3
	lcall	_xRamRead
	mov	r6,dpl
	pop	ar3
	pop	ar4
;	./src/WS2812.c:117: LED__SendByte_(g);
	mov	dpl,r4
	push	ar6
	push	ar3
	lcall	_LED__SendByte_
	pop	ar3
;	./src/WS2812.c:118: LED__SendByte_(r);
	mov	dpl,r3
	lcall	_LED__SendByte_
	pop	ar6
;	./src/WS2812.c:119: LED__SendByte_(b);
	mov	dpl,r6
	lcall	_LED__SendByte_
	pop	ar7
;	./src/WS2812.c:110: for (uint8_t i = 0; i < NUM_LEDS; ++i)
	inc	r7
;	./src/WS2812.c:121: }
	ljmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'setPixel'
;------------------------------------------------------------
;green                     Allocated with name '_setPixel_PARM_2'
;red                       Allocated with name '_setPixel_PARM_3'
;blue                      Allocated with name '_setPixel_PARM_4'
;Pixel                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:124: void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setPixel
;	-----------------------------------------
_setPixel:
	mov	r6,dpl
	mov	r7,dph
;	./src/WS2812.c:126: xRamWrite(Pixel * 3, green);
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov  r7,dph
	mov	_xRamWrite_PARM_2,_setPixel_PARM_2
	push	ar7
	push	ar6
	lcall	_xRamWrite
	pop	ar6
	pop	ar7
;	./src/WS2812.c:127: xRamWrite(Pixel * 3 + 1, red);
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	_xRamWrite_PARM_2,_setPixel_PARM_3
	push	ar7
	push	ar6
	lcall	_xRamWrite
	pop	ar6
	pop	ar7
;	./src/WS2812.c:128: xRamWrite(Pixel * 3 + 2, blue);
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	_xRamWrite_PARM_2,_setPixel_PARM_4
;	./src/WS2812.c:129: }
	ljmp	_xRamWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'setAll'
;------------------------------------------------------------
;red                       Allocated with name '_setAll_PARM_2'
;blue                      Allocated with name '_setAll_PARM_3'
;green                     Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	./src/WS2812.c:132: void setAll(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setAll
;	-----------------------------------------
_setAll:
	mov	r7,dpl
;	./src/WS2812.c:134: for (int16_t i = 0; i < NUM_LEDS; ++i)
	mov	r5,#0x00
	mov	r6,#0x00
00103$:
	mov	ar3,r5
	mov	ar4,r6
	clr	c
	mov	a,r3
	subb	a,_NUM_LEDS
	mov	a,r4
	subb	a,(_NUM_LEDS + 1)
	jnc	00105$
;	./src/WS2812.c:136: setPixel(i, green, red, blue);
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_setAll_PARM_2
	mov	_setPixel_PARM_4,_setAll_PARM_3
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	push	ar6
	push	ar5
	lcall	_setPixel
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:134: for (int16_t i = 0; i < NUM_LEDS; ++i)
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
;	./src/WS2812.c:138: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FadeInOut'
;------------------------------------------------------------
;red                       Allocated with name '_FadeInOut_PARM_2'
;blue                      Allocated with name '_FadeInOut_PARM_3'
;green                     Allocated with name '_FadeInOut_green_65536_74'
;g                         Allocated with name '_FadeInOut_g_65536_75'
;r                         Allocated with name '_FadeInOut_r_65536_75'
;b                         Allocated to registers 
;curEffect                 Allocated with name '_FadeInOut_curEffect_65536_75'
;k                         Allocated to registers r4 r5 
;k                         Allocated with name '_FadeInOut_k_131072_79'
;------------------------------------------------------------
;	./src/WS2812.c:139: void FadeInOut(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function FadeInOut
;	-----------------------------------------
_FadeInOut:
	mov	_FadeInOut_green_65536_74,dpl
;	./src/WS2812.c:142: uint8_t curEffect = effect;
	mov	_FadeInOut_curEffect_65536_75,_effect
;	./src/WS2812.c:144: for (int16_t k = 0; k < 255; k = k + NUM_LEDS/50)
	mov	r4,#0x00
	mov	r5,#0x00
00108$:
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,#0xff
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00145$
	ljmp	00103$
00145$:
;	./src/WS2812.c:146: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_FadeInOut_curEffect_65536_75,00146$
	sjmp	00102$
00146$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:148: r = k * red / 256;
	mov	__mulint_PARM_2,_FadeInOut_PARM_2
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	__mulint
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	lcall	__divsint
	mov	r2,dpl
	pop	ar4
	pop	ar5
;	./src/WS2812.c:149: g = k * green / 256;
	mov	__mulint_PARM_2,_FadeInOut_green_65536_74
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	push	ar2
	lcall	__mulint
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	lcall	__divsint
	mov	r1,dpl
	pop	ar2
	pop	ar4
	pop	ar5
;	./src/WS2812.c:150: b = k * blue / 256;
	mov	__mulint_PARM_2,_FadeInOut_PARM_3
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	lcall	__mulint
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	lcall	__divsint
	mov	r0,dpl
	pop	ar1
	pop	ar2
	mov	_setAll_PARM_3,r0
;	./src/WS2812.c:151: setAll(g, r, b);
	mov	_setAll_PARM_2,r2
	mov	dpl,r1
	lcall	_setAll
;	./src/WS2812.c:152: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:153: _delay_ms(DELAY2);
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
;	./src/WS2812.c:144: for (int16_t k = 0; k < 255; k = k + NUM_LEDS/50)
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	mov	__divuint_PARM_2,#0x32
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	ar0,r4
	mov	ar1,r5
	mov	a,r2
	add	a,r0
	mov	r2,a
	mov	a,r3
	addc	a,r1
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
	ljmp	00108$
00103$:
;	./src/WS2812.c:156: for (int16_t k = 255; k > 0; k = k - NUM_LEDS/25)
	mov	_FadeInOut_k_131072_79,#0xff
	mov	(_FadeInOut_k_131072_79 + 1),#0x00
00111$:
	mov	r2,_FadeInOut_k_131072_79
	mov	r3,(_FadeInOut_k_131072_79 + 1)
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00147$
	ret
00147$:
;	./src/WS2812.c:158: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_FadeInOut_curEffect_65536_75,00148$
	sjmp	00105$
00148$:
	mov	__status,#0x12
	ret
00105$:
;	./src/WS2812.c:159: r = (k / 256.0) * red;
	mov	dpl,_FadeInOut_k_131072_79
	mov	dph,(_FadeInOut_k_131072_79 + 1)
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
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
	mov	a,r3
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_FadeInOut_PARM_2
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	push	ar3
	push	ar2
	push	ar1
	push	ar0
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
	mov	_FadeInOut_r_65536_75,dpl
;	./src/WS2812.c:160: g = (k / 256.0) * green;
	mov	dpl,_FadeInOut_green_65536_74
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	push	ar3
	push	ar2
	push	ar1
	push	ar0
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
	mov	_FadeInOut_g_65536_75,dpl
;	./src/WS2812.c:161: b = (k / 256.0) * blue;
	mov	dpl,_FadeInOut_PARM_3
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
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
	mov	_setAll_PARM_3,dpl
;	./src/WS2812.c:162: setAll(g, r, b);
	mov	_setAll_PARM_2,_FadeInOut_r_65536_75
	mov	dpl,_FadeInOut_g_65536_75
	lcall	_setAll
;	./src/WS2812.c:163: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:164: _delay_ms(DELAY2);
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
;	./src/WS2812.c:156: for (int16_t k = 255; k > 0; k = k - NUM_LEDS/25)
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	mov	__divuint_PARM_2,#0x19
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	r4,_FadeInOut_k_131072_79
	mov	r5,(_FadeInOut_k_131072_79 + 1)
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r5
	subb	a,r7
	mov	r7,a
	mov	_FadeInOut_k_131072_79,r6
	mov	(_FadeInOut_k_131072_79 + 1),r7
;	./src/WS2812.c:166: }
	ljmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'Strobe'
;------------------------------------------------------------
;red                       Allocated with name '_Strobe_PARM_2'
;blue                      Allocated with name '_Strobe_PARM_3'
;StrobeCount               Allocated with name '_Strobe_PARM_4'
;FlashDelay                Allocated with name '_Strobe_PARM_5'
;EndPause                  Allocated with name '_Strobe_PARM_6'
;green                     Allocated to registers r7 
;curEffect                 Allocated to registers r6 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/WS2812.c:168: void Strobe(uint8_t green, uint8_t red, uint8_t blue, int16_t StrobeCount, int16_t FlashDelay, int16_t EndPause)
;	-----------------------------------------
;	 function Strobe
;	-----------------------------------------
_Strobe:
	mov	r7,dpl
;	./src/WS2812.c:170: uint8_t curEffect = effect;
	mov	r6,_effect
;	./src/WS2812.c:171: for (int16_t j = 0; j < StrobeCount; j++)
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
	clr	c
	mov	a,r4
	subb	a,_Strobe_PARM_4
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_Strobe_PARM_4 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00121$
	ljmp	00103$
00121$:
;	./src/WS2812.c:173: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00122$
	sjmp	00102$
00122$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:174: setAll(green, red, blue);
	mov	_setAll_PARM_2,_Strobe_PARM_2
	mov	_setAll_PARM_3,_Strobe_PARM_3
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setAll
;	./src/WS2812.c:175: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:176: _delay_ms(DELAY2);
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
;	./src/WS2812.c:177: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./src/WS2812.c:178: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:179: _delay_ms(DELAY2);
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
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:171: for (int16_t j = 0; j < StrobeCount; j++)
	inc	r4
	cjne	r4,#0x00,00123$
	inc	r5
00123$:
	ljmp	00105$
00103$:
;	./src/WS2812.c:181: _delay_ms(EndPause);
	mov	r4,_Strobe_PARM_6
	mov	a,(_Strobe_PARM_6 + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	./src/WS2812.c:182: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'CylonBounce'
;------------------------------------------------------------
;red                       Allocated with name '_CylonBounce_PARM_2'
;blue                      Allocated with name '_CylonBounce_PARM_3'
;EyeSize                   Allocated with name '_CylonBounce_PARM_4'
;SpeedDelay                Allocated with name '_CylonBounce_PARM_5'
;ReturnDelay               Allocated with name '_CylonBounce_PARM_6'
;green                     Allocated with name '_CylonBounce_green_65536_87'
;curEffect                 Allocated with name '_CylonBounce_curEffect_65536_88'
;i                         Allocated with name '_CylonBounce_i_131072_89'
;j                         Allocated to registers r5 r7 
;i                         Allocated to registers 
;j                         Allocated with name '_CylonBounce_j_262144_96'
;sloc0                     Allocated with name '_CylonBounce_sloc0_1_0'
;sloc1                     Allocated with name '_CylonBounce_sloc1_1_0'
;------------------------------------------------------------
;	./src/WS2812.c:184: void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t SpeedDelay, int16_t ReturnDelay)
;	-----------------------------------------
;	 function CylonBounce
;	-----------------------------------------
_CylonBounce:
	mov	_CylonBounce_green_65536_87,dpl
;	./src/WS2812.c:186: uint8_t curEffect = effect;
	mov	_CylonBounce_curEffect_65536_88,_effect
;	./src/WS2812.c:187: for (int16_t i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	clr	a
	mov	_CylonBounce_i_131072_89,a
	mov	(_CylonBounce_i_131072_89 + 1),a
00113$:
	mov	r2,_CylonBounce_PARM_4
	mov	r3,(_CylonBounce_PARM_4 + 1)
	mov	a,_NUM_LEDS
	clr	c
	subb	a,r2
	mov	r0,a
	mov	a,(_NUM_LEDS + 1)
	subb	a,r3
	mov	r1,a
	mov	a,r0
	add	a,#0xfe
	mov	r0,a
	mov	a,r1
	addc	a,#0xff
	mov	r1,a
	mov	r6,_CylonBounce_i_131072_89
	mov	r7,(_CylonBounce_i_131072_89 + 1)
	clr	c
	mov	a,r6
	subb	a,r0
	mov	a,r7
	subb	a,r1
	jc	00163$
	ljmp	00104$
00163$:
;	./src/WS2812.c:189: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./src/WS2812.c:190: setPixel(i, red / 10, green / 10, blue / 10);
	mov	r6,_CylonBounce_PARM_2
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r1,_CylonBounce_green_65536_87
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r1
	mov	dph,r7
	push	ar6
	lcall	__divsint
	mov	r1,dpl
	mov	r0,_CylonBounce_PARM_3
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r0
	mov	dph,r7
	push	ar1
	lcall	__divsint
	mov	r0,dpl
	pop	ar1
	pop	ar6
	mov	_setPixel_PARM_2,r6
	mov	_setPixel_PARM_3,r1
	mov	_setPixel_PARM_4,r0
	mov	dpl,_CylonBounce_i_131072_89
	mov	dph,(_CylonBounce_i_131072_89 + 1)
	push	ar6
	push	ar1
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar1
	pop	ar6
;	./src/WS2812.c:191: for (int16_t j = 1; j <= EyeSize; j++)
	mov	r5,#0x01
	mov	r7,#0x00
00110$:
	clr	c
	mov	a,_CylonBounce_PARM_4
	subb	a,r5
	mov	a,(_CylonBounce_PARM_4 + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00103$
;	./src/WS2812.c:193: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_CylonBounce_curEffect_65536_88,00165$
	sjmp	00102$
00165$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:194: setPixel(i + j, green, red, blue);
	mov	a,r5
	add	a,_CylonBounce_i_131072_89
	mov	dpl,a
	mov	a,r7
	addc	a,(_CylonBounce_i_131072_89 + 1)
	mov	dph,a
	mov	_setPixel_PARM_2,_CylonBounce_green_65536_87
	mov	_setPixel_PARM_3,_CylonBounce_PARM_2
	mov	_setPixel_PARM_4,_CylonBounce_PARM_3
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:191: for (int16_t j = 1; j <= EyeSize; j++)
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r7
	sjmp	00110$
00103$:
;	./src/WS2812.c:196: setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
	mov	a,_CylonBounce_PARM_4
	add	a,_CylonBounce_i_131072_89
	mov	r5,a
	mov	a,(_CylonBounce_PARM_4 + 1)
	addc	a,(_CylonBounce_i_131072_89 + 1)
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00167$
	inc	r7
00167$:
	mov	dpl,r5
	mov	dph,r7
	mov	_setPixel_PARM_2,r6
	mov	_setPixel_PARM_3,r1
	mov	_setPixel_PARM_4,r0
	lcall	_setPixel
;	./src/WS2812.c:197: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:198: _delay_ms(DELAY2);
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
;	./src/WS2812.c:187: for (int16_t i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	inc	_CylonBounce_i_131072_89
	clr	a
	cjne	a,_CylonBounce_i_131072_89,00168$
	inc	(_CylonBounce_i_131072_89 + 1)
00168$:
	ljmp	00113$
00104$:
;	./src/WS2812.c:201: _delay_ms(ReturnDelay);
	mov	r4,_CylonBounce_PARM_6
	mov	a,(_CylonBounce_PARM_6 + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
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
;	./src/WS2812.c:203: for (int16_t i = NUM_LEDS - EyeSize - 2; i > 0; i--)
	mov	a,_NUM_LEDS
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,(_NUM_LEDS + 1)
	subb	a,r3
	mov	r3,a
	mov	a,r2
	add	a,#0xfe
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
00119$:
	mov	ar0,r2
	mov	ar1,r3
	clr	c
	clr	a
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00169$
	ljmp	00108$
00169$:
;	./src/WS2812.c:205: setAll(0, 0, 0);
	push	ar4
	push	ar5
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
;	./src/WS2812.c:206: setPixel(i, red / 10, green / 10, blue / 10);
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
	mov	r1,_CylonBounce_green_65536_87
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
	mov	dpl,r2
	mov	dph,r3
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
;	./src/WS2812.c:207: for (int16_t j = 1; j <= EyeSize; j++)
	mov	_CylonBounce_j_262144_96,#0x01
	mov	(_CylonBounce_j_262144_96 + 1),#0x00
;	./src/WS2812.c:217: _delay_ms(ReturnDelay);
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	./src/WS2812.c:207: for (int16_t j = 1; j <= EyeSize; j++)
00116$:
	clr	c
	mov	a,_CylonBounce_PARM_4
	subb	a,_CylonBounce_j_262144_96
	mov	a,(_CylonBounce_PARM_4 + 1)
	xrl	a,#0x80
	mov	b,(_CylonBounce_j_262144_96 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00107$
;	./src/WS2812.c:209: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_CylonBounce_curEffect_65536_88,00171$
	sjmp	00106$
00171$:
	mov	__status,#0x12
	ret
00106$:
;	./src/WS2812.c:210: setPixel(i + j, green, red, blue);
	mov	a,_CylonBounce_j_262144_96
	add	a,r2
	mov	dpl,a
	mov	a,(_CylonBounce_j_262144_96 + 1)
	addc	a,r3
	mov	dph,a
	mov	_setPixel_PARM_2,_CylonBounce_green_65536_87
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
;	./src/WS2812.c:207: for (int16_t j = 1; j <= EyeSize; j++)
	inc	_CylonBounce_j_262144_96
	clr	a
	cjne	a,_CylonBounce_j_262144_96,00116$
	inc	(_CylonBounce_j_262144_96 + 1)
	sjmp	00116$
00107$:
;	./src/WS2812.c:212: setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_CylonBounce_PARM_4
	add	a,r2
	mov	r1,a
	mov	a,(_CylonBounce_PARM_4 + 1)
	addc	a,r3
	mov	r7,a
	inc	r1
	cjne	r1,#0x00,00173$
	inc	r7
00173$:
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
;	./src/WS2812.c:213: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:214: _delay_ms(DELAY2);
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
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
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
;	./src/WS2812.c:203: for (int16_t i = NUM_LEDS - EyeSize - 2; i > 0; i--)
	dec	r2
	cjne	r2,#0xff,00174$
	dec	r3
00174$:
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00119$
00108$:
;	./src/WS2812.c:217: _delay_ms(ReturnDelay);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	./src/WS2812.c:218: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'Twinkle'
;------------------------------------------------------------
;red                       Allocated with name '_Twinkle_PARM_2'
;blue                      Allocated with name '_Twinkle_PARM_3'
;Count                     Allocated with name '_Twinkle_PARM_4'
;SpeedDelay                Allocated with name '_Twinkle_PARM_5'
;OnlyOne                   Allocated with name '_Twinkle_PARM_6'
;green                     Allocated to registers r7 
;curEffect                 Allocated to registers r6 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/WS2812.c:220: void Twinkle(uint8_t green, uint8_t red, uint8_t blue, int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne)
;	-----------------------------------------
;	 function Twinkle
;	-----------------------------------------
_Twinkle:
	mov	r7,dpl
;	./src/WS2812.c:222: uint8_t curEffect = effect;
	mov	r6,_effect
;	./src/WS2812.c:223: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_setAll
	pop	ar6
	pop	ar7
;	./src/WS2812.c:224: for (int16_t i = 0; i < Count; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,_Twinkle_PARM_4
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_Twinkle_PARM_4 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	./src/WS2812.c:226: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00128$
	sjmp	00102$
00128$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:227: setPixel(random(NUM_LEDS), green, red, blue);
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_random
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_Twinkle_PARM_2
	mov	_setPixel_PARM_4,_Twinkle_PARM_3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setPixel
;	./src/WS2812.c:228: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:229: _delay_ms(SpeedDelay);
	mov	r0,_Twinkle_PARM_5
	mov	a,(_Twinkle_PARM_5 + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:230: if (OnlyOne)
	mov	a,_Twinkle_PARM_6
	jz	00108$
;	./src/WS2812.c:232: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setAll
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00108$:
;	./src/WS2812.c:224: for (int16_t i = 0; i < Count; i++)
	inc	r4
	cjne	r4,#0x00,00130$
	inc	r5
00130$:
	ljmp	00107$
00105$:
;	./src/WS2812.c:236: _delay_ms(SpeedDelay);
	mov	r4,_Twinkle_PARM_5
	mov	a,(_Twinkle_PARM_5 + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	./src/WS2812.c:237: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'TwinkleRandom'
;------------------------------------------------------------
;SpeedDelay                Allocated with name '_TwinkleRandom_PARM_2'
;OnlyOne                   Allocated with name '_TwinkleRandom_PARM_3'
;Count                     Allocated with name '_TwinkleRandom_Count_65536_105'
;curEffect                 Allocated with name '_TwinkleRandom_curEffect_65536_106'
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	./src/WS2812.c:239: void TwinkleRandom(int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne)
;	-----------------------------------------
;	 function TwinkleRandom
;	-----------------------------------------
_TwinkleRandom:
	mov	_TwinkleRandom_Count_65536_105,dpl
	mov	(_TwinkleRandom_Count_65536_105 + 1),dph
;	./src/WS2812.c:241: uint8_t curEffect = effect;
	mov	_TwinkleRandom_curEffect_65536_106,_effect
;	./src/WS2812.c:242: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./src/WS2812.c:243: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:244: for (int16_t i = 0; i < Count; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00107$:
	clr	c
	mov	a,r3
	subb	a,_TwinkleRandom_Count_65536_105
	mov	a,r4
	xrl	a,#0x80
	mov	b,(_TwinkleRandom_Count_65536_105 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00127$
	ljmp	00105$
00127$:
;	./src/WS2812.c:246: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_TwinkleRandom_curEffect_65536_106,00128$
	sjmp	00102$
00128$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:247: setPixel(random(NUM_LEDS), random(255), random(255), random(255));
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	push	ar4
	push	ar3
	lcall	_random
	mov	r1,dpl
	mov	r2,dph
	mov	dptr,#0x00ff
	push	ar2
	push	ar1
	lcall	_random
	mov	r0,dpl
	mov	dptr,#0x00ff
	push	ar0
	lcall	_random
	mov	r5,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#0x00ff
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_random
	mov	r6,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	_setPixel_PARM_4,r6
	mov	_setPixel_PARM_2,r0
	mov	_setPixel_PARM_3,r5
	mov	dpl,r1
	mov	dph,r2
	push	ar4
	push	ar3
	lcall	_setPixel
;	./src/WS2812.c:248: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:249: _delay_ms(DELAY);
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
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	r2,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r2
	lcall	__delay_ms
	pop	ar3
	pop	ar4
;	./src/WS2812.c:250: if (OnlyOne)
	mov	a,_TwinkleRandom_PARM_3
	jz	00108$
;	./src/WS2812.c:252: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	push	ar4
	push	ar3
	lcall	_setAll
	pop	ar3
	pop	ar4
00108$:
;	./src/WS2812.c:244: for (int16_t i = 0; i < Count; i++)
	inc	r3
	cjne	r3,#0x00,00130$
	inc	r4
00130$:
	ljmp	00107$
00105$:
;	./src/WS2812.c:256: _delay_us(SpeedDelay);
	mov	r4,_TwinkleRandom_PARM_2
	mov	a,(_TwinkleRandom_PARM_2 + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	./src/WS2812.c:257: }
	ljmp	__delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'Sparkle'
;------------------------------------------------------------
;red                       Allocated with name '_Sparkle_PARM_2'
;blue                      Allocated with name '_Sparkle_PARM_3'
;SpeedDelay                Allocated with name '_Sparkle_PARM_4'
;green                     Allocated to registers r7 
;Pixel                     Allocated to registers r5 r6 
;------------------------------------------------------------
;	./src/WS2812.c:259: void Sparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay)
;	-----------------------------------------
;	 function Sparkle
;	-----------------------------------------
_Sparkle:
	mov	r7,dpl
;	./src/WS2812.c:261: int16_t Pixel = random(NUM_LEDS);
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	push	ar7
	lcall	_random
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
;	./src/WS2812.c:262: setPixel(Pixel, green, red, blue);
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_Sparkle_PARM_2
	mov	_setPixel_PARM_4,_Sparkle_PARM_3
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	_setPixel
;	./src/WS2812.c:263: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:264: _delay_ms(DELAY);
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
	mov	r7,a
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r4
	mov	dph,r7
	mov	b,r3
	mov	a,r2
	lcall	__delay_ms
	pop	ar5
	pop	ar6
;	./src/WS2812.c:265: setPixel(Pixel, 0, 0, 0);
	mov	_setPixel_PARM_2,#0x00
	mov	_setPixel_PARM_3,#0x00
	mov	_setPixel_PARM_4,#0x00
	mov	dpl,r5
	mov	dph,r6
;	./src/WS2812.c:266: }
	ljmp	_setPixel
;------------------------------------------------------------
;Allocation info for local variables in function 'SnowSparkle'
;------------------------------------------------------------
;red                       Allocated with name '_SnowSparkle_PARM_2'
;blue                      Allocated with name '_SnowSparkle_PARM_3'
;SparkleDelay              Allocated with name '_SnowSparkle_PARM_4'
;SpeedDelay                Allocated with name '_SnowSparkle_PARM_5'
;green                     Allocated to registers r7 
;Pixel                     Allocated to registers r5 r6 
;------------------------------------------------------------
;	./src/WS2812.c:268: void SnowSparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SparkleDelay, int16_t SpeedDelay)
;	-----------------------------------------
;	 function SnowSparkle
;	-----------------------------------------
_SnowSparkle:
	mov	r7,dpl
;	./src/WS2812.c:270: setAll(green, red, blue);
	mov	_setAll_PARM_2,_SnowSparkle_PARM_2
	mov	_setAll_PARM_3,_SnowSparkle_PARM_3
	mov	dpl,r7
	push	ar7
	lcall	_setAll
;	./src/WS2812.c:272: int16_t Pixel = random(NUM_LEDS);
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	lcall	_random
	mov	r5,dpl
	mov	r6,dph
;	./src/WS2812.c:273: setPixel(Pixel, 0xFF, 0xFF, 0xFF);
	mov	_setPixel_PARM_2,#0xff
	mov	_setPixel_PARM_3,#0xff
	mov	_setPixel_PARM_4,#0xff
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	_setPixel
;	./src/WS2812.c:274: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:275: _delay_ms(SparkleDelay);
	mov	r1,_SnowSparkle_PARM_4
	mov	a,(_SnowSparkle_PARM_4 + 1)
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:276: setPixel(Pixel, green, red, blue);
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_SnowSparkle_PARM_2
	mov	_setPixel_PARM_4,_SnowSparkle_PARM_3
	mov	dpl,r5
	mov	dph,r6
	lcall	_setPixel
;	./src/WS2812.c:277: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:278: _delay_ms(DELAY);
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
;	./src/WS2812.c:279: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'colorWipe'
;------------------------------------------------------------
;red                       Allocated with name '_colorWipe_PARM_2'
;blue                      Allocated with name '_colorWipe_PARM_3'
;SpeedDelay                Allocated with name '_colorWipe_PARM_4'
;green                     Allocated to registers r7 
;curEffect                 Allocated to registers r6 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/WS2812.c:281: void colorWipe(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay)
;	-----------------------------------------
;	 function colorWipe
;	-----------------------------------------
_colorWipe:
	mov	r7,dpl
;	./src/WS2812.c:283: uint8_t curEffect = effect;
	mov	r6,_effect
;	./src/WS2812.c:284: for (uint16_t i = 0; i < NUM_LEDS; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
	clr	c
	mov	a,r4
	subb	a,_NUM_LEDS
	mov	a,r5
	subb	a,(_NUM_LEDS + 1)
	jc	00121$
	ret
00121$:
;	./src/WS2812.c:286: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00122$
	sjmp	00102$
00122$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:287: setPixel(i, green, red, blue);
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_colorWipe_PARM_2
	mov	_setPixel_PARM_4,_colorWipe_PARM_3
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setPixel
;	./src/WS2812.c:288: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:289: _delay_ms(DELAY2+1);
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
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:284: for (uint16_t i = 0; i < NUM_LEDS; i++)
	inc	r4
	cjne	r4,#0x00,00123$
	inc	r5
00123$:
;	./src/WS2812.c:291: }
	ljmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'rainbowCycle'
;------------------------------------------------------------
;SpeedDelay                Allocated to registers 
;c                         Allocated to registers r0 r1 r2 
;i                         Allocated to registers r3 r4 
;j                         Allocated with name '_rainbowCycle_j_65536_122'
;curEffect                 Allocated with name '_rainbowCycle_curEffect_65536_122'
;------------------------------------------------------------
;	./src/WS2812.c:293: void rainbowCycle(int16_t SpeedDelay)
;	-----------------------------------------
;	 function rainbowCycle
;	-----------------------------------------
_rainbowCycle:
;	./src/WS2812.c:297: uint8_t curEffect = effect;
	mov	_rainbowCycle_curEffect_65536_122,_effect
;	./src/WS2812.c:299: for (j = 0; j < 256 * 5; j++)
	clr	a
	mov	_rainbowCycle_j_65536_122,a
	mov	(_rainbowCycle_j_65536_122 + 1),a
;	./src/WS2812.c:301: for (i = 0; i < NUM_LEDS; i++)
00114$:
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	clr	c
	mov	a,r3
	subb	a,_NUM_LEDS
	mov	a,r4
	subb	a,(_NUM_LEDS + 1)
	jc	00128$
	ljmp	00103$
00128$:
;	./src/WS2812.c:303: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_rainbowCycle_curEffect_65536_122,00129$
	sjmp	00102$
00129$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:304: c = Wheel(((i * 256 / NUM_LEDS) + j) & 255);
	mov	ar1,r3
	mov	ar2,r1
	mov	r1,#0x00
	mov	dpl,r1
	mov	dph,r2
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	push	ar4
	push	ar3
	lcall	__divuint
	mov	r1,dpl
	mov	a,_rainbowCycle_j_65536_122
	add	a,r1
	mov	dpl,a
	lcall	_Wheel
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	pop	ar3
	pop	ar4
;	./src/WS2812.c:305: setPixel(i, *c, *(c + 1), *(c + 2));
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_setPixel_PARM_2,a
	mov	a,#0x01
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_setPixel_PARM_3,a
	mov	a,#0x02
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_setPixel_PARM_4,a
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	lcall	_setPixel
	pop	ar3
	pop	ar4
;	./src/WS2812.c:301: for (i = 0; i < NUM_LEDS; i++)
	inc	r3
	cjne	r3,#0x00,00130$
	inc	r4
00130$:
	ljmp	00106$
00103$:
;	./src/WS2812.c:307: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:308: _delay_ms(DELAY);
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
;	./src/WS2812.c:299: for (j = 0; j < 256 * 5; j++)
	inc	_rainbowCycle_j_65536_122
	clr	a
	cjne	a,_rainbowCycle_j_65536_122,00131$
	inc	(_rainbowCycle_j_65536_122 + 1)
00131$:
	mov	r5,_rainbowCycle_j_65536_122
	mov	r6,(_rainbowCycle_j_65536_122 + 1)
	mov	a,#0x100 - 0x05
	add	a,r6
	jc	00132$
	ljmp	00114$
00132$:
;	./src/WS2812.c:310: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Wheel'
;------------------------------------------------------------
;c                         Allocated with name '_Wheel_c_65536_129'
;WheelPos                  Allocated to registers r6 
;curEffect                 Allocated to registers 
;------------------------------------------------------------
;	./src/WS2812.c:313: uint8_t *Wheel(uint8_t WheelPos)
;	-----------------------------------------
;	 function Wheel
;	-----------------------------------------
_Wheel:
	mov	r7,dpl
;	./src/WS2812.c:318: if (WheelPos < 85)
	cjne	r7,#0x55,00119$
00119$:
	jnc	00105$
;	./src/WS2812.c:320: c[0] = WheelPos * 3;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	_Wheel_c_65536_129,a
;	./src/WS2812.c:321: c[1] = 255 - WheelPos * 3;
	mov	ar6,r7
	mov	a,r6
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	(_Wheel_c_65536_129 + 0x0001),a
;	./src/WS2812.c:322: c[2] = 0;
	mov	(_Wheel_c_65536_129 + 0x0002),#0x00
	sjmp	00106$
00105$:
;	./src/WS2812.c:324: else if (WheelPos < 170)
	cjne	r7,#0xaa,00121$
00121$:
	jnc	00102$
;	./src/WS2812.c:326: WheelPos -= 85;
	mov	ar6,r7
	mov	a,r6
	add	a,#0xab
;	./src/WS2812.c:327: c[0] = 255 - WheelPos * 3;
	mov	r6,a
	mov	r5,a
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	_Wheel_c_65536_129,a
;	./src/WS2812.c:328: c[1] = 0;
	mov	(_Wheel_c_65536_129 + 0x0001),#0x00
;	./src/WS2812.c:329: c[2] = WheelPos * 3;
	mov	a,r6
	mov	b,#0x03
	mul	ab
	mov	(_Wheel_c_65536_129 + 0x0002),a
	sjmp	00106$
00102$:
;	./src/WS2812.c:333: WheelPos -= 170;
	mov	a,r7
	add	a,#0x56
;	./src/WS2812.c:334: c[0] = 0;
;	./src/WS2812.c:335: c[1] = WheelPos * 3;
	mov	r7,a
	mov	_Wheel_c_65536_129,#0x00
	mov	b,#0x03
	mul	ab
	mov	(_Wheel_c_65536_129 + 0x0001),a
;	./src/WS2812.c:336: c[2] = 255 - WheelPos * 3;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	(_Wheel_c_65536_129 + 0x0002),a
00106$:
;	./src/WS2812.c:339: return c;
	mov	dptr,#_Wheel_c_65536_129
	mov	b,#0x40
;	./src/WS2812.c:340: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'theaterChase'
;------------------------------------------------------------
;red                       Allocated with name '_theaterChase_PARM_2'
;blue                      Allocated with name '_theaterChase_PARM_3'
;SpeedDelay                Allocated with name '_theaterChase_PARM_4'
;green                     Allocated to registers r7 
;curEffect                 Allocated to registers r6 
;j                         Allocated with name '_theaterChase_j_131072_135'
;q                         Allocated to registers r2 r3 
;i                         Allocated to registers r0 r1 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/WS2812.c:342: void theaterChase(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay)
;	-----------------------------------------
;	 function theaterChase
;	-----------------------------------------
_theaterChase:
	mov	r7,dpl
;	./src/WS2812.c:344: uint8_t curEffect = effect;
	mov	r6,_effect
;	./src/WS2812.c:346: for (int16_t j = 0; j < 10; j++)
	clr	a
	mov	_theaterChase_j_131072_135,a
	mov	(_theaterChase_j_131072_135 + 1),a
00119$:
	mov	r2,_theaterChase_j_131072_135
	mov	r3,(_theaterChase_j_131072_135 + 1)
	clr	c
	mov	a,r2
	subb	a,#0x0a
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00163$
	ret
00163$:
;	./src/WS2812.c:348: for (int16_t q = 0; q < 3; q++)
	mov	r2,#0x00
	mov	r3,#0x00
00116$:
	mov	ar0,r2
	mov	ar1,r3
	clr	c
	mov	a,r0
	subb	a,#0x03
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x80
	jc	00164$
	ljmp	00120$
00164$:
;	./src/WS2812.c:350: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	r0,#0x00
	mov	r1,#0x00
00110$:
	mov	ar4,r0
	mov	ar5,r1
	clr	c
	mov	a,r4
	subb	a,_NUM_LEDS
	mov	a,r5
	subb	a,(_NUM_LEDS + 1)
	jnc	00103$
;	./src/WS2812.c:352: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00166$
	sjmp	00102$
00166$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:353: setPixel(i + q, green, red, blue); // turn every third pixel on
	mov	a,r2
	add	a,r0
	mov	dpl,a
	mov	a,r3
	addc	a,r1
	mov	dph,a
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_theaterChase_PARM_2
	mov	_setPixel_PARM_4,_theaterChase_PARM_3
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/WS2812.c:350: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	ar4,r0
	mov	ar5,r1
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	ar0,r4
	mov	ar1,r5
	sjmp	00110$
00103$:
;	./src/WS2812.c:355: showStrip();
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_showStrip
;	./src/WS2812.c:357: _delay_ms(DELAY);
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
	mov	ar0,r4
	mov	ar1,r5
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,r5
	lcall	__delay_ms
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/WS2812.c:359: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	r4,#0x00
	mov	r5,#0x00
00113$:
	mov	ar0,r4
	mov	ar1,r5
	clr	c
	mov	a,r0
	subb	a,_NUM_LEDS
	mov	a,r1
	subb	a,(_NUM_LEDS + 1)
	jnc	00117$
;	./src/WS2812.c:361: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00168$
	sjmp	00105$
00168$:
	mov	__status,#0x12
	ret
00105$:
;	./src/WS2812.c:362: setPixel(i + q, 0, 0, 0); // turn every third pixel off
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	mov	_setPixel_PARM_2,#0x00
	mov	_setPixel_PARM_3,#0x00
	mov	_setPixel_PARM_4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setPixel
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:359: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	ar0,r4
	mov	ar1,r5
	mov	a,#0x03
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	ar4,r0
	mov	ar5,r1
	sjmp	00113$
00117$:
;	./src/WS2812.c:348: for (int16_t q = 0; q < 3; q++)
	inc	r2
	cjne	r2,#0x00,00169$
	inc	r3
00169$:
	ljmp	00116$
00120$:
;	./src/WS2812.c:346: for (int16_t j = 0; j < 10; j++)
	inc	_theaterChase_j_131072_135
	clr	a
	cjne	a,_theaterChase_j_131072_135,00170$
	inc	(_theaterChase_j_131072_135 + 1)
00170$:
;	./src/WS2812.c:366: }
	ljmp	00119$
;------------------------------------------------------------
;Allocation info for local variables in function 'theaterChaseRainbow'
;------------------------------------------------------------
;SpeedDelay                Allocated to registers 
;c                         Allocated with name '_theaterChaseRainbow_c_65536_146'
;curEffect                 Allocated with name '_theaterChaseRainbow_curEffect_65536_146'
;j                         Allocated with name '_theaterChaseRainbow_j_131072_147'
;q                         Allocated with name '_theaterChaseRainbow_q_262144_149'
;i                         Allocated to registers r1 r2 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:368: void theaterChaseRainbow(int16_t SpeedDelay)
;	-----------------------------------------
;	 function theaterChaseRainbow
;	-----------------------------------------
_theaterChaseRainbow:
;	./src/WS2812.c:371: uint8_t curEffect = effect;
	mov	_theaterChaseRainbow_curEffect_65536_146,_effect
;	./src/WS2812.c:373: for (int16_t j = 0; j < 256; j++)
	clr	a
	mov	_theaterChaseRainbow_j_131072_147,a
	mov	(_theaterChaseRainbow_j_131072_147 + 1),a
00119$:
	mov	r3,_theaterChaseRainbow_j_131072_147
	mov	r4,(_theaterChaseRainbow_j_131072_147 + 1)
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x81
	jc	00163$
	ret
00163$:
;	./src/WS2812.c:375: for (int16_t q = 0; q < 3; q++)
	clr	a
	mov	_theaterChaseRainbow_q_262144_149,a
	mov	(_theaterChaseRainbow_q_262144_149 + 1),a
00116$:
	mov	r1,_theaterChaseRainbow_q_262144_149
	mov	r2,(_theaterChaseRainbow_q_262144_149 + 1)
	clr	c
	mov	a,r1
	subb	a,#0x03
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jc	00164$
	ljmp	00120$
00164$:
;	./src/WS2812.c:377: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	r1,#0x00
	mov	r2,#0x00
00110$:
	mov	ar0,r1
	mov	ar6,r2
	clr	c
	mov	a,r0
	subb	a,_NUM_LEDS
	mov	a,r6
	subb	a,(_NUM_LEDS + 1)
	jc	00165$
	ljmp	00103$
00165$:
;	./src/WS2812.c:379: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_theaterChaseRainbow_curEffect_65536_146,00166$
	sjmp	00102$
00166$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:380: c = Wheel((i + j) % 255);
	mov	a,_theaterChaseRainbow_j_131072_147
	add	a,r1
	mov	r5,a
	mov	a,(_theaterChaseRainbow_j_131072_147 + 1)
	addc	a,r2
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	__modsint_PARM_2,#0xff
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar2
	push	ar1
	lcall	__modsint
	lcall	_Wheel
	mov	_theaterChaseRainbow_c_65536_146,dpl
	mov	(_theaterChaseRainbow_c_65536_146 + 1),dph
	mov	(_theaterChaseRainbow_c_65536_146 + 2),b
	pop	ar1
	pop	ar2
;	./src/WS2812.c:381: setPixel(i + q, *c, *(c + 1), *(c + 2)); // turn every third pixel on
	mov	a,_theaterChaseRainbow_q_262144_149
	add	a,r1
	mov	r4,a
	mov	a,(_theaterChaseRainbow_q_262144_149 + 1)
	addc	a,r2
	mov	r7,a
	mov	dpl,_theaterChaseRainbow_c_65536_146
	mov	dph,(_theaterChaseRainbow_c_65536_146 + 1)
	mov	b,(_theaterChaseRainbow_c_65536_146 + 2)
	lcall	__gptrget
	mov	_setPixel_PARM_2,a
	mov	a,#0x01
	add	a,_theaterChaseRainbow_c_65536_146
	mov	r3,a
	clr	a
	addc	a,(_theaterChaseRainbow_c_65536_146 + 1)
	mov	r5,a
	mov	r6,(_theaterChaseRainbow_c_65536_146 + 2)
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_setPixel_PARM_3,a
	mov	a,#0x02
	add	a,_theaterChaseRainbow_c_65536_146
	mov	r3,a
	clr	a
	addc	a,(_theaterChaseRainbow_c_65536_146 + 1)
	mov	r5,a
	mov	r6,(_theaterChaseRainbow_c_65536_146 + 2)
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_setPixel_PARM_4,a
	mov	dpl,r4
	mov	dph,r7
	push	ar2
	push	ar1
	lcall	_setPixel
	pop	ar1
	pop	ar2
;	./src/WS2812.c:377: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	ar6,r1
	mov	ar7,r2
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar1,r6
	mov	ar2,r7
	ljmp	00110$
00103$:
;	./src/WS2812.c:383: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:385: _delay_ms(DELAY);
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
;	./src/WS2812.c:387: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	r6,#0x00
	mov	r7,#0x00
00113$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,_NUM_LEDS
	mov	a,r5
	subb	a,(_NUM_LEDS + 1)
	jnc	00117$
;	./src/WS2812.c:389: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_theaterChaseRainbow_curEffect_65536_146,00168$
	sjmp	00105$
00168$:
	mov	__status,#0x12
	ret
00105$:
;	./src/WS2812.c:390: setPixel(i + q, 0, 0, 0); // turn every third pixel off
	mov	a,_theaterChaseRainbow_q_262144_149
	add	a,r6
	mov	dpl,a
	mov	a,(_theaterChaseRainbow_q_262144_149 + 1)
	addc	a,r7
	mov	dph,a
	mov	_setPixel_PARM_2,#0x00
	mov	_setPixel_PARM_3,#0x00
	mov	_setPixel_PARM_4,#0x00
	push	ar7
	push	ar6
	lcall	_setPixel
	pop	ar6
	pop	ar7
;	./src/WS2812.c:387: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	sjmp	00113$
00117$:
;	./src/WS2812.c:375: for (int16_t q = 0; q < 3; q++)
	inc	_theaterChaseRainbow_q_262144_149
	clr	a
	cjne	a,_theaterChaseRainbow_q_262144_149,00169$
	inc	(_theaterChaseRainbow_q_262144_149 + 1)
00169$:
	ljmp	00116$
00120$:
;	./src/WS2812.c:373: for (int16_t j = 0; j < 256; j++)
	inc	_theaterChaseRainbow_j_131072_147
	clr	a
	cjne	a,_theaterChaseRainbow_j_131072_147,00170$
	inc	(_theaterChaseRainbow_j_131072_147 + 1)
00170$:
;	./src/WS2812.c:394: }
	ljmp	00119$
;------------------------------------------------------------
;Allocation info for local variables in function 'Pattern3'
;------------------------------------------------------------
;r                         Allocated with name '_Pattern3_PARM_2'
;b                         Allocated with name '_Pattern3_PARM_3'
;g                         Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:398: void Pattern3(uint8_t g,uint8_t r,uint8_t b)
;	-----------------------------------------
;	 function Pattern3
;	-----------------------------------------
_Pattern3:
	mov	r7,dpl
;	./src/WS2812.c:400: for (int i = 0; i < (NUM_LEDS / 2); i++)
	mov	r5,#0x00
	mov	r6,#0x00
00104$:
	mov	r3,_NUM_LEDS
	mov	a,(_NUM_LEDS + 1)
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	mov	ar1,r5
	mov	ar2,r6
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	subb	a,r4
	jc	00129$
	ljmp	00101$
00129$:
;	./src/WS2812.c:402: setPixel((NUM_LEDS / 2) + i, g, r, b);
	mov	a,r1
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_Pattern3_PARM_2
	mov	_setPixel_PARM_4,_Pattern3_PARM_3
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	lcall	_setPixel
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:403: setPixel(((NUM_LEDS / 2) - 1) - i, g, r, b);
	mov	r3,_NUM_LEDS
	mov	a,(_NUM_LEDS + 1)
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	dec	r3
	cjne	r3,#0xff,00130$
	dec	r4
00130$:
	mov	a,r3
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,r4
	subb	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_Pattern3_PARM_2
	mov	_setPixel_PARM_4,_Pattern3_PARM_3
	push	ar7
	push	ar6
	push	ar5
	lcall	_setPixel
;	./src/WS2812.c:404: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:405: _delay_ms(DELAY2);
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
;	./src/WS2812.c:400: for (int i = 0; i < (NUM_LEDS / 2); i++)
	inc	r5
	cjne	r5,#0x00,00131$
	inc	r6
00131$:
	ljmp	00104$
00101$:
;	./src/WS2812.c:407: for (int i = 0; i < (NUM_LEDS / 2); i++)
	mov	r6,#0x00
	mov	r7,#0x00
00107$:
	mov	r4,_NUM_LEDS
	mov	a,(_NUM_LEDS + 1)
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	jc	00132$
	ljmp	00102$
00132$:
;	./src/WS2812.c:409: setPixel((NUM_LEDS / 2) + i, 0,0,0);
	mov	a,r2
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	_setPixel_PARM_2,#0x00
	mov	_setPixel_PARM_3,#0x00
	mov	_setPixel_PARM_4,#0x00
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_setPixel
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/WS2812.c:410: setPixel(((NUM_LEDS / 2) - 1) - i,  0,0,0);
	mov	r4,_NUM_LEDS
	mov	a,(_NUM_LEDS + 1)
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00133$
	dec	r5
00133$:
	mov	a,r4
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,r5
	subb	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	_setPixel_PARM_2,#0x00
	mov	_setPixel_PARM_3,#0x00
	mov	_setPixel_PARM_4,#0x00
	push	ar7
	push	ar6
	lcall	_setPixel
;	./src/WS2812.c:411: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:412: _delay_ms(DELAY2);
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
;	./src/WS2812.c:407: for (int i = 0; i < (NUM_LEDS / 2); i++)
	inc	r6
	cjne	r6,#0x00,00134$
	inc	r7
00134$:
	ljmp	00107$
00102$:
;	./src/WS2812.c:414: _delay_ms(300);
	mov	dptr,#0x012c
	clr	a
	mov	b,a
;	./src/WS2812.c:415: }
	ljmp	__delay_ms
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
