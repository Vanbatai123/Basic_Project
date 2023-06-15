;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module N76_LedTyGia
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ma
	.globl _PIN_INT_FUCTION
	.globl _TIMER_0P5MS
	.globl _main
	.globl _IR_begin
	.globl _digitalClockDisplay
	.globl _printDigits
	.globl _set_time
	.globl _get_time
	.globl _UART_printNum
	.globl _MAX7219_transfer
	.globl _MAX7219_begin
	.globl _decimal_to_bcd
	.globl _bcd_to_decimal
	.globl _DS1307_write
	.globl _DS1307_read
	.globl _DS1307_begin
	.globl _UART0_printNum
	.globl _UART0_println
	.globl _UART0_print
	.globl _UART0_putChar
	.globl _UART0_begin
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
	.globl _repeat
	.globl __IR_received
	.globl _data2
	.globl _data
	.globl _count_data
	.globl _start_status
	.globl _count_ms1
	.globl _count_ms
	.globl _txdata
	.globl _sec_tt
	.globl _time
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
_time::
	.ds 7
_sec_tt::
	.ds 1
_txdata::
	.ds 2
_count_ms::
	.ds 2
_count_ms1::
	.ds 2
_start_status::
	.ds 2
_count_data::
	.ds 2
_data::
	.ds 4
_data2::
	.ds 4
__IR_received::
	.ds 1
_repeat::
	.ds 1
_UART_printNum_num_65536_64:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
	ljmp	_PIN_INT_FUCTION
	.ds	5
	ljmp	_TIMER_0P5MS
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
;	./N76_LedTyGia.c:48: uint8_t sec_tt = 0;
	mov	_sec_tt,#0x00
;	./N76_LedTyGia.c:54: uint8_t _IR_received = 0;
	mov	__IR_received,#0x00
;	./N76_LedTyGia.c:55: uint8_t repeat = 0;
	mov	_repeat,#0x00
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
;Allocation info for local variables in function 'UART_printNum'
;------------------------------------------------------------
;num                       Allocated with name '_UART_printNum_num_65536_64'
;temp                      Allocated to registers r7 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	./N76_LedTyGia.c:60: void UART_printNum(uint32_t num)
;	-----------------------------------------
;	 function UART_printNum
;	-----------------------------------------
_UART_printNum:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_UART_printNum_num_65536_64,dpl
	mov	(_UART_printNum_num_65536_64 + 1),dph
	mov	(_UART_printNum_num_65536_64 + 2),b
	mov	(_UART_printNum_num_65536_64 + 3),a
;	./N76_LedTyGia.c:63: UART0_putChar('0');
	mov	dpl,#0x30
	lcall	_UART0_putChar
;	./N76_LedTyGia.c:64: UART0_putChar('x');
	mov	dpl,#0x78
	lcall	_UART0_putChar
;	./N76_LedTyGia.c:65: for (uint8_t i = 0; i < 8; i++)
	mov	r3,#0x00
00108$:
	cjne	r3,#0x08,00129$
00129$:
	jnc	00106$
;	./N76_LedTyGia.c:67: temp = (uint8_t)((num >> (4 * (7 - i))) & 0x0000000F);
	mov	a,#0x07
	clr	c
	subb	a,r3
	add	a,acc
	add	a,acc
	mov	r2,a
	mov	b,r2
	inc	b
	mov	r0,_UART_printNum_num_65536_64
	mov	r1,(_UART_printNum_num_65536_64 + 1)
	mov	r2,(_UART_printNum_num_65536_64 + 2)
	mov	r7,(_UART_printNum_num_65536_64 + 3)
	sjmp	00132$
00131$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
00132$:
	djnz	b,00131$
	mov	a,#0x0f
	anl	a,r0
;	./N76_LedTyGia.c:68: if (temp <= 9)
	mov  r7,a
	add	a,#0xff - 0x09
	jc	00104$
;	./N76_LedTyGia.c:69: UART0_putChar(temp + 48);
	mov	ar6,r7
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	push	ar3
	lcall	_UART0_putChar
	pop	ar3
	sjmp	00109$
00104$:
;	./N76_LedTyGia.c:70: else if (temp > 9)
	mov	a,r7
	add	a,#0xff - 0x09
	jnc	00109$
;	./N76_LedTyGia.c:71: UART0_putChar(temp + 55);
	mov	a,#0x37
	add	a,r7
	mov	dpl,a
	push	ar3
	lcall	_UART0_putChar
	pop	ar3
00109$:
;	./N76_LedTyGia.c:65: for (uint8_t i = 0; i < 8; i++)
	inc	r3
	sjmp	00108$
00106$:
;	./N76_LedTyGia.c:73: UART0_putChar('\n');
	mov	dpl,#0x0a
;	./N76_LedTyGia.c:74: }
	ljmp	_UART0_putChar
;------------------------------------------------------------
;Allocation info for local variables in function 'get_time'
;------------------------------------------------------------
;	./N76_LedTyGia.c:76: void get_time(void)
;	-----------------------------------------
;	 function get_time
;	-----------------------------------------
_get_time:
;	./N76_LedTyGia.c:78: time.s = DS1307_read(DS1307_SEC_REG);
	mov	dpl,#0x00
	lcall	_DS1307_read
	mov	a,dpl
	mov	_time,a
;	./N76_LedTyGia.c:79: time.m = DS1307_read(DS1307_MIN_REG);
	mov	dpl,#0x01
	lcall	_DS1307_read
	mov	a,dpl
	mov	(_time + 0x0001),a
;	./N76_LedTyGia.c:80: time.h = DS1307_read(DS1307_HOUR_REG);
	mov	dpl,#0x02
	lcall	_DS1307_read
	mov	a,dpl
	mov	(_time + 0x0002),a
;	./N76_LedTyGia.c:81: time.dy = DS1307_read(DS1307_DAY_REG);
	mov	dpl,#0x03
	lcall	_DS1307_read
	mov	a,dpl
	mov	(_time + 0x0003),a
;	./N76_LedTyGia.c:82: time.dt = DS1307_read(DS1307_DATE_REG);
	mov	dpl,#0x04
	lcall	_DS1307_read
	mov	a,dpl
	mov	(_time + 0x0004),a
;	./N76_LedTyGia.c:83: time.mt = DS1307_read(DS1307_MONTH_REG);
	mov	dpl,#0x05
	lcall	_DS1307_read
	mov	a,dpl
	mov	(_time + 0x0005),a
;	./N76_LedTyGia.c:84: time.yr = DS1307_read(DS1307_YEAR_REG);
	mov	dpl,#0x06
	lcall	_DS1307_read
	mov	a,dpl
	mov	(_time + 0x0006),a
;	./N76_LedTyGia.c:87: time.s = bcd_to_decimal(time.s);
	mov	dpl,_time
	lcall	_bcd_to_decimal
	mov	a,dpl
	mov	_time,a
;	./N76_LedTyGia.c:88: time.m = bcd_to_decimal(time.m);
	mov	dpl,(_time + 0x0001)
	lcall	_bcd_to_decimal
	mov	a,dpl
	mov	(_time + 0x0001),a
;	./N76_LedTyGia.c:89: time.h = bcd_to_decimal(time.h);
	mov	dpl,(_time + 0x0002)
	lcall	_bcd_to_decimal
	mov	a,dpl
	mov	(_time + 0x0002),a
;	./N76_LedTyGia.c:90: time.dy = bcd_to_decimal(time.dy);
	mov	dpl,(_time + 0x0003)
	lcall	_bcd_to_decimal
	mov	a,dpl
	mov	(_time + 0x0003),a
;	./N76_LedTyGia.c:91: time.dt = bcd_to_decimal(time.dt);
	mov	dpl,(_time + 0x0004)
	lcall	_bcd_to_decimal
	mov	a,dpl
	mov	(_time + 0x0004),a
;	./N76_LedTyGia.c:92: time.mt = bcd_to_decimal(time.mt);
	mov	dpl,(_time + 0x0005)
	lcall	_bcd_to_decimal
	mov	a,dpl
	mov	(_time + 0x0005),a
;	./N76_LedTyGia.c:93: time.yr = bcd_to_decimal(time.yr);
	mov	dpl,(_time + 0x0006)
	lcall	_bcd_to_decimal
	mov	a,dpl
	mov	(_time + 0x0006),a
;	./N76_LedTyGia.c:95: if (time.dy == 1)
	mov	a,#0x01
	cjne	a,(_time + 0x0003),00103$
;	./N76_LedTyGia.c:96: time.dy = 8;
	mov	(_time + 0x0003),#0x08
00103$:
;	./N76_LedTyGia.c:97: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_time'
;------------------------------------------------------------
;	./N76_LedTyGia.c:98: void set_time(void)
;	-----------------------------------------
;	 function set_time
;	-----------------------------------------
_set_time:
;	./N76_LedTyGia.c:100: time.s = decimal_to_bcd(time.s);
	mov	dpl,_time
	lcall	_decimal_to_bcd
	mov	a,dpl
	mov	_time,a
;	./N76_LedTyGia.c:101: time.m = decimal_to_bcd(time.m);
	mov	dpl,(_time + 0x0001)
	lcall	_decimal_to_bcd
	mov	a,dpl
	mov	(_time + 0x0001),a
;	./N76_LedTyGia.c:102: time.h = decimal_to_bcd(time.h);
	mov	dpl,(_time + 0x0002)
	lcall	_decimal_to_bcd
	mov	a,dpl
	mov	(_time + 0x0002),a
;	./N76_LedTyGia.c:103: time.dy = decimal_to_bcd(time.dy);
	mov	dpl,(_time + 0x0003)
	lcall	_decimal_to_bcd
	mov	a,dpl
	mov	(_time + 0x0003),a
;	./N76_LedTyGia.c:104: time.dt = decimal_to_bcd(time.dt);
	mov	dpl,(_time + 0x0004)
	lcall	_decimal_to_bcd
	mov	a,dpl
	mov	(_time + 0x0004),a
;	./N76_LedTyGia.c:105: time.mt = decimal_to_bcd(time.mt);
	mov	dpl,(_time + 0x0005)
	lcall	_decimal_to_bcd
	mov	a,dpl
	mov	(_time + 0x0005),a
;	./N76_LedTyGia.c:106: time.yr = decimal_to_bcd(time.yr);
	mov	dpl,(_time + 0x0006)
	lcall	_decimal_to_bcd
	mov	a,dpl
	mov	(_time + 0x0006),a
;	./N76_LedTyGia.c:109: DS1307_write(DS1307_SEC_REG, time.s);
	mov	_DS1307_write_PARM_2,_time
	mov	dpl,#0x00
	lcall	_DS1307_write
;	./N76_LedTyGia.c:110: DS1307_write(DS1307_MIN_REG, time.m);
	mov	_DS1307_write_PARM_2,(_time + 0x0001)
	mov	dpl,#0x01
	lcall	_DS1307_write
;	./N76_LedTyGia.c:111: DS1307_write(DS1307_HOUR_REG, time.h);
	mov	_DS1307_write_PARM_2,(_time + 0x0002)
	mov	dpl,#0x02
	lcall	_DS1307_write
;	./N76_LedTyGia.c:112: DS1307_write(DS1307_DAY_REG, time.dy);
	mov	_DS1307_write_PARM_2,(_time + 0x0003)
	mov	dpl,#0x03
	lcall	_DS1307_write
;	./N76_LedTyGia.c:113: DS1307_write(DS1307_DATE_REG, time.dt);
	mov	_DS1307_write_PARM_2,(_time + 0x0004)
	mov	dpl,#0x04
	lcall	_DS1307_write
;	./N76_LedTyGia.c:114: DS1307_write(DS1307_MONTH_REG, time.mt);
	mov	_DS1307_write_PARM_2,(_time + 0x0005)
	mov	dpl,#0x05
	lcall	_DS1307_write
;	./N76_LedTyGia.c:115: DS1307_write(DS1307_YEAR_REG, time.yr);
	mov	_DS1307_write_PARM_2,(_time + 0x0006)
	mov	dpl,#0x06
;	./N76_LedTyGia.c:116: }
	ljmp	_DS1307_write
;------------------------------------------------------------
;Allocation info for local variables in function 'printDigits'
;------------------------------------------------------------
;digits                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	./N76_LedTyGia.c:118: void printDigits(int digits)
;	-----------------------------------------
;	 function printDigits
;	-----------------------------------------
_printDigits:
	mov	r6,dpl
	mov	r7,dph
;	./N76_LedTyGia.c:121: UART0_print(":");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_UART0_print
	pop	ar6
	pop	ar7
;	./N76_LedTyGia.c:123: if (digits < 10)
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	./N76_LedTyGia.c:124: UART0_putChar('0');
	mov	dpl,#0x30
	push	ar7
	push	ar6
	lcall	_UART0_putChar
	pop	ar6
	pop	ar7
00102$:
;	./N76_LedTyGia.c:125: UART0_printNum(digits);
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
;	./N76_LedTyGia.c:126: }
	ljmp	_UART0_printNum
;------------------------------------------------------------
;Allocation info for local variables in function 'digitalClockDisplay'
;------------------------------------------------------------
;	./N76_LedTyGia.c:128: void digitalClockDisplay()
;	-----------------------------------------
;	 function digitalClockDisplay
;	-----------------------------------------
_digitalClockDisplay:
;	./N76_LedTyGia.c:131: UART0_printNum(time.h);
	mov	r4,(_time + 0x0002)
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART0_printNum
;	./N76_LedTyGia.c:132: printDigits(time.m);
	mov	r6,(_time + 0x0001)
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_printDigits
;	./N76_LedTyGia.c:133: printDigits(time.s);
	mov	r6,_time
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_printDigits
;	./N76_LedTyGia.c:134: UART0_print(" ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_UART0_print
;	./N76_LedTyGia.c:135: UART0_printNum(time.dy);
	mov	r4,(_time + 0x0003)
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART0_printNum
;	./N76_LedTyGia.c:136: UART0_print(" ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_UART0_print
;	./N76_LedTyGia.c:137: UART0_printNum(time.dt);
	mov	r4,(_time + 0x0004)
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART0_printNum
;	./N76_LedTyGia.c:138: UART0_print(" ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_UART0_print
;	./N76_LedTyGia.c:139: UART0_printNum(time.mt);
	mov	r4,(_time + 0x0005)
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART0_printNum
;	./N76_LedTyGia.c:140: UART0_print(" ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_UART0_print
;	./N76_LedTyGia.c:141: UART0_printNum(time.yr);
	mov	r4,(_time + 0x0006)
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART0_printNum
;	./N76_LedTyGia.c:142: UART0_println("");
	mov	dptr,#___str_2
	mov	b,#0x80
;	./N76_LedTyGia.c:143: }
	ljmp	_UART0_println
;------------------------------------------------------------
;Allocation info for local variables in function 'IR_begin'
;------------------------------------------------------------
;	./N76_LedTyGia.c:145: void IR_begin()
;	-----------------------------------------
;	 function IR_begin
;	-----------------------------------------
_IR_begin:
;	./N76_LedTyGia.c:147: setb(P3M1, 0);
	orl	_p3m1,#0x01
;	./N76_LedTyGia.c:148: clrb(P3M2, 0);
	anl	_p3m2,#0xfe
;	./N76_LedTyGia.c:149: setb(P3, 0);
	orl	_p3,#0x01
;	./N76_LedTyGia.c:152: setb(TCON, IT0); // set external interrupt 0 at falling edge
	orl	_tcon,#0x01
;	./N76_LedTyGia.c:153: setb(IE, EX0);	 // enable external 0 interrupt
	orl	_ie,#0x01
;	./N76_LedTyGia.c:156: TMOD &= 0xF0; // Timer 0 mode 1
	anl	_tmod,#0xf0
;	./N76_LedTyGia.c:157: TMOD |= 0x01;
	orl	_tmod,#0x01
;	./N76_LedTyGia.c:158: TL0 = 0xBF; // = 65535 - Reload value
	mov	_tl0,#0xbf
;	./N76_LedTyGia.c:159: TH0 = 0xE0;
	mov	_th0,#0xe0
;	./N76_LedTyGia.c:160: setb(CKCON, T0M); // Timer 0 use F_CPU instead of F_CPU/12 like other 8051
	orl	_ckcon,#0x08
;	./N76_LedTyGia.c:161: setb(IE, ET0);	  // Enable timer 0 interrupt
	orl	_ie,#0x02
;	./N76_LedTyGia.c:163: sei();			 // Enable global interrupt
	orl	_ie,#0x80
;	./N76_LedTyGia.c:164: setb(TCON, TR0); // Run timer 0
	orl	_tcon,#0x10
;	./N76_LedTyGia.c:165: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;numOfMax                  Allocated to registers 
;------------------------------------------------------------
;	./N76_LedTyGia.c:170: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./N76_LedTyGia.c:172: UART0_begin();
	lcall	_UART0_begin
;	./N76_LedTyGia.c:173: MAX7219_begin();
	lcall	_MAX7219_begin
;	./N76_LedTyGia.c:176: DS1307_begin();
	lcall	_DS1307_begin
;	./N76_LedTyGia.c:177: IR_begin();
	lcall	_IR_begin
;	./N76_LedTyGia.c:179: time.s = 1;
	mov	_time,#0x01
;	./N76_LedTyGia.c:180: time.m = 34;
	mov	(_time + 0x0001),#0x22
;	./N76_LedTyGia.c:181: time.h = 20;
	mov	(_time + 0x0002),#0x14
;	./N76_LedTyGia.c:183: time.dy = 3;
	mov	(_time + 0x0003),#0x03
;	./N76_LedTyGia.c:184: time.dt = 31;
	mov	(_time + 0x0004),#0x1f
;	./N76_LedTyGia.c:185: time.mt = 5;
	mov	(_time + 0x0005),#0x05
;	./N76_LedTyGia.c:186: time.yr = 22;
	mov	(_time + 0x0006),#0x16
;	./N76_LedTyGia.c:197: while (1)
00128$:
;	./N76_LedTyGia.c:199: get_time();
	lcall	_get_time
;	./N76_LedTyGia.c:200: if (sec_tt != time.s)
	mov	a,_time
	mov	r7,a
	cjne	a,_sec_tt,00236$
	ljmp	00102$
00236$:
;	./N76_LedTyGia.c:202: sec_tt = time.s;
	mov	_sec_tt,r7
;	./N76_LedTyGia.c:205: MAX7219_transfer(0x33, 1, 5);
	mov	_MAX7219_transfer_PARM_2,#0x01
	mov	_MAX7219_transfer_PARM_3,#0x05
	mov	dpl,#0x33
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:206: MAX7219_transfer(0x33, 2, 9);
	mov	_MAX7219_transfer_PARM_2,#0x02
	mov	_MAX7219_transfer_PARM_3,#0x09
	mov	dpl,#0x33
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:207: MAX7219_transfer(0x33, 3, 9);
	mov	_MAX7219_transfer_PARM_2,#0x03
	mov	_MAX7219_transfer_PARM_3,#0x09
	mov	dpl,#0x33
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:208: MAX7219_transfer(0x33, 4, 1);
	mov	_MAX7219_transfer_PARM_2,#0x04
	mov	_MAX7219_transfer_PARM_3,#0x01
	mov	dpl,#0x33
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:209: MAX7219_transfer(0x33, 5, 3 | CODEB_DP);
	mov	_MAX7219_transfer_PARM_2,#0x05
	mov	_MAX7219_transfer_PARM_3,#0xf3
	mov	dpl,#0x33
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:210: MAX7219_transfer(0x33, 6, 0);
	mov	_MAX7219_transfer_PARM_2,#0x06
	mov	_MAX7219_transfer_PARM_3,#0x00
	mov	dpl,#0x33
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:211: MAX7219_transfer(0x33, 7, 3 | CODEB_DP);
	mov	_MAX7219_transfer_PARM_2,#0x07
	mov	_MAX7219_transfer_PARM_3,#0xf3
	mov	dpl,#0x33
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:212: MAX7219_transfer(0x33, 8, 1);
	mov	_MAX7219_transfer_PARM_2,#0x08
	mov	_MAX7219_transfer_PARM_3,#0x01
	mov	dpl,#0x33
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:214: MAX7219_transfer(0x23, 1, time.yr % 10);
	mov	r6,(_time + 0x0006)
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x01
	mov	dpl,#0x23
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:215: MAX7219_transfer(0x23, 2, time.yr / 10);
	mov	r6,(_time + 0x0006)
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x02
	mov	dpl,#0x23
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:216: MAX7219_transfer(0x23, 3, time.mt % 10 | CODEB_DP);
	mov	r6,(_time + 0x0005)
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0xf0
	orl	a,r6
	mov	_MAX7219_transfer_PARM_3,a
	mov	_MAX7219_transfer_PARM_2,#0x03
	mov	dpl,#0x23
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:217: MAX7219_transfer(0x23, 4, time.mt / 10);
	mov	r6,(_time + 0x0005)
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x04
	mov	dpl,#0x23
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:218: MAX7219_transfer(0x23, 5, time.dt % 10 | CODEB_DP);
	mov	r6,(_time + 0x0004)
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0xf0
	orl	a,r6
	mov	_MAX7219_transfer_PARM_3,a
	mov	_MAX7219_transfer_PARM_2,#0x05
	mov	dpl,#0x23
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:219: MAX7219_transfer(0x23, 6, time.dt / 10);
	mov	r6,(_time + 0x0004)
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x06
	mov	dpl,#0x23
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:220: MAX7219_transfer(0x23, 7, 0x0F);
	mov	_MAX7219_transfer_PARM_2,#0x07
	mov	_MAX7219_transfer_PARM_3,#0x0f
	mov	dpl,#0x23
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:221: MAX7219_transfer(0x23, 8, time.dy);
	mov	_MAX7219_transfer_PARM_3,(_time + 0x0003)
	mov	_MAX7219_transfer_PARM_2,#0x08
	mov	dpl,#0x23
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:223: MAX7219_transfer(0x13, 1, time.s % 10);
	mov	r6,_time
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x01
	mov	dpl,#0x13
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:224: MAX7219_transfer(0x13, 2, time.s / 10);
	mov	r6,_time
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x02
	mov	dpl,#0x13
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:225: MAX7219_transfer(0x13, 3, sec_tt % 2 ? CODEB_MINUS : CODEB_BLANK);
	mov	a,_sec_tt
	jnb	acc.0,00132$
	mov	r6,#0x0a
	mov	r7,#0x00
	sjmp	00133$
00132$:
	mov	r6,#0x0f
	mov	r7,#0x00
00133$:
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x03
	mov	dpl,#0x13
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:226: MAX7219_transfer(0x13, 4, time.m % 10);
	mov	r6,(_time + 0x0001)
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x04
	mov	dpl,#0x13
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:227: MAX7219_transfer(0x13, 5, time.m / 10);
	mov	r6,(_time + 0x0001)
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x05
	mov	dpl,#0x13
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:228: MAX7219_transfer(0x13, 6, sec_tt % 2 ? CODEB_MINUS : CODEB_BLANK);
	mov	a,_sec_tt
	jnb	acc.0,00134$
	mov	r6,#0x0a
	mov	r7,#0x00
	sjmp	00135$
00134$:
	mov	r6,#0x0f
	mov	r7,#0x00
00135$:
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x06
	mov	dpl,#0x13
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:229: MAX7219_transfer(0x13, 7, time.h % 10);
	mov	r6,(_time + 0x0002)
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x07
	mov	dpl,#0x13
	lcall	_MAX7219_transfer
;	./N76_LedTyGia.c:230: MAX7219_transfer(0x13, 8, time.h / 10);
	mov	r6,(_time + 0x0002)
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	_MAX7219_transfer_PARM_3,r6
	mov	_MAX7219_transfer_PARM_2,#0x08
	mov	dpl,#0x13
	lcall	_MAX7219_transfer
00102$:
;	./N76_LedTyGia.c:243: if (_IR_received == 1)
	mov	a,#0x01
	cjne	a,__IR_received,00239$
	sjmp	00240$
00239$:
	ljmp	00128$
00240$:
;	./N76_LedTyGia.c:245: UART_printNum(data2);
	mov	dpl,_data2
	mov	dph,(_data2 + 1)
	mov	b,(_data2 + 2)
	mov	a,(_data2 + 3)
	lcall	_UART_printNum
;	./N76_LedTyGia.c:246: _IR_received = 0;
	mov	__IR_received,#0x00
;	./N76_LedTyGia.c:248: switch (data2)
	mov	a,#0x6f
	cjne	a,_data2,00241$
	cpl	a
	cjne	a,(_data2 + 1),00241$
	mov	a,#0xff
	cjne	a,(_data2 + 2),00241$
	cjne	a,(_data2 + 3),00241$
	ljmp	00112$
00241$:
	mov	a,#0x67
	cjne	a,_data2,00242$
	cpl	a
	cjne	a,(_data2 + 1),00242$
	mov	a,#0xff
	cjne	a,(_data2 + 2),00242$
	cjne	a,(_data2 + 3),00242$
	ljmp	00110$
00242$:
	mov	a,#0x5d
	cjne	a,_data2,00243$
	cpl	a
	cjne	a,(_data2 + 1),00243$
	mov	a,#0xff
	cjne	a,(_data2 + 2),00243$
	cjne	a,(_data2 + 3),00243$
	ljmp	00103$
00243$:
	mov	a,#0x57
	cjne	a,_data2,00244$
	cpl	a
	cjne	a,(_data2 + 1),00244$
	mov	a,#0xff
	cjne	a,(_data2 + 2),00244$
	cjne	a,(_data2 + 3),00244$
	ljmp	00107$
00244$:
	mov	a,#0x4f
	cjne	a,_data2,00245$
	cpl	a
	cjne	a,(_data2 + 1),00245$
	mov	a,#0xff
	cjne	a,(_data2 + 2),00245$
	cjne	a,(_data2 + 3),00245$
	ljmp	00108$
00245$:
	mov	a,#0x3d
	cjne	a,_data2,00246$
	cpl	a
	cjne	a,(_data2 + 1),00246$
	mov	a,#0xff
	cjne	a,(_data2 + 2),00246$
	cjne	a,(_data2 + 3),00246$
	ljmp	00106$
00246$:
	mov	a,#0x1f
	cjne	a,_data2,00247$
	cpl	a
	cjne	a,(_data2 + 1),00247$
	mov	a,#0xff
	cjne	a,(_data2 + 2),00247$
	cjne	a,(_data2 + 3),00247$
	ljmp	00111$
00247$:
	mov	a,#0x1d
	cjne	a,_data2,00248$
	cpl	a
	cjne	a,(_data2 + 1),00248$
	mov	a,#0xff
	cjne	a,(_data2 + 2),00248$
	cjne	a,(_data2 + 3),00248$
	ljmp	00104$
00248$:
	mov	a,#0xfd
	cjne	a,_data2,00249$
	cpl	a
	cjne	a,(_data2 + 1),00249$
	clr	a
	cjne	a,(_data2 + 2),00249$
	cjne	a,(_data2 + 3),00249$
	ljmp	00109$
00249$:
	mov	a,#0xef
	cjne	a,_data2,00250$
	cpl	a
	cjne	a,(_data2 + 1),00250$
	clr	a
	cjne	a,(_data2 + 2),00250$
	cjne	a,(_data2 + 3),00250$
	ljmp	00117$
00250$:
	mov	a,#0xe7
	cjne	a,_data2,00251$
	cpl	a
	cjne	a,(_data2 + 1),00251$
	clr	a
	cjne	a,(_data2 + 2),00251$
	cjne	a,(_data2 + 3),00251$
	ljmp	00115$
00251$:
	mov	a,#0xdd
	cjne	a,_data2,00252$
	cpl	a
	cjne	a,(_data2 + 1),00252$
	clr	a
	cjne	a,(_data2 + 2),00252$
	cjne	a,(_data2 + 3),00252$
	ljmp	00105$
00252$:
	mov	a,#0xcf
	cjne	a,_data2,00253$
	cpl	a
	cjne	a,(_data2 + 1),00253$
	clr	a
	cjne	a,(_data2 + 2),00253$
	cjne	a,(_data2 + 3),00253$
	ljmp	00114$
00253$:
	mov	a,#0xc7
	cjne	a,_data2,00254$
	cpl	a
	cjne	a,(_data2 + 1),00254$
	clr	a
	cjne	a,(_data2 + 2),00254$
	cjne	a,(_data2 + 3),00254$
	ljmp	00118$
00254$:
	mov	a,#0xbd
	cjne	a,_data2,00255$
	cpl	a
	cjne	a,(_data2 + 1),00255$
	clr	a
	cjne	a,(_data2 + 2),00255$
	cjne	a,(_data2 + 3),00255$
	ljmp	00120$
00255$:
	mov	a,#0xb5
	cjne	a,_data2,00256$
	cpl	a
	cjne	a,(_data2 + 1),00256$
	clr	a
	cjne	a,(_data2 + 2),00256$
	cjne	a,(_data2 + 3),00256$
	ljmp	00121$
00256$:
	mov	a,#0xad
	cjne	a,_data2,00257$
	cpl	a
	cjne	a,(_data2 + 1),00257$
	clr	a
	cjne	a,(_data2 + 2),00257$
	cjne	a,(_data2 + 3),00257$
	ljmp	00122$
00257$:
	mov	a,#0xa5
	cjne	a,_data2,00258$
	cpl	a
	cjne	a,(_data2 + 1),00258$
	clr	a
	cjne	a,(_data2 + 2),00258$
	cjne	a,(_data2 + 3),00258$
	ljmp	00119$
00258$:
	mov	a,#0x97
	cjne	a,_data2,00259$
	cpl	a
	cjne	a,(_data2 + 1),00259$
	clr	a
	cjne	a,(_data2 + 2),00259$
	cjne	a,(_data2 + 3),00259$
	ljmp	00113$
00259$:
	mov	a,#0x85
	cjne	a,_data2,00260$
	cpl	a
	cjne	a,(_data2 + 1),00260$
	clr	a
	cjne	a,(_data2 + 2),00260$
	cjne	a,(_data2 + 3),00260$
	ljmp	00116$
00260$:
	ljmp	00128$
;	./N76_LedTyGia.c:250: case IR_CODE_PWR:
00103$:
;	./N76_LedTyGia.c:251: UART0_println("IR_CODE_PWR");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:252: break;
	ljmp	00128$
;	./N76_LedTyGia.c:253: case IR_CODE_MENU:
00104$:
;	./N76_LedTyGia.c:254: UART0_println("IR_CODE_MENU");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:255: break;
	ljmp	00128$
;	./N76_LedTyGia.c:256: case IR_CODE_TEST:
00105$:
;	./N76_LedTyGia.c:257: UART0_println("IR_CODE_TEST");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:258: break;
	ljmp	00128$
;	./N76_LedTyGia.c:259: case IR_CODE_RETURN:
00106$:
;	./N76_LedTyGia.c:260: UART0_println("IR_CODE_RETURN");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:261: break;
	ljmp	00128$
;	./N76_LedTyGia.c:262: case IR_CODE_RUN:
00107$:
;	./N76_LedTyGia.c:263: UART0_println("IR_CODE_RUN");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:264: break;
	ljmp	00128$
;	./N76_LedTyGia.c:265: case IR_CODE_CLEAR:
00108$:
;	./N76_LedTyGia.c:266: UART0_println("IR_CODE_CLEAR");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:267: break;
	ljmp	00128$
;	./N76_LedTyGia.c:268: case IR_CODE_UP:
00109$:
;	./N76_LedTyGia.c:269: UART0_println("IR_CODE_UP");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:270: break;
	ljmp	00128$
;	./N76_LedTyGia.c:271: case IR_CODE_DOWN:
00110$:
;	./N76_LedTyGia.c:272: UART0_println("IR_CODE_DOWN");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:273: break;
	ljmp	00128$
;	./N76_LedTyGia.c:274: case IR_CODE_LEFT:
00111$:
;	./N76_LedTyGia.c:275: UART0_println("IR_CODE_LEFT");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:276: break;
	ljmp	00128$
;	./N76_LedTyGia.c:277: case IR_CODE_RIGHT:
00112$:
;	./N76_LedTyGia.c:278: UART0_println("IR_CODE_RIGHT");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:279: break;
	ljmp	00128$
;	./N76_LedTyGia.c:280: case IR_CODE_NUM0:
00113$:
;	./N76_LedTyGia.c:281: UART0_println("IR_CODE_NUM0");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:282: break;
	ljmp	00128$
;	./N76_LedTyGia.c:283: case IR_CODE_NUM1:
00114$:
;	./N76_LedTyGia.c:284: UART0_println("IR_CODE_NUM1");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:285: break;
	ljmp	00128$
;	./N76_LedTyGia.c:286: case IR_CODE_NUM2:
00115$:
;	./N76_LedTyGia.c:287: UART0_println("IR_CODE_NUM2");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:288: break;
	ljmp	00128$
;	./N76_LedTyGia.c:289: case IR_CODE_NUM3:
00116$:
;	./N76_LedTyGia.c:290: UART0_println("IR_CODE_NUM3");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:291: break;
	ljmp	00128$
;	./N76_LedTyGia.c:292: case IR_CODE_NUM4:
00117$:
;	./N76_LedTyGia.c:293: UART0_println("IR_CODE_NUM4");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:294: break;
	ljmp	00128$
;	./N76_LedTyGia.c:295: case IR_CODE_NUM5:
00118$:
;	./N76_LedTyGia.c:296: UART0_println("IR_CODE_NUM5");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:297: break;
	ljmp	00128$
;	./N76_LedTyGia.c:298: case IR_CODE_NUM6:
00119$:
;	./N76_LedTyGia.c:299: UART0_println("IR_CODE_NUM6");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:300: break;
	ljmp	00128$
;	./N76_LedTyGia.c:301: case IR_CODE_NUM7:
00120$:
;	./N76_LedTyGia.c:302: UART0_println("IR_CODE_NUM7");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:303: break;
	ljmp	00128$
;	./N76_LedTyGia.c:304: case IR_CODE_NUM8:
00121$:
;	./N76_LedTyGia.c:305: UART0_println("IR_CODE_NUM8");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:306: break;
	ljmp	00128$
;	./N76_LedTyGia.c:307: case IR_CODE_NUM9:
00122$:
;	./N76_LedTyGia.c:308: UART0_println("IR_CODE_NUM9");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_UART0_println
;	./N76_LedTyGia.c:309: break;
;	./N76_LedTyGia.c:313: }
;	./N76_LedTyGia.c:326: }
	ljmp	00128$
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER_0P5MS'
;------------------------------------------------------------
;	./N76_LedTyGia.c:328: ISR(TIMER_0P5MS, INTERRUPT_TIMER0)
;	-----------------------------------------
;	 function TIMER_0P5MS
;	-----------------------------------------
_TIMER_0P5MS:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	./N76_LedTyGia.c:330: TL0 = 0xBF;
	mov	_tl0,#0xbf
;	./N76_LedTyGia.c:331: TH0 = 0xE0;
	mov	_th0,#0xe0
;	./N76_LedTyGia.c:332: count_ms++;
	inc	_count_ms
	clr	a
	cjne	a,_count_ms,00109$
	inc	(_count_ms + 1)
00109$:
;	./N76_LedTyGia.c:333: if (count_ms == 50)
	mov	r6,_count_ms
	mov	r7,(_count_ms + 1)
	cjne	r6,#0x32,00103$
	cjne	r7,#0x00,00103$
;	./N76_LedTyGia.c:334: count_ms = 0;
	clr	a
	mov	_count_ms,a
	mov	(_count_ms + 1),a
00103$:
;	./N76_LedTyGia.c:335: }
	pop	psw
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
;	./N76_LedTyGia.c:337: ISR(PIN_INT_FUCTION, INTERRUPT_INT0)
;	-----------------------------------------
;	 function PIN_INT_FUCTION
;	-----------------------------------------
_PIN_INT_FUCTION:
	push	acc
	push	b
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	psw
	mov	psw,#0x00
;	./N76_LedTyGia.c:339: count_ms1 = count_ms;
	mov	_count_ms1,_count_ms
	mov	(_count_ms1 + 1),(_count_ms + 1)
;	./N76_LedTyGia.c:340: count_ms = 0;
	clr	a
	mov	_count_ms,a
	mov	(_count_ms + 1),a
;	./N76_LedTyGia.c:341: count_data++;
	inc	_count_data
;	genFromRTrack removed	clr	a
	cjne	a,_count_data,00186$
	inc	(_count_data + 1)
00186$:
;	./N76_LedTyGia.c:343: if ((count_ms1 >= 26) && (count_ms1 <= 28)) // 12.5s-14ms
	mov	r6,_count_ms1
	mov	r7,(_count_ms1 + 1)
	clr	c
	mov	a,r6
	subb	a,#0x1a
	mov	a,r7
	subb	a,#0x00
	jc	00123$
	mov	a,#0x1c
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00123$
;	./N76_LedTyGia.c:345: count_data = -1;
	mov	_count_data,#0xff
	mov	(_count_data + 1),#0xff
;	./N76_LedTyGia.c:346: start_status = 1;
	mov	_start_status,#0x01
;	./N76_LedTyGia.c:347: count_ms1 = 0;
	clr	a
	mov	(_start_status + 1),a
	mov	_count_ms1,a
	mov	(_count_ms1 + 1),a
	ljmp	00124$
00123$:
;	./N76_LedTyGia.c:349: else if ((count_ms1 >= 20) && (count_ms1 <= 25)) // 10s-12ms
	clr	c
	mov	a,r6
	subb	a,#0x14
	mov	a,r7
	subb	a,#0x00
	jc	00119$
	mov	a,#0x19
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00119$
;	./N76_LedTyGia.c:351: if (++repeat == 5)
	inc	_repeat
	mov	a,#0x05
	cjne	a,_repeat,00191$
	sjmp	00192$
00191$:
	ljmp	00124$
00192$:
;	./N76_LedTyGia.c:353: repeat = 4;
	mov	_repeat,#0x04
;	./N76_LedTyGia.c:354: _IR_received = 1;
	mov	__IR_received,#0x01
;	./N76_LedTyGia.c:355: data2 = 0xFFFFFF;
	mov	a,#0xff
	mov	_data2,a
	mov	(_data2 + 1),a
	mov	(_data2 + 2),a
	mov	(_data2 + 3),#0x00
	ljmp	00124$
00119$:
;	./N76_LedTyGia.c:358: else if ((start_status == 1) && (count_data >= 0) && (count_data <= 31))
	mov	r4,_start_status
	mov	r5,(_start_status + 1)
	cjne	r4,#0x01,00193$
	cjne	r5,#0x00,00193$
	sjmp	00194$
00193$:
	ljmp	00114$
00194$:
	mov	r4,_count_data
	mov	a,(_count_data + 1)
	mov	r5,a
	jnb	acc.7,00195$
	ljmp	00114$
00195$:
	clr	c
	mov	a,#0x1f
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	./N76_LedTyGia.c:360: if ((count_ms1 >= 4) && (count_ms1 <= 6)) // 2ms->3ms //detect logic 1.
	jc	00114$
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	subb	a,#0x00
	jc	00107$
	mov	a,#0x06
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00107$
;	./N76_LedTyGia.c:362: data |= 1 << (31 - count_data);
	mov	r5,_count_data
	mov	a,#0x1f
	clr	c
	subb	a,r5
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,#0x01
	mov	r4,#0x00
	sjmp	00200$
00199$:
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r4,a
00200$:
	djnz	b,00199$
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	a,r5
	orl	_data,a
	mov	a,r4
	orl	(_data + 1),a
	mov	a,r3
	orl	(_data + 2),a
	mov	a,r2
	orl	(_data + 3),a
;	./N76_LedTyGia.c:363: count_ms1 = 0;
	clr	a
	mov	_count_ms1,a
	mov	(_count_ms1 + 1),a
	sjmp	00124$
00107$:
;	./N76_LedTyGia.c:365: else if (count_ms1 < 4) // nho hon <2ms //detect logic 0.
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	subb	a,#0x00
	jnc	00104$
;	./N76_LedTyGia.c:367: count_ms1 = 0;
	clr	a
	mov	_count_ms1,a
	mov	(_count_ms1 + 1),a
	sjmp	00124$
00104$:
;	./N76_LedTyGia.c:371: count_ms1 = 0;
	clr	a
	mov	_count_ms1,a
	mov	(_count_ms1 + 1),a
;	./N76_LedTyGia.c:372: start_status = 0;
	mov	_start_status,a
	mov	(_start_status + 1),a
;	./N76_LedTyGia.c:373: count_data = 0;
	mov	_count_data,a
	mov	(_count_data + 1),a
;	./N76_LedTyGia.c:374: data = 0;
	mov	_data,a
	mov	(_data + 1),a
	mov	(_data + 2),a
	mov	(_data + 3),a
	sjmp	00124$
00114$:
;	./N76_LedTyGia.c:377: else if ((start_status == 0) && (count_ms1 > 28)) /// error detect xung _IR_receivedrt
	mov	a,_start_status
	orl	a,(_start_status + 1)
	jnz	00124$
	clr	c
	mov	a,#0x1c
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00124$
;	./N76_LedTyGia.c:379: count_ms1 = 0;
	clr	a
	mov	_count_ms1,a
	mov	(_count_ms1 + 1),a
;	./N76_LedTyGia.c:380: start_status = 0;
	mov	_start_status,a
	mov	(_start_status + 1),a
;	./N76_LedTyGia.c:381: count_data = 0;
	mov	_count_data,a
	mov	(_count_data + 1),a
;	./N76_LedTyGia.c:382: data = 0;
	mov	_data,a
	mov	(_data + 1),a
	mov	(_data + 2),a
	mov	(_data + 3),a
00124$:
;	./N76_LedTyGia.c:384: if (count_data == 32) // reset sau khi detect 32 bit data
	mov	r6,_count_data
	mov	r7,(_count_data + 1)
	cjne	r6,#0x20,00128$
	cjne	r7,#0x00,00128$
;	./N76_LedTyGia.c:386: repeat = 0;
	mov	_repeat,#0x00
;	./N76_LedTyGia.c:387: _IR_received = 1;
	mov	__IR_received,#0x01
;	./N76_LedTyGia.c:388: data2 = data;
	mov	_data2,_data
	mov	(_data2 + 1),(_data + 1)
	mov	(_data2 + 2),(_data + 2)
	mov	(_data2 + 3),(_data + 3)
;	./N76_LedTyGia.c:390: count_data = 0;
	clr	a
	mov	_count_data,a
	mov	(_count_data + 1),a
;	./N76_LedTyGia.c:391: data = 0;
	mov	_data,a
	mov	(_data + 1),a
	mov	(_data + 2),a
	mov	(_data + 3),a
;	./N76_LedTyGia.c:392: start_status = 0;
	mov	_start_status,a
	mov	(_start_status + 1),a
;	./N76_LedTyGia.c:393: count_ms1 = 0;
	mov	_count_ms1,a
	mov	(_count_ms1 + 1),a
00128$:
;	./N76_LedTyGia.c:395: }
	pop	psw
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ma:
	.db #0xc0	; 192
	.db #0xf9	; 249
	.db #0xa4	; 164
	.db #0xb0	; 176
	.db #0x99	; 153
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0x90	; 144
	.area CONST   (CODE)
___str_0:
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "IR_CODE_PWR"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "IR_CODE_MENU"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "IR_CODE_TEST"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "IR_CODE_RETURN"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "IR_CODE_RUN"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "IR_CODE_CLEAR"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "IR_CODE_UP"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "IR_CODE_DOWN"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "IR_CODE_LEFT"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "IR_CODE_RIGHT"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "IR_CODE_NUM0"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "IR_CODE_NUM1"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "IR_CODE_NUM2"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "IR_CODE_NUM3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "IR_CODE_NUM4"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "IR_CODE_NUM5"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "IR_CODE_NUM6"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "IR_CODE_NUM7"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "IR_CODE_NUM8"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "IR_CODE_NUM9"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
