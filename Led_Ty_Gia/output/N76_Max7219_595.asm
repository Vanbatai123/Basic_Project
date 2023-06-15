;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module N76_Max7219_595
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
	.globl _MAX7219_transfer_PARM_3
	.globl _MAX7219_transfer_PARM_2
	.globl _MAX7219_transferAll_PARM_3
	.globl _MAX7219_transferAll_PARM_2
	.globl _SPI_begin
	.globl _SPI_transfer
	.globl _MAX7219_begin
	.globl _MAX7219_transferAll
	.globl _MAX7219_transfer
	.globl _HC595_transfer
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
_MAX7219_transferAll_PARM_2:
	.ds 1
_MAX7219_transferAll_PARM_3:
	.ds 1
_MAX7219_transfer_PARM_2:
	.ds 1
_MAX7219_transfer_PARM_3:
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
;Allocation info for local variables in function 'SPI_begin'
;------------------------------------------------------------
;	./src/N76_Max7219_595.c:11: void SPI_begin(void)
;	-----------------------------------------
;	 function SPI_begin
;	-----------------------------------------
_SPI_begin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/N76_Max7219_595.c:13: setb(SPSR, DISMODF); // SS pin user define
	orl	_spsr,#0x08
;	./src/N76_Max7219_595.c:14: clrb(SPCR, SSOE);	 // SS pin user define
	anl	_spcr,#0x7f
;	./src/N76_Max7219_595.c:15: SPCR |= (1 << SPIEN) | (1 << MSTR) | (1 << SPR1) | (1 << SPR0);
	orl	_spcr,#0x53
;	./src/N76_Max7219_595.c:17: clrb(SPI_PxM1_CLK, SPI_PIN_CLK);
	anl	_p1m1,#0xfe
;	./src/N76_Max7219_595.c:18: clrb(SPI_PxM1_MOSI, SPI_PIN_MOSI);
	anl	_p0m1,#0xfe
;	./src/N76_Max7219_595.c:19: setb(SPI_PxM1_MISO, SPI_PIN_MISO);
	orl	_p0m1,#0x02
;	./src/N76_Max7219_595.c:20: clrb(SPI_PxM1_SS, SPI_PIN_SS);
	anl	_p1m1,#0xfd
;	./src/N76_Max7219_595.c:21: clrb(SPI_PxM1_SS, SPI_PIN_SS2);
	anl	_p1m1,#0xfb
;	./src/N76_Max7219_595.c:23: setb(SPI_PxM2_CLK, SPI_PIN_CLK);
	orl	_p1m2,#0x01
;	./src/N76_Max7219_595.c:24: setb(SPI_PxM2_MOSI, SPI_PIN_MOSI);
	orl	_p0m2,#0x01
;	./src/N76_Max7219_595.c:25: setb(SPI_PxM2_MISO, SPI_PIN_MISO);
	orl	_p0m2,#0x02
;	./src/N76_Max7219_595.c:26: setb(SPI_PxM2_SS, SPI_PIN_SS);
	orl	_p1m2,#0x02
;	./src/N76_Max7219_595.c:27: setb(SPI_PxM2_SS, SPI_PIN_SS2);
	orl	_p1m2,#0x04
;	./src/N76_Max7219_595.c:29: setb(SPI_Px_SS, SPI_PIN_SS2);
	orl	_p1,#0x04
;	./src/N76_Max7219_595.c:30: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_Max7219_595.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_transfer'
;------------------------------------------------------------
;data                      Allocated to registers 
;------------------------------------------------------------
;	./src/N76_Max7219_595.c:33: void SPI_transfer(uint8_t data)
;	-----------------------------------------
;	 function SPI_transfer
;	-----------------------------------------
_SPI_transfer:
	mov	_spdr,dpl
;	./src/N76_Max7219_595.c:36: __asm__("nop");
	nop
;	./src/N76_Max7219_595.c:37: while (inbit(SPSR, SPIF) == 0)
00101$:
	mov	a,#0x80
	anl	a,_spsr
	rl	a
	anl	a,#0x01
	jz	00101$
;	./src/N76_Max7219_595.c:39: clrb(SPSR, SPIF);
	anl	_spsr,#0x7f
;	./src/N76_Max7219_595.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAX7219_begin'
;------------------------------------------------------------
;	./src/N76_Max7219_595.c:50: void MAX7219_begin(void)
;	-----------------------------------------
;	 function MAX7219_begin
;	-----------------------------------------
_MAX7219_begin:
;	./src/N76_Max7219_595.c:52: SPI_begin();
	lcall	_SPI_begin
;	./src/N76_Max7219_595.c:54: MAX7219_transferAll(3, SCAN_LIMIT, 0x07);
	mov	_MAX7219_transferAll_PARM_2,#0x0b
	mov	_MAX7219_transferAll_PARM_3,#0x07
	mov	dpl,#0x03
	lcall	_MAX7219_transferAll
;	./src/N76_Max7219_595.c:55: MAX7219_transferAll(3, DECODE_MODE, 0xFF);
	mov	_MAX7219_transferAll_PARM_2,#0x09
	mov	_MAX7219_transferAll_PARM_3,#0xff
	mov	dpl,#0x03
	lcall	_MAX7219_transferAll
;	./src/N76_Max7219_595.c:56: MAX7219_transferAll(3, SHUTDOWN, 0x01);
	mov	_MAX7219_transferAll_PARM_2,#0x0c
	mov	_MAX7219_transferAll_PARM_3,#0x01
	mov	dpl,#0x03
	lcall	_MAX7219_transferAll
;	./src/N76_Max7219_595.c:57: MAX7219_transferAll(3, DISPLAY_TEST, 0x00);
	mov	_MAX7219_transferAll_PARM_2,#0x0f
	mov	_MAX7219_transferAll_PARM_3,#0x00
	mov	dpl,#0x03
	lcall	_MAX7219_transferAll
;	./src/N76_Max7219_595.c:58: MAX7219_transferAll(3, INTENSITY, 0x01);
	mov	_MAX7219_transferAll_PARM_2,#0x0a
	mov	_MAX7219_transferAll_PARM_3,#0x01
	mov	dpl,#0x03
;	./src/N76_Max7219_595.c:59: }
	ljmp	_MAX7219_transferAll
;------------------------------------------------------------
;Allocation info for local variables in function 'MAX7219_transferAll'
;------------------------------------------------------------
;addr                      Allocated with name '_MAX7219_transferAll_PARM_2'
;data                      Allocated with name '_MAX7219_transferAll_PARM_3'
;chip                      Allocated to registers r7 
;------------------------------------------------------------
;	./src/N76_Max7219_595.c:61: void MAX7219_transferAll(int8_t chip, const uint8_t addr, const uint8_t data)
;	-----------------------------------------
;	 function MAX7219_transferAll
;	-----------------------------------------
_MAX7219_transferAll:
	mov	r7,dpl
;	./src/N76_Max7219_595.c:63: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_Max7219_595.c:64: while (chip--)
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00103$
;	./src/N76_Max7219_595.c:66: SPI_transfer(addr);
	mov	dpl,_MAX7219_transferAll_PARM_2
	push	ar7
	lcall	_SPI_transfer
;	./src/N76_Max7219_595.c:67: SPI_transfer(data);
	mov	dpl,_MAX7219_transferAll_PARM_3
	lcall	_SPI_transfer
	pop	ar7
	sjmp	00101$
00103$:
;	./src/N76_Max7219_595.c:69: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_Max7219_595.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAX7219_transfer'
;------------------------------------------------------------
;addr                      Allocated with name '_MAX7219_transfer_PARM_2'
;data                      Allocated with name '_MAX7219_transfer_PARM_3'
;chip                      Allocated to registers r7 
;total                     Allocated to registers r6 
;------------------------------------------------------------
;	./src/N76_Max7219_595.c:72: void MAX7219_transfer(uint8_t chip, const uint8_t addr, const uint8_t data)
;	-----------------------------------------
;	 function MAX7219_transfer
;	-----------------------------------------
_MAX7219_transfer:
	mov	r7,dpl
;	./src/N76_Max7219_595.c:74: uint8_t total = chip & 0x0F; // 8
	mov	a,#0x0f
	anl	a,r7
	mov	r6,a
;	./src/N76_Max7219_595.c:75: chip = chip >> 4;			 // 3
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	r7,a
;	./src/N76_Max7219_595.c:77: clrb(SPI_Px_SS, SPI_PIN_SS);
	anl	_p1,#0xfd
;	./src/N76_Max7219_595.c:79: while (--total >= chip)
00101$:
	dec	r6
	clr	c
	mov	a,r6
	subb	a,r7
	jc	00103$
;	./src/N76_Max7219_595.c:81: SPI_transfer(0x00);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_SPI_transfer
;	./src/N76_Max7219_595.c:82: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	./src/N76_Max7219_595.c:86: SPI_transfer(addr);
	mov	dpl,_MAX7219_transfer_PARM_2
	push	ar7
	lcall	_SPI_transfer
;	./src/N76_Max7219_595.c:87: SPI_transfer(data);
	mov	dpl,_MAX7219_transfer_PARM_3
	lcall	_SPI_transfer
	pop	ar7
;	./src/N76_Max7219_595.c:90: while (--chip >= 1)
00104$:
	dec	r7
	cjne	r7,#0x01,00132$
00132$:
	jc	00106$
;	./src/N76_Max7219_595.c:92: SPI_transfer(0x00);
	mov	dpl,#0x00
	push	ar7
	lcall	_SPI_transfer
;	./src/N76_Max7219_595.c:93: SPI_transfer(0x00);
	mov	dpl,#0x00
	lcall	_SPI_transfer
	pop	ar7
	sjmp	00104$
00106$:
;	./src/N76_Max7219_595.c:95: setb(SPI_Px_SS, SPI_PIN_SS);
	orl	_p1,#0x02
;	./src/N76_Max7219_595.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HC595_transfer'
;------------------------------------------------------------
;data                      Allocated to registers 
;------------------------------------------------------------
;	./src/N76_Max7219_595.c:98: void HC595_transfer(uint8_t data)
;	-----------------------------------------
;	 function HC595_transfer
;	-----------------------------------------
_HC595_transfer:
;	./src/N76_Max7219_595.c:100: SPI_transfer(data);
	lcall	_SPI_transfer
;	./src/N76_Max7219_595.c:101: clrb(SPI_Px_SS, SPI_PIN_SS2);
	anl	_p1,#0xfb
;	./src/N76_Max7219_595.c:102: setb(SPI_Px_SS, SPI_PIN_SS2);
	orl	_p1,#0x04
;	./src/N76_Max7219_595.c:103: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
