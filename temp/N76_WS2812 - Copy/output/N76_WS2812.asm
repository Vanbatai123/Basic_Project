;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module N76_WS2812
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_begin_PARM_2
	.globl _timer2
	.globl _PIN_INT_FUCTION
	.globl _ADC_INT_FUCTION
	.globl _main
	.globl _TIM2_begin
	.globl _random2
	.globl _random
	.globl _clearAll
	.globl _theaterChaseRainbow
	.globl _theaterChase
	.globl _rainbowCycle
	.globl _colorWipe
	.globl _SnowSparkle
	.globl _Sparkle
	.globl _TwinkleRandom
	.globl _Twinkle
	.globl _CylonBounce
	.globl _Strobe
	.globl _FadeInOut
	.globl _Erase_APROM
	.globl _APROM_write_byte
	.globl _APROM_read_byte
	.globl __delay_us
	.globl _cosf
	.globl _sinf
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
	.globl __cnt
	.globl __status
	.globl _effect
	.globl __delay
	.globl _NUM_LEDS
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
__cnt::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;	./N76_WS2812.c:26: uint8_t _status = STT_NOTSAVED;
	mov	__status,#0x56
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
;Allocation info for local variables in function 'TIM2_begin'
;------------------------------------------------------------
;reload                    Allocated with name '_TIM2_begin_PARM_2'
;tim_div_x                 Allocated to registers r7 
;------------------------------------------------------------
;	./N76_WS2812.c:29: void TIM2_begin(uint8_t tim_div_x, uint16_t reload)
;	-----------------------------------------
;	 function TIM2_begin
;	-----------------------------------------
_TIM2_begin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	./N76_WS2812.c:35: T2MOD &= ~0x70;
	anl	_t2mod,#0x8f
;	./N76_WS2812.c:36: T2MOD |= tim_div_x;
	mov	a,r7
	orl	_t2mod,a
;	./N76_WS2812.c:39: T2CON &= ~(1 << 0);
	anl	_t2con,#0xfe
;	./N76_WS2812.c:40: T2MOD |= (1 << 7);
	orl	_t2mod,#0x80
;	./N76_WS2812.c:41: T2MOD |= (1 << 3);
	orl	_t2mod,#0x08
;	./N76_WS2812.c:44: RCMP2L = reload; // 100ms
	mov	_rcmp2l,_TIM2_begin_PARM_2
;	./N76_WS2812.c:46: RCMP2H = reload >> 8;
	mov	_rcmp2h,(_TIM2_begin_PARM_2 + 1)
;	./N76_WS2812.c:47: TL2 = 0;
	mov	_tl2,#0x00
;	./N76_WS2812.c:48: TH2 = 0;
	mov	_th2,#0x00
;	./N76_WS2812.c:50: setb(EIE, ET2); // Enable Timer2 interrupt
	orl	_eie,#0x80
;	./N76_WS2812.c:51: sei();
	orl	_ie,#0x80
;	./N76_WS2812.c:52: setb(T2CON, TR2); // Timer2 run
	orl	_t2con,#0x04
;	./N76_WS2812.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	./N76_WS2812.c:55: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./N76_WS2812.c:57: effect = APROM_read_byte(ADDR_EFF);
	mov	dptr,#0x2000
	lcall	_APROM_read_byte
	mov	_effect,dpl
;	./N76_WS2812.c:58: if (effect >= 11)
	mov	a,#0x100 - 0x0b
	add	a,_effect
	jnc	00102$
;	./N76_WS2812.c:59: effect = 0;
	mov	_effect,#0x00
00102$:
;	./N76_WS2812.c:61: clrb(LED2_PxM1, LED2_PIN);
	anl	_p0m1,#0xdf
;	./N76_WS2812.c:62: setb(LED2_PxM2, LED2_PIN);
	orl	_p0m2,#0x20
;	./N76_WS2812.c:63: clrb(LED2_PORT, LED2_PIN);
	anl	_p0,#0xdf
;	./N76_WS2812.c:65: CKDIV = 0x00; // 16MHz
	mov	_ckdiv,#0x00
;	./N76_WS2812.c:66: clrb(LED_PxM1, LED_PIN);
	anl	_p0m1,#0xbf
;	./N76_WS2812.c:67: setb(LED_PxM2, LED_PIN);
	orl	_p0m2,#0x40
;	./N76_WS2812.c:68: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./N76_WS2812.c:70: clrb(SW_PxM1, SW50_PIN);
	anl	_p0m1,#0xfe
;	./N76_WS2812.c:71: setb(SW_PxM2, SW50_PIN);
	orl	_p0m2,#0x01
;	./N76_WS2812.c:73: clrb(SW_PxM1, SW100_PIN);
	anl	_p0m1,#0xfd
;	./N76_WS2812.c:74: setb(SW_PxM2, SW100_PIN);
	orl	_p0m2,#0x02
;	./N76_WS2812.c:76: clrb(SW_PxM1, SW150_PIN);
	anl	_p0m1,#0xfb
;	./N76_WS2812.c:77: setb(SW_PxM2, SW150_PIN);
	orl	_p0m2,#0x04
;	./N76_WS2812.c:79: clrb(SW_PxM1, SW200_PIN);
	anl	_p0m1,#0xf7
;	./N76_WS2812.c:80: setb(SW_PxM2, SW200_PIN);
	orl	_p0m2,#0x08
;	./N76_WS2812.c:82: SW_PORT |= 0x0F;
	orl	_p0,#0x0f
;	./N76_WS2812.c:84: clrb(BTN_PxM1, BTN_PIN);
	anl	_p0m1,#0xef
;	./N76_WS2812.c:85: setb(BTN_PxM2, BTN_PIN);
	orl	_p0m2,#0x10
;	./N76_WS2812.c:86: setb(BTN_PORT, BTN_PIN);
	orl	_p0,#0x10
;	./N76_WS2812.c:89: ADCCON0 &= 0xF0;
	anl	_adccon0,#0xf0
;	./N76_WS2812.c:90: ADCCON0 |= 0x07;
	orl	_adccon0,#0x07
;	./N76_WS2812.c:93: clrb(P1M2, 1);
	anl	_p1m2,#0xfd
;	./N76_WS2812.c:94: setb(P1M1, 1);
	orl	_p1m1,#0x02
;	./N76_WS2812.c:95: AINDIDS = 0x00;
	mov	_aindids,#0x00
;	./N76_WS2812.c:96: AINDIDS |= (1 << 7);
	orl	_aindids,#0x80
;	./N76_WS2812.c:97: ADCCON1 |= (1 << 0);
	orl	_adccon1,#0x01
;	./N76_WS2812.c:98: setb(IE, EADC); // enable interruppt ADC
	orl	_ie,#0x40
;	./N76_WS2812.c:101: setb(PICON, PIT45);
	orl	_picon,#0x40
;	./N76_WS2812.c:102: setb(PINEN, BTN_PIN); // enable falling edge
	orl	_pinen,#0x10
;	./N76_WS2812.c:103: clrb(PIPEN, BTN_PIN); // disable rasing edge
	anl	_pipen,#0xef
;	./N76_WS2812.c:106: setb(EIE, EPI); // set external interrupt 0 at falling edge
	orl	_eie,#0x02
;	./N76_WS2812.c:108: clearAll();
	lcall	_clearAll
;	./N76_WS2812.c:109: TIM2_begin(0x60, 65536 - 15625);
	mov	_TIM2_begin_PARM_2,#0xf7
	mov	(_TIM2_begin_PARM_2 + 1),#0xc2
	mov	dpl,#0x60
	lcall	_TIM2_begin
;	./N76_WS2812.c:110: sei(); // Enable global interrupt
	orl	_ie,#0x80
;	./N76_WS2812.c:111: int i= sinf(1);
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	_sinf
;	./N76_WS2812.c:112: i= cosf(1);
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	_cosf
;	./N76_WS2812.c:113: setb(ADCCON0, 6);
	orl	_adccon0,#0x40
;	./N76_WS2812.c:114: if (inbit(SW_PORT, SW50_PIN) == 0)
	mov	a,#0x01
	anl	a,_p0
	mov	r7,a
;	./N76_WS2812.c:115: NUM_LEDS = 50;
	jnz	00112$
	mov	_NUM_LEDS,#0x32
	mov	(_NUM_LEDS + 1),a
	sjmp	00143$
00112$:
;	./N76_WS2812.c:116: else if (inbit(SW_PORT, SW100_PIN) == 0)
	mov	a,#0x02
	anl	a,_p0
	clr	c
	rrc	a
	mov	r7,a
;	./N76_WS2812.c:117: NUM_LEDS = 100;
	jnz	00109$
	mov	_NUM_LEDS,#0x64
	mov	(_NUM_LEDS + 1),a
	sjmp	00143$
00109$:
;	./N76_WS2812.c:118: else if (inbit(SW_PORT, SW150_PIN) == 0)
	mov	a,#0x04
	anl	a,_p0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r7,a
;	./N76_WS2812.c:119: NUM_LEDS = 150;
	jnz	00106$
	mov	_NUM_LEDS,#0x96
	mov	(_NUM_LEDS + 1),a
	sjmp	00143$
00106$:
;	./N76_WS2812.c:120: else if (inbit(SW_PORT, SW200_PIN) == 0)
	mov	a,#0x08
	anl	a,_p0
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
;	./N76_WS2812.c:121: NUM_LEDS = 200;
	jnz	00143$
	mov	_NUM_LEDS,#0xc8
	mov	(_NUM_LEDS + 1),a
;	./N76_WS2812.c:123: while (1)
00143$:
;	./N76_WS2812.c:125: switch (effect)
	mov	a,_effect
	add	a,#0xff - 0x0a
	jnc	00212$
	ljmp	00139$
00212$:
	mov	a,_effect
	add	a,#(00213$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_effect
	add	a,#(00214$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00213$:
	.db	00114$
	.db	00127$
	.db	00128$
	.db	00129$
	.db	00130$
	.db	00131$
	.db	00132$
	.db	00133$
	.db	00136$
	.db	00137$
	.db	00138$
00214$:
	.db	00114$>>8
	.db	00127$>>8
	.db	00128$>>8
	.db	00129$>>8
	.db	00130$>>8
	.db	00131$>>8
	.db	00132$>>8
	.db	00133$>>8
	.db	00136$>>8
	.db	00137$>>8
	.db	00138$>>8
;	./N76_WS2812.c:127: case 0:
00114$:
;	./N76_WS2812.c:130: FadeInOut(COLOR_1);
	mov	_FadeInOut_PARM_2,#0xff
	mov	_FadeInOut_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_FadeInOut
;	./N76_WS2812.c:131: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00215$
	ljmp	00139$
00215$:
;	./N76_WS2812.c:133: FadeInOut(COLOR_2);
	mov	_FadeInOut_PARM_2,#0xff
	mov	_FadeInOut_PARM_3,#0xff
	mov	dpl,#0x00
	lcall	_FadeInOut
;	./N76_WS2812.c:134: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00216$
	ljmp	00139$
00216$:
;	./N76_WS2812.c:136: FadeInOut(COLOR_3);
	mov	_FadeInOut_PARM_2,#0x00
	mov	_FadeInOut_PARM_3,#0xff
	mov	dpl,#0x00
	lcall	_FadeInOut
;	./N76_WS2812.c:137: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00217$
	ljmp	00139$
00217$:
;	./N76_WS2812.c:139: FadeInOut(COLOR_4);
	mov	_FadeInOut_PARM_2,#0x00
	mov	_FadeInOut_PARM_3,#0xff
	mov	dpl,#0xff
	lcall	_FadeInOut
;	./N76_WS2812.c:140: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00218$
	ljmp	00139$
00218$:
;	./N76_WS2812.c:142: FadeInOut(COLOR_5);
	mov	_FadeInOut_PARM_2,#0x00
	mov	_FadeInOut_PARM_3,#0x00
	mov	dpl,#0xff
	lcall	_FadeInOut
;	./N76_WS2812.c:143: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00219$
	ljmp	00139$
00219$:
;	./N76_WS2812.c:145: FadeInOut(COLOR_6);
	mov	_FadeInOut_PARM_2,#0xff
	mov	_FadeInOut_PARM_3,#0x00
	mov	dpl,#0xff
	lcall	_FadeInOut
;	./N76_WS2812.c:146: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00220$
	ljmp	00139$
00220$:
;	./N76_WS2812.c:148: FadeInOut(COLOR_7);
	mov	_FadeInOut_PARM_2,#0xff
	mov	_FadeInOut_PARM_3,#0xff
	mov	dpl,#0xff
	lcall	_FadeInOut
;	./N76_WS2812.c:149: break;
	ljmp	00139$
;	./N76_WS2812.c:151: case 1:
00127$:
;	./N76_WS2812.c:154: Strobe(0xFF, 0xFF, 0xFF, 10, 50, 1000);
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
;	./N76_WS2812.c:155: break;
	ljmp	00139$
;	./N76_WS2812.c:158: case 2:
00128$:
;	./N76_WS2812.c:161: CylonBounce(RANDOM_GRB, 4, 10, 50);
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
;	./N76_WS2812.c:162: break;
	ljmp	00139$
;	./N76_WS2812.c:165: case 3:
00129$:
;	./N76_WS2812.c:168: Twinkle(0xFF, 0x00, 0x00, 10, 100, false);
	mov	_Twinkle_PARM_2,#0x00
	mov	_Twinkle_PARM_3,#0x00
	mov	_Twinkle_PARM_4,#0x0a
	mov	(_Twinkle_PARM_4 + 1),#0x00
	mov	_Twinkle_PARM_5,#0x64
	mov	(_Twinkle_PARM_5 + 1),#0x00
	mov	_Twinkle_PARM_6,#0x00
	mov	dpl,#0xff
	lcall	_Twinkle
;	./N76_WS2812.c:169: break;
	ljmp	00139$
;	./N76_WS2812.c:172: case 4:
00130$:
;	./N76_WS2812.c:175: TwinkleRandom(NUM_LEDS / 5 * 2, 100, false);
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
;	./N76_WS2812.c:176: break;
	ljmp	00139$
;	./N76_WS2812.c:179: case 5:
00131$:
;	./N76_WS2812.c:182: Sparkle(0xFF, 0xFF, 0xFF, 0);
	mov	_Sparkle_PARM_2,#0xff
	mov	_Sparkle_PARM_3,#0xff
	clr	a
	mov	_Sparkle_PARM_4,a
	mov	(_Sparkle_PARM_4 + 1),a
	mov	dpl,#0xff
	lcall	_Sparkle
;	./N76_WS2812.c:183: break;
	ljmp	00139$
;	./N76_WS2812.c:186: case 6:
00132$:
;	./N76_WS2812.c:189: SnowSparkle(0x10, 0x10, 0x10, 20, random2(100, 1000));
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
;	./N76_WS2812.c:190: break;
	ljmp	00139$
;	./N76_WS2812.c:193: case 7:
00133$:
;	./N76_WS2812.c:196: colorWipe(RANDOM_GRB, 50);
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
;	./N76_WS2812.c:197: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00221$
	sjmp	00139$
00221$:
;	./N76_WS2812.c:199: colorWipe(0x00, 0x00, 0x00, 50);
	mov	_colorWipe_PARM_2,#0x00
	mov	_colorWipe_PARM_3,#0x00
	mov	_colorWipe_PARM_4,#0x32
	mov	(_colorWipe_PARM_4 + 1),#0x00
	mov	dpl,#0x00
	lcall	_colorWipe
;	./N76_WS2812.c:200: break;
;	./N76_WS2812.c:203: case 8:
	sjmp	00139$
00136$:
;	./N76_WS2812.c:206: rainbowCycle(20);
	mov	dptr,#0x0014
	lcall	_rainbowCycle
;	./N76_WS2812.c:207: break;
;	./N76_WS2812.c:210: case 9:
	sjmp	00139$
00137$:
;	./N76_WS2812.c:213: theaterChase(RANDOM_GRB, 50);
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
;	./N76_WS2812.c:214: break;
;	./N76_WS2812.c:217: case 10:
	sjmp	00139$
00138$:
;	./N76_WS2812.c:220: theaterChaseRainbow(50);
	mov	dptr,#0x0032
	lcall	_theaterChaseRainbow
;	./N76_WS2812.c:223: }
00139$:
;	./N76_WS2812.c:224: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00222$
	sjmp	00223$
00222$:
	ljmp	00143$
00223$:
;	./N76_WS2812.c:226: _status = STT_NOTSAVED;
	mov	__status,#0x56
;	./N76_WS2812.c:227: _cnt = 0;
	mov	__cnt,#0x00
;	./N76_WS2812.c:230: }
	ljmp	00143$
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_INT_FUCTION'
;------------------------------------------------------------
;	./N76_WS2812.c:231: ISR(ADC_INT_FUCTION, INTERRUPT_ADC)
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
;	./N76_WS2812.c:233: _delay = (ADCRH << 4) | ADCRL;
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
;	./N76_WS2812.c:234: clrb(ADCCON0, ADCF);
	anl	_adccon0,#0x7f
;	./N76_WS2812.c:235: }
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
;	./N76_WS2812.c:237: ISR(PIN_INT_FUCTION, INTERRUPT_PIN)
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
;	./N76_WS2812.c:239: if (PIF == 0x10 && _status != STT_OLD)
	mov	a,#0x10
	cjne	a,_pif,00104$
	mov	a,__status
	jz	00104$
;	./N76_WS2812.c:241: if (++effect >= 11)
	inc	_effect
	mov	a,#0x100 - 0x0b
	add	a,_effect
	jnc	00102$
;	./N76_WS2812.c:242: effect = 0;
	mov	_effect,#0x00
00102$:
;	./N76_WS2812.c:243: clearAll();
	lcall	_clearAll
;	./N76_WS2812.c:244: _delay_us(500000);
	mov	dptr,#0xa120
	mov	b,#0x07
	clr	a
	lcall	__delay_us
00104$:
;	./N76_WS2812.c:246: PIF = 0x00; // clear interrupt flag
	mov	_pif,#0x00
;	./N76_WS2812.c:247: }
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
;	./N76_WS2812.c:248: ISR(timer2, INTERRUPT_TIMER2) // every 0.25s
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
;	./N76_WS2812.c:250: _cnt++;
	inc	__cnt
;	./N76_WS2812.c:252: if (_cnt == 40) // every 10s
	mov	a,#0x28
	cjne	a,__cnt,00104$
;	./N76_WS2812.c:254: if (_status == STT_NOTSAVED)
	mov	a,#0x56
	cjne	a,__status,00104$
;	./N76_WS2812.c:256: Erase_APROM(ADDR_EFF);
	mov	dptr,#0x2000
	lcall	_Erase_APROM
;	./N76_WS2812.c:257: APROM_write_byte(ADDR_EFF, effect); // write effect to APROM
	mov	_APROM_write_byte_PARM_2,_effect
	mov	dptr,#0x2000
	lcall	_APROM_write_byte
;	./N76_WS2812.c:258: clrb(EIE, EPI);						// clear pin interrupt
	anl	_eie,#0xfd
;	./N76_WS2812.c:259: _status = STT_OLD;
	mov	__status,#0x00
;	./N76_WS2812.c:261: _cnt == 0;
00104$:
;	./N76_WS2812.c:263: if (_cnt % 4 == 0) // every 0.5s
	mov	a,__cnt
	anl	a,#0x03
	jz	00171$
	sjmp	00121$
00171$:
;	./N76_WS2812.c:265: uint16_t x = NUM_LEDS;
	mov	r6,_NUM_LEDS
	mov	r7,(_NUM_LEDS + 1)
;	./N76_WS2812.c:266: if (inbit(SW_PORT, SW50_PIN) == 0)
	mov	a,#0x01
	anl	a,_p0
	mov	r5,a
;	./N76_WS2812.c:267: NUM_LEDS = 50;
	jnz	00114$
	mov	_NUM_LEDS,#0x32
	mov	(_NUM_LEDS + 1),a
	sjmp	00115$
00114$:
;	./N76_WS2812.c:268: else if (inbit(SW_PORT, SW100_PIN) == 0)
	mov	a,#0x02
	anl	a,_p0
	clr	c
	rrc	a
	mov	r5,a
;	./N76_WS2812.c:269: NUM_LEDS = 100;
	jnz	00111$
	mov	_NUM_LEDS,#0x64
	mov	(_NUM_LEDS + 1),a
	sjmp	00115$
00111$:
;	./N76_WS2812.c:270: else if (inbit(SW_PORT, SW150_PIN) == 0)
	mov	a,#0x04
	anl	a,_p0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r5,a
;	./N76_WS2812.c:271: NUM_LEDS = 150;
	jnz	00108$
	mov	_NUM_LEDS,#0x96
	mov	(_NUM_LEDS + 1),a
	sjmp	00115$
00108$:
;	./N76_WS2812.c:272: else if (inbit(SW_PORT, SW200_PIN) == 0)
	mov	a,#0x08
	anl	a,_p0
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
;	./N76_WS2812.c:273: NUM_LEDS = 200;
	jnz	00115$
	mov	_NUM_LEDS,#0xc8
	mov	(_NUM_LEDS + 1),a
00115$:
;	./N76_WS2812.c:275: if (NUM_LEDS != x)
	mov	a,r6
	cjne	a,_NUM_LEDS,00176$
	mov	a,r7
	cjne	a,(_NUM_LEDS + 1),00176$
	sjmp	00117$
00176$:
;	./N76_WS2812.c:277: clearAll();
	lcall	_clearAll
00117$:
;	./N76_WS2812.c:279: if (_status == STT_OLD)
	mov	a,__status
	jnz	00119$
;	./N76_WS2812.c:281: daobit(LED2_PORT, LED2_PIN);
	xrl	_p0,#0x20
00119$:
;	./N76_WS2812.c:284: setb(ADCCON0, ADCS);
	orl	_adccon0,#0x40
00121$:
;	./N76_WS2812.c:287: if (_status != STT_OLD)
	mov	a,__status
	jz	00123$
;	./N76_WS2812.c:289: daobit(LED2_PORT, LED2_PIN);
	xrl	_p0,#0x20
00123$:
;	./N76_WS2812.c:291: clrb(T2CON, TF2); // TF2
	anl	_t2con,#0x7f
;	./N76_WS2812.c:292: }
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
