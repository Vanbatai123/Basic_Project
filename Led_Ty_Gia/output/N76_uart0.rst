                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module N76_uart0
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sprintf
                                     12 	.globl _eiph1
                                     13 	.globl _eip1
                                     14 	.globl _pmd
                                     15 	.globl _pmen
                                     16 	.globl _pdtcnt
                                     17 	.globl _pdten
                                     18 	.globl _scon_1
                                     19 	.globl _eiph
                                     20 	.globl _aindids
                                     21 	.globl _spdr
                                     22 	.globl _spsr
                                     23 	.globl _spcr2
                                     24 	.globl _spcr
                                     25 	.globl _capcon4
                                     26 	.globl _capcon3
                                     27 	.globl _b
                                     28 	.globl _eip
                                     29 	.globl _c2h
                                     30 	.globl _c2l
                                     31 	.globl _pif
                                     32 	.globl _pipen
                                     33 	.globl _pinen
                                     34 	.globl _picon
                                     35 	.globl _adccon0
                                     36 	.globl _c1h
                                     37 	.globl _c1l
                                     38 	.globl _c0h
                                     39 	.globl _c0l
                                     40 	.globl _adcdly
                                     41 	.globl _adccon2
                                     42 	.globl _adccon1
                                     43 	.globl _acc
                                     44 	.globl _pwmcon1
                                     45 	.globl _piocon0
                                     46 	.globl _pwm3l
                                     47 	.globl _pwm2l
                                     48 	.globl _pwm1l
                                     49 	.globl _pwm0l
                                     50 	.globl _pwmpl
                                     51 	.globl _pwmcon0
                                     52 	.globl _fbd
                                     53 	.globl _pnp
                                     54 	.globl _pwm3h
                                     55 	.globl _pwm2h
                                     56 	.globl _pwm1h
                                     57 	.globl _pwm0h
                                     58 	.globl _pwmph
                                     59 	.globl _psw
                                     60 	.globl _adcmph
                                     61 	.globl _adcmpl
                                     62 	.globl _pwm5l
                                     63 	.globl _th2
                                     64 	.globl _pwm4l
                                     65 	.globl _tl2
                                     66 	.globl _rcmp2h
                                     67 	.globl _rcmp2l
                                     68 	.globl _t2mod
                                     69 	.globl _t2con
                                     70 	.globl _ta
                                     71 	.globl _piocon1
                                     72 	.globl _rh3
                                     73 	.globl _pwm5h
                                     74 	.globl _rl3
                                     75 	.globl _pwm4h
                                     76 	.globl _t3con
                                     77 	.globl _adcrh
                                     78 	.globl _adcrl
                                     79 	.globl _i2addr
                                     80 	.globl _i2con
                                     81 	.globl _i2toc
                                     82 	.globl _i2clk
                                     83 	.globl _i2stat
                                     84 	.globl _i2dat
                                     85 	.globl _saddr_1
                                     86 	.globl _saden_1
                                     87 	.globl _saden
                                     88 	.globl _ip
                                     89 	.globl _pwmintc
                                     90 	.globl _iph
                                     91 	.globl _p2s
                                     92 	.globl _p1sr
                                     93 	.globl _p1m2
                                     94 	.globl _p1s
                                     95 	.globl _p1m1
                                     96 	.globl _p0sr
                                     97 	.globl _p0m2
                                     98 	.globl _p0s
                                     99 	.globl _p0m1
                                    100 	.globl _p3
                                    101 	.globl _iapcn
                                    102 	.globl _iapfd
                                    103 	.globl _p3sr
                                    104 	.globl _p3m2
                                    105 	.globl _p3s
                                    106 	.globl _p3m1
                                    107 	.globl _bodcon1
                                    108 	.globl _wdcon
                                    109 	.globl _saddr
                                    110 	.globl _ie
                                    111 	.globl _iapah
                                    112 	.globl _iapal
                                    113 	.globl _iapuen
                                    114 	.globl _iaptrg
                                    115 	.globl _bodcon0
                                    116 	.globl _auxr1
                                    117 	.globl _p2
                                    118 	.globl _chpcon
                                    119 	.globl _eie1
                                    120 	.globl _eie
                                    121 	.globl _sbuf_1
                                    122 	.globl _sbuf
                                    123 	.globl _scon
                                    124 	.globl _cken
                                    125 	.globl _ckswt
                                    126 	.globl _ckdiv
                                    127 	.globl _capcon2
                                    128 	.globl _capcon1
                                    129 	.globl _capcon0
                                    130 	.globl _sfrs
                                    131 	.globl _p1
                                    132 	.globl _wkcon
                                    133 	.globl _ckcon
                                    134 	.globl _th1
                                    135 	.globl _th0
                                    136 	.globl _tl1
                                    137 	.globl _tl0
                                    138 	.globl _tmod
                                    139 	.globl _tcon
                                    140 	.globl _pcon
                                    141 	.globl _rwk
                                    142 	.globl _rctrim1
                                    143 	.globl _rctrim0
                                    144 	.globl _dph
                                    145 	.globl _dpl
                                    146 	.globl _sp
                                    147 	.globl _p0
                                    148 	.globl _UART0_begin
                                    149 	.globl _UART0_putChar
                                    150 	.globl _UART0_print
                                    151 	.globl _UART0_println
                                    152 	.globl _UART0_printNum
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _p0	=	0x0080
                           000081   159 _sp	=	0x0081
                           000082   160 _dpl	=	0x0082
                           000083   161 _dph	=	0x0083
                           000084   162 _rctrim0	=	0x0084
                           000085   163 _rctrim1	=	0x0085
                           000086   164 _rwk	=	0x0086
                           000087   165 _pcon	=	0x0087
                           000088   166 _tcon	=	0x0088
                           000089   167 _tmod	=	0x0089
                           00008A   168 _tl0	=	0x008a
                           00008B   169 _tl1	=	0x008b
                           00008C   170 _th0	=	0x008c
                           00008D   171 _th1	=	0x008d
                           00008E   172 _ckcon	=	0x008e
                           00008F   173 _wkcon	=	0x008f
                           000090   174 _p1	=	0x0090
                           000091   175 _sfrs	=	0x0091
                           000092   176 _capcon0	=	0x0092
                           000093   177 _capcon1	=	0x0093
                           000094   178 _capcon2	=	0x0094
                           000095   179 _ckdiv	=	0x0095
                           000096   180 _ckswt	=	0x0096
                           000097   181 _cken	=	0x0097
                           000098   182 _scon	=	0x0098
                           000099   183 _sbuf	=	0x0099
                           00009A   184 _sbuf_1	=	0x009a
                           00009B   185 _eie	=	0x009b
                           00009C   186 _eie1	=	0x009c
                           00009F   187 _chpcon	=	0x009f
                           0000A0   188 _p2	=	0x00a0
                           0000A2   189 _auxr1	=	0x00a2
                           0000A3   190 _bodcon0	=	0x00a3
                           0000A4   191 _iaptrg	=	0x00a4
                           0000A5   192 _iapuen	=	0x00a5
                           0000A6   193 _iapal	=	0x00a6
                           0000A7   194 _iapah	=	0x00a7
                           0000A8   195 _ie	=	0x00a8
                           0000A9   196 _saddr	=	0x00a9
                           0000AA   197 _wdcon	=	0x00aa
                           0000AB   198 _bodcon1	=	0x00ab
                           0000AC   199 _p3m1	=	0x00ac
                           0000AC   200 _p3s	=	0x00ac
                           0000AD   201 _p3m2	=	0x00ad
                           0000AD   202 _p3sr	=	0x00ad
                           0000AE   203 _iapfd	=	0x00ae
                           0000AF   204 _iapcn	=	0x00af
                           0000B0   205 _p3	=	0x00b0
                           0000B1   206 _p0m1	=	0x00b1
                           0000B1   207 _p0s	=	0x00b1
                           0000B2   208 _p0m2	=	0x00b2
                           0000B2   209 _p0sr	=	0x00b2
                           0000B3   210 _p1m1	=	0x00b3
                           0000B3   211 _p1s	=	0x00b3
                           0000B4   212 _p1m2	=	0x00b4
                           0000B4   213 _p1sr	=	0x00b4
                           0000B5   214 _p2s	=	0x00b5
                           0000B7   215 _iph	=	0x00b7
                           0000B7   216 _pwmintc	=	0x00b7
                           0000B8   217 _ip	=	0x00b8
                           0000B9   218 _saden	=	0x00b9
                           0000BA   219 _saden_1	=	0x00ba
                           0000BB   220 _saddr_1	=	0x00bb
                           0000BC   221 _i2dat	=	0x00bc
                           0000BD   222 _i2stat	=	0x00bd
                           0000BE   223 _i2clk	=	0x00be
                           0000BF   224 _i2toc	=	0x00bf
                           0000C0   225 _i2con	=	0x00c0
                           0000C1   226 _i2addr	=	0x00c1
                           0000C2   227 _adcrl	=	0x00c2
                           0000C3   228 _adcrh	=	0x00c3
                           0000C4   229 _t3con	=	0x00c4
                           0000C4   230 _pwm4h	=	0x00c4
                           0000C5   231 _rl3	=	0x00c5
                           0000C5   232 _pwm5h	=	0x00c5
                           0000C6   233 _rh3	=	0x00c6
                           0000C6   234 _piocon1	=	0x00c6
                           0000C7   235 _ta	=	0x00c7
                           0000C8   236 _t2con	=	0x00c8
                           0000C9   237 _t2mod	=	0x00c9
                           0000CA   238 _rcmp2l	=	0x00ca
                           0000CB   239 _rcmp2h	=	0x00cb
                           0000CC   240 _tl2	=	0x00cc
                           0000CC   241 _pwm4l	=	0x00cc
                           0000CD   242 _th2	=	0x00cd
                           0000CD   243 _pwm5l	=	0x00cd
                           0000CE   244 _adcmpl	=	0x00ce
                           0000CF   245 _adcmph	=	0x00cf
                           0000D0   246 _psw	=	0x00d0
                           0000D1   247 _pwmph	=	0x00d1
                           0000D2   248 _pwm0h	=	0x00d2
                           0000D3   249 _pwm1h	=	0x00d3
                           0000D4   250 _pwm2h	=	0x00d4
                           0000D5   251 _pwm3h	=	0x00d5
                           0000D6   252 _pnp	=	0x00d6
                           0000D7   253 _fbd	=	0x00d7
                           0000D8   254 _pwmcon0	=	0x00d8
                           0000D9   255 _pwmpl	=	0x00d9
                           0000DA   256 _pwm0l	=	0x00da
                           0000DB   257 _pwm1l	=	0x00db
                           0000DC   258 _pwm2l	=	0x00dc
                           0000DD   259 _pwm3l	=	0x00dd
                           0000DE   260 _piocon0	=	0x00de
                           0000DF   261 _pwmcon1	=	0x00df
                           0000E0   262 _acc	=	0x00e0
                           0000E1   263 _adccon1	=	0x00e1
                           0000E2   264 _adccon2	=	0x00e2
                           0000E3   265 _adcdly	=	0x00e3
                           0000E4   266 _c0l	=	0x00e4
                           0000E5   267 _c0h	=	0x00e5
                           0000E6   268 _c1l	=	0x00e6
                           0000E7   269 _c1h	=	0x00e7
                           0000E8   270 _adccon0	=	0x00e8
                           0000E9   271 _picon	=	0x00e9
                           0000EA   272 _pinen	=	0x00ea
                           0000EB   273 _pipen	=	0x00eb
                           0000EC   274 _pif	=	0x00ec
                           0000ED   275 _c2l	=	0x00ed
                           0000EE   276 _c2h	=	0x00ee
                           0000EF   277 _eip	=	0x00ef
                           0000F0   278 _b	=	0x00f0
                           0000F1   279 _capcon3	=	0x00f1
                           0000F2   280 _capcon4	=	0x00f2
                           0000F3   281 _spcr	=	0x00f3
                           0000F3   282 _spcr2	=	0x00f3
                           0000F4   283 _spsr	=	0x00f4
                           0000F5   284 _spdr	=	0x00f5
                           0000F6   285 _aindids	=	0x00f6
                           0000F7   286 _eiph	=	0x00f7
                           0000F8   287 _scon_1	=	0x00f8
                           0000F9   288 _pdten	=	0x00f9
                           0000FA   289 _pdtcnt	=	0x00fa
                           0000FB   290 _pmen	=	0x00fb
                           0000FC   291 _pmd	=	0x00fc
                           0000FE   292 _eip1	=	0x00fe
                           0000FF   293 _eiph1	=	0x00ff
                                    294 ;--------------------------------------------------------
                                    295 ; special function bits
                                    296 ;--------------------------------------------------------
                                    297 	.area RSEG    (ABS,DATA)
      000000                        298 	.org 0x0000
                                    299 ;--------------------------------------------------------
                                    300 ; overlayable register banks
                                    301 ;--------------------------------------------------------
                                    302 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        303 	.ds 8
                                    304 ;--------------------------------------------------------
                                    305 ; internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area DSEG    (DATA)
      00002D                        308 _UART0_printNum_dis_65536_54:
      00002D                        309 	.ds 20
                                    310 ;--------------------------------------------------------
                                    311 ; overlayable items in internal ram
                                    312 ;--------------------------------------------------------
                                    313 	.area	OSEG    (OVR,DATA)
                                    314 ;--------------------------------------------------------
                                    315 ; indirectly addressable internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area ISEG    (DATA)
                                    318 ;--------------------------------------------------------
                                    319 ; absolute internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area IABS    (ABS,DATA)
                                    322 	.area IABS    (ABS,DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; bit data
                                    325 ;--------------------------------------------------------
                                    326 	.area BSEG    (BIT)
                                    327 ;--------------------------------------------------------
                                    328 ; paged external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area PSEG    (PAG,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XSEG    (XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; absolute external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XABS    (ABS,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external initialized ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XISEG   (XDATA)
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT0 (CODE)
                                    345 	.area GSINIT1 (CODE)
                                    346 	.area GSINIT2 (CODE)
                                    347 	.area GSINIT3 (CODE)
                                    348 	.area GSINIT4 (CODE)
                                    349 	.area GSINIT5 (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area CSEG    (CODE)
                                    353 ;--------------------------------------------------------
                                    354 ; global & static initialisations
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.area GSFINAL (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
                                    365 ;--------------------------------------------------------
                                    366 ; code
                                    367 ;--------------------------------------------------------
                                    368 	.area CSEG    (CODE)
                                    369 ;------------------------------------------------------------
                                    370 ;Allocation info for local variables in function 'UART0_begin'
                                    371 ;------------------------------------------------------------
                                    372 ;	./src/N76_uart0.c:10: void UART0_begin(void)
                                    373 ;	-----------------------------------------
                                    374 ;	 function UART0_begin
                                    375 ;	-----------------------------------------
      000CD0                        376 _UART0_begin:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
                                    385 ;	./src/N76_uart0.c:12: clrb(P0M1, 6);
      000CD0 53 B1 BF         [24]  386 	anl	_p0m1,#0xbf
                                    387 ;	./src/N76_uart0.c:13: clrb(P0M2, 6);
      000CD3 53 B2 BF         [24]  388 	anl	_p0m2,#0xbf
                                    389 ;	./src/N76_uart0.c:14: clrb(P0M1, 7);
      000CD6 53 B1 7F         [24]  390 	anl	_p0m1,#0x7f
                                    391 ;	./src/N76_uart0.c:15: clrb(P0M2, 7); // set pin at quad mode
      000CD9 53 B2 7F         [24]  392 	anl	_p0m2,#0x7f
                                    393 ;	./src/N76_uart0.c:17: TH1 = 0xE6;       // set baudrate
      000CDC 75 8D E6         [24]  394 	mov	_th1,#0xe6
                                    395 ;	./src/N76_uart0.c:18: setb(SCON, SM1); // UART0 Mode1,REN=1,TI=1
      000CDF 43 98 40         [24]  396 	orl	_scon,#0x40
                                    397 ;	./src/N76_uart0.c:19: setb(SCON, REN); // UART0 Mode1,REN=1,TI=1
      000CE2 43 98 10         [24]  398 	orl	_scon,#0x10
                                    399 ;	./src/N76_uart0.c:20: TMOD |= 0x20;    // Timer1 Mode1
      000CE5 43 89 20         [24]  400 	orl	_tmod,#0x20
                                    401 ;	./src/N76_uart0.c:21: setb(PCON, SMOD);
      000CE8 43 87 80         [24]  402 	orl	_pcon,#0x80
                                    403 ;	./src/N76_uart0.c:22: setb(CKCON, T1M);
      000CEB 43 8E 10         [24]  404 	orl	_ckcon,#0x10
                                    405 ;	./src/N76_uart0.c:23: clrb(T3CON, BRCK);
      000CEE 53 C4 DF         [24]  406 	anl	_t3con,#0xdf
                                    407 ;	./src/N76_uart0.c:24: setb(TCON, TR1);
      000CF1 43 88 40         [24]  408 	orl	_tcon,#0x40
                                    409 ;	./src/N76_uart0.c:25: clrb(SCON, TI);
      000CF4 53 98 FD         [24]  410 	anl	_scon,#0xfd
                                    411 ;	./src/N76_uart0.c:26: }
      000CF7 22               [24]  412 	ret
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'UART0_putChar'
                                    415 ;------------------------------------------------------------
                                    416 ;val                       Allocated to registers r7 
                                    417 ;------------------------------------------------------------
                                    418 ;	./src/N76_uart0.c:27: void UART0_putChar(uint8_t val)
                                    419 ;	-----------------------------------------
                                    420 ;	 function UART0_putChar
                                    421 ;	-----------------------------------------
      000CF8                        422 _UART0_putChar:
      000CF8 AF 82            [24]  423 	mov	r7,dpl
                                    424 ;	./src/N76_uart0.c:29: clrb(SCON, TI);
      000CFA 53 98 FD         [24]  425 	anl	_scon,#0xfd
                                    426 ;	./src/N76_uart0.c:30: SBUF = val;
      000CFD 8F 99            [24]  427 	mov	_sbuf,r7
                                    428 ;	./src/N76_uart0.c:31: while (inbit(SCON, TI) == 0)
      000CFF                        429 00101$:
      000CFF 74 02            [12]  430 	mov	a,#0x02
      000D01 55 98            [12]  431 	anl	a,_scon
      000D03 C3               [12]  432 	clr	c
      000D04 13               [12]  433 	rrc	a
      000D05 60 F8            [24]  434 	jz	00101$
                                    435 ;	./src/N76_uart0.c:33: }
      000D07 22               [24]  436 	ret
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'UART0_print'
                                    439 ;------------------------------------------------------------
                                    440 ;str                       Allocated to registers r5 r6 r7 
                                    441 ;i                         Allocated to registers r4 
                                    442 ;------------------------------------------------------------
                                    443 ;	./src/N76_uart0.c:35: void UART0_print(char *str)
                                    444 ;	-----------------------------------------
                                    445 ;	 function UART0_print
                                    446 ;	-----------------------------------------
      000D08                        447 _UART0_print:
      000D08 AD 82            [24]  448 	mov	r5,dpl
      000D0A AE 83            [24]  449 	mov	r6,dph
      000D0C AF F0            [24]  450 	mov	r7,b
                                    451 ;	./src/N76_uart0.c:38: while (str[i] != '\0')
      000D0E 7C 00            [12]  452 	mov	r4,#0x00
      000D10                        453 00101$:
      000D10 EC               [12]  454 	mov	a,r4
      000D11 2D               [12]  455 	add	a,r5
      000D12 F9               [12]  456 	mov	r1,a
      000D13 E4               [12]  457 	clr	a
      000D14 3E               [12]  458 	addc	a,r6
      000D15 FA               [12]  459 	mov	r2,a
      000D16 8F 03            [24]  460 	mov	ar3,r7
      000D18 89 82            [24]  461 	mov	dpl,r1
      000D1A 8A 83            [24]  462 	mov	dph,r2
      000D1C 8B F0            [24]  463 	mov	b,r3
      000D1E 12 16 1E         [24]  464 	lcall	__gptrget
      000D21 60 29            [24]  465 	jz	00104$
                                    466 ;	./src/N76_uart0.c:39: UART0_putChar(str[i++]);
      000D23 EC               [12]  467 	mov	a,r4
      000D24 2D               [12]  468 	add	a,r5
      000D25 F9               [12]  469 	mov	r1,a
      000D26 E4               [12]  470 	clr	a
      000D27 3E               [12]  471 	addc	a,r6
      000D28 FA               [12]  472 	mov	r2,a
      000D29 8F 03            [24]  473 	mov	ar3,r7
      000D2B 0C               [12]  474 	inc	r4
      000D2C 89 82            [24]  475 	mov	dpl,r1
      000D2E 8A 83            [24]  476 	mov	dph,r2
      000D30 8B F0            [24]  477 	mov	b,r3
      000D32 12 16 1E         [24]  478 	lcall	__gptrget
      000D35 F5 82            [12]  479 	mov	dpl,a
      000D37 C0 07            [24]  480 	push	ar7
      000D39 C0 06            [24]  481 	push	ar6
      000D3B C0 05            [24]  482 	push	ar5
      000D3D C0 04            [24]  483 	push	ar4
      000D3F 12 0C F8         [24]  484 	lcall	_UART0_putChar
      000D42 D0 04            [24]  485 	pop	ar4
      000D44 D0 05            [24]  486 	pop	ar5
      000D46 D0 06            [24]  487 	pop	ar6
      000D48 D0 07            [24]  488 	pop	ar7
      000D4A 80 C4            [24]  489 	sjmp	00101$
      000D4C                        490 00104$:
                                    491 ;	./src/N76_uart0.c:40: }
      000D4C 22               [24]  492 	ret
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'UART0_println'
                                    495 ;------------------------------------------------------------
                                    496 ;str                       Allocated to registers r5 r6 r7 
                                    497 ;------------------------------------------------------------
                                    498 ;	./src/N76_uart0.c:42: void UART0_println(char *str)
                                    499 ;	-----------------------------------------
                                    500 ;	 function UART0_println
                                    501 ;	-----------------------------------------
      000D4D                        502 _UART0_println:
                                    503 ;	./src/N76_uart0.c:44: UART0_print(str);
      000D4D 12 0D 08         [24]  504 	lcall	_UART0_print
                                    505 ;	./src/N76_uart0.c:45: UART0_print("\r\n");
      000D50 90 17 DA         [24]  506 	mov	dptr,#___str_0
      000D53 75 F0 80         [24]  507 	mov	b,#0x80
                                    508 ;	./src/N76_uart0.c:46: }
      000D56 02 0D 08         [24]  509 	ljmp	_UART0_print
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'UART0_printNum'
                                    512 ;------------------------------------------------------------
                                    513 ;num                       Allocated to registers r4 r5 r6 r7 
                                    514 ;dis                       Allocated with name '_UART0_printNum_dis_65536_54'
                                    515 ;------------------------------------------------------------
                                    516 ;	./src/N76_uart0.c:48: void UART0_printNum(long num)
                                    517 ;	-----------------------------------------
                                    518 ;	 function UART0_printNum
                                    519 ;	-----------------------------------------
      000D59                        520 _UART0_printNum:
      000D59 AC 82            [24]  521 	mov	r4,dpl
      000D5B AD 83            [24]  522 	mov	r5,dph
      000D5D AE F0            [24]  523 	mov	r6,b
      000D5F FF               [12]  524 	mov	r7,a
                                    525 ;	./src/N76_uart0.c:51: sprintf(dis, "%li", num);
      000D60 C0 04            [24]  526 	push	ar4
      000D62 C0 05            [24]  527 	push	ar5
      000D64 C0 06            [24]  528 	push	ar6
      000D66 C0 07            [24]  529 	push	ar7
      000D68 74 DD            [12]  530 	mov	a,#___str_1
      000D6A C0 E0            [24]  531 	push	acc
      000D6C 74 17            [12]  532 	mov	a,#(___str_1 >> 8)
      000D6E C0 E0            [24]  533 	push	acc
      000D70 74 80            [12]  534 	mov	a,#0x80
      000D72 C0 E0            [24]  535 	push	acc
      000D74 74 2D            [12]  536 	mov	a,#_UART0_printNum_dis_65536_54
      000D76 C0 E0            [24]  537 	push	acc
      000D78 74 00            [12]  538 	mov	a,#(_UART0_printNum_dis_65536_54 >> 8)
      000D7A C0 E0            [24]  539 	push	acc
      000D7C 74 40            [12]  540 	mov	a,#0x40
      000D7E C0 E0            [24]  541 	push	acc
      000D80 12 0E B5         [24]  542 	lcall	_sprintf
      000D83 E5 81            [12]  543 	mov	a,sp
      000D85 24 F6            [12]  544 	add	a,#0xf6
      000D87 F5 81            [12]  545 	mov	sp,a
                                    546 ;	./src/N76_uart0.c:52: UART0_print(dis);
      000D89 90 00 2D         [24]  547 	mov	dptr,#_UART0_printNum_dis_65536_54
      000D8C 75 F0 40         [24]  548 	mov	b,#0x40
                                    549 ;	./src/N76_uart0.c:53: }
      000D8F 02 0D 08         [24]  550 	ljmp	_UART0_print
                                    551 	.area CSEG    (CODE)
                                    552 	.area CONST   (CODE)
                                    553 	.area CONST   (CODE)
      0017DA                        554 ___str_0:
      0017DA 0D                     555 	.db 0x0d
      0017DB 0A                     556 	.db 0x0a
      0017DC 00                     557 	.db 0x00
                                    558 	.area CSEG    (CODE)
                                    559 	.area CONST   (CODE)
      0017DD                        560 ___str_1:
      0017DD 25 6C 69               561 	.ascii "%li"
      0017E0 00                     562 	.db 0x00
                                    563 	.area CSEG    (CODE)
                                    564 	.area XINIT   (CODE)
                                    565 	.area CABS    (ABS,CODE)
