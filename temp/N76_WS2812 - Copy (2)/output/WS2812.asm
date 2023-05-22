;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module WS2812
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _meteorRain_PARM_6
	.globl _meteorRain_PARM_5
	.globl _meteorRain_PARM_4
	.globl _meteorRain_PARM_3
	.globl _meteorRain_PARM_2
	.globl _LED__SendByte_
	.globl _LED__SendOne_
	.globl _LED__SendZero_
	.globl _rand
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
	.globl _sinWave_PARM_3
	.globl _sinWave_PARM_2
	.globl _fadeToBlackBy_PARM_2
	.globl _Pattern3_PARM_4
	.globl _Pattern3_PARM_3
	.globl _Pattern3_PARM_2
	.globl _theaterChase_PARM_3
	.globl _theaterChase_PARM_2
	.globl _colorWipe_PARM_4
	.globl _colorWipe_PARM_3
	.globl _colorWipe_PARM_2
	.globl _CylonBounce_PARM_5
	.globl _CylonBounce_PARM_4
	.globl _CylonBounce_PARM_3
	.globl _CylonBounce_PARM_2
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
	.globl _mang
	.globl _random
	.globl _random2
	.globl _clearAll
	.globl _showStrip
	.globl _setPixel
	.globl _setAll
	.globl _FadeInOut
	.globl _Strobe
	.globl _CylonBounce
	.globl _colorWipe
	.globl _rainbowCycle
	.globl _theaterChase
	.globl _theaterChaseRainbow
	.globl _Pattern3
	.globl _fadeToBlackBy
	.globl _meteorRain
	.globl _sinWave
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
_mang::
	.ds 13
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
_FadeInOut_green_65536_70:
	.ds 1
_FadeInOut_g_65536_71:
	.ds 1
_FadeInOut_r_65536_71:
	.ds 1
_FadeInOut_curEffect_65536_71:
	.ds 1
_FadeInOut_curColor_65536_71:
	.ds 1
_FadeInOut_k_131072_75:
	.ds 2
_Strobe_PARM_2:
	.ds 1
_Strobe_PARM_3:
	.ds 1
_Strobe_PARM_4:
	.ds 2
_Strobe_PARM_5:
	.ds 2
_Strobe_curColor_65536_79:
	.ds 1
_CylonBounce_PARM_2:
	.ds 1
_CylonBounce_PARM_3:
	.ds 1
_CylonBounce_PARM_4:
	.ds 2
_CylonBounce_PARM_5:
	.ds 2
_CylonBounce_green_65536_83:
	.ds 1
_CylonBounce_curEffect_65536_84:
	.ds 1
_CylonBounce_curColor_65536_84:
	.ds 1
_CylonBounce_i_131072_85:
	.ds 2
_CylonBounce_j_262144_92:
	.ds 2
_CylonBounce_sloc0_1_0:
	.ds 1
_CylonBounce_sloc1_1_0:
	.ds 1
_colorWipe_PARM_2:
	.ds 1
_colorWipe_PARM_3:
	.ds 1
_colorWipe_PARM_4:
	.ds 1
_colorWipe_curColor_65536_96:
	.ds 1
_rainbowCycle_curEffect_65536_100:
	.ds 1
_rainbowCycle_curColor_65536_100:
	.ds 1
_rainbowCycle_WheelPos_65536_100:
	.ds 1
_rainbowCycle_sloc0_1_0:
	.ds 1
_theaterChase_PARM_2:
	.ds 1
_theaterChase_PARM_3:
	.ds 1
_theaterChase_green_65536_109:
	.ds 1
_theaterChase_j_131072_111:
	.ds 2
_theaterChaseRainbow_curEffect_65536_121:
	.ds 1
_theaterChaseRainbow_curColor_65536_121:
	.ds 1
_theaterChaseRainbow_WheelPos_65536_121:
	.ds 1
_theaterChaseRainbow_j_131072_122:
	.ds 2
_theaterChaseRainbow_sloc0_1_0:
	.ds 1
_Pattern3_PARM_2:
	.ds 1
_Pattern3_PARM_3:
	.ds 1
_Pattern3_PARM_4:
	.ds 1
_Pattern3_curColor_65536_136:
	.ds 1
_Pattern3_sloc0_1_0:
	.ds 2
_Pattern3_sloc1_1_0:
	.ds 2
_fadeToBlackBy_PARM_2:
	.ds 1
_fadeToBlackBy_pixel_65536_140:
	.ds 2
_sinWave_PARM_2:
	.ds 1
_sinWave_PARM_3:
	.ds 1
_sinWave_green_65536_145:
	.ds 1
_sinWave_curEffect_65536_146:
	.ds 1
_sinWave_curColor_65536_146:
	.ds 1
_sinWave_i_262144_149:
	.ds 2
_sinWave_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_meteorRain_PARM_2:
	.ds 1
_meteorRain_PARM_3:
	.ds 1
_meteorRain_PARM_4:
	.ds 1
_meteorRain_PARM_5:
	.ds 1
_meteorRain_PARM_6:
	.ds 1
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
;	./src/WS2812.c:12: uint8_t mang[13] = {1, 4, 8, 20, 50, 95, 100, 95, 50, 20, 8, 4, 1};
	mov	_mang,#0x01
	mov	(_mang + 0x0001),#0x04
	mov	(_mang + 0x0002),#0x08
	mov	(_mang + 0x0003),#0x14
	mov	(_mang + 0x0004),#0x32
	mov	(_mang + 0x0005),#0x5f
	mov	(_mang + 0x0006),#0x64
	mov	(_mang + 0x0007),#0x5f
	mov	(_mang + 0x0008),#0x32
	mov	(_mang + 0x0009),#0x14
	mov	(_mang + 0x000a),#0x08
	mov	(_mang + 0x000b),#0x04
	mov	(_mang + 0x000c),#0x01
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
;	./src/WS2812.c:23: uint16_t random(uint16_t howbig)
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
;	./src/WS2812.c:25: if (howbig == 0)
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	./src/WS2812.c:27: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	./src/WS2812.c:29: return rand() % howbig;
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
;	./src/WS2812.c:30: }
	ljmp	__moduint
;------------------------------------------------------------
;Allocation info for local variables in function 'random2'
;------------------------------------------------------------
;howbig                    Allocated with name '_random2_PARM_2'
;howsmall                  Allocated to registers r6 r7 
;diff                      Allocated to registers 
;------------------------------------------------------------
;	./src/WS2812.c:32: uint16_t random2(uint16_t howsmall, uint16_t howbig)
;	-----------------------------------------
;	 function random2
;	-----------------------------------------
_random2:
	mov	r6,dpl
	mov	r7,dph
;	./src/WS2812.c:34: if (howsmall >= howbig)
	clr	c
	mov	a,r6
	subb	a,_random2_PARM_2
	mov	a,r7
	subb	a,(_random2_PARM_2 + 1)
	jc	00102$
;	./src/WS2812.c:36: return howsmall;
	mov	dpl,r6
	mov	dph,r7
	ret
00102$:
;	./src/WS2812.c:38: uint16_t diff = howbig - howsmall;
	mov	a,_random2_PARM_2
	clr	c
	subb	a,r6
	mov	dpl,a
	mov	a,(_random2_PARM_2 + 1)
	subb	a,r7
	mov	dph,a
;	./src/WS2812.c:39: return random(diff) + howsmall;
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
;	./src/WS2812.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendZero_'
;------------------------------------------------------------
;	./src/WS2812.c:42: void LED__SendZero_()
;	-----------------------------------------
;	 function LED__SendZero_
;	-----------------------------------------
_LED__SendZero_:
;	./src/WS2812.c:44: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
;	./src/WS2812.c:45: _nop_();
	nop
;	./src/WS2812.c:46: _nop_();
	nop
;	./src/WS2812.c:47: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./src/WS2812.c:48: _nop_();
	nop
;	./src/WS2812.c:49: _nop_();
	nop
;	./src/WS2812.c:50: _nop_();
	nop
;	./src/WS2812.c:51: _nop_();
	nop
;	./src/WS2812.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendOne_'
;------------------------------------------------------------
;	./src/WS2812.c:53: void LED__SendOne_()
;	-----------------------------------------
;	 function LED__SendOne_
;	-----------------------------------------
_LED__SendOne_:
;	./src/WS2812.c:55: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
;	./src/WS2812.c:56: _nop_();
	nop
;	./src/WS2812.c:57: _nop_();
	nop
;	./src/WS2812.c:58: _nop_();
	nop
;	./src/WS2812.c:59: _nop_();
	nop
;	./src/WS2812.c:60: _nop_();
	nop
;	./src/WS2812.c:61: _nop_();
	nop
;	./src/WS2812.c:62: _nop_();
	nop
;	./src/WS2812.c:63: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./src/WS2812.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendByte_'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/WS2812.c:65: void LED__SendByte_(uint8_t dat)
;	-----------------------------------------
;	 function LED__SendByte_
;	-----------------------------------------
_LED__SendByte_:
;	./src/WS2812.c:67: if (dat & 0x80)
	mov	a,dpl
	mov	r7,a
	jnb	acc.7,00102$
;	./src/WS2812.c:68: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00103$
00102$:
;	./src/WS2812.c:70: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00103$:
;	./src/WS2812.c:71: if (dat & 0x40)
	mov	a,r7
	jnb	acc.6,00105$
;	./src/WS2812.c:72: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00106$
00105$:
;	./src/WS2812.c:74: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00106$:
;	./src/WS2812.c:75: if (dat & 0x20)
	mov	a,r7
	jnb	acc.5,00108$
;	./src/WS2812.c:76: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00109$
00108$:
;	./src/WS2812.c:78: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00109$:
;	./src/WS2812.c:79: if (dat & 0x10)
	mov	a,r7
	jnb	acc.4,00111$
;	./src/WS2812.c:80: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00112$
00111$:
;	./src/WS2812.c:82: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00112$:
;	./src/WS2812.c:83: if (dat & 0x08)
	mov	a,r7
	jnb	acc.3,00114$
;	./src/WS2812.c:84: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00115$
00114$:
;	./src/WS2812.c:86: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00115$:
;	./src/WS2812.c:87: if (dat & 0x04)
	mov	a,r7
	jnb	acc.2,00117$
;	./src/WS2812.c:88: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00118$
00117$:
;	./src/WS2812.c:90: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00118$:
;	./src/WS2812.c:91: if (dat & 0x02)
	mov	a,r7
	jnb	acc.1,00120$
;	./src/WS2812.c:92: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00121$
00120$:
;	./src/WS2812.c:94: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00121$:
;	./src/WS2812.c:95: if (dat & 0x01)
	mov	a,r7
	jnb	acc.0,00123$
;	./src/WS2812.c:96: LED__SendOne_();
	ljmp	_LED__SendOne_
00123$:
;	./src/WS2812.c:98: LED__SendZero_();
;	./src/WS2812.c:99: }
	ljmp	_LED__SendZero_
;------------------------------------------------------------
;Allocation info for local variables in function 'clearAll'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:101: void clearAll()
;	-----------------------------------------
;	 function clearAll
;	-----------------------------------------
_clearAll:
;	./src/WS2812.c:103: for (uint16_t i = 0; i < 300; i++)
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
	jnc	00105$
;	./src/WS2812.c:105: LED__SendByte_(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_LED__SendByte_
;	./src/WS2812.c:106: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
;	./src/WS2812.c:107: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
	pop	ar6
	pop	ar7
;	./src/WS2812.c:103: for (uint16_t i = 0; i < 300; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	./src/WS2812.c:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showStrip'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/WS2812.c:111: void showStrip()
;	-----------------------------------------
;	 function showStrip
;	-----------------------------------------
_showStrip:
;	./src/WS2812.c:113: for (uint8_t i = 0; i < NUM_LEDS; ++i)
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
;	./src/WS2812.c:115: LED__SendByte_(leds[i * 3]);
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
;	./src/WS2812.c:116: LED__SendByte_(leds[i * 3 + 1]);
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
;	./src/WS2812.c:117: LED__SendByte_(leds[i * 3 + 2]);
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
;	./src/WS2812.c:113: for (uint8_t i = 0; i < NUM_LEDS; ++i)
	inc	r7
	sjmp	00103$
00105$:
;	./src/WS2812.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPixel'
;------------------------------------------------------------
;green                     Allocated with name '_setPixel_PARM_2'
;red                       Allocated with name '_setPixel_PARM_3'
;blue                      Allocated with name '_setPixel_PARM_4'
;Pixel                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/WS2812.c:122: void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setPixel
;	-----------------------------------------
_setPixel:
	mov	r6,dpl
	mov	r7,dph
;	./src/WS2812.c:124: leds[Pixel * 3] = green;
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
;	./src/WS2812.c:125: leds[Pixel * 3 + 1] = red;
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
;	./src/WS2812.c:126: leds[Pixel * 3 + 2] = blue;
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
;	./src/WS2812.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setAll'
;------------------------------------------------------------
;red                       Allocated with name '_setAll_PARM_2'
;blue                      Allocated with name '_setAll_PARM_3'
;green                     Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	./src/WS2812.c:130: void setAll(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setAll
;	-----------------------------------------
_setAll:
	mov	r7,dpl
;	./src/WS2812.c:132: for (int16_t i = 0; i < NUM_LEDS; ++i)
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
;	./src/WS2812.c:134: setPixel(i, green, red, blue);
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
;	./src/WS2812.c:132: for (int16_t i = 0; i < NUM_LEDS; ++i)
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
;	./src/WS2812.c:136: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FadeInOut'
;------------------------------------------------------------
;red                       Allocated with name '_FadeInOut_PARM_2'
;blue                      Allocated with name '_FadeInOut_PARM_3'
;green                     Allocated with name '_FadeInOut_green_65536_70'
;g                         Allocated with name '_FadeInOut_g_65536_71'
;r                         Allocated with name '_FadeInOut_r_65536_71'
;b                         Allocated to registers 
;curEffect                 Allocated with name '_FadeInOut_curEffect_65536_71'
;curColor                  Allocated with name '_FadeInOut_curColor_65536_71'
;k                         Allocated to registers r3 r4 
;k                         Allocated with name '_FadeInOut_k_131072_75'
;------------------------------------------------------------
;	./src/WS2812.c:137: void FadeInOut(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function FadeInOut
;	-----------------------------------------
_FadeInOut:
	mov	_FadeInOut_green_65536_70,dpl
;	./src/WS2812.c:140: uint8_t curEffect = effect;
	mov	_FadeInOut_curEffect_65536_71,_effect
;	./src/WS2812.c:141: uint8_t curColor = _color;
	mov	_FadeInOut_curColor_65536_71,__color
;	./src/WS2812.c:144: for (int16_t k = 0; k < 255; k = k + NUM_LEDS / 50)
	mov	r3,#0x00
	mov	r4,#0x00
00110$:
	mov	ar1,r3
	mov	ar2,r4
	clr	c
	mov	a,r1
	subb	a,#0xff
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jc	00147$
	ljmp	00104$
00147$:
;	./src/WS2812.c:146: CHECK_EFF;
	mov	a,_effect
	cjne	a,_FadeInOut_curEffect_65536_71,00101$
	mov	a,__color
	cjne	a,_FadeInOut_curColor_65536_71,00150$
	sjmp	00102$
00150$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:148: r = k * red / 256;
	mov	__mulint_PARM_2,_FadeInOut_PARM_2
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	lcall	__mulint
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	lcall	__divsint
	mov	r1,dpl
	pop	ar3
	pop	ar4
;	./src/WS2812.c:149: g = k * green / 256;
	mov	__mulint_PARM_2,_FadeInOut_green_65536_70
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	push	ar1
	lcall	__mulint
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	lcall	__divsint
	mov	r0,dpl
	pop	ar1
	pop	ar3
	pop	ar4
;	./src/WS2812.c:150: b = k * blue / 256;
	mov	__mulint_PARM_2,_FadeInOut_PARM_3
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	push	ar1
	push	ar0
	lcall	__mulint
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	lcall	__divsint
	mov	r2,dpl
	pop	ar0
	pop	ar1
	mov	_setAll_PARM_3,r2
;	./src/WS2812.c:151: setAll(g, r, b);
	mov	_setAll_PARM_2,r1
	mov	dpl,r0
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
	mov	r5,a
	mov	ar0,r2
	mov	ar1,r5
	mov	r2,#0x00
	mov	r5,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	lcall	__delay_ms
;	./src/WS2812.c:144: for (int16_t k = 0; k < 255; k = k + NUM_LEDS / 50)
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	mov	__divuint_PARM_2,#0x32
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r2,dpl
	mov	r5,dph
	pop	ar3
	pop	ar4
	mov	ar0,r3
	mov	ar1,r4
	mov	a,r2
	add	a,r0
	mov	r2,a
	mov	a,r5
	addc	a,r1
	mov	r5,a
	mov	ar3,r2
	mov	ar4,r5
	ljmp	00110$
00104$:
;	./src/WS2812.c:156: for (int16_t k = 255; k > 0; k = k - NUM_LEDS / 25)
	mov	_FadeInOut_k_131072_75,#0xff
	mov	(_FadeInOut_k_131072_75 + 1),#0x00
00113$:
	mov	r2,_FadeInOut_k_131072_75
	mov	r3,(_FadeInOut_k_131072_75 + 1)
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00151$
	ret
00151$:
;	./src/WS2812.c:158: CHECK_EFF;
	mov	a,_effect
	cjne	a,_FadeInOut_curEffect_65536_71,00105$
	mov	a,__color
	cjne	a,_FadeInOut_curColor_65536_71,00154$
	sjmp	00106$
00154$:
00105$:
	mov	__status,#0x12
	ret
00106$:
;	./src/WS2812.c:159: r = (k / 256.0) * red;
	mov	dpl,_FadeInOut_k_131072_75
	mov	dph,(_FadeInOut_k_131072_75 + 1)
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
	mov	_FadeInOut_r_65536_71,dpl
;	./src/WS2812.c:160: g = (k / 256.0) * green;
	mov	dpl,_FadeInOut_green_65536_70
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
	mov	_FadeInOut_g_65536_71,dpl
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
	mov	_setAll_PARM_2,_FadeInOut_r_65536_71
	mov	dpl,_FadeInOut_g_65536_71
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
;	./src/WS2812.c:156: for (int16_t k = 255; k > 0; k = k - NUM_LEDS / 25)
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	mov	__divuint_PARM_2,#0x19
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	r4,_FadeInOut_k_131072_75
	mov	r5,(_FadeInOut_k_131072_75 + 1)
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r5
	subb	a,r7
	mov	r7,a
	mov	_FadeInOut_k_131072_75,r6
	mov	(_FadeInOut_k_131072_75 + 1),r7
;	./src/WS2812.c:166: }
	ljmp	00113$
;------------------------------------------------------------
;Allocation info for local variables in function 'Strobe'
;------------------------------------------------------------
;red                       Allocated with name '_Strobe_PARM_2'
;blue                      Allocated with name '_Strobe_PARM_3'
;StrobeCount               Allocated with name '_Strobe_PARM_4'
;EndPause                  Allocated with name '_Strobe_PARM_5'
;green                     Allocated to registers r7 
;curEffect                 Allocated to registers r6 
;curColor                  Allocated with name '_Strobe_curColor_65536_79'
;j                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	./src/WS2812.c:168: void Strobe(uint8_t green, uint8_t red, uint8_t blue, int16_t StrobeCount, int16_t EndPause)
;	-----------------------------------------
;	 function Strobe
;	-----------------------------------------
_Strobe:
	mov	r7,dpl
;	./src/WS2812.c:170: uint8_t curEffect = effect;
	mov	r6,_effect
;	./src/WS2812.c:171: uint8_t curColor = _color;
	mov	_Strobe_curColor_65536_79,__color
;	./src/WS2812.c:172: for (int16_t j = 0; j < StrobeCount; j++)
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	clr	c
	mov	a,r3
	subb	a,_Strobe_PARM_4
	mov	a,r4
	xrl	a,#0x80
	mov	b,(_Strobe_PARM_4 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00122$
	ljmp	00104$
00122$:
;	./src/WS2812.c:174: CHECK_EFF;
	mov	a,r6
	cjne	a,_effect,00101$
	mov	a,__color
	cjne	a,_Strobe_curColor_65536_79,00125$
	sjmp	00102$
00125$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:175: setAll(green, red, blue);
	mov	_setAll_PARM_2,_Strobe_PARM_2
	mov	_setAll_PARM_3,_Strobe_PARM_3
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setAll
;	./src/WS2812.c:176: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:177: _delay_ms(DELAY2);
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
	mov	r1,a
	clr	a
	addc	a,b
	mov	r0,a
	mov	r2,#0x00
	mov	r5,#0x00
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	mov	a,r5
	lcall	__delay_ms
;	./src/WS2812.c:178: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./src/WS2812.c:179: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:180: _delay_ms(DELAY2);
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
	mov	r5,a
	mov	ar0,r2
	mov	ar1,r5
	mov	r2,#0x00
	mov	r5,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	lcall	__delay_ms
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/WS2812.c:172: for (int16_t j = 0; j < StrobeCount; j++)
	inc	r3
	cjne	r3,#0x00,00126$
	inc	r4
00126$:
	ljmp	00106$
00104$:
;	./src/WS2812.c:182: _delay_ms(EndPause);
	mov	r4,_Strobe_PARM_5
	mov	a,(_Strobe_PARM_5 + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	./src/WS2812.c:183: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'CylonBounce'
;------------------------------------------------------------
;red                       Allocated with name '_CylonBounce_PARM_2'
;blue                      Allocated with name '_CylonBounce_PARM_3'
;EyeSize                   Allocated with name '_CylonBounce_PARM_4'
;ReturnDelay               Allocated with name '_CylonBounce_PARM_5'
;green                     Allocated with name '_CylonBounce_green_65536_83'
;curEffect                 Allocated with name '_CylonBounce_curEffect_65536_84'
;curColor                  Allocated with name '_CylonBounce_curColor_65536_84'
;i                         Allocated with name '_CylonBounce_i_131072_85'
;j                         Allocated to registers r4 r7 
;i                         Allocated to registers 
;j                         Allocated with name '_CylonBounce_j_262144_92'
;sloc0                     Allocated with name '_CylonBounce_sloc0_1_0'
;sloc1                     Allocated with name '_CylonBounce_sloc1_1_0'
;------------------------------------------------------------
;	./src/WS2812.c:185: void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t ReturnDelay)
;	-----------------------------------------
;	 function CylonBounce
;	-----------------------------------------
_CylonBounce:
	mov	_CylonBounce_green_65536_83,dpl
;	./src/WS2812.c:187: uint8_t curEffect = effect;
	mov	_CylonBounce_curEffect_65536_84,_effect
;	./src/WS2812.c:188: uint8_t curColor = _color;
	mov	_CylonBounce_curColor_65536_84,__color
;	./src/WS2812.c:189: for (int16_t i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	clr	a
	mov	_CylonBounce_i_131072_85,a
	mov	(_CylonBounce_i_131072_85 + 1),a
00115$:
	mov	r1,_CylonBounce_PARM_4
	mov	r2,(_CylonBounce_PARM_4 + 1)
	mov	a,_NUM_LEDS
	clr	c
	subb	a,r1
	mov	r0,a
	mov	a,(_NUM_LEDS + 1)
	subb	a,r2
	mov	r5,a
	mov	a,r0
	add	a,#0xfe
	mov	r0,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	r6,_CylonBounce_i_131072_85
	mov	r7,(_CylonBounce_i_131072_85 + 1)
	clr	c
	mov	a,r6
	subb	a,r0
	mov	a,r7
	subb	a,r5
	jc	00165$
	ljmp	00105$
00165$:
;	./src/WS2812.c:191: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./src/WS2812.c:192: setPixel(i, red / 10, green / 10, blue / 10);
	mov	r6,_CylonBounce_PARM_2
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r5,_CylonBounce_green_65536_83
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	__divsint
	mov	r5,dpl
	mov	r0,_CylonBounce_PARM_3
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r0
	mov	dph,r7
	push	ar5
	lcall	__divsint
	mov	r0,dpl
	pop	ar5
	pop	ar6
	mov	_setPixel_PARM_2,r6
	mov	_setPixel_PARM_3,r5
	mov	_setPixel_PARM_4,r0
	mov	dpl,_CylonBounce_i_131072_85
	mov	dph,(_CylonBounce_i_131072_85 + 1)
	push	ar6
	push	ar5
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar5
	pop	ar6
;	./src/WS2812.c:193: for (int16_t j = 1; j <= EyeSize; j++)
	mov	r4,#0x01
	mov	r7,#0x00
00112$:
	clr	c
	mov	a,_CylonBounce_PARM_4
	subb	a,r4
	mov	a,(_CylonBounce_PARM_4 + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00104$
;	./src/WS2812.c:195: CHECK_EFF;
	mov	a,_effect
	cjne	a,_CylonBounce_curEffect_65536_84,00101$
	mov	a,__color
	cjne	a,_CylonBounce_curColor_65536_84,00169$
	sjmp	00102$
00169$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:196: setPixel(i + j, green, red, blue);
	mov	a,r4
	add	a,_CylonBounce_i_131072_85
	mov	dpl,a
	mov	a,r7
	addc	a,(_CylonBounce_i_131072_85 + 1)
	mov	dph,a
	mov	_setPixel_PARM_2,_CylonBounce_green_65536_83
	mov	_setPixel_PARM_3,_CylonBounce_PARM_2
	mov	_setPixel_PARM_4,_CylonBounce_PARM_3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:193: for (int16_t j = 1; j <= EyeSize; j++)
	inc	r4
	cjne	r4,#0x00,00112$
	inc	r7
	sjmp	00112$
00104$:
;	./src/WS2812.c:198: setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
	mov	a,_CylonBounce_PARM_4
	add	a,_CylonBounce_i_131072_85
	mov	r4,a
	mov	a,(_CylonBounce_PARM_4 + 1)
	addc	a,(_CylonBounce_i_131072_85 + 1)
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00171$
	inc	r7
00171$:
	mov	dpl,r4
	mov	dph,r7
	mov	_setPixel_PARM_2,r6
	mov	_setPixel_PARM_3,r5
	mov	_setPixel_PARM_4,r0
	lcall	_setPixel
;	./src/WS2812.c:199: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:200: _delay_ms(DELAY2);
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
;	./src/WS2812.c:189: for (int16_t i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	inc	_CylonBounce_i_131072_85
	clr	a
	cjne	a,_CylonBounce_i_131072_85,00172$
	inc	(_CylonBounce_i_131072_85 + 1)
00172$:
	ljmp	00115$
00105$:
;	./src/WS2812.c:203: _delay_ms(ReturnDelay);
	mov	r4,_CylonBounce_PARM_5
	mov	a,(_CylonBounce_PARM_5 + 1)
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
	push	ar2
	push	ar1
	lcall	__delay_ms
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:205: for (int16_t i = NUM_LEDS - EyeSize - 2; i > 0; i--)
	mov	a,_NUM_LEDS
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,(_NUM_LEDS + 1)
	subb	a,r2
	mov	r2,a
	mov	a,r1
	add	a,#0xfe
	mov	r1,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
00121$:
	mov	ar0,r1
	mov	ar3,r2
	clr	c
	clr	a
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00173$
	ljmp	00110$
00173$:
;	./src/WS2812.c:207: setAll(0, 0, 0);
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
	push	ar2
	push	ar1
	lcall	_setAll
;	./src/WS2812.c:208: setPixel(i, red / 10, green / 10, blue / 10);
	mov	r0,_CylonBounce_PARM_2
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r0
	mov	dph,r3
	lcall	__divsint
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r3,_CylonBounce_green_65536_83
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r3
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar2
	push	ar1
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
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	mov	_CylonBounce_sloc1_1_0,r6
	mov	_setPixel_PARM_2,r0
	mov	_setPixel_PARM_3,_CylonBounce_sloc0_1_0
	mov	_setPixel_PARM_4,_CylonBounce_sloc1_1_0
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:209: for (int16_t j = 1; j <= EyeSize; j++)
	mov	_CylonBounce_j_262144_92,#0x01
	mov	(_CylonBounce_j_262144_92 + 1),#0x00
;	./src/WS2812.c:219: _delay_ms(ReturnDelay);
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	./src/WS2812.c:209: for (int16_t j = 1; j <= EyeSize; j++)
00118$:
	clr	c
	mov	a,_CylonBounce_PARM_4
	subb	a,_CylonBounce_j_262144_92
	mov	a,(_CylonBounce_PARM_4 + 1)
	xrl	a,#0x80
	mov	b,(_CylonBounce_j_262144_92 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00109$
;	./src/WS2812.c:211: CHECK_EFF;
	mov	a,_effect
	cjne	a,_CylonBounce_curEffect_65536_84,00106$
	mov	a,__color
	cjne	a,_CylonBounce_curColor_65536_84,00177$
	sjmp	00107$
00177$:
00106$:
	mov	__status,#0x12
	ret
00107$:
;	./src/WS2812.c:212: setPixel(i + j, green, red, blue);
	mov	a,_CylonBounce_j_262144_92
	add	a,r1
	mov	dpl,a
	mov	a,(_CylonBounce_j_262144_92 + 1)
	addc	a,r2
	mov	dph,a
	mov	_setPixel_PARM_2,_CylonBounce_green_65536_83
	mov	_setPixel_PARM_3,_CylonBounce_PARM_2
	mov	_setPixel_PARM_4,_CylonBounce_PARM_3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:209: for (int16_t j = 1; j <= EyeSize; j++)
	inc	_CylonBounce_j_262144_92
	clr	a
	cjne	a,_CylonBounce_j_262144_92,00118$
	inc	(_CylonBounce_j_262144_92 + 1)
	sjmp	00118$
00109$:
;	./src/WS2812.c:214: setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_CylonBounce_PARM_4
	add	a,r1
	mov	r3,a
	mov	a,(_CylonBounce_PARM_4 + 1)
	addc	a,r2
	mov	r7,a
	inc	r3
	cjne	r3,#0x00,00179$
	inc	r7
00179$:
	mov	dpl,r3
	mov	dph,r7
	mov	_setPixel_PARM_2,r0
	mov	_setPixel_PARM_3,_CylonBounce_sloc0_1_0
	mov	_setPixel_PARM_4,_CylonBounce_sloc1_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	lcall	_setPixel
;	./src/WS2812.c:215: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:216: _delay_ms(DELAY2);
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x00c8
	lcall	__divuint
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	__mulint_PARM_2,__delay
	mov	(__mulint_PARM_2 + 1),(__delay + 1)
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	pop	ar2
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
	push	ar2
	push	ar1
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar2
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
	push	ar2
	push	ar1
	lcall	__delay_ms
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:205: for (int16_t i = NUM_LEDS - EyeSize - 2; i > 0; i--)
	dec	r1
	cjne	r1,#0xff,00180$
	dec	r2
00180$:
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00121$
00110$:
;	./src/WS2812.c:219: _delay_ms(ReturnDelay);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	./src/WS2812.c:220: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'colorWipe'
;------------------------------------------------------------
;red                       Allocated with name '_colorWipe_PARM_2'
;blue                      Allocated with name '_colorWipe_PARM_3'
;orient                    Allocated with name '_colorWipe_PARM_4'
;green                     Allocated to registers r7 
;curEffect                 Allocated to registers r6 
;curColor                  Allocated with name '_colorWipe_curColor_65536_96'
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	./src/WS2812.c:268: void colorWipe(uint8_t green, uint8_t red, uint8_t blue, uint8_t orient)
;	-----------------------------------------
;	 function colorWipe
;	-----------------------------------------
_colorWipe:
	mov	r7,dpl
;	./src/WS2812.c:270: uint8_t curEffect = effect;
	mov	r6,_effect
;	./src/WS2812.c:271: uint8_t curColor = _color;
	mov	_colorWipe_curColor_65536_96,__color
;	./src/WS2812.c:272: for (uint16_t i = 0; i < NUM_LEDS; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	clr	c
	mov	a,r3
	subb	a,_NUM_LEDS
	mov	a,r4
	subb	a,(_NUM_LEDS + 1)
	jc	00128$
	ret
00128$:
;	./src/WS2812.c:274: CHECK_EFF;
	mov	a,r6
	cjne	a,_effect,00101$
	mov	a,__color
	cjne	a,_colorWipe_curColor_65536_96,00131$
	sjmp	00102$
00131$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:275: setPixel(orient == 0 ? i : NUM_LEDS - i - 1, green, red, blue);
	mov	a,_colorWipe_PARM_4
	jnz	00110$
	mov	ar1,r3
	mov	ar2,r4
	sjmp	00111$
00110$:
	mov	a,_NUM_LEDS
	clr	c
	subb	a,r3
	mov	r0,a
	mov	a,(_NUM_LEDS + 1)
	subb	a,r4
	mov	r5,a
	mov	a,r0
	add	a,#0xff
	mov	r1,a
	mov	a,r5
	addc	a,#0xff
	mov	r2,a
00111$:
	mov	dpl,r1
	mov	dph,r2
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_colorWipe_PARM_2
	mov	_setPixel_PARM_4,_colorWipe_PARM_3
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setPixel
;	./src/WS2812.c:276: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:277: _delay_ms(DELAY2 + 1);
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
	mov	r5,a
	mov	ar0,r2
	mov	ar1,r5
	mov	r2,#0x00
	mov	r5,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	lcall	__delay_ms
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/WS2812.c:272: for (uint16_t i = 0; i < NUM_LEDS; i++)
	inc	r3
	cjne	r3,#0x00,00133$
	inc	r4
00133$:
;	./src/WS2812.c:279: }
	ljmp	00106$
;------------------------------------------------------------
;Allocation info for local variables in function 'rainbowCycle'
;------------------------------------------------------------
;r                         Allocated to registers r6 
;g                         Allocated to registers r0 
;b                         Allocated with name '_rainbowCycle_sloc0_1_0'
;curEffect                 Allocated with name '_rainbowCycle_curEffect_65536_100'
;curColor                  Allocated with name '_rainbowCycle_curColor_65536_100'
;WheelPos                  Allocated with name '_rainbowCycle_WheelPos_65536_100'
;j                         Allocated to registers r4 r5 
;i                         Allocated to registers r2 r3 
;sloc0                     Allocated with name '_rainbowCycle_sloc0_1_0'
;------------------------------------------------------------
;	./src/WS2812.c:281: void rainbowCycle()
;	-----------------------------------------
;	 function rainbowCycle
;	-----------------------------------------
_rainbowCycle:
;	./src/WS2812.c:284: uint8_t curEffect = effect;
	mov	_rainbowCycle_curEffect_65536_100,_effect
;	./src/WS2812.c:285: uint8_t curColor = _color;
	mov	_rainbowCycle_curColor_65536_100,__color
;	./src/WS2812.c:288: for (uint16_t j = 0; j < 256 * 5; j++)
	mov	r4,#0x00
	mov	r5,#0x00
00116$:
	mov	ar3,r5
	mov	a,#0x100 - 0x05
	add	a,r3
	jnc	00155$
	ret
00155$:
;	./src/WS2812.c:290: for (uint16_t i = 0; i < NUM_LEDS; i++)
	mov	r2,#0x00
	mov	r3,#0x00
00113$:
	clr	c
	mov	a,r2
	subb	a,_NUM_LEDS
	mov	a,r3
	subb	a,(_NUM_LEDS + 1)
	jc	00156$
	ljmp	00110$
00156$:
;	./src/WS2812.c:292: CHECK_EFF;
	mov	a,_effect
	cjne	a,_rainbowCycle_curEffect_65536_100,00101$
	mov	a,__color
	cjne	a,_rainbowCycle_curColor_65536_100,00159$
	sjmp	00102$
00159$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:293: WheelPos = (((i * 256 / NUM_LEDS) + j) & 255);
	mov	ar0,r2
	mov	ar1,r0
	mov	r0,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	__divuint_PARM_2,_NUM_LEDS
	mov	(__divuint_PARM_2 + 1),(_NUM_LEDS + 1)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__divuint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	ar1,r4
	mov	a,r1
	add	a,r0
	mov	r1,a
;	./src/WS2812.c:295: if (WheelPos < 85)
	cjne	r1,#0x55,00160$
00160$:
	jnc	00108$
;	./src/WS2812.c:297: g = WheelPos * 3;
	mov	a,r1
	mov	b,#0x03
	mul	ab
	mov	r0,a
;	./src/WS2812.c:298: r = 255 - WheelPos * 3;
	mov	ar6,r1
	mov	a,r6
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	r6,a
;	./src/WS2812.c:299: b = 0;
	mov	_rainbowCycle_sloc0_1_0,#0x00
	sjmp	00109$
00108$:
;	./src/WS2812.c:301: else if (WheelPos < 170)
	cjne	r1,#0xaa,00162$
00162$:
	jnc	00105$
;	./src/WS2812.c:303: WheelPos -= 85;
	mov	ar7,r1
	mov	a,r7
	add	a,#0xab
;	./src/WS2812.c:304: g = 255 - WheelPos * 3;
	mov	_rainbowCycle_WheelPos_65536_100,a
	mov	r7,a
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	r0,a
;	./src/WS2812.c:305: r = 0;
	mov	r6,#0x00
;	./src/WS2812.c:306: b = WheelPos * 3;
	mov	a,_rainbowCycle_WheelPos_65536_100
	mov	b,#0x03
	mul	ab
	mov	_rainbowCycle_sloc0_1_0,a
	sjmp	00109$
00105$:
;	./src/WS2812.c:310: WheelPos -= 170;
	mov	a,r1
	add	a,#0x56
;	./src/WS2812.c:311: g = 0;
;	./src/WS2812.c:312: r = WheelPos * 3;
	mov	r1,a
	mov	r0,#0x00
	mov	b,#0x03
	mul	ab
	mov	r6,a
;	./src/WS2812.c:313: b = 255 - WheelPos * 3;
	mov	a,r1
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	_rainbowCycle_sloc0_1_0,a
00109$:
;	./src/WS2812.c:316: setPixel(i, g, r, b);
	mov	_setPixel_PARM_2,r0
	mov	_setPixel_PARM_3,r6
	mov	_setPixel_PARM_4,_rainbowCycle_sloc0_1_0
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_setPixel
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	./src/WS2812.c:290: for (uint16_t i = 0; i < NUM_LEDS; i++)
	inc	r2
	cjne	r2,#0x00,00164$
	inc	r3
00164$:
	ljmp	00113$
00110$:
;	./src/WS2812.c:318: showStrip();
	push	ar5
	push	ar4
	lcall	_showStrip
;	./src/WS2812.c:319: _delay_ms(DELAY);
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
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	mov	a,r2
	lcall	__delay_ms
	pop	ar4
	pop	ar5
;	./src/WS2812.c:288: for (uint16_t j = 0; j < 256 * 5; j++)
	inc	r4
	cjne	r4,#0x00,00165$
	inc	r5
00165$:
;	./src/WS2812.c:321: }
	ljmp	00116$
;------------------------------------------------------------
;Allocation info for local variables in function 'theaterChase'
;------------------------------------------------------------
;red                       Allocated with name '_theaterChase_PARM_2'
;blue                      Allocated with name '_theaterChase_PARM_3'
;green                     Allocated with name '_theaterChase_green_65536_109'
;curEffect                 Allocated to registers r6 
;curColor                  Allocated to registers r5 
;j                         Allocated with name '_theaterChase_j_131072_111'
;q                         Allocated to registers r1 r2 
;i                         Allocated to registers r3 r4 
;i                         Allocated to registers r4 r7 
;------------------------------------------------------------
;	./src/WS2812.c:354: void theaterChase(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function theaterChase
;	-----------------------------------------
_theaterChase:
	mov	_theaterChase_green_65536_109,dpl
;	./src/WS2812.c:356: uint8_t curEffect = effect;
	mov	r6,_effect
;	./src/WS2812.c:357: uint8_t curColor = _color;
	mov	r5,__color
;	./src/WS2812.c:359: for (int16_t j = 0; j < 10; j++)
	clr	a
	mov	_theaterChase_j_131072_111,a
	mov	(_theaterChase_j_131072_111 + 1),a
00121$:
	mov	r1,_theaterChase_j_131072_111
	mov	r2,(_theaterChase_j_131072_111 + 1)
	clr	c
	mov	a,r1
	subb	a,#0x0a
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jc	00165$
	ret
00165$:
;	./src/WS2812.c:361: for (int16_t q = 0; q < 3; q++)
	mov	r1,#0x00
	mov	r2,#0x00
00118$:
	mov	ar0,r1
	mov	ar4,r2
	clr	c
	mov	a,r0
	subb	a,#0x03
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00166$
	ljmp	00122$
00166$:
;	./src/WS2812.c:363: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	r3,#0x00
	mov	r4,#0x00
00112$:
	mov	ar0,r3
	mov	ar7,r4
	clr	c
	mov	a,r0
	subb	a,_NUM_LEDS
	mov	a,r7
	subb	a,(_NUM_LEDS + 1)
	jnc	00104$
;	./src/WS2812.c:365: CHECK_EFF;
	mov	a,r6
	cjne	a,_effect,00101$
	mov	a,r5
	cjne	a,__color,00170$
	sjmp	00102$
00170$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:366: setPixel(i + q, green, red, blue); // turn every third pixel on
	mov	a,r1
	add	a,r3
	mov	dpl,a
	mov	a,r2
	addc	a,r4
	mov	dph,a
	mov	_setPixel_PARM_2,_theaterChase_green_65536_109
	mov	_setPixel_PARM_3,_theaterChase_PARM_2
	mov	_setPixel_PARM_4,_theaterChase_PARM_3
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
;	./src/WS2812.c:363: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	ar0,r3
	mov	ar7,r4
	mov	a,#0x03
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar3,r0
	mov	ar4,r7
	sjmp	00112$
00104$:
;	./src/WS2812.c:368: showStrip();
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	lcall	_showStrip
;	./src/WS2812.c:370: _delay_ms(DELAY);
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
	mov	ar0,r4
	mov	ar3,r7
	mov	r4,#0x00
	mov	r7,#0x00
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__delay_ms
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
;	./src/WS2812.c:372: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	r4,#0x00
	mov	r7,#0x00
00115$:
	mov	ar0,r4
	mov	ar3,r7
	clr	c
	mov	a,r0
	subb	a,_NUM_LEDS
	mov	a,r3
	subb	a,(_NUM_LEDS + 1)
	jnc	00119$
;	./src/WS2812.c:374: CHECK_EFF;
	mov	a,r6
	cjne	a,_effect,00105$
	mov	a,r5
	cjne	a,__color,00174$
	sjmp	00106$
00174$:
00105$:
	mov	__status,#0x12
	ret
00106$:
;	./src/WS2812.c:375: setPixel(i + q, 0, 0, 0); // turn every third pixel off
	mov	a,r1
	add	a,r4
	mov	dpl,a
	mov	a,r2
	addc	a,r7
	mov	dph,a
	mov	_setPixel_PARM_2,#0x00
	mov	_setPixel_PARM_3,#0x00
	mov	_setPixel_PARM_4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	lcall	_setPixel
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/WS2812.c:372: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	ar0,r4
	mov	ar3,r7
	mov	a,#0x03
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar4,r0
	mov	ar7,r3
	sjmp	00115$
00119$:
;	./src/WS2812.c:361: for (int16_t q = 0; q < 3; q++)
	inc	r1
	cjne	r1,#0x00,00175$
	inc	r2
00175$:
	ljmp	00118$
00122$:
;	./src/WS2812.c:359: for (int16_t j = 0; j < 10; j++)
	inc	_theaterChase_j_131072_111
	clr	a
	cjne	a,_theaterChase_j_131072_111,00176$
	inc	(_theaterChase_j_131072_111 + 1)
00176$:
;	./src/WS2812.c:379: }
	ljmp	00121$
;------------------------------------------------------------
;Allocation info for local variables in function 'theaterChaseRainbow'
;------------------------------------------------------------
;r                         Allocated to registers r6 
;b                         Allocated with name '_theaterChaseRainbow_sloc0_1_0'
;g                         Allocated to registers r5 
;curEffect                 Allocated with name '_theaterChaseRainbow_curEffect_65536_121'
;curColor                  Allocated with name '_theaterChaseRainbow_curColor_65536_121'
;WheelPos                  Allocated with name '_theaterChaseRainbow_WheelPos_65536_121'
;j                         Allocated with name '_theaterChaseRainbow_j_131072_122'
;q                         Allocated to registers r2 r3 
;i                         Allocated to registers r0 r1 
;i                         Allocated to registers r6 r7 
;sloc0                     Allocated with name '_theaterChaseRainbow_sloc0_1_0'
;------------------------------------------------------------
;	./src/WS2812.c:381: void theaterChaseRainbow()
;	-----------------------------------------
;	 function theaterChaseRainbow
;	-----------------------------------------
_theaterChaseRainbow:
;	./src/WS2812.c:384: uint8_t curEffect = effect;
	mov	_theaterChaseRainbow_curEffect_65536_121,_effect
;	./src/WS2812.c:385: uint8_t curColor = _color;
	mov	_theaterChaseRainbow_curColor_65536_121,__color
;	./src/WS2812.c:388: for (int16_t j = 0; j < 256; j++)
	clr	a
	mov	_theaterChaseRainbow_j_131072_122,a
	mov	(_theaterChaseRainbow_j_131072_122 + 1),a
00127$:
	mov	r3,(_theaterChaseRainbow_j_131072_122 + 1)
	clr	c
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x81
	jc	00191$
	ret
00191$:
;	./src/WS2812.c:390: for (int16_t q = 0; q < 3; q++)
	mov	r2,#0x00
	mov	r3,#0x00
00124$:
	mov	ar0,r2
	mov	ar1,r3
	clr	c
	mov	a,r0
	subb	a,#0x03
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x80
	jc	00192$
	ljmp	00128$
00192$:
;	./src/WS2812.c:392: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	r0,#0x00
	mov	r1,#0x00
00118$:
	mov	ar4,r0
	mov	ar5,r1
	clr	c
	mov	a,r4
	subb	a,_NUM_LEDS
	mov	a,r5
	subb	a,(_NUM_LEDS + 1)
	jc	00193$
	ljmp	00110$
00193$:
;	./src/WS2812.c:394: CHECK_EFF;
	mov	a,_effect
	cjne	a,_theaterChaseRainbow_curEffect_65536_121,00101$
	mov	a,__color
	cjne	a,_theaterChaseRainbow_curColor_65536_121,00196$
	sjmp	00102$
00196$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:396: WheelPos = ((i + j) % 255);
	mov	a,_theaterChaseRainbow_j_131072_122
	add	a,r0
	mov	r4,a
	mov	a,(_theaterChaseRainbow_j_131072_122 + 1)
	addc	a,r1
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	__modsint_PARM_2,#0xff
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__modsint
	mov	r4,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	./src/WS2812.c:398: if (WheelPos < 85)
	cjne	r4,#0x55,00197$
00197$:
	jnc	00108$
;	./src/WS2812.c:400: g = WheelPos * 3;
	mov	a,r4
	mov	b,#0x03
	mul	ab
	mov	r5,a
;	./src/WS2812.c:401: r = 255 - WheelPos * 3;
	mov	ar6,r4
	mov	a,r6
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	r6,a
;	./src/WS2812.c:402: b = 0;
	mov	_theaterChaseRainbow_sloc0_1_0,#0x00
	sjmp	00109$
00108$:
;	./src/WS2812.c:404: else if (WheelPos < 170)
	cjne	r4,#0xaa,00199$
00199$:
	jnc	00105$
;	./src/WS2812.c:406: WheelPos -= 85;
	mov	ar7,r4
	mov	a,r7
	add	a,#0xab
;	./src/WS2812.c:407: g = 255 - WheelPos * 3;
	mov	_theaterChaseRainbow_WheelPos_65536_121,a
	mov	r7,a
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	r5,a
;	./src/WS2812.c:408: r = 0;
	mov	r6,#0x00
;	./src/WS2812.c:409: b = WheelPos * 3;
	mov	a,_theaterChaseRainbow_WheelPos_65536_121
	mov	b,#0x03
	mul	ab
	mov	_theaterChaseRainbow_sloc0_1_0,a
	sjmp	00109$
00105$:
;	./src/WS2812.c:413: WheelPos -= 170;
	mov	a,r4
	add	a,#0x56
;	./src/WS2812.c:414: g = 0;
;	./src/WS2812.c:415: r = WheelPos * 3;
	mov	r4,a
	mov	r5,#0x00
	mov	b,#0x03
	mul	ab
	mov	r6,a
;	./src/WS2812.c:416: b = 255 - WheelPos * 3;
	mov	a,r4
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	_theaterChaseRainbow_sloc0_1_0,a
00109$:
;	./src/WS2812.c:419: setPixel(i + q, g, r, b);
	mov	a,r2
	add	a,r0
	mov	dpl,a
	mov	a,r3
	addc	a,r1
	mov	dph,a
	mov	_setPixel_PARM_2,r5
	mov	_setPixel_PARM_3,r6
	mov	_setPixel_PARM_4,_theaterChaseRainbow_sloc0_1_0
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	./src/WS2812.c:392: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	ar6,r0
	mov	ar7,r1
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar0,r6
	mov	ar1,r7
	ljmp	00118$
00110$:
;	./src/WS2812.c:422: showStrip();
	push	ar3
	push	ar2
	lcall	_showStrip
;	./src/WS2812.c:424: _delay_ms(DELAY);
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
	pop	ar2
	pop	ar3
;	./src/WS2812.c:426: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
	mov	r6,#0x00
	mov	r7,#0x00
00121$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,_NUM_LEDS
	mov	a,r5
	subb	a,(_NUM_LEDS + 1)
	jnc	00125$
;	./src/WS2812.c:428: CHECK_EFF;
	mov	a,_effect
	cjne	a,_theaterChaseRainbow_curEffect_65536_121,00111$
	mov	a,__color
	cjne	a,_theaterChaseRainbow_curColor_65536_121,00204$
	sjmp	00112$
00204$:
00111$:
	mov	__status,#0x12
	ret
00112$:
;	./src/WS2812.c:429: setPixel(i + q, 0, 0, 0); // turn every third pixel off
	mov	a,r2
	add	a,r6
	mov	dpl,a
	mov	a,r3
	addc	a,r7
	mov	dph,a
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
;	./src/WS2812.c:426: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
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
	sjmp	00121$
00125$:
;	./src/WS2812.c:390: for (int16_t q = 0; q < 3; q++)
	inc	r2
	cjne	r2,#0x00,00205$
	inc	r3
00205$:
	ljmp	00124$
00128$:
;	./src/WS2812.c:388: for (int16_t j = 0; j < 256; j++)
	inc	_theaterChaseRainbow_j_131072_122
	clr	a
	cjne	a,_theaterChaseRainbow_j_131072_122,00206$
	inc	(_theaterChaseRainbow_j_131072_122 + 1)
00206$:
;	./src/WS2812.c:433: }
	ljmp	00127$
;------------------------------------------------------------
;Allocation info for local variables in function 'Pattern3'
;------------------------------------------------------------
;r                         Allocated with name '_Pattern3_PARM_2'
;b                         Allocated with name '_Pattern3_PARM_3'
;orient                    Allocated with name '_Pattern3_PARM_4'
;g                         Allocated to registers r7 
;curEffect                 Allocated to registers r6 
;curColor                  Allocated with name '_Pattern3_curColor_65536_136'
;i                         Allocated to registers r3 r4 
;sloc0                     Allocated with name '_Pattern3_sloc0_1_0'
;sloc1                     Allocated with name '_Pattern3_sloc1_1_0'
;------------------------------------------------------------
;	./src/WS2812.c:435: void Pattern3(uint8_t g, uint8_t r, uint8_t b, uint8_t orient)
;	-----------------------------------------
;	 function Pattern3
;	-----------------------------------------
_Pattern3:
	mov	r7,dpl
;	./src/WS2812.c:437: uint8_t curEffect = effect;
	mov	r6,_effect
;	./src/WS2812.c:438: uint8_t curColor = _color;
	mov	_Pattern3_curColor_65536_136,__color
;	./src/WS2812.c:439: for (int i = 0; i < (NUM_LEDS / 2); i++)
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	mov	r1,_NUM_LEDS
	mov	r2,(_NUM_LEDS + 1)
	mov	_Pattern3_sloc0_1_0,r1
	mov	a,r2
	clr	c
	rrc	a
	xch	a,_Pattern3_sloc0_1_0
	rrc	a
	xch	a,_Pattern3_sloc0_1_0
	mov	(_Pattern3_sloc0_1_0 + 1),a
	mov	_Pattern3_sloc1_1_0,r3
	mov	(_Pattern3_sloc1_1_0 + 1),r4
	clr	c
	mov	a,_Pattern3_sloc1_1_0
	subb	a,_Pattern3_sloc0_1_0
	mov	a,(_Pattern3_sloc1_1_0 + 1)
	subb	a,(_Pattern3_sloc0_1_0 + 1)
	jc	00134$
	ljmp	00104$
00134$:
;	./src/WS2812.c:441: CHECK_EFF;
	mov	a,r6
	cjne	a,_effect,00101$
	mov	a,__color
	cjne	a,_Pattern3_curColor_65536_136,00137$
	sjmp	00102$
00137$:
00101$:
	mov	__status,#0x12
	ret
00102$:
;	./src/WS2812.c:442: setPixel(orient ? (NUM_LEDS / 2) + i : NUM_LEDS - 1 - i, g, r, b);
	mov	a,_Pattern3_PARM_4
	jz	00110$
	mov	a,_Pattern3_sloc1_1_0
	add	a,_Pattern3_sloc0_1_0
	mov	r0,a
	mov	a,(_Pattern3_sloc1_1_0 + 1)
	addc	a,(_Pattern3_sloc0_1_0 + 1)
	mov	r5,a
	sjmp	00111$
00110$:
	dec	r1
	cjne	r1,#0xff,00139$
	dec	r2
00139$:
	mov	a,r1
	clr	c
	subb	a,_Pattern3_sloc1_1_0
	mov	r0,a
	mov	a,r2
	subb	a,(_Pattern3_sloc1_1_0 + 1)
	mov	r5,a
00111$:
	mov	dpl,r0
	mov	dph,r5
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_Pattern3_PARM_2
	mov	_setPixel_PARM_4,_Pattern3_PARM_3
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setPixel
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/WS2812.c:443: setPixel(orient ? ((NUM_LEDS / 2) - 1) - i : i, g, r, b);
	mov	a,_Pattern3_PARM_4
	jz	00112$
	mov	r2,_NUM_LEDS
	mov	a,(_NUM_LEDS + 1)
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r5,a
	dec	r2
	cjne	r2,#0xff,00141$
	dec	r5
00141$:
	mov	ar0,r3
	mov	ar1,r4
	mov	a,r2
	clr	c
	subb	a,r0
	mov	r2,a
	mov	a,r5
	subb	a,r1
	mov	r5,a
	sjmp	00113$
00112$:
	mov	ar2,r3
	mov	ar5,r4
00113$:
	mov	dpl,r2
	mov	dph,r5
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_Pattern3_PARM_2
	mov	_setPixel_PARM_4,_Pattern3_PARM_3
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_setPixel
;	./src/WS2812.c:444: showStrip();
	lcall	_showStrip
;	./src/WS2812.c:445: _delay_ms(DELAY2);
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
	mov	r5,a
	mov	ar0,r2
	mov	ar1,r5
	mov	r2,#0x00
	mov	r5,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	lcall	__delay_ms
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/WS2812.c:439: for (int i = 0; i < (NUM_LEDS / 2); i++)
	inc	r3
	cjne	r3,#0x00,00142$
	inc	r4
00142$:
	ljmp	00106$
00104$:
;	./src/WS2812.c:447: _delay_ms(300);
	mov	dptr,#0x012c
	clr	a
	mov	b,a
;	./src/WS2812.c:448: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'fadeToBlackBy'
;------------------------------------------------------------
;fadeBy                    Allocated with name '_fadeToBlackBy_PARM_2'
;pixel                     Allocated with name '_fadeToBlackBy_pixel_65536_140'
;r1                        Allocated to registers r1 
;g1                        Allocated to registers r6 
;b1                        Allocated to registers 
;------------------------------------------------------------
;	./src/WS2812.c:450: void fadeToBlackBy(uint16_t pixel, uint8_t fadeBy)
;	-----------------------------------------
;	 function fadeToBlackBy
;	-----------------------------------------
_fadeToBlackBy:
	mov	_fadeToBlackBy_pixel_65536_140,dpl
	mov	(_fadeToBlackBy_pixel_65536_140 + 1),dph
;	./src/WS2812.c:455: r1 = leds[3 * pixel + 1];
	mov	__mulint_PARM_2,_fadeToBlackBy_pixel_65536_140
	mov	(__mulint_PARM_2 + 1),(_fadeToBlackBy_pixel_65536_140 + 1)
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
;	./src/WS2812.c:456: g1 = leds[3 * pixel];
	mov	a,r4
	add	a,#_leds
	mov	dpl,a
	mov	a,r5
	addc	a,#(_leds >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
;	./src/WS2812.c:457: b1 = leds[3 * pixel + 2];
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
;	./src/WS2812.c:459: r1 = (r1 <= 10) ? 0 : (int)r1 - (r1 * fadeBy / 256);
	mov	a,r3
	add	a,#0xff - 0x0a
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
;	./src/WS2812.c:460: g1 = (g1 <= 10) ? 0 : (int)g1 - (g1 * fadeBy / 256);
	mov	a,r2
	add	a,#0xff - 0x0a
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
;	./src/WS2812.c:461: b1 = (b1 <= 10) ? 0 : (int)b1 - (b1 * fadeBy / 256);
	mov	a,r5
	add	a,#0xff - 0x0a
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
;	./src/WS2812.c:463: setPixel(pixel, g1, r1, b1);
	mov	_setPixel_PARM_2,r6
	mov	_setPixel_PARM_3,r1
	mov	dpl,_fadeToBlackBy_pixel_65536_140
	mov	dph,(_fadeToBlackBy_pixel_65536_140 + 1)
;	./src/WS2812.c:464: }
	ljmp	_setPixel
;------------------------------------------------------------
;Allocation info for local variables in function 'meteorRain'
;------------------------------------------------------------
;green                     Allocated with name '_meteorRain_PARM_2'
;blue                      Allocated with name '_meteorRain_PARM_3'
;meteorSize                Allocated with name '_meteorRain_PARM_4'
;meteorTrailDecay          Allocated with name '_meteorRain_PARM_5'
;meteorRandomDecay         Allocated with name '_meteorRain_PARM_6'
;red                       Allocated to registers 
;------------------------------------------------------------
;	./src/WS2812.c:466: void meteorRain(uint8_t red, uint8_t green, uint8_t blue, uint8_t meteorSize, uint8_t meteorTrailDecay, uint8_t meteorRandomDecay)
;	-----------------------------------------
;	 function meteorRain
;	-----------------------------------------
_meteorRain:
;	./src/WS2812.c:497: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sinWave'
;------------------------------------------------------------
;red                       Allocated with name '_sinWave_PARM_2'
;blue                      Allocated with name '_sinWave_PARM_3'
;green                     Allocated with name '_sinWave_green_65536_145'
;dem                       Allocated to registers r3 
;curEffect                 Allocated with name '_sinWave_curEffect_65536_146'
;curColor                  Allocated with name '_sinWave_curColor_65536_146'
;j                         Allocated to registers 
;i                         Allocated with name '_sinWave_i_262144_149'
;sloc0                     Allocated with name '_sinWave_sloc0_1_0'
;------------------------------------------------------------
;	./src/WS2812.c:572: void sinWave(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function sinWave
;	-----------------------------------------
_sinWave:
	mov	_sinWave_green_65536_145,dpl
;	./src/WS2812.c:575: uint8_t curEffect = effect;
	mov	_sinWave_curEffect_65536_146,_effect
;	./src/WS2812.c:576: uint8_t curColor = _color;
	mov	_sinWave_curColor_65536_146,__color
;	./src/WS2812.c:577: for (uint8_t j = 0; j < 13; j++)
	mov	r4,#0x00
00112$:
	cjne	r4,#0x0d,00140$
00140$:
	jc	00141$
	ret
00141$:
;	./src/WS2812.c:579: dem = j;
	mov	ar3,r4
;	./src/WS2812.c:580: for (int i = 0; i < NUM_LEDS; i++)
	clr	a
	mov	_sinWave_i_262144_149,a
	mov	(_sinWave_i_262144_149 + 1),a
00109$:
	mov	_sinWave_sloc0_1_0,_sinWave_i_262144_149
	mov	(_sinWave_sloc0_1_0 + 1),(_sinWave_i_262144_149 + 1)
	clr	c
	mov	a,_sinWave_sloc0_1_0
	subb	a,_NUM_LEDS
	mov	a,(_sinWave_sloc0_1_0 + 1)
	subb	a,(_NUM_LEDS + 1)
	jc	00142$
	ljmp	00106$
00142$:
;	./src/WS2812.c:582: setPixel(i, mang[dem]*green/100, mang[dem]*red/100, mang[dem]*blue/100);
	mov	a,r3
	add	a,#_mang
	mov	r1,a
	mov	ar6,@r1
	mov	b,r6
	mov	a,_sinWave_green_65536_145
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar6
	push	ar4
	push	ar3
	lcall	__divsint
	mov	r5,dpl
	pop	ar3
	pop	ar4
	pop	ar6
	mov	b,r6
	mov	a,_sinWave_PARM_2
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__divsint
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	b,r6
	mov	a,_sinWave_PARM_3
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r6,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	_setPixel_PARM_4,r6
	mov	_setPixel_PARM_2,r5
	mov	_setPixel_PARM_3,r2
	mov	dpl,_sinWave_sloc0_1_0
	mov	dph,(_sinWave_sloc0_1_0 + 1)
	push	ar4
	push	ar3
	lcall	_setPixel
	pop	ar3
	pop	ar4
;	./src/WS2812.c:583: if (dem++ == 12)
	mov	ar7,r3
	inc	r3
	cjne	r7,#0x0c,00102$
;	./src/WS2812.c:585: dem = 0;
	mov	r3,#0x00
00102$:
;	./src/WS2812.c:587: CHECK_EFF;
	mov	a,_effect
	cjne	a,_sinWave_curEffect_65536_146,00103$
	mov	a,__color
	cjne	a,_sinWave_curColor_65536_146,00147$
	sjmp	00110$
00147$:
00103$:
	mov	__status,#0x12
	ret
00110$:
;	./src/WS2812.c:580: for (int i = 0; i < NUM_LEDS; i++)
	inc	_sinWave_i_262144_149
	clr	a
	cjne	a,_sinWave_i_262144_149,00148$
	inc	(_sinWave_i_262144_149 + 1)
00148$:
	ljmp	00109$
00106$:
;	./src/WS2812.c:589: showStrip();
	push	ar4
	lcall	_showStrip
;	./src/WS2812.c:590: _delay_ms(DELAY2);
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
	mov	r3,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r3
	lcall	__delay_ms
	pop	ar4
;	./src/WS2812.c:577: for (uint8_t j = 0; j < 13; j++)
	inc	r4
;	./src/WS2812.c:592: }
	ljmp	00112$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
