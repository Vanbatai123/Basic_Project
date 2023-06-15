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
                                    151 ;--------------------------------------------------------
                                    152 ; special function registers
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _p0	=	0x0080
                           000081   157 _sp	=	0x0081
                           000082   158 _dpl	=	0x0082
                           000083   159 _dph	=	0x0083
                           000084   160 _rctrim0	=	0x0084
                           000085   161 _rctrim1	=	0x0085
                           000086   162 _rwk	=	0x0086
                           000087   163 _pcon	=	0x0087
                           000088   164 _tcon	=	0x0088
                           000089   165 _tmod	=	0x0089
                           00008A   166 _tl0	=	0x008a
                           00008B   167 _tl1	=	0x008b
                           00008C   168 _th0	=	0x008c
                           00008D   169 _th1	=	0x008d
                           00008E   170 _ckcon	=	0x008e
                           00008F   171 _wkcon	=	0x008f
                           000090   172 _p1	=	0x0090
                           000091   173 _sfrs	=	0x0091
                           000092   174 _capcon0	=	0x0092
                           000093   175 _capcon1	=	0x0093
                           000094   176 _capcon2	=	0x0094
                           000095   177 _ckdiv	=	0x0095
                           000096   178 _ckswt	=	0x0096
                           000097   179 _cken	=	0x0097
                           000098   180 _scon	=	0x0098
                           000099   181 _sbuf	=	0x0099
                           00009A   182 _sbuf_1	=	0x009a
                           00009B   183 _eie	=	0x009b
                           00009C   184 _eie1	=	0x009c
                           00009F   185 _chpcon	=	0x009f
                           0000A0   186 _p2	=	0x00a0
                           0000A2   187 _auxr1	=	0x00a2
                           0000A3   188 _bodcon0	=	0x00a3
                           0000A4   189 _iaptrg	=	0x00a4
                           0000A5   190 _iapuen	=	0x00a5
                           0000A6   191 _iapal	=	0x00a6
                           0000A7   192 _iapah	=	0x00a7
                           0000A8   193 _ie	=	0x00a8
                           0000A9   194 _saddr	=	0x00a9
                           0000AA   195 _wdcon	=	0x00aa
                           0000AB   196 _bodcon1	=	0x00ab
                           0000AC   197 _p3m1	=	0x00ac
                           0000AC   198 _p3s	=	0x00ac
                           0000AD   199 _p3m2	=	0x00ad
                           0000AD   200 _p3sr	=	0x00ad
                           0000AE   201 _iapfd	=	0x00ae
                           0000AF   202 _iapcn	=	0x00af
                           0000B0   203 _p3	=	0x00b0
                           0000B1   204 _p0m1	=	0x00b1
                           0000B1   205 _p0s	=	0x00b1
                           0000B2   206 _p0m2	=	0x00b2
                           0000B2   207 _p0sr	=	0x00b2
                           0000B3   208 _p1m1	=	0x00b3
                           0000B3   209 _p1s	=	0x00b3
                           0000B4   210 _p1m2	=	0x00b4
                           0000B4   211 _p1sr	=	0x00b4
                           0000B5   212 _p2s	=	0x00b5
                           0000B7   213 _iph	=	0x00b7
                           0000B7   214 _pwmintc	=	0x00b7
                           0000B8   215 _ip	=	0x00b8
                           0000B9   216 _saden	=	0x00b9
                           0000BA   217 _saden_1	=	0x00ba
                           0000BB   218 _saddr_1	=	0x00bb
                           0000BC   219 _i2dat	=	0x00bc
                           0000BD   220 _i2stat	=	0x00bd
                           0000BE   221 _i2clk	=	0x00be
                           0000BF   222 _i2toc	=	0x00bf
                           0000C0   223 _i2con	=	0x00c0
                           0000C1   224 _i2addr	=	0x00c1
                           0000C2   225 _adcrl	=	0x00c2
                           0000C3   226 _adcrh	=	0x00c3
                           0000C4   227 _t3con	=	0x00c4
                           0000C4   228 _pwm4h	=	0x00c4
                           0000C5   229 _rl3	=	0x00c5
                           0000C5   230 _pwm5h	=	0x00c5
                           0000C6   231 _rh3	=	0x00c6
                           0000C6   232 _piocon1	=	0x00c6
                           0000C7   233 _ta	=	0x00c7
                           0000C8   234 _t2con	=	0x00c8
                           0000C9   235 _t2mod	=	0x00c9
                           0000CA   236 _rcmp2l	=	0x00ca
                           0000CB   237 _rcmp2h	=	0x00cb
                           0000CC   238 _tl2	=	0x00cc
                           0000CC   239 _pwm4l	=	0x00cc
                           0000CD   240 _th2	=	0x00cd
                           0000CD   241 _pwm5l	=	0x00cd
                           0000CE   242 _adcmpl	=	0x00ce
                           0000CF   243 _adcmph	=	0x00cf
                           0000D0   244 _psw	=	0x00d0
                           0000D1   245 _pwmph	=	0x00d1
                           0000D2   246 _pwm0h	=	0x00d2
                           0000D3   247 _pwm1h	=	0x00d3
                           0000D4   248 _pwm2h	=	0x00d4
                           0000D5   249 _pwm3h	=	0x00d5
                           0000D6   250 _pnp	=	0x00d6
                           0000D7   251 _fbd	=	0x00d7
                           0000D8   252 _pwmcon0	=	0x00d8
                           0000D9   253 _pwmpl	=	0x00d9
                           0000DA   254 _pwm0l	=	0x00da
                           0000DB   255 _pwm1l	=	0x00db
                           0000DC   256 _pwm2l	=	0x00dc
                           0000DD   257 _pwm3l	=	0x00dd
                           0000DE   258 _piocon0	=	0x00de
                           0000DF   259 _pwmcon1	=	0x00df
                           0000E0   260 _acc	=	0x00e0
                           0000E1   261 _adccon1	=	0x00e1
                           0000E2   262 _adccon2	=	0x00e2
                           0000E3   263 _adcdly	=	0x00e3
                           0000E4   264 _c0l	=	0x00e4
                           0000E5   265 _c0h	=	0x00e5
                           0000E6   266 _c1l	=	0x00e6
                           0000E7   267 _c1h	=	0x00e7
                           0000E8   268 _adccon0	=	0x00e8
                           0000E9   269 _picon	=	0x00e9
                           0000EA   270 _pinen	=	0x00ea
                           0000EB   271 _pipen	=	0x00eb
                           0000EC   272 _pif	=	0x00ec
                           0000ED   273 _c2l	=	0x00ed
                           0000EE   274 _c2h	=	0x00ee
                           0000EF   275 _eip	=	0x00ef
                           0000F0   276 _b	=	0x00f0
                           0000F1   277 _capcon3	=	0x00f1
                           0000F2   278 _capcon4	=	0x00f2
                           0000F3   279 _spcr	=	0x00f3
                           0000F3   280 _spcr2	=	0x00f3
                           0000F4   281 _spsr	=	0x00f4
                           0000F5   282 _spdr	=	0x00f5
                           0000F6   283 _aindids	=	0x00f6
                           0000F7   284 _eiph	=	0x00f7
                           0000F8   285 _scon_1	=	0x00f8
                           0000F9   286 _pdten	=	0x00f9
                           0000FA   287 _pdtcnt	=	0x00fa
                           0000FB   288 _pmen	=	0x00fb
                           0000FC   289 _pmd	=	0x00fc
                           0000FE   290 _eip1	=	0x00fe
                           0000FF   291 _eiph1	=	0x00ff
                                    292 ;--------------------------------------------------------
                                    293 ; special function bits
                                    294 ;--------------------------------------------------------
                                    295 	.area RSEG    (ABS,DATA)
      000000                        296 	.org 0x0000
                                    297 ;--------------------------------------------------------
                                    298 ; overlayable register banks
                                    299 ;--------------------------------------------------------
                                    300 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        301 	.ds 8
                                    302 ;--------------------------------------------------------
                                    303 ; internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area DSEG    (DATA)
                                    306 ;--------------------------------------------------------
                                    307 ; overlayable items in internal ram
                                    308 ;--------------------------------------------------------
                                    309 	.area	OSEG    (OVR,DATA)
                                    310 	.area	OSEG    (OVR,DATA)
                                    311 	.area	OSEG    (OVR,DATA)
      000077                        312 _APROM_write_byte_PARM_2:
      000077                        313 	.ds 1
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
                                    370 ;Allocation info for local variables in function 'APROM_read_byte'
                                    371 ;------------------------------------------------------------
                                    372 ;u16_addr                  Allocated to registers r6 r7 
                                    373 ;rdata                     Allocated to registers r7 
                                    374 ;------------------------------------------------------------
                                    375 ;	./src/N76_Flash.c:11: uint8_t APROM_read_byte(uint16_t u16_addr)
                                    376 ;	-----------------------------------------
                                    377 ;	 function APROM_read_byte
                                    378 ;	-----------------------------------------
      000B67                        379 _APROM_read_byte:
                           000007   380 	ar7 = 0x07
                           000006   381 	ar6 = 0x06
                           000005   382 	ar5 = 0x05
                           000004   383 	ar4 = 0x04
                           000003   384 	ar3 = 0x03
                           000002   385 	ar2 = 0x02
                           000001   386 	ar1 = 0x01
                           000000   387 	ar0 = 0x00
                                    388 ;	./src/N76_Flash.c:14: rdata = *((uint16_t __code *)u16_addr);
      000B67 E4               [12]  389 	clr	a
      000B68 93               [24]  390 	movc	a,@a+dptr
                                    391 ;	./src/N76_Flash.c:15: return rdata;
                                    392 ;	./src/N76_Flash.c:16: }
      000B69 F5 82            [12]  393 	mov	dpl,a
      000B6B 22               [24]  394 	ret
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'APROM_read_2byte'
                                    397 ;------------------------------------------------------------
                                    398 ;u16_addr                  Allocated to registers r6 r7 
                                    399 ;rdata                     Allocated to registers r6 r7 
                                    400 ;------------------------------------------------------------
                                    401 ;	./src/N76_Flash.c:17: uint16_t APROM_read_2byte(uint16_t u16_addr)
                                    402 ;	-----------------------------------------
                                    403 ;	 function APROM_read_2byte
                                    404 ;	-----------------------------------------
      000B6C                        405 _APROM_read_2byte:
                                    406 ;	./src/N76_Flash.c:20: rdata = *((uint16_t __code *)u16_addr);
      000B6C E4               [12]  407 	clr	a
      000B6D 93               [24]  408 	movc	a,@a+dptr
      000B6E FE               [12]  409 	mov	r6,a
      000B6F A3               [24]  410 	inc	dptr
      000B70 E4               [12]  411 	clr	a
      000B71 93               [24]  412 	movc	a,@a+dptr
                                    413 ;	./src/N76_Flash.c:21: return rdata;
                                    414 ;	./src/N76_Flash.c:22: }
      000B72 8E 82            [24]  415 	mov	dpl,r6
      000B74 F5 83            [12]  416 	mov	dph,a
      000B76 22               [24]  417 	ret
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'APROM_write_byte'
                                    420 ;------------------------------------------------------------
                                    421 ;data                      Allocated with name '_APROM_write_byte_PARM_2'
                                    422 ;addr                      Allocated to registers r6 r7 
                                    423 ;------------------------------------------------------------
                                    424 ;	./src/N76_Flash.c:27: void APROM_write_byte(uint16_t addr, uint8_t data)
                                    425 ;	-----------------------------------------
                                    426 ;	 function APROM_write_byte
                                    427 ;	-----------------------------------------
      000B77                        428 _APROM_write_byte:
      000B77 AE 82            [24]  429 	mov	r6,dpl
      000B79 AF 83            [24]  430 	mov	r7,dph
                                    431 ;	./src/N76_Flash.c:30: setbAP(CHPCON, IAPEN); // enable IAP
      000B7B 53 A8 7F         [24]  432 	anl	_ie,#0x7f
      000B7E 75 C7 AA         [24]  433 	mov	_ta,#0xaa
      000B81 75 C7 55         [24]  434 	mov	_ta,#0x55
      000B84 43 9F 01         [24]  435 	orl	_chpcon,#0x01
      000B87 43 A8 80         [24]  436 	orl	_ie,#0x80
                                    437 ;	./src/N76_Flash.c:31: setbAP(IAPUEN, APUEN); // enable IAP updated
      000B8A 53 A8 7F         [24]  438 	anl	_ie,#0x7f
      000B8D 75 C7 AA         [24]  439 	mov	_ta,#0xaa
      000B90 75 C7 55         [24]  440 	mov	_ta,#0x55
      000B93 43 A5 01         [24]  441 	orl	_iapuen,#0x01
      000B96 43 A8 80         [24]  442 	orl	_ie,#0x80
                                    443 ;	./src/N76_Flash.c:32: IAPCN = BYTE_PROGRAM_AP;
      000B99 75 AF 21         [24]  444 	mov	_iapcn,#0x21
                                    445 ;	./src/N76_Flash.c:34: IAPAH = (uint8_t)((addr) >> 8);
      000B9C 8F A7            [24]  446 	mov	_iapah,r7
                                    447 ;	./src/N76_Flash.c:35: IAPAL = (uint8_t)((addr)&0xFF);
      000B9E 8E A6            [24]  448 	mov	_iapal,r6
                                    449 ;	./src/N76_Flash.c:36: IAPFD = data;
      000BA0 85 77 AE         [24]  450 	mov	_iapfd,_APROM_write_byte_PARM_2
                                    451 ;	./src/N76_Flash.c:38: setbAP(IAPTRG, IAPGO); // Trigger_IAP();
      000BA3 53 A8 7F         [24]  452 	anl	_ie,#0x7f
      000BA6 75 C7 AA         [24]  453 	mov	_ta,#0xaa
      000BA9 75 C7 55         [24]  454 	mov	_ta,#0x55
      000BAC 43 A4 01         [24]  455 	orl	_iaptrg,#0x01
      000BAF 43 A8 80         [24]  456 	orl	_ie,#0x80
                                    457 ;	./src/N76_Flash.c:40: clrbAP(IAPUEN, APUEN);
      000BB2 53 A8 7F         [24]  458 	anl	_ie,#0x7f
      000BB5 75 C7 AA         [24]  459 	mov	_ta,#0xaa
      000BB8 75 C7 55         [24]  460 	mov	_ta,#0x55
      000BBB 53 A5 FE         [24]  461 	anl	_iapuen,#0xfe
      000BBE 43 A8 80         [24]  462 	orl	_ie,#0x80
                                    463 ;	./src/N76_Flash.c:41: clrbAP(CHPCON, IAPEN);
      000BC1 53 A8 7F         [24]  464 	anl	_ie,#0x7f
      000BC4 75 C7 AA         [24]  465 	mov	_ta,#0xaa
      000BC7 75 C7 55         [24]  466 	mov	_ta,#0x55
      000BCA 53 9F FE         [24]  467 	anl	_chpcon,#0xfe
      000BCD 43 A8 80         [24]  468 	orl	_ie,#0x80
                                    469 ;	./src/N76_Flash.c:42: }
      000BD0 22               [24]  470 	ret
                                    471 	.area CSEG    (CODE)
                                    472 	.area CONST   (CODE)
                                    473 	.area XINIT   (CODE)
                                    474 	.area CABS    (ABS,CODE)
