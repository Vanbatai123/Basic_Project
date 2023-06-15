                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module N76_LedTyGia
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ma
                                     12 	.globl _PIN_INT_FUCTION
                                     13 	.globl _TIMER_0P5MS
                                     14 	.globl _main
                                     15 	.globl _IR_begin
                                     16 	.globl _digitalClockDisplay
                                     17 	.globl _printDigits
                                     18 	.globl _set_time
                                     19 	.globl _get_time
                                     20 	.globl _UART_printNum
                                     21 	.globl _MAX7219_transfer
                                     22 	.globl _MAX7219_begin
                                     23 	.globl _decimal_to_bcd
                                     24 	.globl _bcd_to_decimal
                                     25 	.globl _DS1307_write
                                     26 	.globl _DS1307_read
                                     27 	.globl _DS1307_begin
                                     28 	.globl _UART0_printNum
                                     29 	.globl _UART0_println
                                     30 	.globl _UART0_print
                                     31 	.globl _UART0_putChar
                                     32 	.globl _UART0_begin
                                     33 	.globl _eiph1
                                     34 	.globl _eip1
                                     35 	.globl _pmd
                                     36 	.globl _pmen
                                     37 	.globl _pdtcnt
                                     38 	.globl _pdten
                                     39 	.globl _scon_1
                                     40 	.globl _eiph
                                     41 	.globl _aindids
                                     42 	.globl _spdr
                                     43 	.globl _spsr
                                     44 	.globl _spcr2
                                     45 	.globl _spcr
                                     46 	.globl _capcon4
                                     47 	.globl _capcon3
                                     48 	.globl _b
                                     49 	.globl _eip
                                     50 	.globl _c2h
                                     51 	.globl _c2l
                                     52 	.globl _pif
                                     53 	.globl _pipen
                                     54 	.globl _pinen
                                     55 	.globl _picon
                                     56 	.globl _adccon0
                                     57 	.globl _c1h
                                     58 	.globl _c1l
                                     59 	.globl _c0h
                                     60 	.globl _c0l
                                     61 	.globl _adcdly
                                     62 	.globl _adccon2
                                     63 	.globl _adccon1
                                     64 	.globl _acc
                                     65 	.globl _pwmcon1
                                     66 	.globl _piocon0
                                     67 	.globl _pwm3l
                                     68 	.globl _pwm2l
                                     69 	.globl _pwm1l
                                     70 	.globl _pwm0l
                                     71 	.globl _pwmpl
                                     72 	.globl _pwmcon0
                                     73 	.globl _fbd
                                     74 	.globl _pnp
                                     75 	.globl _pwm3h
                                     76 	.globl _pwm2h
                                     77 	.globl _pwm1h
                                     78 	.globl _pwm0h
                                     79 	.globl _pwmph
                                     80 	.globl _psw
                                     81 	.globl _adcmph
                                     82 	.globl _adcmpl
                                     83 	.globl _pwm5l
                                     84 	.globl _th2
                                     85 	.globl _pwm4l
                                     86 	.globl _tl2
                                     87 	.globl _rcmp2h
                                     88 	.globl _rcmp2l
                                     89 	.globl _t2mod
                                     90 	.globl _t2con
                                     91 	.globl _ta
                                     92 	.globl _piocon1
                                     93 	.globl _rh3
                                     94 	.globl _pwm5h
                                     95 	.globl _rl3
                                     96 	.globl _pwm4h
                                     97 	.globl _t3con
                                     98 	.globl _adcrh
                                     99 	.globl _adcrl
                                    100 	.globl _i2addr
                                    101 	.globl _i2con
                                    102 	.globl _i2toc
                                    103 	.globl _i2clk
                                    104 	.globl _i2stat
                                    105 	.globl _i2dat
                                    106 	.globl _saddr_1
                                    107 	.globl _saden_1
                                    108 	.globl _saden
                                    109 	.globl _ip
                                    110 	.globl _pwmintc
                                    111 	.globl _iph
                                    112 	.globl _p2s
                                    113 	.globl _p1sr
                                    114 	.globl _p1m2
                                    115 	.globl _p1s
                                    116 	.globl _p1m1
                                    117 	.globl _p0sr
                                    118 	.globl _p0m2
                                    119 	.globl _p0s
                                    120 	.globl _p0m1
                                    121 	.globl _p3
                                    122 	.globl _iapcn
                                    123 	.globl _iapfd
                                    124 	.globl _p3sr
                                    125 	.globl _p3m2
                                    126 	.globl _p3s
                                    127 	.globl _p3m1
                                    128 	.globl _bodcon1
                                    129 	.globl _wdcon
                                    130 	.globl _saddr
                                    131 	.globl _ie
                                    132 	.globl _iapah
                                    133 	.globl _iapal
                                    134 	.globl _iapuen
                                    135 	.globl _iaptrg
                                    136 	.globl _bodcon0
                                    137 	.globl _auxr1
                                    138 	.globl _p2
                                    139 	.globl _chpcon
                                    140 	.globl _eie1
                                    141 	.globl _eie
                                    142 	.globl _sbuf_1
                                    143 	.globl _sbuf
                                    144 	.globl _scon
                                    145 	.globl _cken
                                    146 	.globl _ckswt
                                    147 	.globl _ckdiv
                                    148 	.globl _capcon2
                                    149 	.globl _capcon1
                                    150 	.globl _capcon0
                                    151 	.globl _sfrs
                                    152 	.globl _p1
                                    153 	.globl _wkcon
                                    154 	.globl _ckcon
                                    155 	.globl _th1
                                    156 	.globl _th0
                                    157 	.globl _tl1
                                    158 	.globl _tl0
                                    159 	.globl _tmod
                                    160 	.globl _tcon
                                    161 	.globl _pcon
                                    162 	.globl _rwk
                                    163 	.globl _rctrim1
                                    164 	.globl _rctrim0
                                    165 	.globl _dph
                                    166 	.globl _dpl
                                    167 	.globl _sp
                                    168 	.globl _p0
                                    169 	.globl _repeat
                                    170 	.globl __IR_received
                                    171 	.globl _data2
                                    172 	.globl _data
                                    173 	.globl _count_data
                                    174 	.globl _start_status
                                    175 	.globl _count_ms1
                                    176 	.globl _count_ms
                                    177 	.globl _txdata
                                    178 	.globl _sec_tt
                                    179 	.globl _time
                                    180 ;--------------------------------------------------------
                                    181 ; special function registers
                                    182 ;--------------------------------------------------------
                                    183 	.area RSEG    (ABS,DATA)
      000000                        184 	.org 0x0000
                           000080   185 _p0	=	0x0080
                           000081   186 _sp	=	0x0081
                           000082   187 _dpl	=	0x0082
                           000083   188 _dph	=	0x0083
                           000084   189 _rctrim0	=	0x0084
                           000085   190 _rctrim1	=	0x0085
                           000086   191 _rwk	=	0x0086
                           000087   192 _pcon	=	0x0087
                           000088   193 _tcon	=	0x0088
                           000089   194 _tmod	=	0x0089
                           00008A   195 _tl0	=	0x008a
                           00008B   196 _tl1	=	0x008b
                           00008C   197 _th0	=	0x008c
                           00008D   198 _th1	=	0x008d
                           00008E   199 _ckcon	=	0x008e
                           00008F   200 _wkcon	=	0x008f
                           000090   201 _p1	=	0x0090
                           000091   202 _sfrs	=	0x0091
                           000092   203 _capcon0	=	0x0092
                           000093   204 _capcon1	=	0x0093
                           000094   205 _capcon2	=	0x0094
                           000095   206 _ckdiv	=	0x0095
                           000096   207 _ckswt	=	0x0096
                           000097   208 _cken	=	0x0097
                           000098   209 _scon	=	0x0098
                           000099   210 _sbuf	=	0x0099
                           00009A   211 _sbuf_1	=	0x009a
                           00009B   212 _eie	=	0x009b
                           00009C   213 _eie1	=	0x009c
                           00009F   214 _chpcon	=	0x009f
                           0000A0   215 _p2	=	0x00a0
                           0000A2   216 _auxr1	=	0x00a2
                           0000A3   217 _bodcon0	=	0x00a3
                           0000A4   218 _iaptrg	=	0x00a4
                           0000A5   219 _iapuen	=	0x00a5
                           0000A6   220 _iapal	=	0x00a6
                           0000A7   221 _iapah	=	0x00a7
                           0000A8   222 _ie	=	0x00a8
                           0000A9   223 _saddr	=	0x00a9
                           0000AA   224 _wdcon	=	0x00aa
                           0000AB   225 _bodcon1	=	0x00ab
                           0000AC   226 _p3m1	=	0x00ac
                           0000AC   227 _p3s	=	0x00ac
                           0000AD   228 _p3m2	=	0x00ad
                           0000AD   229 _p3sr	=	0x00ad
                           0000AE   230 _iapfd	=	0x00ae
                           0000AF   231 _iapcn	=	0x00af
                           0000B0   232 _p3	=	0x00b0
                           0000B1   233 _p0m1	=	0x00b1
                           0000B1   234 _p0s	=	0x00b1
                           0000B2   235 _p0m2	=	0x00b2
                           0000B2   236 _p0sr	=	0x00b2
                           0000B3   237 _p1m1	=	0x00b3
                           0000B3   238 _p1s	=	0x00b3
                           0000B4   239 _p1m2	=	0x00b4
                           0000B4   240 _p1sr	=	0x00b4
                           0000B5   241 _p2s	=	0x00b5
                           0000B7   242 _iph	=	0x00b7
                           0000B7   243 _pwmintc	=	0x00b7
                           0000B8   244 _ip	=	0x00b8
                           0000B9   245 _saden	=	0x00b9
                           0000BA   246 _saden_1	=	0x00ba
                           0000BB   247 _saddr_1	=	0x00bb
                           0000BC   248 _i2dat	=	0x00bc
                           0000BD   249 _i2stat	=	0x00bd
                           0000BE   250 _i2clk	=	0x00be
                           0000BF   251 _i2toc	=	0x00bf
                           0000C0   252 _i2con	=	0x00c0
                           0000C1   253 _i2addr	=	0x00c1
                           0000C2   254 _adcrl	=	0x00c2
                           0000C3   255 _adcrh	=	0x00c3
                           0000C4   256 _t3con	=	0x00c4
                           0000C4   257 _pwm4h	=	0x00c4
                           0000C5   258 _rl3	=	0x00c5
                           0000C5   259 _pwm5h	=	0x00c5
                           0000C6   260 _rh3	=	0x00c6
                           0000C6   261 _piocon1	=	0x00c6
                           0000C7   262 _ta	=	0x00c7
                           0000C8   263 _t2con	=	0x00c8
                           0000C9   264 _t2mod	=	0x00c9
                           0000CA   265 _rcmp2l	=	0x00ca
                           0000CB   266 _rcmp2h	=	0x00cb
                           0000CC   267 _tl2	=	0x00cc
                           0000CC   268 _pwm4l	=	0x00cc
                           0000CD   269 _th2	=	0x00cd
                           0000CD   270 _pwm5l	=	0x00cd
                           0000CE   271 _adcmpl	=	0x00ce
                           0000CF   272 _adcmph	=	0x00cf
                           0000D0   273 _psw	=	0x00d0
                           0000D1   274 _pwmph	=	0x00d1
                           0000D2   275 _pwm0h	=	0x00d2
                           0000D3   276 _pwm1h	=	0x00d3
                           0000D4   277 _pwm2h	=	0x00d4
                           0000D5   278 _pwm3h	=	0x00d5
                           0000D6   279 _pnp	=	0x00d6
                           0000D7   280 _fbd	=	0x00d7
                           0000D8   281 _pwmcon0	=	0x00d8
                           0000D9   282 _pwmpl	=	0x00d9
                           0000DA   283 _pwm0l	=	0x00da
                           0000DB   284 _pwm1l	=	0x00db
                           0000DC   285 _pwm2l	=	0x00dc
                           0000DD   286 _pwm3l	=	0x00dd
                           0000DE   287 _piocon0	=	0x00de
                           0000DF   288 _pwmcon1	=	0x00df
                           0000E0   289 _acc	=	0x00e0
                           0000E1   290 _adccon1	=	0x00e1
                           0000E2   291 _adccon2	=	0x00e2
                           0000E3   292 _adcdly	=	0x00e3
                           0000E4   293 _c0l	=	0x00e4
                           0000E5   294 _c0h	=	0x00e5
                           0000E6   295 _c1l	=	0x00e6
                           0000E7   296 _c1h	=	0x00e7
                           0000E8   297 _adccon0	=	0x00e8
                           0000E9   298 _picon	=	0x00e9
                           0000EA   299 _pinen	=	0x00ea
                           0000EB   300 _pipen	=	0x00eb
                           0000EC   301 _pif	=	0x00ec
                           0000ED   302 _c2l	=	0x00ed
                           0000EE   303 _c2h	=	0x00ee
                           0000EF   304 _eip	=	0x00ef
                           0000F0   305 _b	=	0x00f0
                           0000F1   306 _capcon3	=	0x00f1
                           0000F2   307 _capcon4	=	0x00f2
                           0000F3   308 _spcr	=	0x00f3
                           0000F3   309 _spcr2	=	0x00f3
                           0000F4   310 _spsr	=	0x00f4
                           0000F5   311 _spdr	=	0x00f5
                           0000F6   312 _aindids	=	0x00f6
                           0000F7   313 _eiph	=	0x00f7
                           0000F8   314 _scon_1	=	0x00f8
                           0000F9   315 _pdten	=	0x00f9
                           0000FA   316 _pdtcnt	=	0x00fa
                           0000FB   317 _pmen	=	0x00fb
                           0000FC   318 _pmd	=	0x00fc
                           0000FE   319 _eip1	=	0x00fe
                           0000FF   320 _eiph1	=	0x00ff
                                    321 ;--------------------------------------------------------
                                    322 ; special function bits
                                    323 ;--------------------------------------------------------
                                    324 	.area RSEG    (ABS,DATA)
      000000                        325 	.org 0x0000
                                    326 ;--------------------------------------------------------
                                    327 ; overlayable register banks
                                    328 ;--------------------------------------------------------
                                    329 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        330 	.ds 8
                                    331 ;--------------------------------------------------------
                                    332 ; internal ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area DSEG    (DATA)
      000008                        335 _time::
      000008                        336 	.ds 7
      00000F                        337 _sec_tt::
      00000F                        338 	.ds 1
      000010                        339 _txdata::
      000010                        340 	.ds 2
      000012                        341 _count_ms::
      000012                        342 	.ds 2
      000014                        343 _count_ms1::
      000014                        344 	.ds 2
      000016                        345 _start_status::
      000016                        346 	.ds 2
      000018                        347 _count_data::
      000018                        348 	.ds 2
      00001A                        349 _data::
      00001A                        350 	.ds 4
      00001E                        351 _data2::
      00001E                        352 	.ds 4
      000022                        353 __IR_received::
      000022                        354 	.ds 1
      000023                        355 _repeat::
      000023                        356 	.ds 1
      000024                        357 _UART_printNum_num_65536_64:
      000024                        358 	.ds 4
                                    359 ;--------------------------------------------------------
                                    360 ; overlayable items in internal ram
                                    361 ;--------------------------------------------------------
                                    362 ;--------------------------------------------------------
                                    363 ; Stack segment in internal ram
                                    364 ;--------------------------------------------------------
                                    365 	.area	SSEG
      000080                        366 __start__stack:
      000080                        367 	.ds	1
                                    368 
                                    369 ;--------------------------------------------------------
                                    370 ; indirectly addressable internal ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area ISEG    (DATA)
                                    373 ;--------------------------------------------------------
                                    374 ; absolute internal ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area IABS    (ABS,DATA)
                                    377 	.area IABS    (ABS,DATA)
                                    378 ;--------------------------------------------------------
                                    379 ; bit data
                                    380 ;--------------------------------------------------------
                                    381 	.area BSEG    (BIT)
                                    382 ;--------------------------------------------------------
                                    383 ; paged external ram data
                                    384 ;--------------------------------------------------------
                                    385 	.area PSEG    (PAG,XDATA)
                                    386 ;--------------------------------------------------------
                                    387 ; external ram data
                                    388 ;--------------------------------------------------------
                                    389 	.area XSEG    (XDATA)
                                    390 ;--------------------------------------------------------
                                    391 ; absolute external ram data
                                    392 ;--------------------------------------------------------
                                    393 	.area XABS    (ABS,XDATA)
                                    394 ;--------------------------------------------------------
                                    395 ; external initialized ram data
                                    396 ;--------------------------------------------------------
                                    397 	.area XISEG   (XDATA)
                                    398 	.area HOME    (CODE)
                                    399 	.area GSINIT0 (CODE)
                                    400 	.area GSINIT1 (CODE)
                                    401 	.area GSINIT2 (CODE)
                                    402 	.area GSINIT3 (CODE)
                                    403 	.area GSINIT4 (CODE)
                                    404 	.area GSINIT5 (CODE)
                                    405 	.area GSINIT  (CODE)
                                    406 	.area GSFINAL (CODE)
                                    407 	.area CSEG    (CODE)
                                    408 ;--------------------------------------------------------
                                    409 ; interrupt vector
                                    410 ;--------------------------------------------------------
                                    411 	.area HOME    (CODE)
      000000                        412 __interrupt_vect:
      000000 02 00 11         [24]  413 	ljmp	__sdcc_gsinit_startup
      000003 02 08 08         [24]  414 	ljmp	_PIN_INT_FUCTION
      000006                        415 	.ds	5
      00000B 02 07 D7         [24]  416 	ljmp	_TIMER_0P5MS
                                    417 ;--------------------------------------------------------
                                    418 ; global & static initialisations
                                    419 ;--------------------------------------------------------
                                    420 	.area HOME    (CODE)
                                    421 	.area GSINIT  (CODE)
                                    422 	.area GSFINAL (CODE)
                                    423 	.area GSINIT  (CODE)
                                    424 	.globl __sdcc_gsinit_startup
                                    425 	.globl __sdcc_program_startup
                                    426 	.globl __start__stack
                                    427 	.globl __mcs51_genXINIT
                                    428 	.globl __mcs51_genXRAMCLEAR
                                    429 	.globl __mcs51_genRAMCLEAR
                                    430 ;	./N76_LedTyGia.c:48: uint8_t sec_tt = 0;
      00006A 75 0F 00         [24]  431 	mov	_sec_tt,#0x00
                                    432 ;	./N76_LedTyGia.c:54: uint8_t _IR_received = 0;
      00006D 75 22 00         [24]  433 	mov	__IR_received,#0x00
                                    434 ;	./N76_LedTyGia.c:55: uint8_t repeat = 0;
      000070 75 23 00         [24]  435 	mov	_repeat,#0x00
                                    436 	.area GSFINAL (CODE)
      000073 02 00 0E         [24]  437 	ljmp	__sdcc_program_startup
                                    438 ;--------------------------------------------------------
                                    439 ; Home
                                    440 ;--------------------------------------------------------
                                    441 	.area HOME    (CODE)
                                    442 	.area HOME    (CODE)
      00000E                        443 __sdcc_program_startup:
      00000E 02 03 08         [24]  444 	ljmp	_main
                                    445 ;	return from main will return to caller
                                    446 ;--------------------------------------------------------
                                    447 ; code
                                    448 ;--------------------------------------------------------
                                    449 	.area CSEG    (CODE)
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'UART_printNum'
                                    452 ;------------------------------------------------------------
                                    453 ;num                       Allocated with name '_UART_printNum_num_65536_64'
                                    454 ;temp                      Allocated to registers r7 
                                    455 ;i                         Allocated to registers r3 
                                    456 ;------------------------------------------------------------
                                    457 ;	./N76_LedTyGia.c:60: void UART_printNum(uint32_t num)
                                    458 ;	-----------------------------------------
                                    459 ;	 function UART_printNum
                                    460 ;	-----------------------------------------
      000076                        461 _UART_printNum:
                           000007   462 	ar7 = 0x07
                           000006   463 	ar6 = 0x06
                           000005   464 	ar5 = 0x05
                           000004   465 	ar4 = 0x04
                           000003   466 	ar3 = 0x03
                           000002   467 	ar2 = 0x02
                           000001   468 	ar1 = 0x01
                           000000   469 	ar0 = 0x00
      000076 85 82 24         [24]  470 	mov	_UART_printNum_num_65536_64,dpl
      000079 85 83 25         [24]  471 	mov	(_UART_printNum_num_65536_64 + 1),dph
      00007C 85 F0 26         [24]  472 	mov	(_UART_printNum_num_65536_64 + 2),b
      00007F F5 27            [12]  473 	mov	(_UART_printNum_num_65536_64 + 3),a
                                    474 ;	./N76_LedTyGia.c:63: UART0_putChar('0');
      000081 75 82 30         [24]  475 	mov	dpl,#0x30
      000084 12 0C F8         [24]  476 	lcall	_UART0_putChar
                                    477 ;	./N76_LedTyGia.c:64: UART0_putChar('x');
      000087 75 82 78         [24]  478 	mov	dpl,#0x78
      00008A 12 0C F8         [24]  479 	lcall	_UART0_putChar
                                    480 ;	./N76_LedTyGia.c:65: for (uint8_t i = 0; i < 8; i++)
      00008D 7B 00            [12]  481 	mov	r3,#0x00
      00008F                        482 00108$:
      00008F BB 08 00         [24]  483 	cjne	r3,#0x08,00129$
      000092                        484 00129$:
      000092 50 53            [24]  485 	jnc	00106$
                                    486 ;	./N76_LedTyGia.c:67: temp = (uint8_t)((num >> (4 * (7 - i))) & 0x0000000F);
      000094 74 07            [12]  487 	mov	a,#0x07
      000096 C3               [12]  488 	clr	c
      000097 9B               [12]  489 	subb	a,r3
      000098 25 E0            [12]  490 	add	a,acc
      00009A 25 E0            [12]  491 	add	a,acc
      00009C FA               [12]  492 	mov	r2,a
      00009D 8A F0            [24]  493 	mov	b,r2
      00009F 05 F0            [12]  494 	inc	b
      0000A1 A8 24            [24]  495 	mov	r0,_UART_printNum_num_65536_64
      0000A3 A9 25            [24]  496 	mov	r1,(_UART_printNum_num_65536_64 + 1)
      0000A5 AA 26            [24]  497 	mov	r2,(_UART_printNum_num_65536_64 + 2)
      0000A7 AF 27            [24]  498 	mov	r7,(_UART_printNum_num_65536_64 + 3)
      0000A9 80 0D            [24]  499 	sjmp	00132$
      0000AB                        500 00131$:
      0000AB C3               [12]  501 	clr	c
      0000AC EF               [12]  502 	mov	a,r7
      0000AD 13               [12]  503 	rrc	a
      0000AE FF               [12]  504 	mov	r7,a
      0000AF EA               [12]  505 	mov	a,r2
      0000B0 13               [12]  506 	rrc	a
      0000B1 FA               [12]  507 	mov	r2,a
      0000B2 E9               [12]  508 	mov	a,r1
      0000B3 13               [12]  509 	rrc	a
      0000B4 F9               [12]  510 	mov	r1,a
      0000B5 E8               [12]  511 	mov	a,r0
      0000B6 13               [12]  512 	rrc	a
      0000B7 F8               [12]  513 	mov	r0,a
      0000B8                        514 00132$:
      0000B8 D5 F0 F0         [24]  515 	djnz	b,00131$
      0000BB 74 0F            [12]  516 	mov	a,#0x0f
      0000BD 58               [12]  517 	anl	a,r0
                                    518 ;	./N76_LedTyGia.c:68: if (temp <= 9)
      0000BE FF               [12]  519 	mov  r7,a
      0000BF 24 F6            [12]  520 	add	a,#0xff - 0x09
      0000C1 40 10            [24]  521 	jc	00104$
                                    522 ;	./N76_LedTyGia.c:69: UART0_putChar(temp + 48);
      0000C3 8F 06            [24]  523 	mov	ar6,r7
      0000C5 74 30            [12]  524 	mov	a,#0x30
      0000C7 2E               [12]  525 	add	a,r6
      0000C8 F5 82            [12]  526 	mov	dpl,a
      0000CA C0 03            [24]  527 	push	ar3
      0000CC 12 0C F8         [24]  528 	lcall	_UART0_putChar
      0000CF D0 03            [24]  529 	pop	ar3
      0000D1 80 11            [24]  530 	sjmp	00109$
      0000D3                        531 00104$:
                                    532 ;	./N76_LedTyGia.c:70: else if (temp > 9)
      0000D3 EF               [12]  533 	mov	a,r7
      0000D4 24 F6            [12]  534 	add	a,#0xff - 0x09
      0000D6 50 0C            [24]  535 	jnc	00109$
                                    536 ;	./N76_LedTyGia.c:71: UART0_putChar(temp + 55);
      0000D8 74 37            [12]  537 	mov	a,#0x37
      0000DA 2F               [12]  538 	add	a,r7
      0000DB F5 82            [12]  539 	mov	dpl,a
      0000DD C0 03            [24]  540 	push	ar3
      0000DF 12 0C F8         [24]  541 	lcall	_UART0_putChar
      0000E2 D0 03            [24]  542 	pop	ar3
      0000E4                        543 00109$:
                                    544 ;	./N76_LedTyGia.c:65: for (uint8_t i = 0; i < 8; i++)
      0000E4 0B               [12]  545 	inc	r3
      0000E5 80 A8            [24]  546 	sjmp	00108$
      0000E7                        547 00106$:
                                    548 ;	./N76_LedTyGia.c:73: UART0_putChar('\n');
      0000E7 75 82 0A         [24]  549 	mov	dpl,#0x0a
                                    550 ;	./N76_LedTyGia.c:74: }
      0000EA 02 0C F8         [24]  551 	ljmp	_UART0_putChar
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'get_time'
                                    554 ;------------------------------------------------------------
                                    555 ;	./N76_LedTyGia.c:76: void get_time(void)
                                    556 ;	-----------------------------------------
                                    557 ;	 function get_time
                                    558 ;	-----------------------------------------
      0000ED                        559 _get_time:
                                    560 ;	./N76_LedTyGia.c:78: time.s = DS1307_read(DS1307_SEC_REG);
      0000ED 75 82 00         [24]  561 	mov	dpl,#0x00
      0000F0 12 0A BA         [24]  562 	lcall	_DS1307_read
      0000F3 E5 82            [12]  563 	mov	a,dpl
      0000F5 F5 08            [12]  564 	mov	_time,a
                                    565 ;	./N76_LedTyGia.c:79: time.m = DS1307_read(DS1307_MIN_REG);
      0000F7 75 82 01         [24]  566 	mov	dpl,#0x01
      0000FA 12 0A BA         [24]  567 	lcall	_DS1307_read
      0000FD E5 82            [12]  568 	mov	a,dpl
      0000FF F5 09            [12]  569 	mov	(_time + 0x0001),a
                                    570 ;	./N76_LedTyGia.c:80: time.h = DS1307_read(DS1307_HOUR_REG);
      000101 75 82 02         [24]  571 	mov	dpl,#0x02
      000104 12 0A BA         [24]  572 	lcall	_DS1307_read
      000107 E5 82            [12]  573 	mov	a,dpl
      000109 F5 0A            [12]  574 	mov	(_time + 0x0002),a
                                    575 ;	./N76_LedTyGia.c:81: time.dy = DS1307_read(DS1307_DAY_REG);
      00010B 75 82 03         [24]  576 	mov	dpl,#0x03
      00010E 12 0A BA         [24]  577 	lcall	_DS1307_read
      000111 E5 82            [12]  578 	mov	a,dpl
      000113 F5 0B            [12]  579 	mov	(_time + 0x0003),a
                                    580 ;	./N76_LedTyGia.c:82: time.dt = DS1307_read(DS1307_DATE_REG);
      000115 75 82 04         [24]  581 	mov	dpl,#0x04
      000118 12 0A BA         [24]  582 	lcall	_DS1307_read
      00011B E5 82            [12]  583 	mov	a,dpl
      00011D F5 0C            [12]  584 	mov	(_time + 0x0004),a
                                    585 ;	./N76_LedTyGia.c:83: time.mt = DS1307_read(DS1307_MONTH_REG);
      00011F 75 82 05         [24]  586 	mov	dpl,#0x05
      000122 12 0A BA         [24]  587 	lcall	_DS1307_read
      000125 E5 82            [12]  588 	mov	a,dpl
      000127 F5 0D            [12]  589 	mov	(_time + 0x0005),a
                                    590 ;	./N76_LedTyGia.c:84: time.yr = DS1307_read(DS1307_YEAR_REG);
      000129 75 82 06         [24]  591 	mov	dpl,#0x06
      00012C 12 0A BA         [24]  592 	lcall	_DS1307_read
      00012F E5 82            [12]  593 	mov	a,dpl
      000131 F5 0E            [12]  594 	mov	(_time + 0x0006),a
                                    595 ;	./N76_LedTyGia.c:87: time.s = bcd_to_decimal(time.s);
      000133 85 08 82         [24]  596 	mov	dpl,_time
      000136 12 0B 06         [24]  597 	lcall	_bcd_to_decimal
      000139 E5 82            [12]  598 	mov	a,dpl
      00013B F5 08            [12]  599 	mov	_time,a
                                    600 ;	./N76_LedTyGia.c:88: time.m = bcd_to_decimal(time.m);
      00013D 85 09 82         [24]  601 	mov	dpl,(_time + 0x0001)
      000140 12 0B 06         [24]  602 	lcall	_bcd_to_decimal
      000143 E5 82            [12]  603 	mov	a,dpl
      000145 F5 09            [12]  604 	mov	(_time + 0x0001),a
                                    605 ;	./N76_LedTyGia.c:89: time.h = bcd_to_decimal(time.h);
      000147 85 0A 82         [24]  606 	mov	dpl,(_time + 0x0002)
      00014A 12 0B 06         [24]  607 	lcall	_bcd_to_decimal
      00014D E5 82            [12]  608 	mov	a,dpl
      00014F F5 0A            [12]  609 	mov	(_time + 0x0002),a
                                    610 ;	./N76_LedTyGia.c:90: time.dy = bcd_to_decimal(time.dy);
      000151 85 0B 82         [24]  611 	mov	dpl,(_time + 0x0003)
      000154 12 0B 06         [24]  612 	lcall	_bcd_to_decimal
      000157 E5 82            [12]  613 	mov	a,dpl
      000159 F5 0B            [12]  614 	mov	(_time + 0x0003),a
                                    615 ;	./N76_LedTyGia.c:91: time.dt = bcd_to_decimal(time.dt);
      00015B 85 0C 82         [24]  616 	mov	dpl,(_time + 0x0004)
      00015E 12 0B 06         [24]  617 	lcall	_bcd_to_decimal
      000161 E5 82            [12]  618 	mov	a,dpl
      000163 F5 0C            [12]  619 	mov	(_time + 0x0004),a
                                    620 ;	./N76_LedTyGia.c:92: time.mt = bcd_to_decimal(time.mt);
      000165 85 0D 82         [24]  621 	mov	dpl,(_time + 0x0005)
      000168 12 0B 06         [24]  622 	lcall	_bcd_to_decimal
      00016B E5 82            [12]  623 	mov	a,dpl
      00016D F5 0D            [12]  624 	mov	(_time + 0x0005),a
                                    625 ;	./N76_LedTyGia.c:93: time.yr = bcd_to_decimal(time.yr);
      00016F 85 0E 82         [24]  626 	mov	dpl,(_time + 0x0006)
      000172 12 0B 06         [24]  627 	lcall	_bcd_to_decimal
      000175 E5 82            [12]  628 	mov	a,dpl
      000177 F5 0E            [12]  629 	mov	(_time + 0x0006),a
                                    630 ;	./N76_LedTyGia.c:95: if (time.dy == 1)
      000179 74 01            [12]  631 	mov	a,#0x01
      00017B B5 0B 03         [24]  632 	cjne	a,(_time + 0x0003),00103$
                                    633 ;	./N76_LedTyGia.c:96: time.dy = 8;
      00017E 75 0B 08         [24]  634 	mov	(_time + 0x0003),#0x08
      000181                        635 00103$:
                                    636 ;	./N76_LedTyGia.c:97: }
      000181 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'set_time'
                                    640 ;------------------------------------------------------------
                                    641 ;	./N76_LedTyGia.c:98: void set_time(void)
                                    642 ;	-----------------------------------------
                                    643 ;	 function set_time
                                    644 ;	-----------------------------------------
      000182                        645 _set_time:
                                    646 ;	./N76_LedTyGia.c:100: time.s = decimal_to_bcd(time.s);
      000182 85 08 82         [24]  647 	mov	dpl,_time
      000185 12 0B 2B         [24]  648 	lcall	_decimal_to_bcd
      000188 E5 82            [12]  649 	mov	a,dpl
      00018A F5 08            [12]  650 	mov	_time,a
                                    651 ;	./N76_LedTyGia.c:101: time.m = decimal_to_bcd(time.m);
      00018C 85 09 82         [24]  652 	mov	dpl,(_time + 0x0001)
      00018F 12 0B 2B         [24]  653 	lcall	_decimal_to_bcd
      000192 E5 82            [12]  654 	mov	a,dpl
      000194 F5 09            [12]  655 	mov	(_time + 0x0001),a
                                    656 ;	./N76_LedTyGia.c:102: time.h = decimal_to_bcd(time.h);
      000196 85 0A 82         [24]  657 	mov	dpl,(_time + 0x0002)
      000199 12 0B 2B         [24]  658 	lcall	_decimal_to_bcd
      00019C E5 82            [12]  659 	mov	a,dpl
      00019E F5 0A            [12]  660 	mov	(_time + 0x0002),a
                                    661 ;	./N76_LedTyGia.c:103: time.dy = decimal_to_bcd(time.dy);
      0001A0 85 0B 82         [24]  662 	mov	dpl,(_time + 0x0003)
      0001A3 12 0B 2B         [24]  663 	lcall	_decimal_to_bcd
      0001A6 E5 82            [12]  664 	mov	a,dpl
      0001A8 F5 0B            [12]  665 	mov	(_time + 0x0003),a
                                    666 ;	./N76_LedTyGia.c:104: time.dt = decimal_to_bcd(time.dt);
      0001AA 85 0C 82         [24]  667 	mov	dpl,(_time + 0x0004)
      0001AD 12 0B 2B         [24]  668 	lcall	_decimal_to_bcd
      0001B0 E5 82            [12]  669 	mov	a,dpl
      0001B2 F5 0C            [12]  670 	mov	(_time + 0x0004),a
                                    671 ;	./N76_LedTyGia.c:105: time.mt = decimal_to_bcd(time.mt);
      0001B4 85 0D 82         [24]  672 	mov	dpl,(_time + 0x0005)
      0001B7 12 0B 2B         [24]  673 	lcall	_decimal_to_bcd
      0001BA E5 82            [12]  674 	mov	a,dpl
      0001BC F5 0D            [12]  675 	mov	(_time + 0x0005),a
                                    676 ;	./N76_LedTyGia.c:106: time.yr = decimal_to_bcd(time.yr);
      0001BE 85 0E 82         [24]  677 	mov	dpl,(_time + 0x0006)
      0001C1 12 0B 2B         [24]  678 	lcall	_decimal_to_bcd
      0001C4 E5 82            [12]  679 	mov	a,dpl
      0001C6 F5 0E            [12]  680 	mov	(_time + 0x0006),a
                                    681 ;	./N76_LedTyGia.c:109: DS1307_write(DS1307_SEC_REG, time.s);
      0001C8 85 08 28         [24]  682 	mov	_DS1307_write_PARM_2,_time
      0001CB 75 82 00         [24]  683 	mov	dpl,#0x00
      0001CE 12 0A E9         [24]  684 	lcall	_DS1307_write
                                    685 ;	./N76_LedTyGia.c:110: DS1307_write(DS1307_MIN_REG, time.m);
      0001D1 85 09 28         [24]  686 	mov	_DS1307_write_PARM_2,(_time + 0x0001)
      0001D4 75 82 01         [24]  687 	mov	dpl,#0x01
      0001D7 12 0A E9         [24]  688 	lcall	_DS1307_write
                                    689 ;	./N76_LedTyGia.c:111: DS1307_write(DS1307_HOUR_REG, time.h);
      0001DA 85 0A 28         [24]  690 	mov	_DS1307_write_PARM_2,(_time + 0x0002)
      0001DD 75 82 02         [24]  691 	mov	dpl,#0x02
      0001E0 12 0A E9         [24]  692 	lcall	_DS1307_write
                                    693 ;	./N76_LedTyGia.c:112: DS1307_write(DS1307_DAY_REG, time.dy);
      0001E3 85 0B 28         [24]  694 	mov	_DS1307_write_PARM_2,(_time + 0x0003)
      0001E6 75 82 03         [24]  695 	mov	dpl,#0x03
      0001E9 12 0A E9         [24]  696 	lcall	_DS1307_write
                                    697 ;	./N76_LedTyGia.c:113: DS1307_write(DS1307_DATE_REG, time.dt);
      0001EC 85 0C 28         [24]  698 	mov	_DS1307_write_PARM_2,(_time + 0x0004)
      0001EF 75 82 04         [24]  699 	mov	dpl,#0x04
      0001F2 12 0A E9         [24]  700 	lcall	_DS1307_write
                                    701 ;	./N76_LedTyGia.c:114: DS1307_write(DS1307_MONTH_REG, time.mt);
      0001F5 85 0D 28         [24]  702 	mov	_DS1307_write_PARM_2,(_time + 0x0005)
      0001F8 75 82 05         [24]  703 	mov	dpl,#0x05
      0001FB 12 0A E9         [24]  704 	lcall	_DS1307_write
                                    705 ;	./N76_LedTyGia.c:115: DS1307_write(DS1307_YEAR_REG, time.yr);
      0001FE 85 0E 28         [24]  706 	mov	_DS1307_write_PARM_2,(_time + 0x0006)
      000201 75 82 06         [24]  707 	mov	dpl,#0x06
                                    708 ;	./N76_LedTyGia.c:116: }
      000204 02 0A E9         [24]  709 	ljmp	_DS1307_write
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'printDigits'
                                    712 ;------------------------------------------------------------
                                    713 ;digits                    Allocated to registers r6 r7 
                                    714 ;------------------------------------------------------------
                                    715 ;	./N76_LedTyGia.c:118: void printDigits(int digits)
                                    716 ;	-----------------------------------------
                                    717 ;	 function printDigits
                                    718 ;	-----------------------------------------
      000207                        719 _printDigits:
      000207 AE 82            [24]  720 	mov	r6,dpl
      000209 AF 83            [24]  721 	mov	r7,dph
                                    722 ;	./N76_LedTyGia.c:121: UART0_print(":");
      00020B 90 16 D1         [24]  723 	mov	dptr,#___str_0
      00020E 75 F0 80         [24]  724 	mov	b,#0x80
      000211 C0 07            [24]  725 	push	ar7
      000213 C0 06            [24]  726 	push	ar6
      000215 12 0D 08         [24]  727 	lcall	_UART0_print
      000218 D0 06            [24]  728 	pop	ar6
      00021A D0 07            [24]  729 	pop	ar7
                                    730 ;	./N76_LedTyGia.c:123: if (digits < 10)
      00021C C3               [12]  731 	clr	c
      00021D EE               [12]  732 	mov	a,r6
      00021E 94 0A            [12]  733 	subb	a,#0x0a
      000220 EF               [12]  734 	mov	a,r7
      000221 64 80            [12]  735 	xrl	a,#0x80
      000223 94 80            [12]  736 	subb	a,#0x80
      000225 50 0E            [24]  737 	jnc	00102$
                                    738 ;	./N76_LedTyGia.c:124: UART0_putChar('0');
      000227 75 82 30         [24]  739 	mov	dpl,#0x30
      00022A C0 07            [24]  740 	push	ar7
      00022C C0 06            [24]  741 	push	ar6
      00022E 12 0C F8         [24]  742 	lcall	_UART0_putChar
      000231 D0 06            [24]  743 	pop	ar6
      000233 D0 07            [24]  744 	pop	ar7
      000235                        745 00102$:
                                    746 ;	./N76_LedTyGia.c:125: UART0_printNum(digits);
      000235 EF               [12]  747 	mov	a,r7
      000236 33               [12]  748 	rlc	a
      000237 95 E0            [12]  749 	subb	a,acc
      000239 FD               [12]  750 	mov	r5,a
      00023A 8E 82            [24]  751 	mov	dpl,r6
      00023C 8F 83            [24]  752 	mov	dph,r7
      00023E 8D F0            [24]  753 	mov	b,r5
                                    754 ;	./N76_LedTyGia.c:126: }
      000240 02 0D 59         [24]  755 	ljmp	_UART0_printNum
                                    756 ;------------------------------------------------------------
                                    757 ;Allocation info for local variables in function 'digitalClockDisplay'
                                    758 ;------------------------------------------------------------
                                    759 ;	./N76_LedTyGia.c:128: void digitalClockDisplay()
                                    760 ;	-----------------------------------------
                                    761 ;	 function digitalClockDisplay
                                    762 ;	-----------------------------------------
      000243                        763 _digitalClockDisplay:
                                    764 ;	./N76_LedTyGia.c:131: UART0_printNum(time.h);
      000243 AC 0A            [24]  765 	mov	r4,(_time + 0x0002)
      000245 7D 00            [12]  766 	mov	r5,#0x00
      000247 7E 00            [12]  767 	mov	r6,#0x00
      000249 7F 00            [12]  768 	mov	r7,#0x00
      00024B 8C 82            [24]  769 	mov	dpl,r4
      00024D 8D 83            [24]  770 	mov	dph,r5
      00024F 8E F0            [24]  771 	mov	b,r6
      000251 EF               [12]  772 	mov	a,r7
      000252 12 0D 59         [24]  773 	lcall	_UART0_printNum
                                    774 ;	./N76_LedTyGia.c:132: printDigits(time.m);
      000255 AE 09            [24]  775 	mov	r6,(_time + 0x0001)
      000257 7F 00            [12]  776 	mov	r7,#0x00
      000259 8E 82            [24]  777 	mov	dpl,r6
      00025B 8F 83            [24]  778 	mov	dph,r7
      00025D 12 02 07         [24]  779 	lcall	_printDigits
                                    780 ;	./N76_LedTyGia.c:133: printDigits(time.s);
      000260 AE 08            [24]  781 	mov	r6,_time
      000262 7F 00            [12]  782 	mov	r7,#0x00
      000264 8E 82            [24]  783 	mov	dpl,r6
      000266 8F 83            [24]  784 	mov	dph,r7
      000268 12 02 07         [24]  785 	lcall	_printDigits
                                    786 ;	./N76_LedTyGia.c:134: UART0_print(" ");
      00026B 90 16 D3         [24]  787 	mov	dptr,#___str_1
      00026E 75 F0 80         [24]  788 	mov	b,#0x80
      000271 12 0D 08         [24]  789 	lcall	_UART0_print
                                    790 ;	./N76_LedTyGia.c:135: UART0_printNum(time.dy);
      000274 AC 0B            [24]  791 	mov	r4,(_time + 0x0003)
      000276 7D 00            [12]  792 	mov	r5,#0x00
      000278 7E 00            [12]  793 	mov	r6,#0x00
      00027A 7F 00            [12]  794 	mov	r7,#0x00
      00027C 8C 82            [24]  795 	mov	dpl,r4
      00027E 8D 83            [24]  796 	mov	dph,r5
      000280 8E F0            [24]  797 	mov	b,r6
      000282 EF               [12]  798 	mov	a,r7
      000283 12 0D 59         [24]  799 	lcall	_UART0_printNum
                                    800 ;	./N76_LedTyGia.c:136: UART0_print(" ");
      000286 90 16 D3         [24]  801 	mov	dptr,#___str_1
      000289 75 F0 80         [24]  802 	mov	b,#0x80
      00028C 12 0D 08         [24]  803 	lcall	_UART0_print
                                    804 ;	./N76_LedTyGia.c:137: UART0_printNum(time.dt);
      00028F AC 0C            [24]  805 	mov	r4,(_time + 0x0004)
      000291 7D 00            [12]  806 	mov	r5,#0x00
      000293 7E 00            [12]  807 	mov	r6,#0x00
      000295 7F 00            [12]  808 	mov	r7,#0x00
      000297 8C 82            [24]  809 	mov	dpl,r4
      000299 8D 83            [24]  810 	mov	dph,r5
      00029B 8E F0            [24]  811 	mov	b,r6
      00029D EF               [12]  812 	mov	a,r7
      00029E 12 0D 59         [24]  813 	lcall	_UART0_printNum
                                    814 ;	./N76_LedTyGia.c:138: UART0_print(" ");
      0002A1 90 16 D3         [24]  815 	mov	dptr,#___str_1
      0002A4 75 F0 80         [24]  816 	mov	b,#0x80
      0002A7 12 0D 08         [24]  817 	lcall	_UART0_print
                                    818 ;	./N76_LedTyGia.c:139: UART0_printNum(time.mt);
      0002AA AC 0D            [24]  819 	mov	r4,(_time + 0x0005)
      0002AC 7D 00            [12]  820 	mov	r5,#0x00
      0002AE 7E 00            [12]  821 	mov	r6,#0x00
      0002B0 7F 00            [12]  822 	mov	r7,#0x00
      0002B2 8C 82            [24]  823 	mov	dpl,r4
      0002B4 8D 83            [24]  824 	mov	dph,r5
      0002B6 8E F0            [24]  825 	mov	b,r6
      0002B8 EF               [12]  826 	mov	a,r7
      0002B9 12 0D 59         [24]  827 	lcall	_UART0_printNum
                                    828 ;	./N76_LedTyGia.c:140: UART0_print(" ");
      0002BC 90 16 D3         [24]  829 	mov	dptr,#___str_1
      0002BF 75 F0 80         [24]  830 	mov	b,#0x80
      0002C2 12 0D 08         [24]  831 	lcall	_UART0_print
                                    832 ;	./N76_LedTyGia.c:141: UART0_printNum(time.yr);
      0002C5 AC 0E            [24]  833 	mov	r4,(_time + 0x0006)
      0002C7 7D 00            [12]  834 	mov	r5,#0x00
      0002C9 7E 00            [12]  835 	mov	r6,#0x00
      0002CB 7F 00            [12]  836 	mov	r7,#0x00
      0002CD 8C 82            [24]  837 	mov	dpl,r4
      0002CF 8D 83            [24]  838 	mov	dph,r5
      0002D1 8E F0            [24]  839 	mov	b,r6
      0002D3 EF               [12]  840 	mov	a,r7
      0002D4 12 0D 59         [24]  841 	lcall	_UART0_printNum
                                    842 ;	./N76_LedTyGia.c:142: UART0_println("");
      0002D7 90 16 D5         [24]  843 	mov	dptr,#___str_2
      0002DA 75 F0 80         [24]  844 	mov	b,#0x80
                                    845 ;	./N76_LedTyGia.c:143: }
      0002DD 02 0D 4D         [24]  846 	ljmp	_UART0_println
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'IR_begin'
                                    849 ;------------------------------------------------------------
                                    850 ;	./N76_LedTyGia.c:145: void IR_begin()
                                    851 ;	-----------------------------------------
                                    852 ;	 function IR_begin
                                    853 ;	-----------------------------------------
      0002E0                        854 _IR_begin:
                                    855 ;	./N76_LedTyGia.c:147: setb(P3M1, 0);
      0002E0 43 AC 01         [24]  856 	orl	_p3m1,#0x01
                                    857 ;	./N76_LedTyGia.c:148: clrb(P3M2, 0);
      0002E3 53 AD FE         [24]  858 	anl	_p3m2,#0xfe
                                    859 ;	./N76_LedTyGia.c:149: setb(P3, 0);
      0002E6 43 B0 01         [24]  860 	orl	_p3,#0x01
                                    861 ;	./N76_LedTyGia.c:152: setb(TCON, IT0); // set external interrupt 0 at falling edge
      0002E9 43 88 01         [24]  862 	orl	_tcon,#0x01
                                    863 ;	./N76_LedTyGia.c:153: setb(IE, EX0);	 // enable external 0 interrupt
      0002EC 43 A8 01         [24]  864 	orl	_ie,#0x01
                                    865 ;	./N76_LedTyGia.c:156: TMOD &= 0xF0; // Timer 0 mode 1
      0002EF 53 89 F0         [24]  866 	anl	_tmod,#0xf0
                                    867 ;	./N76_LedTyGia.c:157: TMOD |= 0x01;
      0002F2 43 89 01         [24]  868 	orl	_tmod,#0x01
                                    869 ;	./N76_LedTyGia.c:158: TL0 = 0xBF; // = 65535 - Reload value
      0002F5 75 8A BF         [24]  870 	mov	_tl0,#0xbf
                                    871 ;	./N76_LedTyGia.c:159: TH0 = 0xE0;
      0002F8 75 8C E0         [24]  872 	mov	_th0,#0xe0
                                    873 ;	./N76_LedTyGia.c:160: setb(CKCON, T0M); // Timer 0 use F_CPU instead of F_CPU/12 like other 8051
      0002FB 43 8E 08         [24]  874 	orl	_ckcon,#0x08
                                    875 ;	./N76_LedTyGia.c:161: setb(IE, ET0);	  // Enable timer 0 interrupt
      0002FE 43 A8 02         [24]  876 	orl	_ie,#0x02
                                    877 ;	./N76_LedTyGia.c:163: sei();			 // Enable global interrupt
      000301 43 A8 80         [24]  878 	orl	_ie,#0x80
                                    879 ;	./N76_LedTyGia.c:164: setb(TCON, TR0); // Run timer 0
      000304 43 88 10         [24]  880 	orl	_tcon,#0x10
                                    881 ;	./N76_LedTyGia.c:165: }
      000307 22               [24]  882 	ret
                                    883 ;------------------------------------------------------------
                                    884 ;Allocation info for local variables in function 'main'
                                    885 ;------------------------------------------------------------
                                    886 ;numOfMax                  Allocated to registers 
                                    887 ;------------------------------------------------------------
                                    888 ;	./N76_LedTyGia.c:170: void main(void)
                                    889 ;	-----------------------------------------
                                    890 ;	 function main
                                    891 ;	-----------------------------------------
      000308                        892 _main:
                                    893 ;	./N76_LedTyGia.c:172: UART0_begin();
      000308 12 0C D0         [24]  894 	lcall	_UART0_begin
                                    895 ;	./N76_LedTyGia.c:173: MAX7219_begin();
      00030B 12 0C 10         [24]  896 	lcall	_MAX7219_begin
                                    897 ;	./N76_LedTyGia.c:176: DS1307_begin();
      00030E 12 0A AE         [24]  898 	lcall	_DS1307_begin
                                    899 ;	./N76_LedTyGia.c:177: IR_begin();
      000311 12 02 E0         [24]  900 	lcall	_IR_begin
                                    901 ;	./N76_LedTyGia.c:179: time.s = 1;
      000314 75 08 01         [24]  902 	mov	_time,#0x01
                                    903 ;	./N76_LedTyGia.c:180: time.m = 34;
      000317 75 09 22         [24]  904 	mov	(_time + 0x0001),#0x22
                                    905 ;	./N76_LedTyGia.c:181: time.h = 20;
      00031A 75 0A 14         [24]  906 	mov	(_time + 0x0002),#0x14
                                    907 ;	./N76_LedTyGia.c:183: time.dy = 3;
      00031D 75 0B 03         [24]  908 	mov	(_time + 0x0003),#0x03
                                    909 ;	./N76_LedTyGia.c:184: time.dt = 31;
      000320 75 0C 1F         [24]  910 	mov	(_time + 0x0004),#0x1f
                                    911 ;	./N76_LedTyGia.c:185: time.mt = 5;
      000323 75 0D 05         [24]  912 	mov	(_time + 0x0005),#0x05
                                    913 ;	./N76_LedTyGia.c:186: time.yr = 22;
      000326 75 0E 16         [24]  914 	mov	(_time + 0x0006),#0x16
                                    915 ;	./N76_LedTyGia.c:197: while (1)
      000329                        916 00128$:
                                    917 ;	./N76_LedTyGia.c:199: get_time();
      000329 12 00 ED         [24]  918 	lcall	_get_time
                                    919 ;	./N76_LedTyGia.c:200: if (sec_tt != time.s)
      00032C E5 08            [12]  920 	mov	a,_time
      00032E FF               [12]  921 	mov	r7,a
      00032F B5 0F 03         [24]  922 	cjne	a,_sec_tt,00236$
      000332 02 05 45         [24]  923 	ljmp	00102$
      000335                        924 00236$:
                                    925 ;	./N76_LedTyGia.c:202: sec_tt = time.s;
      000335 8F 0F            [24]  926 	mov	_sec_tt,r7
                                    927 ;	./N76_LedTyGia.c:205: MAX7219_transfer(0x33, 1, 5);
      000337 75 2B 01         [24]  928 	mov	_MAX7219_transfer_PARM_2,#0x01
      00033A 75 2C 05         [24]  929 	mov	_MAX7219_transfer_PARM_3,#0x05
      00033D 75 82 33         [24]  930 	mov	dpl,#0x33
      000340 12 0C 70         [24]  931 	lcall	_MAX7219_transfer
                                    932 ;	./N76_LedTyGia.c:206: MAX7219_transfer(0x33, 2, 9);
      000343 75 2B 02         [24]  933 	mov	_MAX7219_transfer_PARM_2,#0x02
      000346 75 2C 09         [24]  934 	mov	_MAX7219_transfer_PARM_3,#0x09
      000349 75 82 33         [24]  935 	mov	dpl,#0x33
      00034C 12 0C 70         [24]  936 	lcall	_MAX7219_transfer
                                    937 ;	./N76_LedTyGia.c:207: MAX7219_transfer(0x33, 3, 9);
      00034F 75 2B 03         [24]  938 	mov	_MAX7219_transfer_PARM_2,#0x03
      000352 75 2C 09         [24]  939 	mov	_MAX7219_transfer_PARM_3,#0x09
      000355 75 82 33         [24]  940 	mov	dpl,#0x33
      000358 12 0C 70         [24]  941 	lcall	_MAX7219_transfer
                                    942 ;	./N76_LedTyGia.c:208: MAX7219_transfer(0x33, 4, 1);
      00035B 75 2B 04         [24]  943 	mov	_MAX7219_transfer_PARM_2,#0x04
      00035E 75 2C 01         [24]  944 	mov	_MAX7219_transfer_PARM_3,#0x01
      000361 75 82 33         [24]  945 	mov	dpl,#0x33
      000364 12 0C 70         [24]  946 	lcall	_MAX7219_transfer
                                    947 ;	./N76_LedTyGia.c:209: MAX7219_transfer(0x33, 5, 3 | CODEB_DP);
      000367 75 2B 05         [24]  948 	mov	_MAX7219_transfer_PARM_2,#0x05
      00036A 75 2C F3         [24]  949 	mov	_MAX7219_transfer_PARM_3,#0xf3
      00036D 75 82 33         [24]  950 	mov	dpl,#0x33
      000370 12 0C 70         [24]  951 	lcall	_MAX7219_transfer
                                    952 ;	./N76_LedTyGia.c:210: MAX7219_transfer(0x33, 6, 0);
      000373 75 2B 06         [24]  953 	mov	_MAX7219_transfer_PARM_2,#0x06
      000376 75 2C 00         [24]  954 	mov	_MAX7219_transfer_PARM_3,#0x00
      000379 75 82 33         [24]  955 	mov	dpl,#0x33
      00037C 12 0C 70         [24]  956 	lcall	_MAX7219_transfer
                                    957 ;	./N76_LedTyGia.c:211: MAX7219_transfer(0x33, 7, 3 | CODEB_DP);
      00037F 75 2B 07         [24]  958 	mov	_MAX7219_transfer_PARM_2,#0x07
      000382 75 2C F3         [24]  959 	mov	_MAX7219_transfer_PARM_3,#0xf3
      000385 75 82 33         [24]  960 	mov	dpl,#0x33
      000388 12 0C 70         [24]  961 	lcall	_MAX7219_transfer
                                    962 ;	./N76_LedTyGia.c:212: MAX7219_transfer(0x33, 8, 1);
      00038B 75 2B 08         [24]  963 	mov	_MAX7219_transfer_PARM_2,#0x08
      00038E 75 2C 01         [24]  964 	mov	_MAX7219_transfer_PARM_3,#0x01
      000391 75 82 33         [24]  965 	mov	dpl,#0x33
      000394 12 0C 70         [24]  966 	lcall	_MAX7219_transfer
                                    967 ;	./N76_LedTyGia.c:214: MAX7219_transfer(0x23, 1, time.yr % 10);
      000397 AE 0E            [24]  968 	mov	r6,(_time + 0x0006)
      000399 7F 00            [12]  969 	mov	r7,#0x00
      00039B 75 77 0A         [24]  970 	mov	__modsint_PARM_2,#0x0a
                                    971 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00039E 8F 78            [24]  972 	mov	(__modsint_PARM_2 + 1),r7
      0003A0 8E 82            [24]  973 	mov	dpl,r6
      0003A2 8F 83            [24]  974 	mov	dph,r7
      0003A4 12 16 3A         [24]  975 	lcall	__modsint
      0003A7 AE 82            [24]  976 	mov	r6,dpl
      0003A9 8E 2C            [24]  977 	mov	_MAX7219_transfer_PARM_3,r6
      0003AB 75 2B 01         [24]  978 	mov	_MAX7219_transfer_PARM_2,#0x01
      0003AE 75 82 23         [24]  979 	mov	dpl,#0x23
      0003B1 12 0C 70         [24]  980 	lcall	_MAX7219_transfer
                                    981 ;	./N76_LedTyGia.c:215: MAX7219_transfer(0x23, 2, time.yr / 10);
      0003B4 AE 0E            [24]  982 	mov	r6,(_time + 0x0006)
      0003B6 7F 00            [12]  983 	mov	r7,#0x00
      0003B8 75 77 0A         [24]  984 	mov	__divsint_PARM_2,#0x0a
                                    985 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0003BB 8F 78            [24]  986 	mov	(__divsint_PARM_2 + 1),r7
      0003BD 8E 82            [24]  987 	mov	dpl,r6
      0003BF 8F 83            [24]  988 	mov	dph,r7
      0003C1 12 16 70         [24]  989 	lcall	__divsint
      0003C4 AE 82            [24]  990 	mov	r6,dpl
      0003C6 8E 2C            [24]  991 	mov	_MAX7219_transfer_PARM_3,r6
      0003C8 75 2B 02         [24]  992 	mov	_MAX7219_transfer_PARM_2,#0x02
      0003CB 75 82 23         [24]  993 	mov	dpl,#0x23
      0003CE 12 0C 70         [24]  994 	lcall	_MAX7219_transfer
                                    995 ;	./N76_LedTyGia.c:216: MAX7219_transfer(0x23, 3, time.mt % 10 | CODEB_DP);
      0003D1 AE 0D            [24]  996 	mov	r6,(_time + 0x0005)
      0003D3 7F 00            [12]  997 	mov	r7,#0x00
      0003D5 75 77 0A         [24]  998 	mov	__modsint_PARM_2,#0x0a
                                    999 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0003D8 8F 78            [24] 1000 	mov	(__modsint_PARM_2 + 1),r7
      0003DA 8E 82            [24] 1001 	mov	dpl,r6
      0003DC 8F 83            [24] 1002 	mov	dph,r7
      0003DE 12 16 3A         [24] 1003 	lcall	__modsint
      0003E1 AE 82            [24] 1004 	mov	r6,dpl
      0003E3 74 F0            [12] 1005 	mov	a,#0xf0
      0003E5 4E               [12] 1006 	orl	a,r6
      0003E6 F5 2C            [12] 1007 	mov	_MAX7219_transfer_PARM_3,a
      0003E8 75 2B 03         [24] 1008 	mov	_MAX7219_transfer_PARM_2,#0x03
      0003EB 75 82 23         [24] 1009 	mov	dpl,#0x23
      0003EE 12 0C 70         [24] 1010 	lcall	_MAX7219_transfer
                                   1011 ;	./N76_LedTyGia.c:217: MAX7219_transfer(0x23, 4, time.mt / 10);
      0003F1 AE 0D            [24] 1012 	mov	r6,(_time + 0x0005)
      0003F3 7F 00            [12] 1013 	mov	r7,#0x00
      0003F5 75 77 0A         [24] 1014 	mov	__divsint_PARM_2,#0x0a
                                   1015 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0003F8 8F 78            [24] 1016 	mov	(__divsint_PARM_2 + 1),r7
      0003FA 8E 82            [24] 1017 	mov	dpl,r6
      0003FC 8F 83            [24] 1018 	mov	dph,r7
      0003FE 12 16 70         [24] 1019 	lcall	__divsint
      000401 AE 82            [24] 1020 	mov	r6,dpl
      000403 8E 2C            [24] 1021 	mov	_MAX7219_transfer_PARM_3,r6
      000405 75 2B 04         [24] 1022 	mov	_MAX7219_transfer_PARM_2,#0x04
      000408 75 82 23         [24] 1023 	mov	dpl,#0x23
      00040B 12 0C 70         [24] 1024 	lcall	_MAX7219_transfer
                                   1025 ;	./N76_LedTyGia.c:218: MAX7219_transfer(0x23, 5, time.dt % 10 | CODEB_DP);
      00040E AE 0C            [24] 1026 	mov	r6,(_time + 0x0004)
      000410 7F 00            [12] 1027 	mov	r7,#0x00
      000412 75 77 0A         [24] 1028 	mov	__modsint_PARM_2,#0x0a
                                   1029 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000415 8F 78            [24] 1030 	mov	(__modsint_PARM_2 + 1),r7
      000417 8E 82            [24] 1031 	mov	dpl,r6
      000419 8F 83            [24] 1032 	mov	dph,r7
      00041B 12 16 3A         [24] 1033 	lcall	__modsint
      00041E AE 82            [24] 1034 	mov	r6,dpl
      000420 74 F0            [12] 1035 	mov	a,#0xf0
      000422 4E               [12] 1036 	orl	a,r6
      000423 F5 2C            [12] 1037 	mov	_MAX7219_transfer_PARM_3,a
      000425 75 2B 05         [24] 1038 	mov	_MAX7219_transfer_PARM_2,#0x05
      000428 75 82 23         [24] 1039 	mov	dpl,#0x23
      00042B 12 0C 70         [24] 1040 	lcall	_MAX7219_transfer
                                   1041 ;	./N76_LedTyGia.c:219: MAX7219_transfer(0x23, 6, time.dt / 10);
      00042E AE 0C            [24] 1042 	mov	r6,(_time + 0x0004)
      000430 7F 00            [12] 1043 	mov	r7,#0x00
      000432 75 77 0A         [24] 1044 	mov	__divsint_PARM_2,#0x0a
                                   1045 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000435 8F 78            [24] 1046 	mov	(__divsint_PARM_2 + 1),r7
      000437 8E 82            [24] 1047 	mov	dpl,r6
      000439 8F 83            [24] 1048 	mov	dph,r7
      00043B 12 16 70         [24] 1049 	lcall	__divsint
      00043E AE 82            [24] 1050 	mov	r6,dpl
      000440 8E 2C            [24] 1051 	mov	_MAX7219_transfer_PARM_3,r6
      000442 75 2B 06         [24] 1052 	mov	_MAX7219_transfer_PARM_2,#0x06
      000445 75 82 23         [24] 1053 	mov	dpl,#0x23
      000448 12 0C 70         [24] 1054 	lcall	_MAX7219_transfer
                                   1055 ;	./N76_LedTyGia.c:220: MAX7219_transfer(0x23, 7, 0x0F);
      00044B 75 2B 07         [24] 1056 	mov	_MAX7219_transfer_PARM_2,#0x07
      00044E 75 2C 0F         [24] 1057 	mov	_MAX7219_transfer_PARM_3,#0x0f
      000451 75 82 23         [24] 1058 	mov	dpl,#0x23
      000454 12 0C 70         [24] 1059 	lcall	_MAX7219_transfer
                                   1060 ;	./N76_LedTyGia.c:221: MAX7219_transfer(0x23, 8, time.dy);
      000457 85 0B 2C         [24] 1061 	mov	_MAX7219_transfer_PARM_3,(_time + 0x0003)
      00045A 75 2B 08         [24] 1062 	mov	_MAX7219_transfer_PARM_2,#0x08
      00045D 75 82 23         [24] 1063 	mov	dpl,#0x23
      000460 12 0C 70         [24] 1064 	lcall	_MAX7219_transfer
                                   1065 ;	./N76_LedTyGia.c:223: MAX7219_transfer(0x13, 1, time.s % 10);
      000463 AE 08            [24] 1066 	mov	r6,_time
      000465 7F 00            [12] 1067 	mov	r7,#0x00
      000467 75 77 0A         [24] 1068 	mov	__modsint_PARM_2,#0x0a
                                   1069 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00046A 8F 78            [24] 1070 	mov	(__modsint_PARM_2 + 1),r7
      00046C 8E 82            [24] 1071 	mov	dpl,r6
      00046E 8F 83            [24] 1072 	mov	dph,r7
      000470 12 16 3A         [24] 1073 	lcall	__modsint
      000473 AE 82            [24] 1074 	mov	r6,dpl
      000475 8E 2C            [24] 1075 	mov	_MAX7219_transfer_PARM_3,r6
      000477 75 2B 01         [24] 1076 	mov	_MAX7219_transfer_PARM_2,#0x01
      00047A 75 82 13         [24] 1077 	mov	dpl,#0x13
      00047D 12 0C 70         [24] 1078 	lcall	_MAX7219_transfer
                                   1079 ;	./N76_LedTyGia.c:224: MAX7219_transfer(0x13, 2, time.s / 10);
      000480 AE 08            [24] 1080 	mov	r6,_time
      000482 7F 00            [12] 1081 	mov	r7,#0x00
      000484 75 77 0A         [24] 1082 	mov	__divsint_PARM_2,#0x0a
                                   1083 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000487 8F 78            [24] 1084 	mov	(__divsint_PARM_2 + 1),r7
      000489 8E 82            [24] 1085 	mov	dpl,r6
      00048B 8F 83            [24] 1086 	mov	dph,r7
      00048D 12 16 70         [24] 1087 	lcall	__divsint
      000490 AE 82            [24] 1088 	mov	r6,dpl
      000492 8E 2C            [24] 1089 	mov	_MAX7219_transfer_PARM_3,r6
      000494 75 2B 02         [24] 1090 	mov	_MAX7219_transfer_PARM_2,#0x02
      000497 75 82 13         [24] 1091 	mov	dpl,#0x13
      00049A 12 0C 70         [24] 1092 	lcall	_MAX7219_transfer
                                   1093 ;	./N76_LedTyGia.c:225: MAX7219_transfer(0x13, 3, sec_tt % 2 ? CODEB_MINUS : CODEB_BLANK);
      00049D E5 0F            [12] 1094 	mov	a,_sec_tt
      00049F 30 E0 06         [24] 1095 	jnb	acc.0,00132$
      0004A2 7E 0A            [12] 1096 	mov	r6,#0x0a
      0004A4 7F 00            [12] 1097 	mov	r7,#0x00
      0004A6 80 04            [24] 1098 	sjmp	00133$
      0004A8                       1099 00132$:
      0004A8 7E 0F            [12] 1100 	mov	r6,#0x0f
      0004AA 7F 00            [12] 1101 	mov	r7,#0x00
      0004AC                       1102 00133$:
      0004AC 8E 2C            [24] 1103 	mov	_MAX7219_transfer_PARM_3,r6
      0004AE 75 2B 03         [24] 1104 	mov	_MAX7219_transfer_PARM_2,#0x03
      0004B1 75 82 13         [24] 1105 	mov	dpl,#0x13
      0004B4 12 0C 70         [24] 1106 	lcall	_MAX7219_transfer
                                   1107 ;	./N76_LedTyGia.c:226: MAX7219_transfer(0x13, 4, time.m % 10);
      0004B7 AE 09            [24] 1108 	mov	r6,(_time + 0x0001)
      0004B9 7F 00            [12] 1109 	mov	r7,#0x00
      0004BB 75 77 0A         [24] 1110 	mov	__modsint_PARM_2,#0x0a
                                   1111 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0004BE 8F 78            [24] 1112 	mov	(__modsint_PARM_2 + 1),r7
      0004C0 8E 82            [24] 1113 	mov	dpl,r6
      0004C2 8F 83            [24] 1114 	mov	dph,r7
      0004C4 12 16 3A         [24] 1115 	lcall	__modsint
      0004C7 AE 82            [24] 1116 	mov	r6,dpl
      0004C9 8E 2C            [24] 1117 	mov	_MAX7219_transfer_PARM_3,r6
      0004CB 75 2B 04         [24] 1118 	mov	_MAX7219_transfer_PARM_2,#0x04
      0004CE 75 82 13         [24] 1119 	mov	dpl,#0x13
      0004D1 12 0C 70         [24] 1120 	lcall	_MAX7219_transfer
                                   1121 ;	./N76_LedTyGia.c:227: MAX7219_transfer(0x13, 5, time.m / 10);
      0004D4 AE 09            [24] 1122 	mov	r6,(_time + 0x0001)
      0004D6 7F 00            [12] 1123 	mov	r7,#0x00
      0004D8 75 77 0A         [24] 1124 	mov	__divsint_PARM_2,#0x0a
                                   1125 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0004DB 8F 78            [24] 1126 	mov	(__divsint_PARM_2 + 1),r7
      0004DD 8E 82            [24] 1127 	mov	dpl,r6
      0004DF 8F 83            [24] 1128 	mov	dph,r7
      0004E1 12 16 70         [24] 1129 	lcall	__divsint
      0004E4 AE 82            [24] 1130 	mov	r6,dpl
      0004E6 8E 2C            [24] 1131 	mov	_MAX7219_transfer_PARM_3,r6
      0004E8 75 2B 05         [24] 1132 	mov	_MAX7219_transfer_PARM_2,#0x05
      0004EB 75 82 13         [24] 1133 	mov	dpl,#0x13
      0004EE 12 0C 70         [24] 1134 	lcall	_MAX7219_transfer
                                   1135 ;	./N76_LedTyGia.c:228: MAX7219_transfer(0x13, 6, sec_tt % 2 ? CODEB_MINUS : CODEB_BLANK);
      0004F1 E5 0F            [12] 1136 	mov	a,_sec_tt
      0004F3 30 E0 06         [24] 1137 	jnb	acc.0,00134$
      0004F6 7E 0A            [12] 1138 	mov	r6,#0x0a
      0004F8 7F 00            [12] 1139 	mov	r7,#0x00
      0004FA 80 04            [24] 1140 	sjmp	00135$
      0004FC                       1141 00134$:
      0004FC 7E 0F            [12] 1142 	mov	r6,#0x0f
      0004FE 7F 00            [12] 1143 	mov	r7,#0x00
      000500                       1144 00135$:
      000500 8E 2C            [24] 1145 	mov	_MAX7219_transfer_PARM_3,r6
      000502 75 2B 06         [24] 1146 	mov	_MAX7219_transfer_PARM_2,#0x06
      000505 75 82 13         [24] 1147 	mov	dpl,#0x13
      000508 12 0C 70         [24] 1148 	lcall	_MAX7219_transfer
                                   1149 ;	./N76_LedTyGia.c:229: MAX7219_transfer(0x13, 7, time.h % 10);
      00050B AE 0A            [24] 1150 	mov	r6,(_time + 0x0002)
      00050D 7F 00            [12] 1151 	mov	r7,#0x00
      00050F 75 77 0A         [24] 1152 	mov	__modsint_PARM_2,#0x0a
                                   1153 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000512 8F 78            [24] 1154 	mov	(__modsint_PARM_2 + 1),r7
      000514 8E 82            [24] 1155 	mov	dpl,r6
      000516 8F 83            [24] 1156 	mov	dph,r7
      000518 12 16 3A         [24] 1157 	lcall	__modsint
      00051B AE 82            [24] 1158 	mov	r6,dpl
      00051D 8E 2C            [24] 1159 	mov	_MAX7219_transfer_PARM_3,r6
      00051F 75 2B 07         [24] 1160 	mov	_MAX7219_transfer_PARM_2,#0x07
      000522 75 82 13         [24] 1161 	mov	dpl,#0x13
      000525 12 0C 70         [24] 1162 	lcall	_MAX7219_transfer
                                   1163 ;	./N76_LedTyGia.c:230: MAX7219_transfer(0x13, 8, time.h / 10);
      000528 AE 0A            [24] 1164 	mov	r6,(_time + 0x0002)
      00052A 7F 00            [12] 1165 	mov	r7,#0x00
      00052C 75 77 0A         [24] 1166 	mov	__divsint_PARM_2,#0x0a
                                   1167 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00052F 8F 78            [24] 1168 	mov	(__divsint_PARM_2 + 1),r7
      000531 8E 82            [24] 1169 	mov	dpl,r6
      000533 8F 83            [24] 1170 	mov	dph,r7
      000535 12 16 70         [24] 1171 	lcall	__divsint
      000538 AE 82            [24] 1172 	mov	r6,dpl
      00053A 8E 2C            [24] 1173 	mov	_MAX7219_transfer_PARM_3,r6
      00053C 75 2B 08         [24] 1174 	mov	_MAX7219_transfer_PARM_2,#0x08
      00053F 75 82 13         [24] 1175 	mov	dpl,#0x13
      000542 12 0C 70         [24] 1176 	lcall	_MAX7219_transfer
      000545                       1177 00102$:
                                   1178 ;	./N76_LedTyGia.c:243: if (_IR_received == 1)
      000545 74 01            [12] 1179 	mov	a,#0x01
      000547 B5 22 02         [24] 1180 	cjne	a,__IR_received,00239$
      00054A 80 03            [24] 1181 	sjmp	00240$
      00054C                       1182 00239$:
      00054C 02 03 29         [24] 1183 	ljmp	00128$
      00054F                       1184 00240$:
                                   1185 ;	./N76_LedTyGia.c:245: UART_printNum(data2);
      00054F 85 1E 82         [24] 1186 	mov	dpl,_data2
      000552 85 1F 83         [24] 1187 	mov	dph,(_data2 + 1)
      000555 85 20 F0         [24] 1188 	mov	b,(_data2 + 2)
      000558 E5 21            [12] 1189 	mov	a,(_data2 + 3)
      00055A 12 00 76         [24] 1190 	lcall	_UART_printNum
                                   1191 ;	./N76_LedTyGia.c:246: _IR_received = 0;
      00055D 75 22 00         [24] 1192 	mov	__IR_received,#0x00
                                   1193 ;	./N76_LedTyGia.c:248: switch (data2)
      000560 74 6F            [12] 1194 	mov	a,#0x6f
      000562 B5 1E 0F         [24] 1195 	cjne	a,_data2,00241$
      000565 F4               [12] 1196 	cpl	a
      000566 B5 1F 0B         [24] 1197 	cjne	a,(_data2 + 1),00241$
      000569 74 FF            [12] 1198 	mov	a,#0xff
      00056B B5 20 06         [24] 1199 	cjne	a,(_data2 + 2),00241$
      00056E B5 21 03         [24] 1200 	cjne	a,(_data2 + 3),00241$
      000571 02 07 53         [24] 1201 	ljmp	00112$
      000574                       1202 00241$:
      000574 74 67            [12] 1203 	mov	a,#0x67
      000576 B5 1E 0F         [24] 1204 	cjne	a,_data2,00242$
      000579 F4               [12] 1205 	cpl	a
      00057A B5 1F 0B         [24] 1206 	cjne	a,(_data2 + 1),00242$
      00057D 74 FF            [12] 1207 	mov	a,#0xff
      00057F B5 20 06         [24] 1208 	cjne	a,(_data2 + 2),00242$
      000582 B5 21 03         [24] 1209 	cjne	a,(_data2 + 3),00242$
      000585 02 07 3B         [24] 1210 	ljmp	00110$
      000588                       1211 00242$:
      000588 74 5D            [12] 1212 	mov	a,#0x5d
      00058A B5 1E 0F         [24] 1213 	cjne	a,_data2,00243$
      00058D F4               [12] 1214 	cpl	a
      00058E B5 1F 0B         [24] 1215 	cjne	a,(_data2 + 1),00243$
      000591 74 FF            [12] 1216 	mov	a,#0xff
      000593 B5 20 06         [24] 1217 	cjne	a,(_data2 + 2),00243$
      000596 B5 21 03         [24] 1218 	cjne	a,(_data2 + 3),00243$
      000599 02 06 E7         [24] 1219 	ljmp	00103$
      00059C                       1220 00243$:
      00059C 74 57            [12] 1221 	mov	a,#0x57
      00059E B5 1E 0F         [24] 1222 	cjne	a,_data2,00244$
      0005A1 F4               [12] 1223 	cpl	a
      0005A2 B5 1F 0B         [24] 1224 	cjne	a,(_data2 + 1),00244$
      0005A5 74 FF            [12] 1225 	mov	a,#0xff
      0005A7 B5 20 06         [24] 1226 	cjne	a,(_data2 + 2),00244$
      0005AA B5 21 03         [24] 1227 	cjne	a,(_data2 + 3),00244$
      0005AD 02 07 17         [24] 1228 	ljmp	00107$
      0005B0                       1229 00244$:
      0005B0 74 4F            [12] 1230 	mov	a,#0x4f
      0005B2 B5 1E 0F         [24] 1231 	cjne	a,_data2,00245$
      0005B5 F4               [12] 1232 	cpl	a
      0005B6 B5 1F 0B         [24] 1233 	cjne	a,(_data2 + 1),00245$
      0005B9 74 FF            [12] 1234 	mov	a,#0xff
      0005BB B5 20 06         [24] 1235 	cjne	a,(_data2 + 2),00245$
      0005BE B5 21 03         [24] 1236 	cjne	a,(_data2 + 3),00245$
      0005C1 02 07 23         [24] 1237 	ljmp	00108$
      0005C4                       1238 00245$:
      0005C4 74 3D            [12] 1239 	mov	a,#0x3d
      0005C6 B5 1E 0F         [24] 1240 	cjne	a,_data2,00246$
      0005C9 F4               [12] 1241 	cpl	a
      0005CA B5 1F 0B         [24] 1242 	cjne	a,(_data2 + 1),00246$
      0005CD 74 FF            [12] 1243 	mov	a,#0xff
      0005CF B5 20 06         [24] 1244 	cjne	a,(_data2 + 2),00246$
      0005D2 B5 21 03         [24] 1245 	cjne	a,(_data2 + 3),00246$
      0005D5 02 07 0B         [24] 1246 	ljmp	00106$
      0005D8                       1247 00246$:
      0005D8 74 1F            [12] 1248 	mov	a,#0x1f
      0005DA B5 1E 0F         [24] 1249 	cjne	a,_data2,00247$
      0005DD F4               [12] 1250 	cpl	a
      0005DE B5 1F 0B         [24] 1251 	cjne	a,(_data2 + 1),00247$
      0005E1 74 FF            [12] 1252 	mov	a,#0xff
      0005E3 B5 20 06         [24] 1253 	cjne	a,(_data2 + 2),00247$
      0005E6 B5 21 03         [24] 1254 	cjne	a,(_data2 + 3),00247$
      0005E9 02 07 47         [24] 1255 	ljmp	00111$
      0005EC                       1256 00247$:
      0005EC 74 1D            [12] 1257 	mov	a,#0x1d
      0005EE B5 1E 0F         [24] 1258 	cjne	a,_data2,00248$
      0005F1 F4               [12] 1259 	cpl	a
      0005F2 B5 1F 0B         [24] 1260 	cjne	a,(_data2 + 1),00248$
      0005F5 74 FF            [12] 1261 	mov	a,#0xff
      0005F7 B5 20 06         [24] 1262 	cjne	a,(_data2 + 2),00248$
      0005FA B5 21 03         [24] 1263 	cjne	a,(_data2 + 3),00248$
      0005FD 02 06 F3         [24] 1264 	ljmp	00104$
      000600                       1265 00248$:
      000600 74 FD            [12] 1266 	mov	a,#0xfd
      000602 B5 1E 0E         [24] 1267 	cjne	a,_data2,00249$
      000605 F4               [12] 1268 	cpl	a
      000606 B5 1F 0A         [24] 1269 	cjne	a,(_data2 + 1),00249$
      000609 E4               [12] 1270 	clr	a
      00060A B5 20 06         [24] 1271 	cjne	a,(_data2 + 2),00249$
      00060D B5 21 03         [24] 1272 	cjne	a,(_data2 + 3),00249$
      000610 02 07 2F         [24] 1273 	ljmp	00109$
      000613                       1274 00249$:
      000613 74 EF            [12] 1275 	mov	a,#0xef
      000615 B5 1E 0E         [24] 1276 	cjne	a,_data2,00250$
      000618 F4               [12] 1277 	cpl	a
      000619 B5 1F 0A         [24] 1278 	cjne	a,(_data2 + 1),00250$
      00061C E4               [12] 1279 	clr	a
      00061D B5 20 06         [24] 1280 	cjne	a,(_data2 + 2),00250$
      000620 B5 21 03         [24] 1281 	cjne	a,(_data2 + 3),00250$
      000623 02 07 8F         [24] 1282 	ljmp	00117$
      000626                       1283 00250$:
      000626 74 E7            [12] 1284 	mov	a,#0xe7
      000628 B5 1E 0E         [24] 1285 	cjne	a,_data2,00251$
      00062B F4               [12] 1286 	cpl	a
      00062C B5 1F 0A         [24] 1287 	cjne	a,(_data2 + 1),00251$
      00062F E4               [12] 1288 	clr	a
      000630 B5 20 06         [24] 1289 	cjne	a,(_data2 + 2),00251$
      000633 B5 21 03         [24] 1290 	cjne	a,(_data2 + 3),00251$
      000636 02 07 77         [24] 1291 	ljmp	00115$
      000639                       1292 00251$:
      000639 74 DD            [12] 1293 	mov	a,#0xdd
      00063B B5 1E 0E         [24] 1294 	cjne	a,_data2,00252$
      00063E F4               [12] 1295 	cpl	a
      00063F B5 1F 0A         [24] 1296 	cjne	a,(_data2 + 1),00252$
      000642 E4               [12] 1297 	clr	a
      000643 B5 20 06         [24] 1298 	cjne	a,(_data2 + 2),00252$
      000646 B5 21 03         [24] 1299 	cjne	a,(_data2 + 3),00252$
      000649 02 06 FF         [24] 1300 	ljmp	00105$
      00064C                       1301 00252$:
      00064C 74 CF            [12] 1302 	mov	a,#0xcf
      00064E B5 1E 0E         [24] 1303 	cjne	a,_data2,00253$
      000651 F4               [12] 1304 	cpl	a
      000652 B5 1F 0A         [24] 1305 	cjne	a,(_data2 + 1),00253$
      000655 E4               [12] 1306 	clr	a
      000656 B5 20 06         [24] 1307 	cjne	a,(_data2 + 2),00253$
      000659 B5 21 03         [24] 1308 	cjne	a,(_data2 + 3),00253$
      00065C 02 07 6B         [24] 1309 	ljmp	00114$
      00065F                       1310 00253$:
      00065F 74 C7            [12] 1311 	mov	a,#0xc7
      000661 B5 1E 0E         [24] 1312 	cjne	a,_data2,00254$
      000664 F4               [12] 1313 	cpl	a
      000665 B5 1F 0A         [24] 1314 	cjne	a,(_data2 + 1),00254$
      000668 E4               [12] 1315 	clr	a
      000669 B5 20 06         [24] 1316 	cjne	a,(_data2 + 2),00254$
      00066C B5 21 03         [24] 1317 	cjne	a,(_data2 + 3),00254$
      00066F 02 07 9B         [24] 1318 	ljmp	00118$
      000672                       1319 00254$:
      000672 74 BD            [12] 1320 	mov	a,#0xbd
      000674 B5 1E 0E         [24] 1321 	cjne	a,_data2,00255$
      000677 F4               [12] 1322 	cpl	a
      000678 B5 1F 0A         [24] 1323 	cjne	a,(_data2 + 1),00255$
      00067B E4               [12] 1324 	clr	a
      00067C B5 20 06         [24] 1325 	cjne	a,(_data2 + 2),00255$
      00067F B5 21 03         [24] 1326 	cjne	a,(_data2 + 3),00255$
      000682 02 07 B3         [24] 1327 	ljmp	00120$
      000685                       1328 00255$:
      000685 74 B5            [12] 1329 	mov	a,#0xb5
      000687 B5 1E 0E         [24] 1330 	cjne	a,_data2,00256$
      00068A F4               [12] 1331 	cpl	a
      00068B B5 1F 0A         [24] 1332 	cjne	a,(_data2 + 1),00256$
      00068E E4               [12] 1333 	clr	a
      00068F B5 20 06         [24] 1334 	cjne	a,(_data2 + 2),00256$
      000692 B5 21 03         [24] 1335 	cjne	a,(_data2 + 3),00256$
      000695 02 07 BF         [24] 1336 	ljmp	00121$
      000698                       1337 00256$:
      000698 74 AD            [12] 1338 	mov	a,#0xad
      00069A B5 1E 0E         [24] 1339 	cjne	a,_data2,00257$
      00069D F4               [12] 1340 	cpl	a
      00069E B5 1F 0A         [24] 1341 	cjne	a,(_data2 + 1),00257$
      0006A1 E4               [12] 1342 	clr	a
      0006A2 B5 20 06         [24] 1343 	cjne	a,(_data2 + 2),00257$
      0006A5 B5 21 03         [24] 1344 	cjne	a,(_data2 + 3),00257$
      0006A8 02 07 CB         [24] 1345 	ljmp	00122$
      0006AB                       1346 00257$:
      0006AB 74 A5            [12] 1347 	mov	a,#0xa5
      0006AD B5 1E 0E         [24] 1348 	cjne	a,_data2,00258$
      0006B0 F4               [12] 1349 	cpl	a
      0006B1 B5 1F 0A         [24] 1350 	cjne	a,(_data2 + 1),00258$
      0006B4 E4               [12] 1351 	clr	a
      0006B5 B5 20 06         [24] 1352 	cjne	a,(_data2 + 2),00258$
      0006B8 B5 21 03         [24] 1353 	cjne	a,(_data2 + 3),00258$
      0006BB 02 07 A7         [24] 1354 	ljmp	00119$
      0006BE                       1355 00258$:
      0006BE 74 97            [12] 1356 	mov	a,#0x97
      0006C0 B5 1E 0E         [24] 1357 	cjne	a,_data2,00259$
      0006C3 F4               [12] 1358 	cpl	a
      0006C4 B5 1F 0A         [24] 1359 	cjne	a,(_data2 + 1),00259$
      0006C7 E4               [12] 1360 	clr	a
      0006C8 B5 20 06         [24] 1361 	cjne	a,(_data2 + 2),00259$
      0006CB B5 21 03         [24] 1362 	cjne	a,(_data2 + 3),00259$
      0006CE 02 07 5F         [24] 1363 	ljmp	00113$
      0006D1                       1364 00259$:
      0006D1 74 85            [12] 1365 	mov	a,#0x85
      0006D3 B5 1E 0E         [24] 1366 	cjne	a,_data2,00260$
      0006D6 F4               [12] 1367 	cpl	a
      0006D7 B5 1F 0A         [24] 1368 	cjne	a,(_data2 + 1),00260$
      0006DA E4               [12] 1369 	clr	a
      0006DB B5 20 06         [24] 1370 	cjne	a,(_data2 + 2),00260$
      0006DE B5 21 03         [24] 1371 	cjne	a,(_data2 + 3),00260$
      0006E1 02 07 83         [24] 1372 	ljmp	00116$
      0006E4                       1373 00260$:
      0006E4 02 03 29         [24] 1374 	ljmp	00128$
                                   1375 ;	./N76_LedTyGia.c:250: case IR_CODE_PWR:
      0006E7                       1376 00103$:
                                   1377 ;	./N76_LedTyGia.c:251: UART0_println("IR_CODE_PWR");
      0006E7 90 16 D6         [24] 1378 	mov	dptr,#___str_3
      0006EA 75 F0 80         [24] 1379 	mov	b,#0x80
      0006ED 12 0D 4D         [24] 1380 	lcall	_UART0_println
                                   1381 ;	./N76_LedTyGia.c:252: break;
      0006F0 02 03 29         [24] 1382 	ljmp	00128$
                                   1383 ;	./N76_LedTyGia.c:253: case IR_CODE_MENU:
      0006F3                       1384 00104$:
                                   1385 ;	./N76_LedTyGia.c:254: UART0_println("IR_CODE_MENU");
      0006F3 90 16 E2         [24] 1386 	mov	dptr,#___str_4
      0006F6 75 F0 80         [24] 1387 	mov	b,#0x80
      0006F9 12 0D 4D         [24] 1388 	lcall	_UART0_println
                                   1389 ;	./N76_LedTyGia.c:255: break;
      0006FC 02 03 29         [24] 1390 	ljmp	00128$
                                   1391 ;	./N76_LedTyGia.c:256: case IR_CODE_TEST:
      0006FF                       1392 00105$:
                                   1393 ;	./N76_LedTyGia.c:257: UART0_println("IR_CODE_TEST");
      0006FF 90 16 EF         [24] 1394 	mov	dptr,#___str_5
      000702 75 F0 80         [24] 1395 	mov	b,#0x80
      000705 12 0D 4D         [24] 1396 	lcall	_UART0_println
                                   1397 ;	./N76_LedTyGia.c:258: break;
      000708 02 03 29         [24] 1398 	ljmp	00128$
                                   1399 ;	./N76_LedTyGia.c:259: case IR_CODE_RETURN:
      00070B                       1400 00106$:
                                   1401 ;	./N76_LedTyGia.c:260: UART0_println("IR_CODE_RETURN");
      00070B 90 16 FC         [24] 1402 	mov	dptr,#___str_6
      00070E 75 F0 80         [24] 1403 	mov	b,#0x80
      000711 12 0D 4D         [24] 1404 	lcall	_UART0_println
                                   1405 ;	./N76_LedTyGia.c:261: break;
      000714 02 03 29         [24] 1406 	ljmp	00128$
                                   1407 ;	./N76_LedTyGia.c:262: case IR_CODE_RUN:
      000717                       1408 00107$:
                                   1409 ;	./N76_LedTyGia.c:263: UART0_println("IR_CODE_RUN");
      000717 90 17 0B         [24] 1410 	mov	dptr,#___str_7
      00071A 75 F0 80         [24] 1411 	mov	b,#0x80
      00071D 12 0D 4D         [24] 1412 	lcall	_UART0_println
                                   1413 ;	./N76_LedTyGia.c:264: break;
      000720 02 03 29         [24] 1414 	ljmp	00128$
                                   1415 ;	./N76_LedTyGia.c:265: case IR_CODE_CLEAR:
      000723                       1416 00108$:
                                   1417 ;	./N76_LedTyGia.c:266: UART0_println("IR_CODE_CLEAR");
      000723 90 17 17         [24] 1418 	mov	dptr,#___str_8
      000726 75 F0 80         [24] 1419 	mov	b,#0x80
      000729 12 0D 4D         [24] 1420 	lcall	_UART0_println
                                   1421 ;	./N76_LedTyGia.c:267: break;
      00072C 02 03 29         [24] 1422 	ljmp	00128$
                                   1423 ;	./N76_LedTyGia.c:268: case IR_CODE_UP:
      00072F                       1424 00109$:
                                   1425 ;	./N76_LedTyGia.c:269: UART0_println("IR_CODE_UP");
      00072F 90 17 25         [24] 1426 	mov	dptr,#___str_9
      000732 75 F0 80         [24] 1427 	mov	b,#0x80
      000735 12 0D 4D         [24] 1428 	lcall	_UART0_println
                                   1429 ;	./N76_LedTyGia.c:270: break;
      000738 02 03 29         [24] 1430 	ljmp	00128$
                                   1431 ;	./N76_LedTyGia.c:271: case IR_CODE_DOWN:
      00073B                       1432 00110$:
                                   1433 ;	./N76_LedTyGia.c:272: UART0_println("IR_CODE_DOWN");
      00073B 90 17 30         [24] 1434 	mov	dptr,#___str_10
      00073E 75 F0 80         [24] 1435 	mov	b,#0x80
      000741 12 0D 4D         [24] 1436 	lcall	_UART0_println
                                   1437 ;	./N76_LedTyGia.c:273: break;
      000744 02 03 29         [24] 1438 	ljmp	00128$
                                   1439 ;	./N76_LedTyGia.c:274: case IR_CODE_LEFT:
      000747                       1440 00111$:
                                   1441 ;	./N76_LedTyGia.c:275: UART0_println("IR_CODE_LEFT");
      000747 90 17 3D         [24] 1442 	mov	dptr,#___str_11
      00074A 75 F0 80         [24] 1443 	mov	b,#0x80
      00074D 12 0D 4D         [24] 1444 	lcall	_UART0_println
                                   1445 ;	./N76_LedTyGia.c:276: break;
      000750 02 03 29         [24] 1446 	ljmp	00128$
                                   1447 ;	./N76_LedTyGia.c:277: case IR_CODE_RIGHT:
      000753                       1448 00112$:
                                   1449 ;	./N76_LedTyGia.c:278: UART0_println("IR_CODE_RIGHT");
      000753 90 17 4A         [24] 1450 	mov	dptr,#___str_12
      000756 75 F0 80         [24] 1451 	mov	b,#0x80
      000759 12 0D 4D         [24] 1452 	lcall	_UART0_println
                                   1453 ;	./N76_LedTyGia.c:279: break;
      00075C 02 03 29         [24] 1454 	ljmp	00128$
                                   1455 ;	./N76_LedTyGia.c:280: case IR_CODE_NUM0:
      00075F                       1456 00113$:
                                   1457 ;	./N76_LedTyGia.c:281: UART0_println("IR_CODE_NUM0");
      00075F 90 17 58         [24] 1458 	mov	dptr,#___str_13
      000762 75 F0 80         [24] 1459 	mov	b,#0x80
      000765 12 0D 4D         [24] 1460 	lcall	_UART0_println
                                   1461 ;	./N76_LedTyGia.c:282: break;
      000768 02 03 29         [24] 1462 	ljmp	00128$
                                   1463 ;	./N76_LedTyGia.c:283: case IR_CODE_NUM1:
      00076B                       1464 00114$:
                                   1465 ;	./N76_LedTyGia.c:284: UART0_println("IR_CODE_NUM1");
      00076B 90 17 65         [24] 1466 	mov	dptr,#___str_14
      00076E 75 F0 80         [24] 1467 	mov	b,#0x80
      000771 12 0D 4D         [24] 1468 	lcall	_UART0_println
                                   1469 ;	./N76_LedTyGia.c:285: break;
      000774 02 03 29         [24] 1470 	ljmp	00128$
                                   1471 ;	./N76_LedTyGia.c:286: case IR_CODE_NUM2:
      000777                       1472 00115$:
                                   1473 ;	./N76_LedTyGia.c:287: UART0_println("IR_CODE_NUM2");
      000777 90 17 72         [24] 1474 	mov	dptr,#___str_15
      00077A 75 F0 80         [24] 1475 	mov	b,#0x80
      00077D 12 0D 4D         [24] 1476 	lcall	_UART0_println
                                   1477 ;	./N76_LedTyGia.c:288: break;
      000780 02 03 29         [24] 1478 	ljmp	00128$
                                   1479 ;	./N76_LedTyGia.c:289: case IR_CODE_NUM3:
      000783                       1480 00116$:
                                   1481 ;	./N76_LedTyGia.c:290: UART0_println("IR_CODE_NUM3");
      000783 90 17 7F         [24] 1482 	mov	dptr,#___str_16
      000786 75 F0 80         [24] 1483 	mov	b,#0x80
      000789 12 0D 4D         [24] 1484 	lcall	_UART0_println
                                   1485 ;	./N76_LedTyGia.c:291: break;
      00078C 02 03 29         [24] 1486 	ljmp	00128$
                                   1487 ;	./N76_LedTyGia.c:292: case IR_CODE_NUM4:
      00078F                       1488 00117$:
                                   1489 ;	./N76_LedTyGia.c:293: UART0_println("IR_CODE_NUM4");
      00078F 90 17 8C         [24] 1490 	mov	dptr,#___str_17
      000792 75 F0 80         [24] 1491 	mov	b,#0x80
      000795 12 0D 4D         [24] 1492 	lcall	_UART0_println
                                   1493 ;	./N76_LedTyGia.c:294: break;
      000798 02 03 29         [24] 1494 	ljmp	00128$
                                   1495 ;	./N76_LedTyGia.c:295: case IR_CODE_NUM5:
      00079B                       1496 00118$:
                                   1497 ;	./N76_LedTyGia.c:296: UART0_println("IR_CODE_NUM5");
      00079B 90 17 99         [24] 1498 	mov	dptr,#___str_18
      00079E 75 F0 80         [24] 1499 	mov	b,#0x80
      0007A1 12 0D 4D         [24] 1500 	lcall	_UART0_println
                                   1501 ;	./N76_LedTyGia.c:297: break;
      0007A4 02 03 29         [24] 1502 	ljmp	00128$
                                   1503 ;	./N76_LedTyGia.c:298: case IR_CODE_NUM6:
      0007A7                       1504 00119$:
                                   1505 ;	./N76_LedTyGia.c:299: UART0_println("IR_CODE_NUM6");
      0007A7 90 17 A6         [24] 1506 	mov	dptr,#___str_19
      0007AA 75 F0 80         [24] 1507 	mov	b,#0x80
      0007AD 12 0D 4D         [24] 1508 	lcall	_UART0_println
                                   1509 ;	./N76_LedTyGia.c:300: break;
      0007B0 02 03 29         [24] 1510 	ljmp	00128$
                                   1511 ;	./N76_LedTyGia.c:301: case IR_CODE_NUM7:
      0007B3                       1512 00120$:
                                   1513 ;	./N76_LedTyGia.c:302: UART0_println("IR_CODE_NUM7");
      0007B3 90 17 B3         [24] 1514 	mov	dptr,#___str_20
      0007B6 75 F0 80         [24] 1515 	mov	b,#0x80
      0007B9 12 0D 4D         [24] 1516 	lcall	_UART0_println
                                   1517 ;	./N76_LedTyGia.c:303: break;
      0007BC 02 03 29         [24] 1518 	ljmp	00128$
                                   1519 ;	./N76_LedTyGia.c:304: case IR_CODE_NUM8:
      0007BF                       1520 00121$:
                                   1521 ;	./N76_LedTyGia.c:305: UART0_println("IR_CODE_NUM8");
      0007BF 90 17 C0         [24] 1522 	mov	dptr,#___str_21
      0007C2 75 F0 80         [24] 1523 	mov	b,#0x80
      0007C5 12 0D 4D         [24] 1524 	lcall	_UART0_println
                                   1525 ;	./N76_LedTyGia.c:306: break;
      0007C8 02 03 29         [24] 1526 	ljmp	00128$
                                   1527 ;	./N76_LedTyGia.c:307: case IR_CODE_NUM9:
      0007CB                       1528 00122$:
                                   1529 ;	./N76_LedTyGia.c:308: UART0_println("IR_CODE_NUM9");
      0007CB 90 17 CD         [24] 1530 	mov	dptr,#___str_22
      0007CE 75 F0 80         [24] 1531 	mov	b,#0x80
      0007D1 12 0D 4D         [24] 1532 	lcall	_UART0_println
                                   1533 ;	./N76_LedTyGia.c:309: break;
                                   1534 ;	./N76_LedTyGia.c:313: }
                                   1535 ;	./N76_LedTyGia.c:326: }
      0007D4 02 03 29         [24] 1536 	ljmp	00128$
                                   1537 ;------------------------------------------------------------
                                   1538 ;Allocation info for local variables in function 'TIMER_0P5MS'
                                   1539 ;------------------------------------------------------------
                                   1540 ;	./N76_LedTyGia.c:328: ISR(TIMER_0P5MS, INTERRUPT_TIMER0)
                                   1541 ;	-----------------------------------------
                                   1542 ;	 function TIMER_0P5MS
                                   1543 ;	-----------------------------------------
      0007D7                       1544 _TIMER_0P5MS:
      0007D7 C0 E0            [24] 1545 	push	acc
      0007D9 C0 07            [24] 1546 	push	ar7
      0007DB C0 06            [24] 1547 	push	ar6
      0007DD C0 D0            [24] 1548 	push	psw
      0007DF 75 D0 00         [24] 1549 	mov	psw,#0x00
                                   1550 ;	./N76_LedTyGia.c:330: TL0 = 0xBF;
      0007E2 75 8A BF         [24] 1551 	mov	_tl0,#0xbf
                                   1552 ;	./N76_LedTyGia.c:331: TH0 = 0xE0;
      0007E5 75 8C E0         [24] 1553 	mov	_th0,#0xe0
                                   1554 ;	./N76_LedTyGia.c:332: count_ms++;
      0007E8 05 12            [12] 1555 	inc	_count_ms
      0007EA E4               [12] 1556 	clr	a
      0007EB B5 12 02         [24] 1557 	cjne	a,_count_ms,00109$
      0007EE 05 13            [12] 1558 	inc	(_count_ms + 1)
      0007F0                       1559 00109$:
                                   1560 ;	./N76_LedTyGia.c:333: if (count_ms == 50)
      0007F0 AE 12            [24] 1561 	mov	r6,_count_ms
      0007F2 AF 13            [24] 1562 	mov	r7,(_count_ms + 1)
      0007F4 BE 32 08         [24] 1563 	cjne	r6,#0x32,00103$
      0007F7 BF 00 05         [24] 1564 	cjne	r7,#0x00,00103$
                                   1565 ;	./N76_LedTyGia.c:334: count_ms = 0;
      0007FA E4               [12] 1566 	clr	a
      0007FB F5 12            [12] 1567 	mov	_count_ms,a
      0007FD F5 13            [12] 1568 	mov	(_count_ms + 1),a
      0007FF                       1569 00103$:
                                   1570 ;	./N76_LedTyGia.c:335: }
      0007FF D0 D0            [24] 1571 	pop	psw
      000801 D0 06            [24] 1572 	pop	ar6
      000803 D0 07            [24] 1573 	pop	ar7
      000805 D0 E0            [24] 1574 	pop	acc
      000807 32               [24] 1575 	reti
                                   1576 ;	eliminated unneeded push/pop dpl
                                   1577 ;	eliminated unneeded push/pop dph
                                   1578 ;	eliminated unneeded push/pop b
                                   1579 ;------------------------------------------------------------
                                   1580 ;Allocation info for local variables in function 'PIN_INT_FUCTION'
                                   1581 ;------------------------------------------------------------
                                   1582 ;	./N76_LedTyGia.c:337: ISR(PIN_INT_FUCTION, INTERRUPT_INT0)
                                   1583 ;	-----------------------------------------
                                   1584 ;	 function PIN_INT_FUCTION
                                   1585 ;	-----------------------------------------
      000808                       1586 _PIN_INT_FUCTION:
      000808 C0 E0            [24] 1587 	push	acc
      00080A C0 F0            [24] 1588 	push	b
      00080C C0 07            [24] 1589 	push	ar7
      00080E C0 06            [24] 1590 	push	ar6
      000810 C0 05            [24] 1591 	push	ar5
      000812 C0 04            [24] 1592 	push	ar4
      000814 C0 03            [24] 1593 	push	ar3
      000816 C0 02            [24] 1594 	push	ar2
      000818 C0 D0            [24] 1595 	push	psw
      00081A 75 D0 00         [24] 1596 	mov	psw,#0x00
                                   1597 ;	./N76_LedTyGia.c:339: count_ms1 = count_ms;
      00081D 85 12 14         [24] 1598 	mov	_count_ms1,_count_ms
      000820 85 13 15         [24] 1599 	mov	(_count_ms1 + 1),(_count_ms + 1)
                                   1600 ;	./N76_LedTyGia.c:340: count_ms = 0;
      000823 E4               [12] 1601 	clr	a
      000824 F5 12            [12] 1602 	mov	_count_ms,a
      000826 F5 13            [12] 1603 	mov	(_count_ms + 1),a
                                   1604 ;	./N76_LedTyGia.c:341: count_data++;
      000828 05 18            [12] 1605 	inc	_count_data
                                   1606 ;	genFromRTrack removed	clr	a
      00082A B5 18 02         [24] 1607 	cjne	a,_count_data,00186$
      00082D 05 19            [12] 1608 	inc	(_count_data + 1)
      00082F                       1609 00186$:
                                   1610 ;	./N76_LedTyGia.c:343: if ((count_ms1 >= 26) && (count_ms1 <= 28)) // 12.5s-14ms
      00082F AE 14            [24] 1611 	mov	r6,_count_ms1
      000831 AF 15            [24] 1612 	mov	r7,(_count_ms1 + 1)
      000833 C3               [12] 1613 	clr	c
      000834 EE               [12] 1614 	mov	a,r6
      000835 94 1A            [12] 1615 	subb	a,#0x1a
      000837 EF               [12] 1616 	mov	a,r7
      000838 94 00            [12] 1617 	subb	a,#0x00
      00083A 40 1A            [24] 1618 	jc	00123$
      00083C 74 1C            [12] 1619 	mov	a,#0x1c
      00083E 9E               [12] 1620 	subb	a,r6
      00083F E4               [12] 1621 	clr	a
      000840 9F               [12] 1622 	subb	a,r7
      000841 40 13            [24] 1623 	jc	00123$
                                   1624 ;	./N76_LedTyGia.c:345: count_data = -1;
      000843 75 18 FF         [24] 1625 	mov	_count_data,#0xff
      000846 75 19 FF         [24] 1626 	mov	(_count_data + 1),#0xff
                                   1627 ;	./N76_LedTyGia.c:346: start_status = 1;
      000849 75 16 01         [24] 1628 	mov	_start_status,#0x01
                                   1629 ;	./N76_LedTyGia.c:347: count_ms1 = 0;
      00084C E4               [12] 1630 	clr	a
      00084D F5 17            [12] 1631 	mov	(_start_status + 1),a
      00084F F5 14            [12] 1632 	mov	_count_ms1,a
      000851 F5 15            [12] 1633 	mov	(_count_ms1 + 1),a
      000853 02 09 3B         [24] 1634 	ljmp	00124$
      000856                       1635 00123$:
                                   1636 ;	./N76_LedTyGia.c:349: else if ((count_ms1 >= 20) && (count_ms1 <= 25)) // 10s-12ms
      000856 C3               [12] 1637 	clr	c
      000857 EE               [12] 1638 	mov	a,r6
      000858 94 14            [12] 1639 	subb	a,#0x14
      00085A EF               [12] 1640 	mov	a,r7
      00085B 94 00            [12] 1641 	subb	a,#0x00
      00085D 40 27            [24] 1642 	jc	00119$
      00085F 74 19            [12] 1643 	mov	a,#0x19
      000861 9E               [12] 1644 	subb	a,r6
      000862 E4               [12] 1645 	clr	a
      000863 9F               [12] 1646 	subb	a,r7
      000864 40 20            [24] 1647 	jc	00119$
                                   1648 ;	./N76_LedTyGia.c:351: if (++repeat == 5)
      000866 05 23            [12] 1649 	inc	_repeat
      000868 74 05            [12] 1650 	mov	a,#0x05
      00086A B5 23 02         [24] 1651 	cjne	a,_repeat,00191$
      00086D 80 03            [24] 1652 	sjmp	00192$
      00086F                       1653 00191$:
      00086F 02 09 3B         [24] 1654 	ljmp	00124$
      000872                       1655 00192$:
                                   1656 ;	./N76_LedTyGia.c:353: repeat = 4;
      000872 75 23 04         [24] 1657 	mov	_repeat,#0x04
                                   1658 ;	./N76_LedTyGia.c:354: _IR_received = 1;
      000875 75 22 01         [24] 1659 	mov	__IR_received,#0x01
                                   1660 ;	./N76_LedTyGia.c:355: data2 = 0xFFFFFF;
      000878 74 FF            [12] 1661 	mov	a,#0xff
      00087A F5 1E            [12] 1662 	mov	_data2,a
      00087C F5 1F            [12] 1663 	mov	(_data2 + 1),a
      00087E F5 20            [12] 1664 	mov	(_data2 + 2),a
      000880 75 21 00         [24] 1665 	mov	(_data2 + 3),#0x00
      000883 02 09 3B         [24] 1666 	ljmp	00124$
      000886                       1667 00119$:
                                   1668 ;	./N76_LedTyGia.c:358: else if ((start_status == 1) && (count_data >= 0) && (count_data <= 31))
      000886 AC 16            [24] 1669 	mov	r4,_start_status
      000888 AD 17            [24] 1670 	mov	r5,(_start_status + 1)
      00088A BC 01 05         [24] 1671 	cjne	r4,#0x01,00193$
      00088D BD 00 02         [24] 1672 	cjne	r5,#0x00,00193$
      000890 80 03            [24] 1673 	sjmp	00194$
      000892                       1674 00193$:
      000892 02 09 18         [24] 1675 	ljmp	00114$
      000895                       1676 00194$:
      000895 AC 18            [24] 1677 	mov	r4,_count_data
      000897 E5 19            [12] 1678 	mov	a,(_count_data + 1)
      000899 FD               [12] 1679 	mov	r5,a
      00089A 30 E7 03         [24] 1680 	jnb	acc.7,00195$
      00089D 02 09 18         [24] 1681 	ljmp	00114$
      0008A0                       1682 00195$:
      0008A0 C3               [12] 1683 	clr	c
      0008A1 74 1F            [12] 1684 	mov	a,#0x1f
      0008A3 9C               [12] 1685 	subb	a,r4
      0008A4 74 80            [12] 1686 	mov	a,#(0x00 ^ 0x80)
      0008A6 8D F0            [24] 1687 	mov	b,r5
      0008A8 63 F0 80         [24] 1688 	xrl	b,#0x80
      0008AB 95 F0            [12] 1689 	subb	a,b
                                   1690 ;	./N76_LedTyGia.c:360: if ((count_ms1 >= 4) && (count_ms1 <= 6)) // 2ms->3ms //detect logic 1.
      0008AD 40 69            [24] 1691 	jc	00114$
      0008AF EE               [12] 1692 	mov	a,r6
      0008B0 94 04            [12] 1693 	subb	a,#0x04
      0008B2 EF               [12] 1694 	mov	a,r7
      0008B3 94 00            [12] 1695 	subb	a,#0x00
      0008B5 40 3A            [24] 1696 	jc	00107$
      0008B7 74 06            [12] 1697 	mov	a,#0x06
      0008B9 9E               [12] 1698 	subb	a,r6
      0008BA E4               [12] 1699 	clr	a
      0008BB 9F               [12] 1700 	subb	a,r7
      0008BC 40 33            [24] 1701 	jc	00107$
                                   1702 ;	./N76_LedTyGia.c:362: data |= 1 << (31 - count_data);
      0008BE AD 18            [24] 1703 	mov	r5,_count_data
      0008C0 74 1F            [12] 1704 	mov	a,#0x1f
      0008C2 C3               [12] 1705 	clr	c
      0008C3 9D               [12] 1706 	subb	a,r5
      0008C4 FD               [12] 1707 	mov	r5,a
      0008C5 8D F0            [24] 1708 	mov	b,r5
      0008C7 05 F0            [12] 1709 	inc	b
      0008C9 7D 01            [12] 1710 	mov	r5,#0x01
      0008CB 7C 00            [12] 1711 	mov	r4,#0x00
      0008CD 80 06            [24] 1712 	sjmp	00200$
      0008CF                       1713 00199$:
      0008CF ED               [12] 1714 	mov	a,r5
      0008D0 2D               [12] 1715 	add	a,r5
      0008D1 FD               [12] 1716 	mov	r5,a
      0008D2 EC               [12] 1717 	mov	a,r4
      0008D3 33               [12] 1718 	rlc	a
      0008D4 FC               [12] 1719 	mov	r4,a
      0008D5                       1720 00200$:
      0008D5 D5 F0 F7         [24] 1721 	djnz	b,00199$
      0008D8 EC               [12] 1722 	mov	a,r4
      0008D9 33               [12] 1723 	rlc	a
      0008DA 95 E0            [12] 1724 	subb	a,acc
      0008DC FB               [12] 1725 	mov	r3,a
      0008DD FA               [12] 1726 	mov	r2,a
      0008DE ED               [12] 1727 	mov	a,r5
      0008DF 42 1A            [12] 1728 	orl	_data,a
      0008E1 EC               [12] 1729 	mov	a,r4
      0008E2 42 1B            [12] 1730 	orl	(_data + 1),a
      0008E4 EB               [12] 1731 	mov	a,r3
      0008E5 42 1C            [12] 1732 	orl	(_data + 2),a
      0008E7 EA               [12] 1733 	mov	a,r2
      0008E8 42 1D            [12] 1734 	orl	(_data + 3),a
                                   1735 ;	./N76_LedTyGia.c:363: count_ms1 = 0;
      0008EA E4               [12] 1736 	clr	a
      0008EB F5 14            [12] 1737 	mov	_count_ms1,a
      0008ED F5 15            [12] 1738 	mov	(_count_ms1 + 1),a
      0008EF 80 4A            [24] 1739 	sjmp	00124$
      0008F1                       1740 00107$:
                                   1741 ;	./N76_LedTyGia.c:365: else if (count_ms1 < 4) // nho hon <2ms //detect logic 0.
      0008F1 C3               [12] 1742 	clr	c
      0008F2 EE               [12] 1743 	mov	a,r6
      0008F3 94 04            [12] 1744 	subb	a,#0x04
      0008F5 EF               [12] 1745 	mov	a,r7
      0008F6 94 00            [12] 1746 	subb	a,#0x00
      0008F8 50 07            [24] 1747 	jnc	00104$
                                   1748 ;	./N76_LedTyGia.c:367: count_ms1 = 0;
      0008FA E4               [12] 1749 	clr	a
      0008FB F5 14            [12] 1750 	mov	_count_ms1,a
      0008FD F5 15            [12] 1751 	mov	(_count_ms1 + 1),a
      0008FF 80 3A            [24] 1752 	sjmp	00124$
      000901                       1753 00104$:
                                   1754 ;	./N76_LedTyGia.c:371: count_ms1 = 0;
      000901 E4               [12] 1755 	clr	a
      000902 F5 14            [12] 1756 	mov	_count_ms1,a
      000904 F5 15            [12] 1757 	mov	(_count_ms1 + 1),a
                                   1758 ;	./N76_LedTyGia.c:372: start_status = 0;
      000906 F5 16            [12] 1759 	mov	_start_status,a
      000908 F5 17            [12] 1760 	mov	(_start_status + 1),a
                                   1761 ;	./N76_LedTyGia.c:373: count_data = 0;
      00090A F5 18            [12] 1762 	mov	_count_data,a
      00090C F5 19            [12] 1763 	mov	(_count_data + 1),a
                                   1764 ;	./N76_LedTyGia.c:374: data = 0;
      00090E F5 1A            [12] 1765 	mov	_data,a
      000910 F5 1B            [12] 1766 	mov	(_data + 1),a
      000912 F5 1C            [12] 1767 	mov	(_data + 2),a
      000914 F5 1D            [12] 1768 	mov	(_data + 3),a
      000916 80 23            [24] 1769 	sjmp	00124$
      000918                       1770 00114$:
                                   1771 ;	./N76_LedTyGia.c:377: else if ((start_status == 0) && (count_ms1 > 28)) /// error detect xung _IR_receivedrt
      000918 E5 16            [12] 1772 	mov	a,_start_status
      00091A 45 17            [12] 1773 	orl	a,(_start_status + 1)
      00091C 70 1D            [24] 1774 	jnz	00124$
      00091E C3               [12] 1775 	clr	c
      00091F 74 1C            [12] 1776 	mov	a,#0x1c
      000921 9E               [12] 1777 	subb	a,r6
      000922 E4               [12] 1778 	clr	a
      000923 9F               [12] 1779 	subb	a,r7
      000924 50 15            [24] 1780 	jnc	00124$
                                   1781 ;	./N76_LedTyGia.c:379: count_ms1 = 0;
      000926 E4               [12] 1782 	clr	a
      000927 F5 14            [12] 1783 	mov	_count_ms1,a
      000929 F5 15            [12] 1784 	mov	(_count_ms1 + 1),a
                                   1785 ;	./N76_LedTyGia.c:380: start_status = 0;
      00092B F5 16            [12] 1786 	mov	_start_status,a
      00092D F5 17            [12] 1787 	mov	(_start_status + 1),a
                                   1788 ;	./N76_LedTyGia.c:381: count_data = 0;
      00092F F5 18            [12] 1789 	mov	_count_data,a
      000931 F5 19            [12] 1790 	mov	(_count_data + 1),a
                                   1791 ;	./N76_LedTyGia.c:382: data = 0;
      000933 F5 1A            [12] 1792 	mov	_data,a
      000935 F5 1B            [12] 1793 	mov	(_data + 1),a
      000937 F5 1C            [12] 1794 	mov	(_data + 2),a
      000939 F5 1D            [12] 1795 	mov	(_data + 3),a
      00093B                       1796 00124$:
                                   1797 ;	./N76_LedTyGia.c:384: if (count_data == 32) // reset sau khi detect 32 bit data
      00093B AE 18            [24] 1798 	mov	r6,_count_data
      00093D AF 19            [24] 1799 	mov	r7,(_count_data + 1)
      00093F BE 20 2A         [24] 1800 	cjne	r6,#0x20,00128$
      000942 BF 00 27         [24] 1801 	cjne	r7,#0x00,00128$
                                   1802 ;	./N76_LedTyGia.c:386: repeat = 0;
      000945 75 23 00         [24] 1803 	mov	_repeat,#0x00
                                   1804 ;	./N76_LedTyGia.c:387: _IR_received = 1;
      000948 75 22 01         [24] 1805 	mov	__IR_received,#0x01
                                   1806 ;	./N76_LedTyGia.c:388: data2 = data;
      00094B 85 1A 1E         [24] 1807 	mov	_data2,_data
      00094E 85 1B 1F         [24] 1808 	mov	(_data2 + 1),(_data + 1)
      000951 85 1C 20         [24] 1809 	mov	(_data2 + 2),(_data + 2)
      000954 85 1D 21         [24] 1810 	mov	(_data2 + 3),(_data + 3)
                                   1811 ;	./N76_LedTyGia.c:390: count_data = 0;
      000957 E4               [12] 1812 	clr	a
      000958 F5 18            [12] 1813 	mov	_count_data,a
      00095A F5 19            [12] 1814 	mov	(_count_data + 1),a
                                   1815 ;	./N76_LedTyGia.c:391: data = 0;
      00095C F5 1A            [12] 1816 	mov	_data,a
      00095E F5 1B            [12] 1817 	mov	(_data + 1),a
      000960 F5 1C            [12] 1818 	mov	(_data + 2),a
      000962 F5 1D            [12] 1819 	mov	(_data + 3),a
                                   1820 ;	./N76_LedTyGia.c:392: start_status = 0;
      000964 F5 16            [12] 1821 	mov	_start_status,a
      000966 F5 17            [12] 1822 	mov	(_start_status + 1),a
                                   1823 ;	./N76_LedTyGia.c:393: count_ms1 = 0;
      000968 F5 14            [12] 1824 	mov	_count_ms1,a
      00096A F5 15            [12] 1825 	mov	(_count_ms1 + 1),a
      00096C                       1826 00128$:
                                   1827 ;	./N76_LedTyGia.c:395: }
      00096C D0 D0            [24] 1828 	pop	psw
      00096E D0 02            [24] 1829 	pop	ar2
      000970 D0 03            [24] 1830 	pop	ar3
      000972 D0 04            [24] 1831 	pop	ar4
      000974 D0 05            [24] 1832 	pop	ar5
      000976 D0 06            [24] 1833 	pop	ar6
      000978 D0 07            [24] 1834 	pop	ar7
      00097A D0 F0            [24] 1835 	pop	b
      00097C D0 E0            [24] 1836 	pop	acc
      00097E 32               [24] 1837 	reti
                                   1838 ;	eliminated unneeded push/pop dpl
                                   1839 ;	eliminated unneeded push/pop dph
                                   1840 	.area CSEG    (CODE)
                                   1841 	.area CONST   (CODE)
      0016C7                       1842 _ma:
      0016C7 C0                    1843 	.db #0xc0	; 192
      0016C8 F9                    1844 	.db #0xf9	; 249
      0016C9 A4                    1845 	.db #0xa4	; 164
      0016CA B0                    1846 	.db #0xb0	; 176
      0016CB 99                    1847 	.db #0x99	; 153
      0016CC 92                    1848 	.db #0x92	; 146
      0016CD 82                    1849 	.db #0x82	; 130
      0016CE F8                    1850 	.db #0xf8	; 248
      0016CF 80                    1851 	.db #0x80	; 128
      0016D0 90                    1852 	.db #0x90	; 144
                                   1853 	.area CONST   (CODE)
      0016D1                       1854 ___str_0:
      0016D1 3A                    1855 	.ascii ":"
      0016D2 00                    1856 	.db 0x00
                                   1857 	.area CSEG    (CODE)
                                   1858 	.area CONST   (CODE)
      0016D3                       1859 ___str_1:
      0016D3 20                    1860 	.ascii " "
      0016D4 00                    1861 	.db 0x00
                                   1862 	.area CSEG    (CODE)
                                   1863 	.area CONST   (CODE)
      0016D5                       1864 ___str_2:
      0016D5 00                    1865 	.db 0x00
                                   1866 	.area CSEG    (CODE)
                                   1867 	.area CONST   (CODE)
      0016D6                       1868 ___str_3:
      0016D6 49 52 5F 43 4F 44 45  1869 	.ascii "IR_CODE_PWR"
             5F 50 57 52
      0016E1 00                    1870 	.db 0x00
                                   1871 	.area CSEG    (CODE)
                                   1872 	.area CONST   (CODE)
      0016E2                       1873 ___str_4:
      0016E2 49 52 5F 43 4F 44 45  1874 	.ascii "IR_CODE_MENU"
             5F 4D 45 4E 55
      0016EE 00                    1875 	.db 0x00
                                   1876 	.area CSEG    (CODE)
                                   1877 	.area CONST   (CODE)
      0016EF                       1878 ___str_5:
      0016EF 49 52 5F 43 4F 44 45  1879 	.ascii "IR_CODE_TEST"
             5F 54 45 53 54
      0016FB 00                    1880 	.db 0x00
                                   1881 	.area CSEG    (CODE)
                                   1882 	.area CONST   (CODE)
      0016FC                       1883 ___str_6:
      0016FC 49 52 5F 43 4F 44 45  1884 	.ascii "IR_CODE_RETURN"
             5F 52 45 54 55 52 4E
      00170A 00                    1885 	.db 0x00
                                   1886 	.area CSEG    (CODE)
                                   1887 	.area CONST   (CODE)
      00170B                       1888 ___str_7:
      00170B 49 52 5F 43 4F 44 45  1889 	.ascii "IR_CODE_RUN"
             5F 52 55 4E
      001716 00                    1890 	.db 0x00
                                   1891 	.area CSEG    (CODE)
                                   1892 	.area CONST   (CODE)
      001717                       1893 ___str_8:
      001717 49 52 5F 43 4F 44 45  1894 	.ascii "IR_CODE_CLEAR"
             5F 43 4C 45 41 52
      001724 00                    1895 	.db 0x00
                                   1896 	.area CSEG    (CODE)
                                   1897 	.area CONST   (CODE)
      001725                       1898 ___str_9:
      001725 49 52 5F 43 4F 44 45  1899 	.ascii "IR_CODE_UP"
             5F 55 50
      00172F 00                    1900 	.db 0x00
                                   1901 	.area CSEG    (CODE)
                                   1902 	.area CONST   (CODE)
      001730                       1903 ___str_10:
      001730 49 52 5F 43 4F 44 45  1904 	.ascii "IR_CODE_DOWN"
             5F 44 4F 57 4E
      00173C 00                    1905 	.db 0x00
                                   1906 	.area CSEG    (CODE)
                                   1907 	.area CONST   (CODE)
      00173D                       1908 ___str_11:
      00173D 49 52 5F 43 4F 44 45  1909 	.ascii "IR_CODE_LEFT"
             5F 4C 45 46 54
      001749 00                    1910 	.db 0x00
                                   1911 	.area CSEG    (CODE)
                                   1912 	.area CONST   (CODE)
      00174A                       1913 ___str_12:
      00174A 49 52 5F 43 4F 44 45  1914 	.ascii "IR_CODE_RIGHT"
             5F 52 49 47 48 54
      001757 00                    1915 	.db 0x00
                                   1916 	.area CSEG    (CODE)
                                   1917 	.area CONST   (CODE)
      001758                       1918 ___str_13:
      001758 49 52 5F 43 4F 44 45  1919 	.ascii "IR_CODE_NUM0"
             5F 4E 55 4D 30
      001764 00                    1920 	.db 0x00
                                   1921 	.area CSEG    (CODE)
                                   1922 	.area CONST   (CODE)
      001765                       1923 ___str_14:
      001765 49 52 5F 43 4F 44 45  1924 	.ascii "IR_CODE_NUM1"
             5F 4E 55 4D 31
      001771 00                    1925 	.db 0x00
                                   1926 	.area CSEG    (CODE)
                                   1927 	.area CONST   (CODE)
      001772                       1928 ___str_15:
      001772 49 52 5F 43 4F 44 45  1929 	.ascii "IR_CODE_NUM2"
             5F 4E 55 4D 32
      00177E 00                    1930 	.db 0x00
                                   1931 	.area CSEG    (CODE)
                                   1932 	.area CONST   (CODE)
      00177F                       1933 ___str_16:
      00177F 49 52 5F 43 4F 44 45  1934 	.ascii "IR_CODE_NUM3"
             5F 4E 55 4D 33
      00178B 00                    1935 	.db 0x00
                                   1936 	.area CSEG    (CODE)
                                   1937 	.area CONST   (CODE)
      00178C                       1938 ___str_17:
      00178C 49 52 5F 43 4F 44 45  1939 	.ascii "IR_CODE_NUM4"
             5F 4E 55 4D 34
      001798 00                    1940 	.db 0x00
                                   1941 	.area CSEG    (CODE)
                                   1942 	.area CONST   (CODE)
      001799                       1943 ___str_18:
      001799 49 52 5F 43 4F 44 45  1944 	.ascii "IR_CODE_NUM5"
             5F 4E 55 4D 35
      0017A5 00                    1945 	.db 0x00
                                   1946 	.area CSEG    (CODE)
                                   1947 	.area CONST   (CODE)
      0017A6                       1948 ___str_19:
      0017A6 49 52 5F 43 4F 44 45  1949 	.ascii "IR_CODE_NUM6"
             5F 4E 55 4D 36
      0017B2 00                    1950 	.db 0x00
                                   1951 	.area CSEG    (CODE)
                                   1952 	.area CONST   (CODE)
      0017B3                       1953 ___str_20:
      0017B3 49 52 5F 43 4F 44 45  1954 	.ascii "IR_CODE_NUM7"
             5F 4E 55 4D 37
      0017BF 00                    1955 	.db 0x00
                                   1956 	.area CSEG    (CODE)
                                   1957 	.area CONST   (CODE)
      0017C0                       1958 ___str_21:
      0017C0 49 52 5F 43 4F 44 45  1959 	.ascii "IR_CODE_NUM8"
             5F 4E 55 4D 38
      0017CC 00                    1960 	.db 0x00
                                   1961 	.area CSEG    (CODE)
                                   1962 	.area CONST   (CODE)
      0017CD                       1963 ___str_22:
      0017CD 49 52 5F 43 4F 44 45  1964 	.ascii "IR_CODE_NUM9"
             5F 4E 55 4D 39
      0017D9 00                    1965 	.db 0x00
                                   1966 	.area CSEG    (CODE)
                                   1967 	.area XINIT   (CODE)
                                   1968 	.area CABS    (ABS,CODE)
