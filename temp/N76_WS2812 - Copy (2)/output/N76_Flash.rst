                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module N76_Flash
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _APROM_write_byte_PARM_2
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
                                    148 	.globl _APROM_read_byte
                                    149 	.globl _APROM_read_2byte
                                    150 	.globl _APROM_write_byte
                                    151 	.globl _Erase_APROM
                                    152 ;--------------------------------------------------------
                                    153 ; special function registers
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           000080   157 _p0	=	0x0080
                           000081   158 _sp	=	0x0081
                           000082   159 _dpl	=	0x0082
                           000083   160 _dph	=	0x0083
                           000084   161 _rctrim0	=	0x0084
                           000085   162 _rctrim1	=	0x0085
                           000086   163 _rwk	=	0x0086
                           000087   164 _pcon	=	0x0087
                           000088   165 _tcon	=	0x0088
                           000089   166 _tmod	=	0x0089
                           00008A   167 _tl0	=	0x008a
                           00008B   168 _tl1	=	0x008b
                           00008C   169 _th0	=	0x008c
                           00008D   170 _th1	=	0x008d
                           00008E   171 _ckcon	=	0x008e
                           00008F   172 _wkcon	=	0x008f
                           000090   173 _p1	=	0x0090
                           000091   174 _sfrs	=	0x0091
                           000092   175 _capcon0	=	0x0092
                           000093   176 _capcon1	=	0x0093
                           000094   177 _capcon2	=	0x0094
                           000095   178 _ckdiv	=	0x0095
                           000096   179 _ckswt	=	0x0096
                           000097   180 _cken	=	0x0097
                           000098   181 _scon	=	0x0098
                           000099   182 _sbuf	=	0x0099
                           00009A   183 _sbuf_1	=	0x009a
                           00009B   184 _eie	=	0x009b
                           00009C   185 _eie1	=	0x009c
                           00009F   186 _chpcon	=	0x009f
                           0000A0   187 _p2	=	0x00a0
                           0000A2   188 _auxr1	=	0x00a2
                           0000A3   189 _bodcon0	=	0x00a3
                           0000A4   190 _iaptrg	=	0x00a4
                           0000A5   191 _iapuen	=	0x00a5
                           0000A6   192 _iapal	=	0x00a6
                           0000A7   193 _iapah	=	0x00a7
                           0000A8   194 _ie	=	0x00a8
                           0000A9   195 _saddr	=	0x00a9
                           0000AA   196 _wdcon	=	0x00aa
                           0000AB   197 _bodcon1	=	0x00ab
                           0000AC   198 _p3m1	=	0x00ac
                           0000AC   199 _p3s	=	0x00ac
                           0000AD   200 _p3m2	=	0x00ad
                           0000AD   201 _p3sr	=	0x00ad
                           0000AE   202 _iapfd	=	0x00ae
                           0000AF   203 _iapcn	=	0x00af
                           0000B0   204 _p3	=	0x00b0
                           0000B1   205 _p0m1	=	0x00b1
                           0000B1   206 _p0s	=	0x00b1
                           0000B2   207 _p0m2	=	0x00b2
                           0000B2   208 _p0sr	=	0x00b2
                           0000B3   209 _p1m1	=	0x00b3
                           0000B3   210 _p1s	=	0x00b3
                           0000B4   211 _p1m2	=	0x00b4
                           0000B4   212 _p1sr	=	0x00b4
                           0000B5   213 _p2s	=	0x00b5
                           0000B7   214 _iph	=	0x00b7
                           0000B7   215 _pwmintc	=	0x00b7
                           0000B8   216 _ip	=	0x00b8
                           0000B9   217 _saden	=	0x00b9
                           0000BA   218 _saden_1	=	0x00ba
                           0000BB   219 _saddr_1	=	0x00bb
                           0000BC   220 _i2dat	=	0x00bc
                           0000BD   221 _i2stat	=	0x00bd
                           0000BE   222 _i2clk	=	0x00be
                           0000BF   223 _i2toc	=	0x00bf
                           0000C0   224 _i2con	=	0x00c0
                           0000C1   225 _i2addr	=	0x00c1
                           0000C2   226 _adcrl	=	0x00c2
                           0000C3   227 _adcrh	=	0x00c3
                           0000C4   228 _t3con	=	0x00c4
                           0000C4   229 _pwm4h	=	0x00c4
                           0000C5   230 _rl3	=	0x00c5
                           0000C5   231 _pwm5h	=	0x00c5
                           0000C6   232 _rh3	=	0x00c6
                           0000C6   233 _piocon1	=	0x00c6
                           0000C7   234 _ta	=	0x00c7
                           0000C8   235 _t2con	=	0x00c8
                           0000C9   236 _t2mod	=	0x00c9
                           0000CA   237 _rcmp2l	=	0x00ca
                           0000CB   238 _rcmp2h	=	0x00cb
                           0000CC   239 _tl2	=	0x00cc
                           0000CC   240 _pwm4l	=	0x00cc
                           0000CD   241 _th2	=	0x00cd
                           0000CD   242 _pwm5l	=	0x00cd
                           0000CE   243 _adcmpl	=	0x00ce
                           0000CF   244 _adcmph	=	0x00cf
                           0000D0   245 _psw	=	0x00d0
                           0000D1   246 _pwmph	=	0x00d1
                           0000D2   247 _pwm0h	=	0x00d2
                           0000D3   248 _pwm1h	=	0x00d3
                           0000D4   249 _pwm2h	=	0x00d4
                           0000D5   250 _pwm3h	=	0x00d5
                           0000D6   251 _pnp	=	0x00d6
                           0000D7   252 _fbd	=	0x00d7
                           0000D8   253 _pwmcon0	=	0x00d8
                           0000D9   254 _pwmpl	=	0x00d9
                           0000DA   255 _pwm0l	=	0x00da
                           0000DB   256 _pwm1l	=	0x00db
                           0000DC   257 _pwm2l	=	0x00dc
                           0000DD   258 _pwm3l	=	0x00dd
                           0000DE   259 _piocon0	=	0x00de
                           0000DF   260 _pwmcon1	=	0x00df
                           0000E0   261 _acc	=	0x00e0
                           0000E1   262 _adccon1	=	0x00e1
                           0000E2   263 _adccon2	=	0x00e2
                           0000E3   264 _adcdly	=	0x00e3
                           0000E4   265 _c0l	=	0x00e4
                           0000E5   266 _c0h	=	0x00e5
                           0000E6   267 _c1l	=	0x00e6
                           0000E7   268 _c1h	=	0x00e7
                           0000E8   269 _adccon0	=	0x00e8
                           0000E9   270 _picon	=	0x00e9
                           0000EA   271 _pinen	=	0x00ea
                           0000EB   272 _pipen	=	0x00eb
                           0000EC   273 _pif	=	0x00ec
                           0000ED   274 _c2l	=	0x00ed
                           0000EE   275 _c2h	=	0x00ee
                           0000EF   276 _eip	=	0x00ef
                           0000F0   277 _b	=	0x00f0
                           0000F1   278 _capcon3	=	0x00f1
                           0000F2   279 _capcon4	=	0x00f2
                           0000F3   280 _spcr	=	0x00f3
                           0000F3   281 _spcr2	=	0x00f3
                           0000F4   282 _spsr	=	0x00f4
                           0000F5   283 _spdr	=	0x00f5
                           0000F6   284 _aindids	=	0x00f6
                           0000F7   285 _eiph	=	0x00f7
                           0000F8   286 _scon_1	=	0x00f8
                           0000F9   287 _pdten	=	0x00f9
                           0000FA   288 _pdtcnt	=	0x00fa
                           0000FB   289 _pmen	=	0x00fb
                           0000FC   290 _pmd	=	0x00fc
                           0000FE   291 _eip1	=	0x00fe
                           0000FF   292 _eiph1	=	0x00ff
                                    293 ;--------------------------------------------------------
                                    294 ; special function bits
                                    295 ;--------------------------------------------------------
                                    296 	.area RSEG    (ABS,DATA)
      000000                        297 	.org 0x0000
                                    298 ;--------------------------------------------------------
                                    299 ; overlayable register banks
                                    300 ;--------------------------------------------------------
                                    301 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        302 	.ds 8
                                    303 ;--------------------------------------------------------
                                    304 ; internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area DSEG    (DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; overlayable items in internal ram
                                    309 ;--------------------------------------------------------
                                    310 	.area	OSEG    (OVR,DATA)
                                    311 	.area	OSEG    (OVR,DATA)
                                    312 	.area	OSEG    (OVR,DATA)
      000017                        313 _APROM_write_byte_PARM_2:
      000017                        314 	.ds 1
                                    315 	.area	OSEG    (OVR,DATA)
                                    316 ;--------------------------------------------------------
                                    317 ; indirectly addressable internal ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area ISEG    (DATA)
                                    320 ;--------------------------------------------------------
                                    321 ; absolute internal ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area IABS    (ABS,DATA)
                                    324 	.area IABS    (ABS,DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; bit data
                                    327 ;--------------------------------------------------------
                                    328 	.area BSEG    (BIT)
                                    329 ;--------------------------------------------------------
                                    330 ; paged external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area PSEG    (PAG,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XSEG    (XDATA)
                                    337 ;--------------------------------------------------------
                                    338 ; absolute external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area XABS    (ABS,XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; external initialized ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XISEG   (XDATA)
                                    345 	.area HOME    (CODE)
                                    346 	.area GSINIT0 (CODE)
                                    347 	.area GSINIT1 (CODE)
                                    348 	.area GSINIT2 (CODE)
                                    349 	.area GSINIT3 (CODE)
                                    350 	.area GSINIT4 (CODE)
                                    351 	.area GSINIT5 (CODE)
                                    352 	.area GSINIT  (CODE)
                                    353 	.area GSFINAL (CODE)
                                    354 	.area CSEG    (CODE)
                                    355 ;--------------------------------------------------------
                                    356 ; global & static initialisations
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.area GSFINAL (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 ;--------------------------------------------------------
                                    363 ; Home
                                    364 ;--------------------------------------------------------
                                    365 	.area HOME    (CODE)
                                    366 	.area HOME    (CODE)
                                    367 ;--------------------------------------------------------
                                    368 ; code
                                    369 ;--------------------------------------------------------
                                    370 	.area CSEG    (CODE)
                                    371 ;------------------------------------------------------------
                                    372 ;Allocation info for local variables in function 'APROM_read_byte'
                                    373 ;------------------------------------------------------------
                                    374 ;u16_addr                  Allocated to registers r6 r7 
                                    375 ;rdata                     Allocated to registers r7 
                                    376 ;------------------------------------------------------------
                                    377 ;	./src/N76_Flash.c:11: uint8_t APROM_read_byte(uint16_t u16_addr)
                                    378 ;	-----------------------------------------
                                    379 ;	 function APROM_read_byte
                                    380 ;	-----------------------------------------
      00065B                        381 _APROM_read_byte:
                           000007   382 	ar7 = 0x07
                           000006   383 	ar6 = 0x06
                           000005   384 	ar5 = 0x05
                           000004   385 	ar4 = 0x04
                           000003   386 	ar3 = 0x03
                           000002   387 	ar2 = 0x02
                           000001   388 	ar1 = 0x01
                           000000   389 	ar0 = 0x00
                                    390 ;	./src/N76_Flash.c:14: rdata = *((uint16_t __code *)u16_addr);
      00065B E4               [12]  391 	clr	a
      00065C 93               [24]  392 	movc	a,@a+dptr
                                    393 ;	./src/N76_Flash.c:15: return rdata;
                                    394 ;	./src/N76_Flash.c:16: }
      00065D F5 82            [12]  395 	mov	dpl,a
      00065F 22               [24]  396 	ret
                                    397 ;------------------------------------------------------------
                                    398 ;Allocation info for local variables in function 'APROM_read_2byte'
                                    399 ;------------------------------------------------------------
                                    400 ;u16_addr                  Allocated to registers r6 r7 
                                    401 ;rdata                     Allocated to registers r6 r7 
                                    402 ;------------------------------------------------------------
                                    403 ;	./src/N76_Flash.c:17: uint16_t APROM_read_2byte(uint16_t u16_addr)
                                    404 ;	-----------------------------------------
                                    405 ;	 function APROM_read_2byte
                                    406 ;	-----------------------------------------
      000660                        407 _APROM_read_2byte:
                                    408 ;	./src/N76_Flash.c:20: rdata = *((uint16_t __code *)u16_addr);
      000660 E4               [12]  409 	clr	a
      000661 93               [24]  410 	movc	a,@a+dptr
      000662 FE               [12]  411 	mov	r6,a
      000663 A3               [24]  412 	inc	dptr
      000664 E4               [12]  413 	clr	a
      000665 93               [24]  414 	movc	a,@a+dptr
                                    415 ;	./src/N76_Flash.c:21: return rdata;
                                    416 ;	./src/N76_Flash.c:22: }
      000666 8E 82            [24]  417 	mov	dpl,r6
      000668 F5 83            [12]  418 	mov	dph,a
      00066A 22               [24]  419 	ret
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'APROM_write_byte'
                                    422 ;------------------------------------------------------------
                                    423 ;data                      Allocated with name '_APROM_write_byte_PARM_2'
                                    424 ;addr                      Allocated to registers r6 r7 
                                    425 ;------------------------------------------------------------
                                    426 ;	./src/N76_Flash.c:27: void APROM_write_byte(uint16_t addr, uint8_t data)
                                    427 ;	-----------------------------------------
                                    428 ;	 function APROM_write_byte
                                    429 ;	-----------------------------------------
      00066B                        430 _APROM_write_byte:
      00066B AE 82            [24]  431 	mov	r6,dpl
      00066D AF 83            [24]  432 	mov	r7,dph
                                    433 ;	./src/N76_Flash.c:30: setbAP(CHPCON, IAPEN); // enable IAP
      00066F 53 A8 7F         [24]  434 	anl	_ie,#0x7f
      000672 75 C7 AA         [24]  435 	mov	_ta,#0xaa
      000675 75 C7 55         [24]  436 	mov	_ta,#0x55
      000678 43 9F 01         [24]  437 	orl	_chpcon,#0x01
      00067B 43 A8 80         [24]  438 	orl	_ie,#0x80
                                    439 ;	./src/N76_Flash.c:31: setbAP(IAPUEN, APUEN); // enable IAP updated
      00067E 53 A8 7F         [24]  440 	anl	_ie,#0x7f
      000681 75 C7 AA         [24]  441 	mov	_ta,#0xaa
      000684 75 C7 55         [24]  442 	mov	_ta,#0x55
      000687 43 A5 01         [24]  443 	orl	_iapuen,#0x01
      00068A 43 A8 80         [24]  444 	orl	_ie,#0x80
                                    445 ;	./src/N76_Flash.c:32: IAPCN = BYTE_PROGRAM_AP;
      00068D 75 AF 21         [24]  446 	mov	_iapcn,#0x21
                                    447 ;	./src/N76_Flash.c:34: IAPAH = (uint8_t)((addr) >> 8);
      000690 8F A7            [24]  448 	mov	_iapah,r7
                                    449 ;	./src/N76_Flash.c:35: IAPAL = (uint8_t)((addr)&0xFF);
      000692 8E A6            [24]  450 	mov	_iapal,r6
                                    451 ;	./src/N76_Flash.c:36: IAPFD = data;
      000694 85 17 AE         [24]  452 	mov	_iapfd,_APROM_write_byte_PARM_2
                                    453 ;	./src/N76_Flash.c:38: setbAP(IAPTRG, IAPGO); // Trigger_IAP();
      000697 53 A8 7F         [24]  454 	anl	_ie,#0x7f
      00069A 75 C7 AA         [24]  455 	mov	_ta,#0xaa
      00069D 75 C7 55         [24]  456 	mov	_ta,#0x55
      0006A0 43 A4 01         [24]  457 	orl	_iaptrg,#0x01
      0006A3 43 A8 80         [24]  458 	orl	_ie,#0x80
                                    459 ;	./src/N76_Flash.c:40: clrbAP(IAPUEN, APUEN);
      0006A6 53 A8 7F         [24]  460 	anl	_ie,#0x7f
      0006A9 75 C7 AA         [24]  461 	mov	_ta,#0xaa
      0006AC 75 C7 55         [24]  462 	mov	_ta,#0x55
      0006AF 53 A5 FE         [24]  463 	anl	_iapuen,#0xfe
      0006B2 43 A8 80         [24]  464 	orl	_ie,#0x80
                                    465 ;	./src/N76_Flash.c:41: clrbAP(CHPCON, IAPEN);
      0006B5 53 A8 7F         [24]  466 	anl	_ie,#0x7f
      0006B8 75 C7 AA         [24]  467 	mov	_ta,#0xaa
      0006BB 75 C7 55         [24]  468 	mov	_ta,#0x55
      0006BE 53 9F FE         [24]  469 	anl	_chpcon,#0xfe
      0006C1 43 A8 80         [24]  470 	orl	_ie,#0x80
                                    471 ;	./src/N76_Flash.c:42: }
      0006C4 22               [24]  472 	ret
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'Erase_APROM'
                                    475 ;------------------------------------------------------------
                                    476 ;addr                      Allocated to registers r6 r7 
                                    477 ;------------------------------------------------------------
                                    478 ;	./src/N76_Flash.c:45: void Erase_APROM(uint16_t addr)
                                    479 ;	-----------------------------------------
                                    480 ;	 function Erase_APROM
                                    481 ;	-----------------------------------------
      0006C5                        482 _Erase_APROM:
      0006C5 AE 82            [24]  483 	mov	r6,dpl
      0006C7 AF 83            [24]  484 	mov	r7,dph
                                    485 ;	./src/N76_Flash.c:47: setbAP(CHPCON, IAPEN); // enable IAP
      0006C9 53 A8 7F         [24]  486 	anl	_ie,#0x7f
      0006CC 75 C7 AA         [24]  487 	mov	_ta,#0xaa
      0006CF 75 C7 55         [24]  488 	mov	_ta,#0x55
      0006D2 43 9F 01         [24]  489 	orl	_chpcon,#0x01
      0006D5 43 A8 80         [24]  490 	orl	_ie,#0x80
                                    491 ;	./src/N76_Flash.c:48: IAPFD = 0xFF;												// IMPORTANT !! To erase function must setting IAPFD = 0xFF 
      0006D8 75 AE FF         [24]  492 	mov	_iapfd,#0xff
                                    493 ;	./src/N76_Flash.c:49: IAPCN = PAGE_ERASE_AP;
      0006DB 75 AF 22         [24]  494 	mov	_iapcn,#0x22
                                    495 ;	./src/N76_Flash.c:50: setbAP(IAPUEN, APUEN); // enable IAP updated
      0006DE 53 A8 7F         [24]  496 	anl	_ie,#0x7f
      0006E1 75 C7 AA         [24]  497 	mov	_ta,#0xaa
      0006E4 75 C7 55         [24]  498 	mov	_ta,#0x55
      0006E7 43 A5 01         [24]  499 	orl	_iapuen,#0x01
      0006EA 43 A8 80         [24]  500 	orl	_ie,#0x80
                                    501 ;	./src/N76_Flash.c:54: IAPAH = (uint8_t)((addr) >> 8);
      0006ED 8F A7            [24]  502 	mov	_iapah,r7
                                    503 ;	./src/N76_Flash.c:55: IAPAL = (uint8_t)((addr)&0xFF);
      0006EF 8E A6            [24]  504 	mov	_iapal,r6
                                    505 ;	./src/N76_Flash.c:56: setbAP(IAPTRG, IAPGO); // Trigger_IAP();
      0006F1 53 A8 7F         [24]  506 	anl	_ie,#0x7f
      0006F4 75 C7 AA         [24]  507 	mov	_ta,#0xaa
      0006F7 75 C7 55         [24]  508 	mov	_ta,#0x55
      0006FA 43 A4 01         [24]  509 	orl	_iaptrg,#0x01
      0006FD 43 A8 80         [24]  510 	orl	_ie,#0x80
                                    511 ;	./src/N76_Flash.c:58: clrbAP(IAPUEN, APUEN);
      000700 53 A8 7F         [24]  512 	anl	_ie,#0x7f
      000703 75 C7 AA         [24]  513 	mov	_ta,#0xaa
      000706 75 C7 55         [24]  514 	mov	_ta,#0x55
      000709 53 A5 FE         [24]  515 	anl	_iapuen,#0xfe
      00070C 43 A8 80         [24]  516 	orl	_ie,#0x80
                                    517 ;	./src/N76_Flash.c:59: clrbAP(CHPCON, IAPEN);
      00070F 53 A8 7F         [24]  518 	anl	_ie,#0x7f
      000712 75 C7 AA         [24]  519 	mov	_ta,#0xaa
      000715 75 C7 55         [24]  520 	mov	_ta,#0x55
      000718 53 9F FE         [24]  521 	anl	_chpcon,#0xfe
      00071B 43 A8 80         [24]  522 	orl	_ie,#0x80
                                    523 ;	./src/N76_Flash.c:60: }
      00071E 22               [24]  524 	ret
                                    525 	.area CSEG    (CODE)
                                    526 	.area CONST   (CODE)
                                    527 	.area XINIT   (CODE)
                                    528 	.area CABS    (ABS,CODE)
