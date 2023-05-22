;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module N76_WS2812
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer2
	.globl _PIN_INT_FUCTION
	.globl _ADC_INT_FUCTION
	.globl _main
	.globl _TIM2_begin
	.globl _changeColor
	.globl _clearAll
	.globl _setAll
	.globl _Pattern2
	.globl _Pattern1
	.globl _Pattern3
	.globl _rainbowCycle
	.globl _colorWipe
	.globl _CylonBounceI
	.globl _CylonBounce
	.globl _FadeInOut
	.globl _Erase_APROM
	.globl _APROM_write_byte
	.globl _APROM_read_byte
	.globl __delay_us
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
	.globl _leds
	.globl _g2
	.globl _b2
	.globl _r2
	.globl __color
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
__color::
	.ds 1
_r2::
	.ds 1
_b2::
	.ds 1
_g2::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
_leds::
	.ds 600
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
;	./N76_WS2812.c:24: uint8_t _status = STT_NOTSAVED;
	mov	__status,#0x56
;	./N76_WS2812.c:26: uint8_t _color = 0;
	mov	__color,#0x00
;	./N76_WS2812.c:27: uint8_t r2 = 255, b2 = 0, g2 = 0;
	mov	_r2,#0xff
;	./N76_WS2812.c:27: __xdata uint8_t leds[600];
	mov	_b2,#0x00
;	./N76_WS2812.c:27: uint8_t r2 = 255, b2 = 0, g2 = 0;
	mov	_g2,#0x00
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
;Allocation info for local variables in function 'changeColor'
;------------------------------------------------------------
;	./N76_WS2812.c:30: void changeColor()
;	-----------------------------------------
;	 function changeColor
;	-----------------------------------------
_changeColor:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./N76_WS2812.c:33: switch (_color)
	mov	a,__color
	add	a,#0xff - 0x07
	jnc	00117$
	ret
00117$:
	mov	a,__color
	add	a,#(00118$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,__color
	add	a,#(00119$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00118$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00119$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	./N76_WS2812.c:35: case 0: // red
00101$:
;	./N76_WS2812.c:36: r2 = 239;
	mov	_r2,#0xef
;	./N76_WS2812.c:37: g2 = 3;
	mov	_g2,#0x03
;	./N76_WS2812.c:38: b2 = 7;
	mov	_b2,#0x07
;	./N76_WS2812.c:39: break;
;	./N76_WS2812.c:41: case 1: // violet
	ret
00102$:
;	./N76_WS2812.c:42: r2 = 160;
	mov	_r2,#0xa0
;	./N76_WS2812.c:43: g2 = 64;
	mov	_g2,#0x40
;	./N76_WS2812.c:44: b2 = 198;
	mov	_b2,#0xc6
;	./N76_WS2812.c:45: break;
;	./N76_WS2812.c:47: case 2: // ORANGE
	ret
00103$:
;	./N76_WS2812.c:48: r2 = 255;
	mov	_r2,#0xff
;	./N76_WS2812.c:49: g2 = 153;
	mov	_g2,#0x99
;	./N76_WS2812.c:50: b2 = 0;
	mov	_b2,#0x00
;	./N76_WS2812.c:51: break;
;	./N76_WS2812.c:53: case 3: // YELLOW
	ret
00104$:
;	./N76_WS2812.c:54: r2 = 255;
	mov	_r2,#0xff
;	./N76_WS2812.c:55: g2 = 235;
	mov	_g2,#0xeb
;	./N76_WS2812.c:56: b2 = 0;
	mov	_b2,#0x00
;	./N76_WS2812.c:57: break;
;	./N76_WS2812.c:59: case 4: // GREEN
	ret
00105$:
;	./N76_WS2812.c:60: r2 = 29;
	mov	_r2,#0x1d
;	./N76_WS2812.c:61: g2 = 185;
	mov	_g2,#0xb9
;	./N76_WS2812.c:62: b2 = 84;
	mov	_b2,#0x54
;	./N76_WS2812.c:63: break;
;	./N76_WS2812.c:65: case 5: // BLUE
	ret
00106$:
;	./N76_WS2812.c:66: r2 = 21;
	mov	_r2,#0x15
;	./N76_WS2812.c:67: g2 = 13;
	mov	_g2,#0x0d
;	./N76_WS2812.c:68: b2 = 247;
	mov	_b2,#0xf7
;	./N76_WS2812.c:69: break;
;	./N76_WS2812.c:71: case 6: // INDIGO
	ret
00107$:
;	./N76_WS2812.c:72: r2 = 110;
	mov	_r2,#0x6e
;	./N76_WS2812.c:73: g2 = 0;
	mov	_g2,#0x00
;	./N76_WS2812.c:74: b2 = 255;
	mov	_b2,#0xff
;	./N76_WS2812.c:75: break;
;	./N76_WS2812.c:77: case 7: // Warm White
	ret
00108$:
;	./N76_WS2812.c:78: r2 = 253;
	mov	_r2,#0xfd
;	./N76_WS2812.c:79: g2 = 244;
	mov	_g2,#0xf4
;	./N76_WS2812.c:80: b2 = 220;
	mov	_b2,#0xdc
;	./N76_WS2812.c:85: }
;	./N76_WS2812.c:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_begin'
;------------------------------------------------------------
;	./N76_WS2812.c:88: void TIM2_begin()
;	-----------------------------------------
;	 function TIM2_begin
;	-----------------------------------------
_TIM2_begin:
;	./N76_WS2812.c:94: T2MOD &= ~0x70;
	anl	_t2mod,#0x8f
;	./N76_WS2812.c:96: T2MOD |= 0x60;
	orl	_t2mod,#0x60
;	./N76_WS2812.c:100: clrb(TCON, CM_RL2);
	anl	_tcon,#0xfe
;	./N76_WS2812.c:104: setb(T2MOD, CAPCR);
	orl	_t2mod,#0x08
;	./N76_WS2812.c:105: setb(T2MOD, LDEN);
	orl	_t2mod,#0x80
;	./N76_WS2812.c:108: RCMP2L = 0xF6; // 100ms
	mov	_rcmp2l,#0xf6
;	./N76_WS2812.c:110: RCMP2H = 0xC2;
	mov	_rcmp2h,#0xc2
;	./N76_WS2812.c:111: TL2 = 0;
	mov	_tl2,#0x00
;	./N76_WS2812.c:112: TH2 = 0;
	mov	_th2,#0x00
;	./N76_WS2812.c:114: setb(EIE, ET2); // Enable Timer2 interrupt
	orl	_eie,#0x80
;	./N76_WS2812.c:115: sei();
	orl	_ie,#0x80
;	./N76_WS2812.c:116: setb(T2CON, TR2); // Timer2 run
	orl	_t2con,#0x04
;	./N76_WS2812.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	./N76_WS2812.c:119: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./N76_WS2812.c:121: CKDIV = 0x00; // 16MHz
	mov	_ckdiv,#0x00
;	./N76_WS2812.c:122: effect = APROM_read_byte(ADDR_EFF);
	mov	dptr,#0x3000
	lcall	_APROM_read_byte
	mov	_effect,dpl
;	./N76_WS2812.c:123: if (effect >= NUM_EFFECT + 1)
	mov	a,#0x100 - 0x08
	add	a,_effect
	jnc	00102$
;	./N76_WS2812.c:124: effect = DEFAULT_EFFECT;
	mov	_effect,#0x00
00102$:
;	./N76_WS2812.c:125: _color = APROM_read_byte(ADDR_COLOR);
	mov	dptr,#0x3001
	lcall	_APROM_read_byte
	mov	__color,dpl
;	./N76_WS2812.c:126: if (_color >= NUM_COLOR)
	mov	a,#0x100 - 0x08
	add	a,__color
	jnc	00104$
;	./N76_WS2812.c:127: _color = 0;
	mov	__color,#0x00
00104$:
;	./N76_WS2812.c:129: changeColor();
	lcall	_changeColor
;	./N76_WS2812.c:131: clrb(LED2_PxM1, LED2_PIN);
	anl	_p0m1,#0xdf
;	./N76_WS2812.c:132: setb(LED2_PxM2, LED2_PIN);
	orl	_p0m2,#0x20
;	./N76_WS2812.c:133: clrb(LED2_PORT, LED2_PIN);
	anl	_p0,#0xdf
;	./N76_WS2812.c:135: clrb(LED_PxM1, LED_PIN);
	anl	_p0m1,#0xbf
;	./N76_WS2812.c:136: setb(LED_PxM2, LED_PIN);
	orl	_p0m2,#0x40
;	./N76_WS2812.c:137: clrb(LED_PORT, LED_PIN);
	anl	_p0,#0xbf
;	./N76_WS2812.c:139: clrb(SW_PxM1, SW50_PIN);
	anl	_p0m1,#0xfe
;	./N76_WS2812.c:140: setb(SW_PxM2, SW50_PIN);
	orl	_p0m2,#0x01
;	./N76_WS2812.c:142: clrb(SW_PxM1, SW100_PIN);
	anl	_p0m1,#0xfd
;	./N76_WS2812.c:143: setb(SW_PxM2, SW100_PIN);
	orl	_p0m2,#0x02
;	./N76_WS2812.c:145: clrb(SW_PxM1, SW150_PIN);
	anl	_p0m1,#0xfb
;	./N76_WS2812.c:146: setb(SW_PxM2, SW150_PIN);
	orl	_p0m2,#0x04
;	./N76_WS2812.c:148: clrb(SW_PxM1, SW200_PIN);
	anl	_p0m1,#0xf7
;	./N76_WS2812.c:149: setb(SW_PxM2, SW200_PIN);
	orl	_p0m2,#0x08
;	./N76_WS2812.c:151: SW_PORT |= 0x0F;
	orl	_p0,#0x0f
;	./N76_WS2812.c:154: clrb(BTNE_PxM1, BTNE_PIN);
	anl	_p1m1,#0xef
;	./N76_WS2812.c:155: setb(BTNE_PxM2, BTNE_PIN);
	orl	_p1m2,#0x10
;	./N76_WS2812.c:156: setb(BTNE_PORT, BTNE_PIN);
	orl	_p1,#0x10
;	./N76_WS2812.c:159: clrb(BTNC_PxM1, BTNC_PIN);
	anl	_p1m1,#0xf7
;	./N76_WS2812.c:160: setb(BTNC_PxM2, BTNC_PIN);
	orl	_p1m2,#0x08
;	./N76_WS2812.c:161: setb(BTNC_PORT, BTNC_PIN);
	orl	_p1,#0x08
;	./N76_WS2812.c:164: ADCCON0 &= 0xF0;
	anl	_adccon0,#0xf0
;	./N76_WS2812.c:165: ADCCON0 |= 0x07;
	orl	_adccon0,#0x07
;	./N76_WS2812.c:168: clrb(P1M2, 1);
	anl	_p1m2,#0xfd
;	./N76_WS2812.c:169: setb(P1M1, 1);
	orl	_p1m1,#0x02
;	./N76_WS2812.c:170: AINDIDS = 0x00;
	mov	_aindids,#0x00
;	./N76_WS2812.c:171: AINDIDS |= (1 << 7);
	orl	_aindids,#0x80
;	./N76_WS2812.c:172: ADCCON1 |= (1 << 0);
	orl	_adccon1,#0x01
;	./N76_WS2812.c:173: setb(IE, EADC); // enable interruppt ADC
	orl	_ie,#0x40
;	./N76_WS2812.c:176: setb(PICON, PIPS0); // pin interrupt port 1
	orl	_picon,#0x01
;	./N76_WS2812.c:178: setb(PICON, PIT45);
	orl	_picon,#0x40
;	./N76_WS2812.c:179: setb(PINEN, BTNE_PIN); // enable falling edge
	orl	_pinen,#0x10
;	./N76_WS2812.c:180: clrb(PIPEN, BTNE_PIN); // disable rasing edge
	anl	_pipen,#0xef
;	./N76_WS2812.c:181: setb(PICON, PIT3);
	orl	_picon,#0x20
;	./N76_WS2812.c:182: setb(PINEN, BTNC_PIN); // enable falling edge
	orl	_pinen,#0x08
;	./N76_WS2812.c:183: clrb(PIPEN, BTNC_PIN); // disable rasing edge
	anl	_pipen,#0xf7
;	./N76_WS2812.c:186: setb(EIE, EPI); // set external interrupt 0 at falling edge
	orl	_eie,#0x02
;	./N76_WS2812.c:188: clearAll();
	lcall	_clearAll
;	./N76_WS2812.c:190: TIM2_begin();
	lcall	_TIM2_begin
;	./N76_WS2812.c:191: sei(); // Enable global interrupt
	orl	_ie,#0x80
;	./N76_WS2812.c:193: setb(ADCCON0, 6);
	orl	_adccon0,#0x40
;	./N76_WS2812.c:194: if (inbit(SW_PORT, SW50_PIN) == 0)
	mov	a,#0x01
	anl	a,_p0
	mov	r7,a
;	./N76_WS2812.c:195: NUM_LEDS = 50;
	jnz	00114$
	mov	_NUM_LEDS,#0x32
	mov	(_NUM_LEDS + 1),a
	sjmp	00154$
00114$:
;	./N76_WS2812.c:196: else if (inbit(SW_PORT, SW100_PIN) == 0)
	mov	a,#0x02
	anl	a,_p0
	clr	c
	rrc	a
	mov	r7,a
;	./N76_WS2812.c:197: NUM_LEDS = 100;
	jnz	00111$
	mov	_NUM_LEDS,#0x64
	mov	(_NUM_LEDS + 1),a
	sjmp	00154$
00111$:
;	./N76_WS2812.c:198: else if (inbit(SW_PORT, SW150_PIN) == 0)
	mov	a,#0x04
	anl	a,_p0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r7,a
;	./N76_WS2812.c:199: NUM_LEDS = 150;
	jnz	00108$
	mov	_NUM_LEDS,#0x96
	mov	(_NUM_LEDS + 1),a
	sjmp	00154$
00108$:
;	./N76_WS2812.c:200: else if (inbit(SW_PORT, SW200_PIN) == 0)
	mov	a,#0x08
	anl	a,_p0
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
;	./N76_WS2812.c:201: NUM_LEDS = 200;
	jnz	00154$
	mov	_NUM_LEDS,#0xc8
	mov	(_NUM_LEDS + 1),a
;	./N76_WS2812.c:203: while (1)
00154$:
;	./N76_WS2812.c:205: switch (effect)
	mov	a,_effect
	add	a,#0xff - 0x07
	jnc	00264$
	ljmp	00150$
00264$:
	mov	a,_effect
	add	a,#(00265$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_effect
	add	a,#(00266$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00265$:
	.db	00116$
	.db	00117$
	.db	00135$
	.db	00136$
	.db	00137$
	.db	00138$
	.db	00141$
	.db	00142$
00266$:
	.db	00116$>>8
	.db	00117$>>8
	.db	00135$>>8
	.db	00136$>>8
	.db	00137$>>8
	.db	00138$>>8
	.db	00141$>>8
	.db	00142$>>8
;	./N76_WS2812.c:207: case 0:
00116$:
;	./N76_WS2812.c:209: rainbowCycle();
	lcall	_rainbowCycle
;	./N76_WS2812.c:210: break;
	ljmp	00150$
;	./N76_WS2812.c:212: case 1:
00117$:
;	./N76_WS2812.c:214: switch (_color % 5)
	mov	r6,__color
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x05
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x00,00267$
	cjne	r7,#0x00,00267$
	sjmp	00118$
00267$:
	cjne	r6,#0x01,00268$
	cjne	r7,#0x00,00268$
	sjmp	00121$
00268$:
	cjne	r6,#0x02,00269$
	cjne	r7,#0x00,00269$
	sjmp	00124$
00269$:
	cjne	r6,#0x03,00270$
	cjne	r7,#0x00,00270$
	ljmp	00127$
00270$:
	cjne	r6,#0x04,00271$
	cjne	r7,#0x00,00271$
	ljmp	00130$
00271$:
	ljmp	00150$
;	./N76_WS2812.c:216: case 0:
00118$:
;	./N76_WS2812.c:217: colorWipe(COLOR_RED, 1);
	mov	_colorWipe_PARM_2,#0xef
	mov	_colorWipe_PARM_3,#0x07
	mov	_colorWipe_PARM_4,#0x01
	mov	dpl,#0x03
	lcall	_colorWipe
;	./N76_WS2812.c:218: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00272$
	ljmp	00150$
00272$:
;	./N76_WS2812.c:220: colorWipe(COLOR_ORANGE, 0);
	mov	_colorWipe_PARM_2,#0xff
	mov	_colorWipe_PARM_3,#0x00
	mov	_colorWipe_PARM_4,#0x00
	mov	dpl,#0x99
	lcall	_colorWipe
;	./N76_WS2812.c:221: break;
	ljmp	00150$
;	./N76_WS2812.c:222: case 1:
00121$:
;	./N76_WS2812.c:223: colorWipe(COLOR_ORANGE, 1);
	mov	_colorWipe_PARM_2,#0xff
	mov	_colorWipe_PARM_3,#0x00
	mov	_colorWipe_PARM_4,#0x01
	mov	dpl,#0x99
	lcall	_colorWipe
;	./N76_WS2812.c:224: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00273$
	ljmp	00150$
00273$:
;	./N76_WS2812.c:226: colorWipe(COLOR_YELLOW, 0);
	mov	_colorWipe_PARM_2,#0xff
	mov	_colorWipe_PARM_3,#0x00
	mov	_colorWipe_PARM_4,#0x00
	mov	dpl,#0xeb
	lcall	_colorWipe
;	./N76_WS2812.c:227: break;
	ljmp	00150$
;	./N76_WS2812.c:228: case 2:
00124$:
;	./N76_WS2812.c:229: colorWipe(COLOR_GREEN, 1);
	mov	_colorWipe_PARM_2,#0x1d
	mov	_colorWipe_PARM_3,#0x54
	mov	_colorWipe_PARM_4,#0x01
	mov	dpl,#0xb9
	lcall	_colorWipe
;	./N76_WS2812.c:230: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00274$
	ljmp	00150$
00274$:
;	./N76_WS2812.c:232: colorWipe(COLOR_BLUE, 0);
	mov	_colorWipe_PARM_2,#0x15
	mov	_colorWipe_PARM_3,#0xf7
	mov	_colorWipe_PARM_4,#0x00
	mov	dpl,#0x0d
	lcall	_colorWipe
;	./N76_WS2812.c:233: break;
	ljmp	00150$
;	./N76_WS2812.c:234: case 3:
00127$:
;	./N76_WS2812.c:235: colorWipe(COLOR_VIOLET, 1);
	mov	_colorWipe_PARM_2,#0xa0
	mov	_colorWipe_PARM_3,#0xc6
	mov	_colorWipe_PARM_4,#0x01
	mov	dpl,#0x40
	lcall	_colorWipe
;	./N76_WS2812.c:236: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00275$
	ljmp	00150$
00275$:
;	./N76_WS2812.c:238: colorWipe(COLOR_YELLOW, 0);
	mov	_colorWipe_PARM_2,#0xff
	mov	_colorWipe_PARM_3,#0x00
	mov	_colorWipe_PARM_4,#0x00
	mov	dpl,#0xeb
	lcall	_colorWipe
;	./N76_WS2812.c:239: break;
	ljmp	00150$
;	./N76_WS2812.c:240: case 4:
00130$:
;	./N76_WS2812.c:241: colorWipe(COLOR_GREEN, 1);
	mov	_colorWipe_PARM_2,#0x1d
	mov	_colorWipe_PARM_3,#0x54
	mov	_colorWipe_PARM_4,#0x01
	mov	dpl,#0xb9
	lcall	_colorWipe
;	./N76_WS2812.c:242: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00276$
	ljmp	00150$
00276$:
;	./N76_WS2812.c:244: colorWipe(COLOR_RED, 0);
	mov	_colorWipe_PARM_2,#0xef
	mov	_colorWipe_PARM_3,#0x07
	mov	_colorWipe_PARM_4,#0x00
	mov	dpl,#0x03
	lcall	_colorWipe
;	./N76_WS2812.c:245: break;
	ljmp	00150$
;	./N76_WS2812.c:252: case 2:
00135$:
;	./N76_WS2812.c:254: FadeInOut(g2, r2, b2);
	mov	_FadeInOut_PARM_2,_r2
	mov	_FadeInOut_PARM_3,_b2
	mov	dpl,_g2
	lcall	_FadeInOut
;	./N76_WS2812.c:255: break;
	ljmp	00150$
;	./N76_WS2812.c:257: case 3:
00136$:
;	./N76_WS2812.c:259: CylonBounce(g2, r2, b2, NUM_LEDS * 5 / 100, 50);
	mov	__mulint_PARM_2,_NUM_LEDS
	mov	(__mulint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x0005
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	_CylonBounce_PARM_4,r6
	mov	(_CylonBounce_PARM_4 + 1),r7
	mov	_CylonBounce_PARM_2,_r2
	mov	_CylonBounce_PARM_3,_b2
	mov	_CylonBounce_PARM_5,#0x32
	mov	(_CylonBounce_PARM_5 + 1),#0x00
	mov	dpl,_g2
	lcall	_CylonBounce
;	./N76_WS2812.c:260: break;
	ljmp	00150$
;	./N76_WS2812.c:262: case 4:
00137$:
;	./N76_WS2812.c:264: CylonBounceI(g2, r2, b2, NUM_LEDS * 5 / 100, 50);
	mov	__mulint_PARM_2,_NUM_LEDS
	mov	(__mulint_PARM_2 + 1),(_NUM_LEDS + 1)
	mov	dptr,#0x0005
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	_CylonBounceI_PARM_4,r6
	mov	(_CylonBounceI_PARM_4 + 1),r7
	mov	_CylonBounceI_PARM_2,_r2
	mov	_CylonBounceI_PARM_3,_b2
	mov	_CylonBounceI_PARM_5,#0x32
	mov	(_CylonBounceI_PARM_5 + 1),#0x00
	mov	dpl,_g2
	lcall	_CylonBounceI
;	./N76_WS2812.c:265: break;
	ljmp	00150$
;	./N76_WS2812.c:267: case 5:
00138$:
;	./N76_WS2812.c:269: Pattern3(g2, r2, b2, 1);
	mov	_Pattern3_PARM_2,_r2
	mov	_Pattern3_PARM_3,_b2
	mov	_Pattern3_PARM_4,#0x01
	mov	dpl,_g2
	lcall	_Pattern3
;	./N76_WS2812.c:270: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00277$
	ljmp	00150$
00277$:
;	./N76_WS2812.c:272: Pattern3(0, 0, 0, 0);
	mov	_Pattern3_PARM_2,#0x00
	mov	_Pattern3_PARM_3,#0x00
	mov	_Pattern3_PARM_4,#0x00
	mov	dpl,#0x00
	lcall	_Pattern3
;	./N76_WS2812.c:273: break;
	ljmp	00150$
;	./N76_WS2812.c:275: case 6:
00141$:
;	./N76_WS2812.c:277: Pattern1(g2, r2, b2);
	mov	_Pattern1_PARM_2,_r2
	mov	_Pattern1_PARM_3,_b2
	mov	dpl,_g2
	lcall	_Pattern1
;	./N76_WS2812.c:278: break;
	ljmp	00150$
;	./N76_WS2812.c:280: case 7:
00142$:
;	./N76_WS2812.c:282: switch (_color % 5)
	mov	r6,__color
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x05
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x00,00278$
	cjne	r7,#0x00,00278$
	sjmp	00143$
00278$:
	cjne	r6,#0x01,00279$
	cjne	r7,#0x00,00279$
	sjmp	00144$
00279$:
	cjne	r6,#0x02,00280$
	cjne	r7,#0x00,00280$
	sjmp	00145$
00280$:
	cjne	r6,#0x03,00281$
	cjne	r7,#0x00,00281$
	sjmp	00146$
00281$:
;	./N76_WS2812.c:284: case 0:
	cjne	r6,#0x04,00150$
	cjne	r7,#0x00,00150$
	sjmp	00147$
00143$:
;	./N76_WS2812.c:285: Pattern2(COLOR_RED, COLOR_ORANGE);
	mov	_Pattern2_PARM_2,#0xef
	mov	_Pattern2_PARM_3,#0x07
	mov	_Pattern2_PARM_4,#0x99
	mov	_Pattern2_PARM_5,#0xff
	mov	_Pattern2_PARM_6,#0x00
	mov	dpl,#0x03
	lcall	_Pattern2
;	./N76_WS2812.c:286: break;
;	./N76_WS2812.c:287: case 1:
	sjmp	00150$
00144$:
;	./N76_WS2812.c:288: Pattern2(COLOR_ORANGE, COLOR_YELLOW);
	mov	_Pattern2_PARM_2,#0xff
	mov	_Pattern2_PARM_3,#0x00
	mov	_Pattern2_PARM_4,#0xeb
	mov	_Pattern2_PARM_5,#0xff
	mov	_Pattern2_PARM_6,#0x00
	mov	dpl,#0x99
	lcall	_Pattern2
;	./N76_WS2812.c:289: break;
;	./N76_WS2812.c:290: case 2:
	sjmp	00150$
00145$:
;	./N76_WS2812.c:291: Pattern2(COLOR_GREEN, COLOR_BLUE);
	mov	_Pattern2_PARM_2,#0x1d
	mov	_Pattern2_PARM_3,#0x54
	mov	_Pattern2_PARM_4,#0x0d
	mov	_Pattern2_PARM_5,#0x15
	mov	_Pattern2_PARM_6,#0xf7
	mov	dpl,#0xb9
	lcall	_Pattern2
;	./N76_WS2812.c:292: break;
;	./N76_WS2812.c:293: case 3:
	sjmp	00150$
00146$:
;	./N76_WS2812.c:294: Pattern2(COLOR_VIOLET, COLOR_YELLOW);
	mov	_Pattern2_PARM_2,#0xa0
	mov	_Pattern2_PARM_3,#0xc6
	mov	_Pattern2_PARM_4,#0xeb
	mov	_Pattern2_PARM_5,#0xff
	mov	_Pattern2_PARM_6,#0x00
	mov	dpl,#0x40
	lcall	_Pattern2
;	./N76_WS2812.c:295: break;
;	./N76_WS2812.c:296: case 4:
	sjmp	00150$
00147$:
;	./N76_WS2812.c:297: Pattern2(COLOR_GREEN, COLOR_RED);
	mov	_Pattern2_PARM_2,#0x1d
	mov	_Pattern2_PARM_3,#0x54
	mov	_Pattern2_PARM_4,#0x03
	mov	_Pattern2_PARM_5,#0xef
	mov	_Pattern2_PARM_6,#0x07
	mov	dpl,#0xb9
	lcall	_Pattern2
;	./N76_WS2812.c:305: }
00150$:
;	./N76_WS2812.c:306: if (_status == STT_NEW)
	mov	a,#0x12
	cjne	a,__status,00283$
	sjmp	00284$
00283$:
	ljmp	00154$
00284$:
;	./N76_WS2812.c:308: _status = STT_NOTSAVED;
	mov	__status,#0x56
;	./N76_WS2812.c:309: _cnt = 0;
	mov	__cnt,#0x00
;	./N76_WS2812.c:312: }
	ljmp	00154$
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_INT_FUCTION'
;------------------------------------------------------------
;	./N76_WS2812.c:313: ISR(ADC_INT_FUCTION, INTERRUPT_ADC)
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
;	./N76_WS2812.c:315: _delay = (ADCRH << 4) | ADCRL;
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
;	./N76_WS2812.c:316: clrb(ADCCON0, ADCF);
	anl	_adccon0,#0x7f
;	./N76_WS2812.c:317: }
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
;	./N76_WS2812.c:319: ISR(PIN_INT_FUCTION, INTERRUPT_PIN)
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
;	./N76_WS2812.c:322: if (PIF == 0x08 && _status != STT_OLD)
	mov	a,#0x08
	cjne	a,_pif,00114$
	mov	a,__status
	jz	00114$
;	./N76_WS2812.c:324: if (++effect > NUM_EFFECT)
	inc	_effect
	mov	a,_effect
	add	a,#0xff - 0x07
	jnc	00102$
;	./N76_WS2812.c:325: effect = 0;
	mov	_effect,#0x00
00102$:
;	./N76_WS2812.c:327: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./N76_WS2812.c:328: _delay_us(500000);
	mov	dptr,#0xa120
	mov	b,#0x07
	clr	a
	lcall	__delay_us
	sjmp	00115$
00114$:
;	./N76_WS2812.c:331: else if (PIF == 0x10 && _status != STT_OLD)
	mov	a,#0x10
	cjne	a,_pif,00115$
	mov	a,__status
	jz	00115$
;	./N76_WS2812.c:333: _color++;
	inc	__color
;	./N76_WS2812.c:334: _status = STT_NOTSAVED;
	mov	__status,#0x56
;	./N76_WS2812.c:335: if (effect == 1)
	mov	a,#0x01
	cjne	a,_effect,00108$
;	./N76_WS2812.c:337: if (_color >= 5)
	mov	a,#0x100 - 0x05
	add	a,__color
	jnc	00109$
;	./N76_WS2812.c:339: _color = 0;
	mov	__color,#0x00
	sjmp	00109$
00108$:
;	./N76_WS2812.c:342: else if (_color >= 8)
	mov	a,#0x100 - 0x08
	add	a,__color
	jnc	00109$
;	./N76_WS2812.c:344: _color = 0;
	mov	__color,#0x00
00109$:
;	./N76_WS2812.c:347: setAll(0, 0, 0);
	mov	_setAll_PARM_2,#0x00
	mov	_setAll_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_setAll
;	./N76_WS2812.c:348: changeColor();
	lcall	_changeColor
;	./N76_WS2812.c:350: _delay_us(500000);
	mov	dptr,#0xa120
	mov	b,#0x07
	clr	a
	lcall	__delay_us
00115$:
;	./N76_WS2812.c:352: PIF = 0x00; // clear interrupt flag
	mov	_pif,#0x00
;	./N76_WS2812.c:353: }
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
;	./N76_WS2812.c:355: ISR(timer2, INTERRUPT_TIMER2) // every 0.25s
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
;	./N76_WS2812.c:357: _cnt++;
	inc	__cnt
;	./N76_WS2812.c:359: if (_cnt == 40) // every 10s
	mov	a,#0x28
	cjne	a,__cnt,00104$
;	./N76_WS2812.c:361: if (_status == STT_NOTSAVED)
	mov	a,#0x56
	cjne	a,__status,00104$
;	./N76_WS2812.c:363: Erase_APROM(ADDR_COLOR);
	mov	dptr,#0x3001
	lcall	_Erase_APROM
;	./N76_WS2812.c:364: Erase_APROM(ADDR_EFF);
	mov	dptr,#0x3000
	lcall	_Erase_APROM
;	./N76_WS2812.c:365: APROM_write_byte(ADDR_EFF, effect);   // write effect to APROM
	mov	_APROM_write_byte_PARM_2,_effect
	mov	dptr,#0x3000
	lcall	_APROM_write_byte
;	./N76_WS2812.c:366: APROM_write_byte(ADDR_COLOR, _color); // write _color to APROM
	mov	_APROM_write_byte_PARM_2,__color
	mov	dptr,#0x3001
	lcall	_APROM_write_byte
;	./N76_WS2812.c:367: clrb(EIE, EPI);                       // clear pin interrupt
	anl	_eie,#0xfd
;	./N76_WS2812.c:368: _status = STT_OLD;
	mov	__status,#0x00
;	./N76_WS2812.c:370: _cnt == 0;
00104$:
;	./N76_WS2812.c:372: if (_cnt % 4 == 0) // every 0.5s
	mov	a,__cnt
	anl	a,#0x03
	jz	00171$
	sjmp	00121$
00171$:
;	./N76_WS2812.c:374: uint16_t x = NUM_LEDS;
	mov	r6,_NUM_LEDS
	mov	r7,(_NUM_LEDS + 1)
;	./N76_WS2812.c:375: if (inbit(SW_PORT, SW50_PIN) == 0)
	mov	a,#0x01
	anl	a,_p0
	mov	r5,a
;	./N76_WS2812.c:376: NUM_LEDS = 50;
	jnz	00114$
	mov	_NUM_LEDS,#0x32
	mov	(_NUM_LEDS + 1),a
	sjmp	00115$
00114$:
;	./N76_WS2812.c:377: else if (inbit(SW_PORT, SW100_PIN) == 0)
	mov	a,#0x02
	anl	a,_p0
	clr	c
	rrc	a
	mov	r5,a
;	./N76_WS2812.c:378: NUM_LEDS = 100;
	jnz	00111$
	mov	_NUM_LEDS,#0x64
	mov	(_NUM_LEDS + 1),a
	sjmp	00115$
00111$:
;	./N76_WS2812.c:379: else if (inbit(SW_PORT, SW150_PIN) == 0)
	mov	a,#0x04
	anl	a,_p0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r5,a
;	./N76_WS2812.c:380: NUM_LEDS = 150;
	jnz	00108$
	mov	_NUM_LEDS,#0x96
	mov	(_NUM_LEDS + 1),a
	sjmp	00115$
00108$:
;	./N76_WS2812.c:381: else if (inbit(SW_PORT, SW200_PIN) == 0)
	mov	a,#0x08
	anl	a,_p0
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
;	./N76_WS2812.c:382: NUM_LEDS = 200;
	jnz	00115$
	mov	_NUM_LEDS,#0xc8
	mov	(_NUM_LEDS + 1),a
00115$:
;	./N76_WS2812.c:384: if (NUM_LEDS != x)
	mov	a,r6
	cjne	a,_NUM_LEDS,00176$
	mov	a,r7
	cjne	a,(_NUM_LEDS + 1),00176$
	sjmp	00117$
00176$:
;	./N76_WS2812.c:386: clearAll();
	lcall	_clearAll
00117$:
;	./N76_WS2812.c:388: if (_status == STT_OLD)
	mov	a,__status
	jnz	00119$
;	./N76_WS2812.c:390: daobit(LED2_PORT, LED2_PIN);
	xrl	_p0,#0x20
00119$:
;	./N76_WS2812.c:393: setb(ADCCON0, ADCS);
	orl	_adccon0,#0x40
00121$:
;	./N76_WS2812.c:396: if (_status != STT_OLD)
	mov	a,__status
	jz	00123$
;	./N76_WS2812.c:398: daobit(LED2_PORT, LED2_PIN);
	xrl	_p0,#0x20
00123$:
;	./N76_WS2812.c:400: clrb(T2CON, TF2); // TF2
	anl	_t2con,#0x7f
;	./N76_WS2812.c:401: }
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
