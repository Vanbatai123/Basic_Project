;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module N76_UCS1903
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_begin_PARM_2
	.globl _writeXram_PARM_2
	.globl _timer2
	.globl _PIN_INT_FUCTION
	.globl _ADC_INT_FUCTION
	.globl _main
	.globl _TIM2_begin
	.globl _Twinkle
	.globl _writeXram
	.globl _readXram
	.globl _clearAll
	.globl _LED__SendByte_
	.globl _LED__SendOne_
	.globl _LED__SendZero_
	.globl _random2
	.globl _random
	.globl _Erase_APROM
	.globl _APROM_write_byte
	.globl _APROM_read_byte
	.globl __delay_us
	.globl __delay_ms
	.globl _rand
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
	.globl _cnt
	.globl __status
	.globl _effect
	.globl __delay
	.globl _NUM_LEDS
	.globl _showStrip
	.globl _setPixel
	.globl _setAll
	.globl _FadeInOut
	.globl _Strobe
	.globl _CylonBounce
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_NUM_LEDS::
	.ds 2
__delay::
	.ds 2
_effect::
	.ds 1
__status::
	.ds 1
_cnt::
	.ds 1
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
_FadeInOut_green_65536_99:
	.ds 1
_FadeInOut_g_65536_100:
	.ds 1
_FadeInOut_r_65536_100:
	.ds 1
_FadeInOut_curEffect_65536_100:
	.ds 1
_FadeInOut_k_131072_104:
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
_CylonBounce_green_65536_112:
	.ds 1
_CylonBounce_curEffect_65536_113:
	.ds 1
_CylonBounce_i_131072_114:
	.ds 2
_CylonBounce_j_262144_121:
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
_TwinkleRandom_Count_65536_130:
	.ds 2
_TwinkleRandom_curEffect_65536_131:
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
_rainbowCycle_j_65536_147:
	.ds 2
_rainbowCycle_curEffect_65536_147:
	.ds 1
_Wheel_c_65536_154:
	.ds 3
_theaterChase_PARM_2:
	.ds 1
_theaterChase_PARM_3:
	.ds 1
_theaterChase_PARM_4:
	.ds 2
_theaterChase_j_131072_160:
	.ds 2
_theaterChaseRainbow_c_65536_171:
	.ds 3
_theaterChaseRainbow_curEffect_65536_171:
	.ds 1
_theaterChaseRainbow_j_131072_172:
	.ds 2
_theaterChaseRainbow_q_262144_174:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_writeXram_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_TIM2_begin_PARM_2:
	.ds 2
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_timer2
	.ds	5
	reti
	.ds	7
	ljmp	_PIN_INT_FUCTION
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ADC_INT_FUCTION
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	./N76_UCS1903.c:48: uint16_t NUM_LEDS =	10;
	mov	_NUM_LEDS,#0x0a
	mov	(_NUM_LEDS + 1),#0x00
;	./N76_UCS1903.c:49: uint16_t _delay =	4096;
	mov	__delay,#0x00
	mov	(__delay + 1),#0x10
;	./N76_UCS1903.c:50: uint8_t effect=0;
	mov	_effect,#0x00
;	./N76_UCS1903.c:51: uint8_t _status=0;
	mov	__status,#0x00
;	./N76_UCS1903.c:52: uint8_t cnt=0;
	mov	_cnt,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'random'
;------------------------------------------------------------
;howbig                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	./N76_UCS1903.c:80: uint16_t random(uint16_t howbig)
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
;	./N76_UCS1903.c:82: if (howbig == 0)
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	./N76_UCS1903.c:84: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	./N76_UCS1903.c:86: return rand() % howbig;
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
;	./N76_UCS1903.c:87: }
	ljmp	__moduint
;------------------------------------------------------------
;Allocation info for local variables in function 'random2'
;------------------------------------------------------------
;howbig                    Allocated with name '_random2_PARM_2'
;howsmall                  Allocated to registers r6 r7 
;diff                      Allocated to registers 
;------------------------------------------------------------
;	./N76_UCS1903.c:89: uint16_t random2(uint16_t howsmall, uint16_t howbig)
;	-----------------------------------------
;	 function random2
;	-----------------------------------------
_random2:
	mov	r6,dpl
	mov	r7,dph
;	./N76_UCS1903.c:91: if (howsmall >= howbig)
	clr	c
	mov	a,r6
	subb	a,_random2_PARM_2
	mov	a,r7
	subb	a,(_random2_PARM_2 + 1)
	jc	00102$
;	./N76_UCS1903.c:93: return howsmall;
	mov	dpl,r6
	mov	dph,r7
	ret
00102$:
;	./N76_UCS1903.c:95: uint16_t diff = howbig - howsmall;
	mov	a,_random2_PARM_2
	clr	c
	subb	a,r6
	mov	dpl,a
	mov	a,(_random2_PARM_2 + 1)
	subb	a,r7
	mov	dph,a
;	./N76_UCS1903.c:96: return random(diff) + howsmall;
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
;	./N76_UCS1903.c:97: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendZero_'
;------------------------------------------------------------
;	./N76_UCS1903.c:99: void LED__SendZero_()
;	-----------------------------------------
;	 function LED__SendZero_
;	-----------------------------------------
_LED__SendZero_:
;	./N76_UCS1903.c:101: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
;	./N76_UCS1903.c:102: _nop_();
	nop
;	./N76_UCS1903.c:103: _nop_();
	nop
;	./N76_UCS1903.c:104: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./N76_UCS1903.c:105: _nop_();
	nop
;	./N76_UCS1903.c:106: _nop_();
	nop
;	./N76_UCS1903.c:107: _nop_();
	nop
;	./N76_UCS1903.c:108: _nop_();
	nop
;	./N76_UCS1903.c:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendOne_'
;------------------------------------------------------------
;	./N76_UCS1903.c:110: void LED__SendOne_()
;	-----------------------------------------
;	 function LED__SendOne_
;	-----------------------------------------
_LED__SendOne_:
;	./N76_UCS1903.c:112: setb(LED_PORT, LED_PIN);
	orl	_p0,#0x40
;	./N76_UCS1903.c:113: _nop_();
	nop
;	./N76_UCS1903.c:114: _nop_();
	nop
;	./N76_UCS1903.c:115: _nop_();
	nop
;	./N76_UCS1903.c:116: _nop_();
	nop
;	./N76_UCS1903.c:117: _nop_();
	nop
;	./N76_UCS1903.c:118: _nop_();
	nop
;	./N76_UCS1903.c:119: _nop_();
	nop
;	./N76_UCS1903.c:120: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./N76_UCS1903.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LED__SendByte_'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	./N76_UCS1903.c:122: void LED__SendByte_(uint8_t dat)
;	-----------------------------------------
;	 function LED__SendByte_
;	-----------------------------------------
_LED__SendByte_:
;	./N76_UCS1903.c:124: if (dat & 0x80)
	mov	a,dpl
	mov	r7,a
	jnb	acc.7,00102$
;	./N76_UCS1903.c:125: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00103$
00102$:
;	./N76_UCS1903.c:127: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00103$:
;	./N76_UCS1903.c:128: if (dat & 0x40)
	mov	a,r7
	jnb	acc.6,00105$
;	./N76_UCS1903.c:129: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00106$
00105$:
;	./N76_UCS1903.c:131: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00106$:
;	./N76_UCS1903.c:132: if (dat & 0x20)
	mov	a,r7
	jnb	acc.5,00108$
;	./N76_UCS1903.c:133: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00109$
00108$:
;	./N76_UCS1903.c:135: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00109$:
;	./N76_UCS1903.c:136: if (dat & 0x10)
	mov	a,r7
	jnb	acc.4,00111$
;	./N76_UCS1903.c:137: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00112$
00111$:
;	./N76_UCS1903.c:139: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00112$:
;	./N76_UCS1903.c:140: if (dat & 0x08)
	mov	a,r7
	jnb	acc.3,00114$
;	./N76_UCS1903.c:141: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00115$
00114$:
;	./N76_UCS1903.c:143: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00115$:
;	./N76_UCS1903.c:144: if (dat & 0x04)
	mov	a,r7
	jnb	acc.2,00117$
;	./N76_UCS1903.c:145: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00118$
00117$:
;	./N76_UCS1903.c:147: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00118$:
;	./N76_UCS1903.c:148: if (dat & 0x02)
	mov	a,r7
	jnb	acc.1,00120$
;	./N76_UCS1903.c:149: LED__SendOne_();
	push	ar7
	lcall	_LED__SendOne_
	pop	ar7
	sjmp	00121$
00120$:
;	./N76_UCS1903.c:151: LED__SendZero_();
	push	ar7
	lcall	_LED__SendZero_
	pop	ar7
00121$:
;	./N76_UCS1903.c:152: if (dat & 0x01)
	mov	a,r7
	jnb	acc.0,00123$
;	./N76_UCS1903.c:153: LED__SendOne_();
	ljmp	_LED__SendOne_
00123$:
;	./N76_UCS1903.c:155: LED__SendZero_();
;	./N76_UCS1903.c:156: }
	ljmp	_LED__SendZero_
;------------------------------------------------------------
;Allocation info for local variables in function 'clearAll'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./N76_UCS1903.c:158: void clearAll()
;	-----------------------------------------
;	 function clearAll
;	-----------------------------------------
_clearAll:
;	./N76_UCS1903.c:160: for (uint16_t i = 0; i < 300; i++)
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
;	./N76_UCS1903.c:162: LED__SendByte_(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_LED__SendByte_
;	./N76_UCS1903.c:163: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
;	./N76_UCS1903.c:164: LED__SendByte_(0);
	mov	dpl,#0x00
	lcall	_LED__SendByte_
	pop	ar6
	pop	ar7
;	./N76_UCS1903.c:160: for (uint16_t i = 0; i < 300; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	./N76_UCS1903.c:166: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readXram'
;------------------------------------------------------------
;addr                      Allocated to registers 
;------------------------------------------------------------
;	./N76_UCS1903.c:168: uint8_t readXram(uint16_t addr)
;	-----------------------------------------
;	 function readXram
;	-----------------------------------------
_readXram:
;	./N76_UCS1903.c:170: __asm__("MOVX A,@DPTR");
	MOVX	A,@DPTR
;	./N76_UCS1903.c:171: __asm__("MOV DPL,A");
	MOV	DPL,A
;	./N76_UCS1903.c:172: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeXram'
;------------------------------------------------------------
;value                     Allocated with name '_writeXram_PARM_2'
;addr                      Allocated to registers 
;------------------------------------------------------------
;	./N76_UCS1903.c:173: void writeXram(uint16_t addr, uint8_t value)
;	-----------------------------------------
;	 function writeXram
;	-----------------------------------------
_writeXram:
;	./N76_UCS1903.c:175: __asm__("MOV A,_writeXram_PARM_2");
	MOV	A,_writeXram_PARM_2
;	./N76_UCS1903.c:176: __asm__("MOVX @DPTR,A");
	MOVX	@DPTR,A
;	./N76_UCS1903.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showStrip'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;g                         Allocated to registers r4 
;r                         Allocated to registers r3 
;b                         Allocated to registers r6 
;------------------------------------------------------------
;	./N76_UCS1903.c:179: void showStrip()
;	-----------------------------------------
;	 function showStrip
;	-----------------------------------------
_showStrip:
;	./N76_UCS1903.c:181: for (uint8_t i = 0; i < NUM_LEDS; ++i)
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
;	./N76_UCS1903.c:184: g = readXram(i * 3);
	mov	__mulint_PARM_2,r7
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0003
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov  r6,dph
	push	ar6
	push	ar5
	lcall	_readXram
	mov	r4,dpl
	pop	ar5
	pop	ar6
;	./N76_UCS1903.c:185: r = readXram(i * 3 + 1);
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
	lcall	_readXram
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
;	./N76_UCS1903.c:186: b = readXram(i * 3 + 2);
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
	lcall	_readXram
	mov	r6,dpl
	pop	ar3
	pop	ar4
;	./N76_UCS1903.c:188: LED__SendByte_(g);
	mov	dpl,r4
	push	ar6
	push	ar3
	lcall	_LED__SendByte_
	pop	ar3
;	./N76_UCS1903.c:189: LED__SendByte_(r);
	mov	dpl,r3
	lcall	_LED__SendByte_
	pop	ar6
;	./N76_UCS1903.c:190: LED__SendByte_(b);
	mov	dpl,r6
	lcall	_LED__SendByte_
	pop	ar7
;	./N76_UCS1903.c:181: for (uint8_t i = 0; i < NUM_LEDS; ++i)
	inc	r7
;	./N76_UCS1903.c:192: }
	ljmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'setPixel'
;------------------------------------------------------------
;green                     Allocated with name '_setPixel_PARM_2'
;red                       Allocated with name '_setPixel_PARM_3'
;blue                      Allocated with name '_setPixel_PARM_4'
;Pixel                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./N76_UCS1903.c:195: void setPixel(uint16_t Pixel, uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setPixel
;	-----------------------------------------
_setPixel:
	mov	r6,dpl
	mov	r7,dph
;	./N76_UCS1903.c:197: writeXram(Pixel * 3, green);
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov  r7,dph
	mov	_writeXram_PARM_2,_setPixel_PARM_2
	push	ar7
	push	ar6
	lcall	_writeXram
	pop	ar6
	pop	ar7
;	./N76_UCS1903.c:198: writeXram(Pixel * 3 + 1, red);
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	_writeXram_PARM_2,_setPixel_PARM_3
	push	ar7
	push	ar6
	lcall	_writeXram
	pop	ar6
	pop	ar7
;	./N76_UCS1903.c:199: writeXram(Pixel * 3 + 2, blue);
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	_writeXram_PARM_2,_setPixel_PARM_4
;	./N76_UCS1903.c:200: }
	ljmp	_writeXram
;------------------------------------------------------------
;Allocation info for local variables in function 'setAll'
;------------------------------------------------------------
;red                       Allocated with name '_setAll_PARM_2'
;blue                      Allocated with name '_setAll_PARM_3'
;green                     Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	./N76_UCS1903.c:203: void setAll(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function setAll
;	-----------------------------------------
_setAll:
	mov	r7,dpl
;	./N76_UCS1903.c:205: for (int16_t i = 0; i < NUM_LEDS; ++i)
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
;	./N76_UCS1903.c:207: setPixel(i, green, red, blue);
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
;	./N76_UCS1903.c:205: for (int16_t i = 0; i < NUM_LEDS; ++i)
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
;	./N76_UCS1903.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FadeInOut'
;------------------------------------------------------------
;red                       Allocated with name '_FadeInOut_PARM_2'
;blue                      Allocated with name '_FadeInOut_PARM_3'
;green                     Allocated with name '_FadeInOut_green_65536_99'
;g                         Allocated with name '_FadeInOut_g_65536_100'
;r                         Allocated with name '_FadeInOut_r_65536_100'
;b                         Allocated to registers 
;curEffect                 Allocated with name '_FadeInOut_curEffect_65536_100'
;k                         Allocated to registers r4 r5 
;k                         Allocated with name '_FadeInOut_k_131072_104'
;------------------------------------------------------------
;	./N76_UCS1903.c:210: void FadeInOut(uint8_t green, uint8_t red, uint8_t blue)
;	-----------------------------------------
;	 function FadeInOut
;	-----------------------------------------
_FadeInOut:
	mov	_FadeInOut_green_65536_99,dpl
;	./N76_UCS1903.c:213: uint8_t curEffect = effect;
	mov	_FadeInOut_curEffect_65536_100,_effect
;	./N76_UCS1903.c:215: for (int16_t k = 0; k < 255; k = k + NUM_LEDS/50)
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
;	./N76_UCS1903.c:217: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_FadeInOut_curEffect_65536_100,00146$
	sjmp	00102$
00146$:
	mov	__status,#0x12
	ret
00102$:
;	./N76_UCS1903.c:219: r = k * red / 256;
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
;	./N76_UCS1903.c:220: g = k * green / 256;
	mov	__mulint_PARM_2,_FadeInOut_green_65536_99
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
;	./N76_UCS1903.c:221: b = k * blue / 256;
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
;	./N76_UCS1903.c:222: setAll(g, r, b);
	mov	_setAll_PARM_2,r2
	mov	dpl,r1
	lcall	_setAll
;	./N76_UCS1903.c:223: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:224: _delay_ms(DELAY2);
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
;	./N76_UCS1903.c:215: for (int16_t k = 0; k < 255; k = k + NUM_LEDS/50)
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
;	./N76_UCS1903.c:227: for (int16_t k = 255; k > 0; k = k - NUM_LEDS/25)
	mov	_FadeInOut_k_131072_104,#0xff
	mov	(_FadeInOut_k_131072_104 + 1),#0x00
00111$:
	mov	r2,_FadeInOut_k_131072_104
	mov	r3,(_FadeInOut_k_131072_104 + 1)
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
;	./N76_UCS1903.c:229: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_FadeInOut_curEffect_65536_100,00148$
	sjmp	00105$
00148$:
	mov	__status,#0x12
	ret
00105$:
;	./N76_UCS1903.c:230: r = (k / 256.0) * red;
	mov	dpl,_FadeInOut_k_131072_104
	mov	dph,(_FadeInOut_k_131072_104 + 1)
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
	mov	_FadeInOut_r_65536_100,dpl
;	./N76_UCS1903.c:231: g = (k / 256.0) * green;
	mov	dpl,_FadeInOut_green_65536_99
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
	mov	_FadeInOut_g_65536_100,dpl
;	./N76_UCS1903.c:232: b = (k / 256.0) * blue;
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
;	./N76_UCS1903.c:233: setAll(g, r, b);
	mov	_setAll_PARM_2,_FadeInOut_r_65536_100
	mov	dpl,_FadeInOut_g_65536_100
	lcall	_setAll
;	./N76_UCS1903.c:234: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:235: _delay_ms(DELAY2);
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
;	./N76_UCS1903.c:227: for (int16_t k = 255; k > 0; k = k - NUM_LEDS/25)
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	mov	__divuint_PARM_2,#0x19
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	r4,_FadeInOut_k_131072_104
	mov	r5,(_FadeInOut_k_131072_104 + 1)
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r5
	subb	a,r7
	mov	r7,a
	mov	_FadeInOut_k_131072_104,r6
	mov	(_FadeInOut_k_131072_104 + 1),r7
;	./N76_UCS1903.c:237: }
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
;	./N76_UCS1903.c:239: void Strobe(uint8_t green, uint8_t red, uint8_t blue, int16_t StrobeCount, int16_t FlashDelay, int16_t EndPause)
;	-----------------------------------------
;	 function Strobe
;	-----------------------------------------
_Strobe:
	mov	r7,dpl
;	./N76_UCS1903.c:241: uint8_t curEffect = effect;
	mov	r6,_effect
;	./N76_UCS1903.c:242: for (int16_t j = 0; j < StrobeCount; j++)
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
;	./N76_UCS1903.c:244: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00122$
	sjmp	00102$
00122$:
	mov	__status,#0x12
	ret
00102$:
;	./N76_UCS1903.c:245: setAll(green, red, blue);
	mov	_setAll_PARM_2,_Strobe_PARM_2
	mov	_setAll_PARM_3,_Strobe_PARM_3
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setAll
;	./N76_UCS1903.c:246: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:247: _delay_ms(DELAY2);
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
;	./N76_UCS1903.c:248: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./N76_UCS1903.c:249: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:250: _delay_ms(DELAY2);
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
;	./N76_UCS1903.c:242: for (int16_t j = 0; j < StrobeCount; j++)
	inc	r4
	cjne	r4,#0x00,00123$
	inc	r5
00123$:
	ljmp	00105$
00103$:
;	./N76_UCS1903.c:252: _delay_ms(EndPause);
	mov	r4,_Strobe_PARM_6
	mov	a,(_Strobe_PARM_6 + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	./N76_UCS1903.c:253: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'CylonBounce'
;------------------------------------------------------------
;red                       Allocated with name '_CylonBounce_PARM_2'
;blue                      Allocated with name '_CylonBounce_PARM_3'
;EyeSize                   Allocated with name '_CylonBounce_PARM_4'
;SpeedDelay                Allocated with name '_CylonBounce_PARM_5'
;ReturnDelay               Allocated with name '_CylonBounce_PARM_6'
;green                     Allocated with name '_CylonBounce_green_65536_112'
;curEffect                 Allocated with name '_CylonBounce_curEffect_65536_113'
;i                         Allocated with name '_CylonBounce_i_131072_114'
;j                         Allocated to registers r5 r7 
;i                         Allocated to registers 
;j                         Allocated with name '_CylonBounce_j_262144_121'
;sloc0                     Allocated with name '_CylonBounce_sloc0_1_0'
;sloc1                     Allocated with name '_CylonBounce_sloc1_1_0'
;------------------------------------------------------------
;	./N76_UCS1903.c:255: void CylonBounce(uint8_t green, uint8_t red, uint8_t blue, int16_t EyeSize, int16_t SpeedDelay, int16_t ReturnDelay)
;	-----------------------------------------
;	 function CylonBounce
;	-----------------------------------------
_CylonBounce:
	mov	_CylonBounce_green_65536_112,dpl
;	./N76_UCS1903.c:257: uint8_t curEffect = effect;
	mov	_CylonBounce_curEffect_65536_113,_effect
;	./N76_UCS1903.c:258: for (int16_t i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	clr	a
	mov	_CylonBounce_i_131072_114,a
	mov	(_CylonBounce_i_131072_114 + 1),a
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
	mov	r6,_CylonBounce_i_131072_114
	mov	r7,(_CylonBounce_i_131072_114 + 1)
	clr	c
	mov	a,r6
	subb	a,r0
	mov	a,r7
	subb	a,r1
	jc	00163$
	ljmp	00104$
00163$:
;	./N76_UCS1903.c:260: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./N76_UCS1903.c:261: setPixel(i, red / 10, green / 10, blue / 10);
	mov	r6,_CylonBounce_PARM_2
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r1,_CylonBounce_green_65536_112
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
	mov	dpl,_CylonBounce_i_131072_114
	mov	dph,(_CylonBounce_i_131072_114 + 1)
	push	ar6
	push	ar1
	push	ar0
	lcall	_setPixel
	pop	ar0
	pop	ar1
	pop	ar6
;	./N76_UCS1903.c:262: for (int16_t j = 1; j <= EyeSize; j++)
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
;	./N76_UCS1903.c:264: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_CylonBounce_curEffect_65536_113,00165$
	sjmp	00102$
00165$:
	mov	__status,#0x12
	ret
00102$:
;	./N76_UCS1903.c:265: setPixel(i + j, green, red, blue);
	mov	a,r5
	add	a,_CylonBounce_i_131072_114
	mov	dpl,a
	mov	a,r7
	addc	a,(_CylonBounce_i_131072_114 + 1)
	mov	dph,a
	mov	_setPixel_PARM_2,_CylonBounce_green_65536_112
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
;	./N76_UCS1903.c:262: for (int16_t j = 1; j <= EyeSize; j++)
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r7
	sjmp	00110$
00103$:
;	./N76_UCS1903.c:267: setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
	mov	a,_CylonBounce_PARM_4
	add	a,_CylonBounce_i_131072_114
	mov	r5,a
	mov	a,(_CylonBounce_PARM_4 + 1)
	addc	a,(_CylonBounce_i_131072_114 + 1)
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
;	./N76_UCS1903.c:268: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:269: _delay_ms(DELAY2);
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
;	./N76_UCS1903.c:258: for (int16_t i = 0; i < NUM_LEDS - EyeSize - 2; i++)
	inc	_CylonBounce_i_131072_114
	clr	a
	cjne	a,_CylonBounce_i_131072_114,00168$
	inc	(_CylonBounce_i_131072_114 + 1)
00168$:
	ljmp	00113$
00104$:
;	./N76_UCS1903.c:272: _delay_ms(ReturnDelay);
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
;	./N76_UCS1903.c:274: for (int16_t i = NUM_LEDS - EyeSize - 2; i > 0; i--)
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
;	./N76_UCS1903.c:276: setAll(0, 0, 0);
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
;	./N76_UCS1903.c:277: setPixel(i, red / 10, green / 10, blue / 10);
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
	mov	r1,_CylonBounce_green_65536_112
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
;	./N76_UCS1903.c:278: for (int16_t j = 1; j <= EyeSize; j++)
	mov	_CylonBounce_j_262144_121,#0x01
	mov	(_CylonBounce_j_262144_121 + 1),#0x00
;	./N76_UCS1903.c:288: _delay_ms(ReturnDelay);
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	./N76_UCS1903.c:278: for (int16_t j = 1; j <= EyeSize; j++)
00116$:
	clr	c
	mov	a,_CylonBounce_PARM_4
	subb	a,_CylonBounce_j_262144_121
	mov	a,(_CylonBounce_PARM_4 + 1)
	xrl	a,#0x80
	mov	b,(_CylonBounce_j_262144_121 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00107$
;	./N76_UCS1903.c:280: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_CylonBounce_curEffect_65536_113,00171$
	sjmp	00106$
00171$:
	mov	__status,#0x12
	ret
00106$:
;	./N76_UCS1903.c:281: setPixel(i + j, green, red, blue);
	mov	a,_CylonBounce_j_262144_121
	add	a,r2
	mov	dpl,a
	mov	a,(_CylonBounce_j_262144_121 + 1)
	addc	a,r3
	mov	dph,a
	mov	_setPixel_PARM_2,_CylonBounce_green_65536_112
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
;	./N76_UCS1903.c:278: for (int16_t j = 1; j <= EyeSize; j++)
	inc	_CylonBounce_j_262144_121
	clr	a
	cjne	a,_CylonBounce_j_262144_121,00116$
	inc	(_CylonBounce_j_262144_121 + 1)
	sjmp	00116$
00107$:
;	./N76_UCS1903.c:283: setPixel(i + EyeSize + 1, red / 10, green / 10, blue / 10);
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
;	./N76_UCS1903.c:284: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:285: _delay_ms(DELAY2);
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
;	./N76_UCS1903.c:274: for (int16_t i = NUM_LEDS - EyeSize - 2; i > 0; i--)
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
;	./N76_UCS1903.c:288: _delay_ms(ReturnDelay);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	./N76_UCS1903.c:289: }
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
;	./N76_UCS1903.c:291: void Twinkle(uint8_t green, uint8_t red, uint8_t blue, int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne)
;	-----------------------------------------
;	 function Twinkle
;	-----------------------------------------
_Twinkle:
	mov	r7,dpl
;	./N76_UCS1903.c:293: uint8_t curEffect = effect;
	mov	r6,_effect
;	./N76_UCS1903.c:294: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_setAll
	pop	ar6
	pop	ar7
;	./N76_UCS1903.c:295: for (int16_t i = 0; i < Count; i++)
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
;	./N76_UCS1903.c:297: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00128$
	sjmp	00102$
00128$:
	mov	__status,#0x12
	ret
00102$:
;	./N76_UCS1903.c:298: setPixel(random(NUM_LEDS), green, red, blue);
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
;	./N76_UCS1903.c:299: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:300: _delay_ms(SpeedDelay);
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
;	./N76_UCS1903.c:301: if (OnlyOne)
	mov	a,_Twinkle_PARM_6
	jz	00108$
;	./N76_UCS1903.c:303: setAll(0, 0, 0);
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
;	./N76_UCS1903.c:295: for (int16_t i = 0; i < Count; i++)
	inc	r4
	cjne	r4,#0x00,00130$
	inc	r5
00130$:
	ljmp	00107$
00105$:
;	./N76_UCS1903.c:307: _delay_ms(SpeedDelay);
	mov	r4,_Twinkle_PARM_5
	mov	a,(_Twinkle_PARM_5 + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	./N76_UCS1903.c:308: }
	ljmp	__delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'TwinkleRandom'
;------------------------------------------------------------
;SpeedDelay                Allocated with name '_TwinkleRandom_PARM_2'
;OnlyOne                   Allocated with name '_TwinkleRandom_PARM_3'
;Count                     Allocated with name '_TwinkleRandom_Count_65536_130'
;curEffect                 Allocated with name '_TwinkleRandom_curEffect_65536_131'
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	./N76_UCS1903.c:310: void TwinkleRandom(int16_t Count, int16_t SpeedDelay, uint8_t OnlyOne)
;	-----------------------------------------
;	 function TwinkleRandom
;	-----------------------------------------
_TwinkleRandom:
	mov	_TwinkleRandom_Count_65536_130,dpl
	mov	(_TwinkleRandom_Count_65536_130 + 1),dph
;	./N76_UCS1903.c:312: uint8_t curEffect = effect;
	mov	_TwinkleRandom_curEffect_65536_131,_effect
;	./N76_UCS1903.c:313: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./N76_UCS1903.c:314: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:315: for (int16_t i = 0; i < Count; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00107$:
	clr	c
	mov	a,r3
	subb	a,_TwinkleRandom_Count_65536_130
	mov	a,r4
	xrl	a,#0x80
	mov	b,(_TwinkleRandom_Count_65536_130 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00127$
	ljmp	00105$
00127$:
;	./N76_UCS1903.c:317: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_TwinkleRandom_curEffect_65536_131,00128$
	sjmp	00102$
00128$:
	mov	__status,#0x12
	ret
00102$:
;	./N76_UCS1903.c:318: setPixel(random(NUM_LEDS), random(255), random(255), random(255));
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
;	./N76_UCS1903.c:319: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:320: _delay_ms(DELAY);
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
;	./N76_UCS1903.c:321: if (OnlyOne)
	mov	a,_TwinkleRandom_PARM_3
	jz	00108$
;	./N76_UCS1903.c:323: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	push	ar4
	push	ar3
	lcall	_setAll
	pop	ar3
	pop	ar4
00108$:
;	./N76_UCS1903.c:315: for (int16_t i = 0; i < Count; i++)
	inc	r3
	cjne	r3,#0x00,00130$
	inc	r4
00130$:
	ljmp	00107$
00105$:
;	./N76_UCS1903.c:327: _delay_us(SpeedDelay);
	mov	r4,_TwinkleRandom_PARM_2
	mov	a,(_TwinkleRandom_PARM_2 + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	./N76_UCS1903.c:328: }
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
;	./N76_UCS1903.c:330: void Sparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay)
;	-----------------------------------------
;	 function Sparkle
;	-----------------------------------------
_Sparkle:
	mov	r7,dpl
;	./N76_UCS1903.c:332: int16_t Pixel = random(NUM_LEDS);
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	push	ar7
	lcall	_random
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
;	./N76_UCS1903.c:333: setPixel(Pixel, green, red, blue);
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_Sparkle_PARM_2
	mov	_setPixel_PARM_4,_Sparkle_PARM_3
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	_setPixel
;	./N76_UCS1903.c:334: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:335: _delay_ms(DELAY);
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
;	./N76_UCS1903.c:336: setPixel(Pixel, 0, 0, 0);
	mov	_setPixel_PARM_2,#0x00
	mov	_setPixel_PARM_3,#0x00
	mov	_setPixel_PARM_4,#0x00
	mov	dpl,r5
	mov	dph,r6
;	./N76_UCS1903.c:337: }
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
;	./N76_UCS1903.c:339: void SnowSparkle(uint8_t green, uint8_t red, uint8_t blue, int16_t SparkleDelay, int16_t SpeedDelay)
;	-----------------------------------------
;	 function SnowSparkle
;	-----------------------------------------
_SnowSparkle:
	mov	r7,dpl
;	./N76_UCS1903.c:341: setAll(green, red, blue);
	mov	_setAll_PARM_2,_SnowSparkle_PARM_2
	mov	_setAll_PARM_3,_SnowSparkle_PARM_3
	mov	dpl,r7
	push	ar7
	lcall	_setAll
;	./N76_UCS1903.c:343: int16_t Pixel = random(NUM_LEDS);
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	lcall	_random
	mov	r5,dpl
	mov	r6,dph
;	./N76_UCS1903.c:344: setPixel(Pixel, 0xFF, 0xFF, 0xFF);
	mov	_setPixel_PARM_2,#0xff
	mov	_setPixel_PARM_3,#0xff
	mov	_setPixel_PARM_4,#0xff
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	_setPixel
;	./N76_UCS1903.c:345: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:346: _delay_ms(SparkleDelay);
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
;	./N76_UCS1903.c:347: setPixel(Pixel, green, red, blue);
	mov	_setPixel_PARM_2,r7
	mov	_setPixel_PARM_3,_SnowSparkle_PARM_2
	mov	_setPixel_PARM_4,_SnowSparkle_PARM_3
	mov	dpl,r5
	mov	dph,r6
	lcall	_setPixel
;	./N76_UCS1903.c:348: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:349: _delay_ms(DELAY);
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
;	./N76_UCS1903.c:350: }
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
;	./N76_UCS1903.c:352: void colorWipe(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay)
;	-----------------------------------------
;	 function colorWipe
;	-----------------------------------------
_colorWipe:
	mov	r7,dpl
;	./N76_UCS1903.c:354: uint8_t curEffect = effect;
	mov	r6,_effect
;	./N76_UCS1903.c:355: for (uint16_t i = 0; i < NUM_LEDS; i++)
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
;	./N76_UCS1903.c:357: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00122$
	sjmp	00102$
00122$:
	mov	__status,#0x12
	ret
00102$:
;	./N76_UCS1903.c:358: setPixel(i, green, red, blue);
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
;	./N76_UCS1903.c:359: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:360: _delay_ms(DELAY2+1);
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
;	./N76_UCS1903.c:355: for (uint16_t i = 0; i < NUM_LEDS; i++)
	inc	r4
	cjne	r4,#0x00,00123$
	inc	r5
00123$:
;	./N76_UCS1903.c:362: }
	ljmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'rainbowCycle'
;------------------------------------------------------------
;SpeedDelay                Allocated to registers 
;c                         Allocated to registers r0 r1 r2 
;i                         Allocated to registers r3 r4 
;j                         Allocated with name '_rainbowCycle_j_65536_147'
;curEffect                 Allocated with name '_rainbowCycle_curEffect_65536_147'
;------------------------------------------------------------
;	./N76_UCS1903.c:364: void rainbowCycle(int16_t SpeedDelay)
;	-----------------------------------------
;	 function rainbowCycle
;	-----------------------------------------
_rainbowCycle:
;	./N76_UCS1903.c:368: uint8_t curEffect = effect;
	mov	_rainbowCycle_curEffect_65536_147,_effect
;	./N76_UCS1903.c:370: for (j = 0; j < 256 * 5; j++)
	clr	a
	mov	_rainbowCycle_j_65536_147,a
	mov	(_rainbowCycle_j_65536_147 + 1),a
;	./N76_UCS1903.c:372: for (i = 0; i < NUM_LEDS; i++)
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
;	./N76_UCS1903.c:374: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_rainbowCycle_curEffect_65536_147,00129$
	sjmp	00102$
00129$:
	mov	__status,#0x12
	ret
00102$:
;	./N76_UCS1903.c:375: c = Wheel(((i * 256 / NUM_LEDS) + j) & 255);
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
	mov	a,_rainbowCycle_j_65536_147
	add	a,r1
	mov	dpl,a
	lcall	_Wheel
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	pop	ar3
	pop	ar4
;	./N76_UCS1903.c:376: setPixel(i, *c, *(c + 1), *(c + 2));
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
;	./N76_UCS1903.c:372: for (i = 0; i < NUM_LEDS; i++)
	inc	r3
	cjne	r3,#0x00,00130$
	inc	r4
00130$:
	ljmp	00106$
00103$:
;	./N76_UCS1903.c:378: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:379: _delay_ms(DELAY);
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
;	./N76_UCS1903.c:370: for (j = 0; j < 256 * 5; j++)
	inc	_rainbowCycle_j_65536_147
	clr	a
	cjne	a,_rainbowCycle_j_65536_147,00131$
	inc	(_rainbowCycle_j_65536_147 + 1)
00131$:
	mov	r5,_rainbowCycle_j_65536_147
	mov	r6,(_rainbowCycle_j_65536_147 + 1)
	mov	a,#0x100 - 0x05
	add	a,r6
	jc	00132$
	ljmp	00114$
00132$:
;	./N76_UCS1903.c:381: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Wheel'
;------------------------------------------------------------
;c                         Allocated with name '_Wheel_c_65536_154'
;WheelPos                  Allocated to registers r6 
;curEffect                 Allocated to registers 
;------------------------------------------------------------
;	./N76_UCS1903.c:384: uint8_t *Wheel(uint8_t WheelPos)
;	-----------------------------------------
;	 function Wheel
;	-----------------------------------------
_Wheel:
	mov	r7,dpl
;	./N76_UCS1903.c:389: if (WheelPos < 85)
	cjne	r7,#0x55,00119$
00119$:
	jnc	00105$
;	./N76_UCS1903.c:391: c[0] = WheelPos * 3;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	_Wheel_c_65536_154,a
;	./N76_UCS1903.c:392: c[1] = 255 - WheelPos * 3;
	mov	ar6,r7
	mov	a,r6
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	(_Wheel_c_65536_154 + 0x0001),a
;	./N76_UCS1903.c:393: c[2] = 0;
	mov	(_Wheel_c_65536_154 + 0x0002),#0x00
	sjmp	00106$
00105$:
;	./N76_UCS1903.c:395: else if (WheelPos < 170)
	cjne	r7,#0xaa,00121$
00121$:
	jnc	00102$
;	./N76_UCS1903.c:397: WheelPos -= 85;
	mov	ar6,r7
	mov	a,r6
	add	a,#0xab
;	./N76_UCS1903.c:398: c[0] = 255 - WheelPos * 3;
	mov	r6,a
	mov	r5,a
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	_Wheel_c_65536_154,a
;	./N76_UCS1903.c:399: c[1] = 0;
	mov	(_Wheel_c_65536_154 + 0x0001),#0x00
;	./N76_UCS1903.c:400: c[2] = WheelPos * 3;
	mov	a,r6
	mov	b,#0x03
	mul	ab
	mov	(_Wheel_c_65536_154 + 0x0002),a
	sjmp	00106$
00102$:
;	./N76_UCS1903.c:404: WheelPos -= 170;
	mov	a,r7
	add	a,#0x56
;	./N76_UCS1903.c:405: c[0] = 0;
;	./N76_UCS1903.c:406: c[1] = WheelPos * 3;
	mov	r7,a
	mov	_Wheel_c_65536_154,#0x00
	mov	b,#0x03
	mul	ab
	mov	(_Wheel_c_65536_154 + 0x0001),a
;	./N76_UCS1903.c:407: c[2] = 255 - WheelPos * 3;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	(_Wheel_c_65536_154 + 0x0002),a
00106$:
;	./N76_UCS1903.c:410: return c;
	mov	dptr,#_Wheel_c_65536_154
	mov	b,#0x40
;	./N76_UCS1903.c:411: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'theaterChase'
;------------------------------------------------------------
;red                       Allocated with name '_theaterChase_PARM_2'
;blue                      Allocated with name '_theaterChase_PARM_3'
;SpeedDelay                Allocated with name '_theaterChase_PARM_4'
;green                     Allocated to registers r7 
;curEffect                 Allocated to registers r6 
;j                         Allocated with name '_theaterChase_j_131072_160'
;q                         Allocated to registers r2 r3 
;i                         Allocated to registers r0 r1 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./N76_UCS1903.c:413: void theaterChase(uint8_t green, uint8_t red, uint8_t blue, int16_t SpeedDelay)
;	-----------------------------------------
;	 function theaterChase
;	-----------------------------------------
_theaterChase:
	mov	r7,dpl
;	./N76_UCS1903.c:415: uint8_t curEffect = effect;
	mov	r6,_effect
;	./N76_UCS1903.c:417: for (int16_t j = 0; j < 10; j++)
	clr	a
	mov	_theaterChase_j_131072_160,a
	mov	(_theaterChase_j_131072_160 + 1),a
00119$:
	mov	r2,_theaterChase_j_131072_160
	mov	r3,(_theaterChase_j_131072_160 + 1)
	clr	c
	mov	a,r2
	subb	a,#0x0a
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00163$
	ret
00163$:
;	./N76_UCS1903.c:419: for (int16_t q = 0; q < 3; q++)
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
;	./N76_UCS1903.c:421: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
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
;	./N76_UCS1903.c:423: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00166$
	sjmp	00102$
00166$:
	mov	__status,#0x12
	ret
00102$:
;	./N76_UCS1903.c:424: setPixel(i + q, green, red, blue); // turn every third pixel on
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
;	./N76_UCS1903.c:421: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
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
;	./N76_UCS1903.c:426: showStrip();
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_showStrip
;	./N76_UCS1903.c:428: _delay_ms(DELAY);
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
;	./N76_UCS1903.c:430: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
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
;	./N76_UCS1903.c:432: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,r6
	cjne	a,_effect,00168$
	sjmp	00105$
00168$:
	mov	__status,#0x12
	ret
00105$:
;	./N76_UCS1903.c:433: setPixel(i + q, 0, 0, 0); // turn every third pixel off
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
;	./N76_UCS1903.c:430: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
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
;	./N76_UCS1903.c:419: for (int16_t q = 0; q < 3; q++)
	inc	r2
	cjne	r2,#0x00,00169$
	inc	r3
00169$:
	ljmp	00116$
00120$:
;	./N76_UCS1903.c:417: for (int16_t j = 0; j < 10; j++)
	inc	_theaterChase_j_131072_160
	clr	a
	cjne	a,_theaterChase_j_131072_160,00170$
	inc	(_theaterChase_j_131072_160 + 1)
00170$:
;	./N76_UCS1903.c:437: }
	ljmp	00119$
;------------------------------------------------------------
;Allocation info for local variables in function 'theaterChaseRainbow'
;------------------------------------------------------------
;SpeedDelay                Allocated to registers 
;c                         Allocated with name '_theaterChaseRainbow_c_65536_171'
;curEffect                 Allocated with name '_theaterChaseRainbow_curEffect_65536_171'
;j                         Allocated with name '_theaterChaseRainbow_j_131072_172'
;q                         Allocated with name '_theaterChaseRainbow_q_262144_174'
;i                         Allocated to registers r1 r2 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./N76_UCS1903.c:439: void theaterChaseRainbow(int16_t SpeedDelay)
;	-----------------------------------------
;	 function theaterChaseRainbow
;	-----------------------------------------
_theaterChaseRainbow:
;	./N76_UCS1903.c:442: uint8_t curEffect = effect;
	mov	_theaterChaseRainbow_curEffect_65536_171,_effect
;	./N76_UCS1903.c:444: for (int16_t j = 0; j < 256; j++)
	clr	a
	mov	_theaterChaseRainbow_j_131072_172,a
	mov	(_theaterChaseRainbow_j_131072_172 + 1),a
00119$:
	mov	r3,_theaterChaseRainbow_j_131072_172
	mov	r4,(_theaterChaseRainbow_j_131072_172 + 1)
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x81
	jc	00163$
	ret
00163$:
;	./N76_UCS1903.c:446: for (int16_t q = 0; q < 3; q++)
	clr	a
	mov	_theaterChaseRainbow_q_262144_174,a
	mov	(_theaterChaseRainbow_q_262144_174 + 1),a
00116$:
	mov	r1,_theaterChaseRainbow_q_262144_174
	mov	r2,(_theaterChaseRainbow_q_262144_174 + 1)
	clr	c
	mov	a,r1
	subb	a,#0x03
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jc	00164$
	ljmp	00120$
00164$:
;	./N76_UCS1903.c:448: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
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
;	./N76_UCS1903.c:450: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_theaterChaseRainbow_curEffect_65536_171,00166$
	sjmp	00102$
00166$:
	mov	__status,#0x12
	ret
00102$:
;	./N76_UCS1903.c:451: c = Wheel((i + j) % 255);
	mov	a,_theaterChaseRainbow_j_131072_172
	add	a,r1
	mov	r5,a
	mov	a,(_theaterChaseRainbow_j_131072_172 + 1)
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
	mov	_theaterChaseRainbow_c_65536_171,dpl
	mov	(_theaterChaseRainbow_c_65536_171 + 1),dph
	mov	(_theaterChaseRainbow_c_65536_171 + 2),b
	pop	ar1
	pop	ar2
;	./N76_UCS1903.c:452: setPixel(i + q, *c, *(c + 1), *(c + 2)); // turn every third pixel on
	mov	a,_theaterChaseRainbow_q_262144_174
	add	a,r1
	mov	r4,a
	mov	a,(_theaterChaseRainbow_q_262144_174 + 1)
	addc	a,r2
	mov	r7,a
	mov	dpl,_theaterChaseRainbow_c_65536_171
	mov	dph,(_theaterChaseRainbow_c_65536_171 + 1)
	mov	b,(_theaterChaseRainbow_c_65536_171 + 2)
	lcall	__gptrget
	mov	_setPixel_PARM_2,a
	mov	a,#0x01
	add	a,_theaterChaseRainbow_c_65536_171
	mov	r3,a
	clr	a
	addc	a,(_theaterChaseRainbow_c_65536_171 + 1)
	mov	r5,a
	mov	r6,(_theaterChaseRainbow_c_65536_171 + 2)
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_setPixel_PARM_3,a
	mov	a,#0x02
	add	a,_theaterChaseRainbow_c_65536_171
	mov	r3,a
	clr	a
	addc	a,(_theaterChaseRainbow_c_65536_171 + 1)
	mov	r5,a
	mov	r6,(_theaterChaseRainbow_c_65536_171 + 2)
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
;	./N76_UCS1903.c:448: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
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
;	./N76_UCS1903.c:454: showStrip();
	lcall	_showStrip
;	./N76_UCS1903.c:456: _delay_ms(DELAY);
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
;	./N76_UCS1903.c:458: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
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
;	./N76_UCS1903.c:460: if (curEffect != effect) {_status=STT_NEW;return;}
	mov	a,_effect
	cjne	a,_theaterChaseRainbow_curEffect_65536_171,00168$
	sjmp	00105$
00168$:
	mov	__status,#0x12
	ret
00105$:
;	./N76_UCS1903.c:461: setPixel(i + q, 0, 0, 0); // turn every third pixel off
	mov	a,_theaterChaseRainbow_q_262144_174
	add	a,r6
	mov	dpl,a
	mov	a,(_theaterChaseRainbow_q_262144_174 + 1)
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
;	./N76_UCS1903.c:458: for (int16_t i = 0; i < NUM_LEDS; i = i + 3)
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
;	./N76_UCS1903.c:446: for (int16_t q = 0; q < 3; q++)
	inc	_theaterChaseRainbow_q_262144_174
	clr	a
	cjne	a,_theaterChaseRainbow_q_262144_174,00169$
	inc	(_theaterChaseRainbow_q_262144_174 + 1)
00169$:
	ljmp	00116$
00120$:
;	./N76_UCS1903.c:444: for (int16_t j = 0; j < 256; j++)
	inc	_theaterChaseRainbow_j_131072_172
	clr	a
	cjne	a,_theaterChaseRainbow_j_131072_172,00170$
	inc	(_theaterChaseRainbow_j_131072_172 + 1)
00170$:
;	./N76_UCS1903.c:465: }
	ljmp	00119$
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_begin'
;------------------------------------------------------------
;reload                    Allocated with name '_TIM2_begin_PARM_2'
;tim_div_x                 Allocated to registers r7 
;------------------------------------------------------------
;	./N76_UCS1903.c:468: void TIM2_begin(uint8_t tim_div_x, uint16_t reload)
;	-----------------------------------------
;	 function TIM2_begin
;	-----------------------------------------
_TIM2_begin:
	mov	r7,dpl
;	./N76_UCS1903.c:475: T2MOD&=~0x70;
	anl	_t2mod,#0x8f
;	./N76_UCS1903.c:476: T2MOD|=tim_div_x;
	mov	a,r7
	orl	_t2mod,a
;	./N76_UCS1903.c:479: T2CON&=~(1<<0);T2MOD|=(1<<7);T2MOD|=(1<<3);
	anl	_t2con,#0xfe
	orl	_t2mod,#0x80
	orl	_t2mod,#0x08
;	./N76_UCS1903.c:482: RCMP2L = reload;//100ms
	mov	_rcmp2l,_TIM2_begin_PARM_2
;	./N76_UCS1903.c:484: RCMP2H = reload>>8;
	mov	_rcmp2h,(_TIM2_begin_PARM_2 + 1)
;	./N76_UCS1903.c:487: TL2 = 0;
	mov	_tl2,#0x00
;	./N76_UCS1903.c:488: TH2 = 0;
	mov	_th2,#0x00
;	./N76_UCS1903.c:491: setb(EIE, 7);                                    // Enable Timer2 interrupt
	orl	_eie,#0x80
;	./N76_UCS1903.c:493: sei();
	orl	_ie,#0x80
;	./N76_UCS1903.c:495: setb(T2CON, 2);                                    // Timer2 run
	orl	_t2con,#0x04
;	./N76_UCS1903.c:496: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	./N76_UCS1903.c:498: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./N76_UCS1903.c:500: effect=APROM_read_byte(ADDR_EFF);
	mov	dptr,#0x2000
	lcall	_APROM_read_byte
	mov	_effect,dpl
;	./N76_UCS1903.c:501: if (effect>=12) effect=0;
	mov	a,#0x100 - 0x0c
	add	a,_effect
	jnc	00102$
	mov	_effect,#0x00
00102$:
;	./N76_UCS1903.c:504: CKDIV = 0x00; // 16MHz
	mov	_ckdiv,#0x00
;	./N76_UCS1903.c:505: clrb(LED_PxM1, LED_PIN);
	anl	_p0m1,#0xbf
;	./N76_UCS1903.c:506: setb(LED_PxM2, LED_PIN);
	orl	_p0m2,#0x40
;	./N76_UCS1903.c:507: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./N76_UCS1903.c:509: clrb(SW_PxM1, SW50_PIN);
	anl	_p0m1,#0xfe
;	./N76_UCS1903.c:510: setb(SW_PxM2, SW50_PIN);
	orl	_p0m2,#0x01
;	./N76_UCS1903.c:512: clrb(SW_PxM1, SW100_PIN);
	anl	_p0m1,#0xfd
;	./N76_UCS1903.c:513: setb(SW_PxM2, SW100_PIN);
	orl	_p0m2,#0x02
;	./N76_UCS1903.c:515: clrb(SW_PxM1, SW150_PIN);
	anl	_p0m1,#0xfb
;	./N76_UCS1903.c:516: setb(SW_PxM2, SW150_PIN);
	orl	_p0m2,#0x04
;	./N76_UCS1903.c:518: clrb(SW_PxM1, SW200_PIN);
	anl	_p0m1,#0xf7
;	./N76_UCS1903.c:519: setb(SW_PxM2, SW200_PIN);
	orl	_p0m2,#0x08
;	./N76_UCS1903.c:521: SW_PORT |= 0x0F;
	orl	_p0,#0x0f
;	./N76_UCS1903.c:523: clrb(BTN_PxM1, BTN_PIN);
	anl	_p0m1,#0xef
;	./N76_UCS1903.c:524: setb(BTN_PxM2, BTN_PIN);
	orl	_p0m2,#0x10
;	./N76_UCS1903.c:525: setb(BTN_PORT, BTN_PIN);
	orl	_p0,#0x10
;	./N76_UCS1903.c:528: ADCCON0&=0xF0;
	anl	_adccon0,#0xf0
;	./N76_UCS1903.c:529: ADCCON0|=0x07;
	orl	_adccon0,#0x07
;	./N76_UCS1903.c:532: clrb(P1M2, 1);
	anl	_p1m2,#0xfd
;	./N76_UCS1903.c:533: setb(P1M1, 1);
	orl	_p1m1,#0x02
;	./N76_UCS1903.c:534: AINDIDS=0x00;
	mov	_aindids,#0x00
;	./N76_UCS1903.c:535: AINDIDS|=(1<<7);
	orl	_aindids,#0x80
;	./N76_UCS1903.c:536: ADCCON1|=(1<<0);
	orl	_adccon1,#0x01
;	./N76_UCS1903.c:537: setb(IE, EADC);//enable interruppt ADC
	orl	_ie,#0x40
;	./N76_UCS1903.c:540: setb(PICON, 6);
	orl	_picon,#0x40
;	./N76_UCS1903.c:541: setb(PINEN, BTN_PIN);// enable falling edge
	orl	_pinen,#0x10
;	./N76_UCS1903.c:542: clrb(PIPEN, BTN_PIN);// disable rasing edge
	anl	_pipen,#0xef
;	./N76_UCS1903.c:545: setb(EIE , 1); // set external interrupt 0 at falling edge
	orl	_eie,#0x02
;	./N76_UCS1903.c:547: clearAll();
	lcall	_clearAll
;	./N76_UCS1903.c:548: TIM2_begin(0x70, 65536-15625);
	mov	_TIM2_begin_PARM_2,#0xf7
	mov	(_TIM2_begin_PARM_2 + 1),#0xc2
	mov	dpl,#0x70
	lcall	_TIM2_begin
;	./N76_UCS1903.c:549: sei();           // Enable global interrupt
	orl	_ie,#0x80
;	./N76_UCS1903.c:551: setb(ADCCON0, 6);
	orl	_adccon0,#0x40
;	./N76_UCS1903.c:552: if (inbit(SW_PORT, SW50_PIN) == 0) NUM_LEDS = 50;
	mov	a,#0x01
	anl	a,_p0
	mov	r7,a
	jnz	00112$
	mov	_NUM_LEDS,#0x32
	mov	(_NUM_LEDS + 1),a
	sjmp	00136$
00112$:
;	./N76_UCS1903.c:553: else if (inbit(SW_PORT, SW100_PIN) == 0) NUM_LEDS = 100;
	mov	a,#0x02
	anl	a,_p0
	clr	c
	rrc	a
	mov	r7,a
	jnz	00109$
	mov	_NUM_LEDS,#0x64
	mov	(_NUM_LEDS + 1),a
	sjmp	00136$
00109$:
;	./N76_UCS1903.c:554: else if (inbit(SW_PORT, SW150_PIN) == 0) NUM_LEDS = 150;
	mov	a,#0x04
	anl	a,_p0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r7,a
	jnz	00106$
	mov	_NUM_LEDS,#0x96
	mov	(_NUM_LEDS + 1),a
	sjmp	00136$
00106$:
;	./N76_UCS1903.c:555: else if (inbit(SW_PORT, SW200_PIN) == 0) NUM_LEDS = 200;
	mov	a,#0x08
	anl	a,_p0
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
	jnz	00136$
	mov	_NUM_LEDS,#0xc8
	mov	(_NUM_LEDS + 1),a
;	./N76_UCS1903.c:557: while (1)
00136$:
;	./N76_UCS1903.c:559: switch (effect)
	mov	a,_effect
	add	a,#0xff - 0x0b
	jnc	00189$
	ljmp	00132$
00189$:
	mov	a,_effect
	add	a,#(00190$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_effect
	add	a,#(00191$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00190$:
	.db	00114$
	.db	00119$
	.db	00120$
	.db	00121$
	.db	00122$
	.db	00123$
	.db	00124$
	.db	00125$
	.db	00126$
	.db	00129$
	.db	00130$
	.db	00131$
00191$:
	.db	00114$>>8
	.db	00119$>>8
	.db	00120$>>8
	.db	00121$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00125$>>8
	.db	00126$>>8
	.db	00129$>>8
	.db	00130$>>8
	.db	00131$>>8
;	./N76_UCS1903.c:561: case 0:
00114$:
;	./N76_UCS1903.c:564: FadeInOut(0x00, 0xFF, 0x00); // r
	mov	_FadeInOut_PARM_2,#0xff
	mov	_FadeInOut_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_FadeInOut
;	./N76_UCS1903.c:565: if (_status==STT_NEW) break;
	mov	a,#0x12
	cjne	a,__status,00192$
	ljmp	00132$
00192$:
;	./N76_UCS1903.c:566: FadeInOut(0xFF, 0x00, 0x00); // g
	mov	_FadeInOut_PARM_2,#0x00
	mov	_FadeInOut_PARM_3,#0x00
	mov	dpl,#0xff
	lcall	_FadeInOut
;	./N76_UCS1903.c:567: if (_status==STT_NEW) break;
	mov	a,#0x12
	cjne	a,__status,00193$
	ljmp	00132$
00193$:
;	./N76_UCS1903.c:568: FadeInOut(0x00, 0x00, 0xFF); // b
	mov	_FadeInOut_PARM_2,#0x00
	mov	_FadeInOut_PARM_3,#0xff
	mov	dpl,#0x00
	lcall	_FadeInOut
;	./N76_UCS1903.c:569: break;
	ljmp	00132$
;	./N76_UCS1903.c:571: case 1:
00119$:
;	./N76_UCS1903.c:574: FadeInOut( random(0xFF), random(0xFF),  random(0xFF)); // green
	mov	dptr,#0x00ff
	lcall	_random
	mov	r6,dpl
	mov	dptr,#0x00ff
	push	ar6
	lcall	_random
	mov	r5,dpl
	mov	dptr,#0x00ff
	push	ar5
	lcall	_random
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	_FadeInOut_PARM_3,r4
	mov	_FadeInOut_PARM_2,r5
	mov	dpl,r6
	lcall	_FadeInOut
;	./N76_UCS1903.c:575: break;
	ljmp	00132$
;	./N76_UCS1903.c:578: case 2:
00120$:
;	./N76_UCS1903.c:581: Strobe(0xFF, 0xFF, 0xFF, 10, 50, 1000);
	mov	_Strobe_PARM_2,#0xff
	mov	_Strobe_PARM_3,#0xff
	mov	_Strobe_PARM_4,#0x0a
	mov	(_Strobe_PARM_4 + 1),#0x00
	mov	_Strobe_PARM_5,#0x32
	mov	(_Strobe_PARM_5 + 1),#0x00
	mov	_Strobe_PARM_6,#0xe8
	mov	(_Strobe_PARM_6 + 1),#0x03
	mov	dpl,#0xff
	lcall	_Strobe
;	./N76_UCS1903.c:582: break;
	ljmp	00132$
;	./N76_UCS1903.c:585: case 3:
00121$:
;	./N76_UCS1903.c:588: CylonBounce(RANDOM_GRB, 4, 10, 50);
	mov	dptr,#0x00ff
	lcall	_random
	mov	r6,dpl
	mov	dptr,#0x00ff
	push	ar6
	lcall	_random
	mov	r5,dpl
	mov	dptr,#0x00ff
	push	ar5
	lcall	_random
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	_CylonBounce_PARM_3,r4
	mov	_CylonBounce_PARM_2,r5
	mov	_CylonBounce_PARM_4,#0x04
	mov	(_CylonBounce_PARM_4 + 1),#0x00
	mov	_CylonBounce_PARM_5,#0x0a
	mov	(_CylonBounce_PARM_5 + 1),#0x00
	mov	_CylonBounce_PARM_6,#0x32
	mov	(_CylonBounce_PARM_6 + 1),#0x00
	mov	dpl,r6
	lcall	_CylonBounce
;	./N76_UCS1903.c:589: break;
	ljmp	00132$
;	./N76_UCS1903.c:592: case 4:
00122$:
;	./N76_UCS1903.c:595: Twinkle(0xFF, 0x00, 0x00, 10, 100, false);
	mov	_Twinkle_PARM_2,#0x00
	mov	_Twinkle_PARM_3,#0x00
	mov	_Twinkle_PARM_4,#0x0a
	mov	(_Twinkle_PARM_4 + 1),#0x00
	mov	_Twinkle_PARM_5,#0x64
	mov	(_Twinkle_PARM_5 + 1),#0x00
	mov	_Twinkle_PARM_6,#0x00
	mov	dpl,#0xff
	lcall	_Twinkle
;	./N76_UCS1903.c:596: break;
	ljmp	00132$
;	./N76_UCS1903.c:599: case 5:
00123$:
;	./N76_UCS1903.c:602: TwinkleRandom(NUM_LEDS/5*2, 100, false);
	mov	dpl,_NUM_LEDS
	mov	dph,(_NUM_LEDS + 1)
	mov	__divuint_PARM_2,#0x05
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	_TwinkleRandom_PARM_2,#0x64
	mov	(_TwinkleRandom_PARM_2 + 1),#0x00
	mov	_TwinkleRandom_PARM_3,#0x00
	lcall	_TwinkleRandom
;	./N76_UCS1903.c:603: break;
	ljmp	00132$
;	./N76_UCS1903.c:606: case 6:
00124$:
;	./N76_UCS1903.c:609: Sparkle(0xFF, 0xFF, 0xFF, 0);
	mov	_Sparkle_PARM_2,#0xff
	mov	_Sparkle_PARM_3,#0xff
	clr	a
	mov	_Sparkle_PARM_4,a
	mov	(_Sparkle_PARM_4 + 1),a
	mov	dpl,#0xff
	lcall	_Sparkle
;	./N76_UCS1903.c:610: break;
	ljmp	00132$
;	./N76_UCS1903.c:613: case 7:
00125$:
;	./N76_UCS1903.c:616: SnowSparkle(0x10, 0x10, 0x10, 20, random2(100, 1000));
	mov	_random2_PARM_2,#0xe8
	mov	(_random2_PARM_2 + 1),#0x03
	mov	dptr,#0x0064
	lcall	_random2
	mov	_SnowSparkle_PARM_5,dpl
	mov	(_SnowSparkle_PARM_5 + 1),dph
	mov	_SnowSparkle_PARM_2,#0x10
	mov	_SnowSparkle_PARM_3,#0x10
	mov	_SnowSparkle_PARM_4,#0x14
	mov	(_SnowSparkle_PARM_4 + 1),#0x00
	mov	dpl,#0x10
	lcall	_SnowSparkle
;	./N76_UCS1903.c:617: break;
	ljmp	00132$
;	./N76_UCS1903.c:620: case 8:
00126$:
;	./N76_UCS1903.c:623: colorWipe(RANDOM_GRB, 50);
	mov	dptr,#0x00ff
	lcall	_random
	mov	r6,dpl
	mov	dptr,#0x00ff
	push	ar6
	lcall	_random
	mov	r5,dpl
	mov	dptr,#0x00ff
	push	ar5
	lcall	_random
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	_colorWipe_PARM_3,r4
	mov	_colorWipe_PARM_2,r5
	mov	_colorWipe_PARM_4,#0x32
	mov	(_colorWipe_PARM_4 + 1),#0x00
	mov	dpl,r6
	lcall	_colorWipe
;	./N76_UCS1903.c:624: if (_status==STT_NEW) break;
	mov	a,#0x12
	cjne	a,__status,00194$
	sjmp	00132$
00194$:
;	./N76_UCS1903.c:625: colorWipe(0x00,0x00,0x00, 50);
	mov	_colorWipe_PARM_2,#0x00
	mov	_colorWipe_PARM_3,#0x00
	mov	_colorWipe_PARM_4,#0x32
	mov	(_colorWipe_PARM_4 + 1),#0x00
	mov	dpl,#0x00
	lcall	_colorWipe
;	./N76_UCS1903.c:626: break;
;	./N76_UCS1903.c:629: case 9:
	sjmp	00132$
00129$:
;	./N76_UCS1903.c:632: rainbowCycle(20);
	mov	dptr,#0x0014
	lcall	_rainbowCycle
;	./N76_UCS1903.c:633: break;
;	./N76_UCS1903.c:636: case 10:
	sjmp	00132$
00130$:
;	./N76_UCS1903.c:639: theaterChase(RANDOM_GRB, 50);
	mov	dptr,#0x00ff
	lcall	_random
	mov	r6,dpl
	mov	dptr,#0x00ff
	push	ar6
	lcall	_random
	mov	r5,dpl
	mov	dptr,#0x00ff
	push	ar5
	lcall	_random
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	_theaterChase_PARM_3,r4
	mov	_theaterChase_PARM_2,r5
	mov	_theaterChase_PARM_4,#0x32
	mov	(_theaterChase_PARM_4 + 1),#0x00
	mov	dpl,r6
	lcall	_theaterChase
;	./N76_UCS1903.c:640: break;
;	./N76_UCS1903.c:643: case 11:
	sjmp	00132$
00131$:
;	./N76_UCS1903.c:646: theaterChaseRainbow(50);
	mov	dptr,#0x0032
	lcall	_theaterChaseRainbow
;	./N76_UCS1903.c:649: }
00132$:
;	./N76_UCS1903.c:650: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00195$
	sjmp	00196$
00195$:
	ljmp	00136$
00196$:
;	./N76_UCS1903.c:652: _status = STT_NOTSAVED;
	mov	__status,#0x56
;	./N76_UCS1903.c:653: cnt = 0;
	mov	_cnt,#0x00
;	./N76_UCS1903.c:656: }
	ljmp	00136$
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_INT_FUCTION'
;------------------------------------------------------------
;	./N76_UCS1903.c:658: ISR(ADC_INT_FUCTION, INTERRUPT_ADC)
;	-----------------------------------------
;	 function ADC_INT_FUCTION
;	-----------------------------------------
_ADC_INT_FUCTION:
	push	acc
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	psw
	mov	psw,#0x00
;	./N76_UCS1903.c:660: _delay = (ADCRH << 4) | ADCRL;
	mov	r6,_adcrh
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	r4,_adcrl
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	__delay,r6
	mov	(__delay + 1),r7
;	./N76_UCS1903.c:661: clrb(ADCCON0, 7);
	anl	_adccon0,#0x7f
;	./N76_UCS1903.c:662: }
	pop	psw
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'PIN_INT_FUCTION'
;------------------------------------------------------------
;	./N76_UCS1903.c:664: ISR(PIN_INT_FUCTION, INTERRUPT_PIN)
;	-----------------------------------------
;	 function PIN_INT_FUCTION
;	-----------------------------------------
_PIN_INT_FUCTION:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	./N76_UCS1903.c:666: if (PIF == 0x10)
	mov	a,#0x10
	cjne	a,_pif,00104$
;	./N76_UCS1903.c:668: if (++effect>=12)	effect=0;
	inc	_effect
	mov	a,#0x100 - 0x0c
	add	a,_effect
	jnc	00102$
	mov	_effect,#0x00
00102$:
;	./N76_UCS1903.c:669: clearAll();
	lcall	_clearAll
00104$:
;	./N76_UCS1903.c:671: PIF = 0x00; // clear interrupt flag
	mov	_pif,#0x00
;	./N76_UCS1903.c:672: _delay_us(500000);
	mov	dptr,#0xa120
	mov	b,#0x07
	clr	a
	lcall	__delay_us
;	./N76_UCS1903.c:673: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timer2'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./N76_UCS1903.c:674: ISR(timer2, INTERRUPT_TIMER2)
;	-----------------------------------------
;	 function timer2
;	-----------------------------------------
_timer2:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	./N76_UCS1903.c:676: uint16_t x=NUM_LEDS;
	mov	r6,_NUM_LEDS
	mov	r7,(_NUM_LEDS + 1)
;	./N76_UCS1903.c:677: if (_status == STT_NOTSAVED)
	mov	a,#0x56
	cjne	a,__status,00153$
	mov	a,#0x01
	sjmp	00154$
00153$:
	clr	a
00154$:
	mov	r5,a
	jz	00102$
;	./N76_UCS1903.c:678: cnt++;
	inc	_cnt
00102$:
;	./N76_UCS1903.c:679: if (cnt == 20 && _status == STT_NOTSAVED)
	mov	a,#0x14
	cjne	a,_cnt,00104$
	mov	a,r5
	jz	00104$
;	./N76_UCS1903.c:681: Erase_APROM(ADDR_EFF);
	mov	dptr,#0x2000
	push	ar7
	push	ar6
	lcall	_Erase_APROM
;	./N76_UCS1903.c:682: APROM_write_byte(ADDR_EFF, effect);
	mov	_APROM_write_byte_PARM_2,_effect
	mov	dptr,#0x2000
	lcall	_APROM_write_byte
	pop	ar6
	pop	ar7
;	./N76_UCS1903.c:683: _status = STT_OLD;
	mov	__status,#0x00
;	./N76_UCS1903.c:684: cnt == 0;
00104$:
;	./N76_UCS1903.c:687: if (inbit(SW_PORT, SW50_PIN) == 0) NUM_LEDS = 50;
	mov	a,#0x01
	anl	a,_p0
	mov	r5,a
	jnz	00115$
	mov	_NUM_LEDS,#0x32
	mov	(_NUM_LEDS + 1),a
	sjmp	00116$
00115$:
;	./N76_UCS1903.c:688: else if (inbit(SW_PORT, SW100_PIN) == 0) NUM_LEDS = 100;
	mov	a,#0x02
	anl	a,_p0
	clr	c
	rrc	a
	mov	r5,a
	jnz	00112$
	mov	_NUM_LEDS,#0x64
	mov	(_NUM_LEDS + 1),a
	sjmp	00116$
00112$:
;	./N76_UCS1903.c:689: else if (inbit(SW_PORT, SW150_PIN) == 0) NUM_LEDS = 150;
	mov	a,#0x04
	anl	a,_p0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r5,a
	jnz	00109$
	mov	_NUM_LEDS,#0x96
	mov	(_NUM_LEDS + 1),a
	sjmp	00116$
00109$:
;	./N76_UCS1903.c:690: else if (inbit(SW_PORT, SW200_PIN) == 0) NUM_LEDS = 200;
	mov	a,#0x08
	anl	a,_p0
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
	jnz	00116$
	mov	_NUM_LEDS,#0xc8
	mov	(_NUM_LEDS + 1),a
00116$:
;	./N76_UCS1903.c:691: if (NUM_LEDS != x) clearAll();
	mov	a,r6
	cjne	a,_NUM_LEDS,00163$
	mov	a,r7
	cjne	a,(_NUM_LEDS + 1),00163$
	sjmp	00118$
00163$:
	lcall	_clearAll
00118$:
;	./N76_UCS1903.c:693: clrb(T2CON, 7);//TF2
	anl	_t2con,#0x7f
;	./N76_UCS1903.c:694: setb(ADCCON0, 6);
	orl	_adccon0,#0x40
;	./N76_UCS1903.c:695: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
