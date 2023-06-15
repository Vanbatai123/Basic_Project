/*--------------------------------------------------------------------------
N76E003.H
// it for SDCC
Header file for Nuvoton N76E003
--------------------------------------------------------------------------*/

#ifndef F_CPU
#define F_CPU 				16000000UL
#endif

# define SBIT(name, addr, bit)  __sbit  __at(addr+bit)             name
# define SFR(name, addr)        __sfr   __at(addr)                 name
# define SFR16(name, addr)      __sfr16 __at(((addr+1)<<8) | addr) name
# define SFR16E(name, fulladdr) __sfr16 __at(fulladdr)             name
# define SFR32(name, addr)      __sfr32 __at(((addr+3)<<24) | ((addr+2)<<16) | ((addr+1)<<8) | addr) name
# define SFR32E(name, fulladdr) __sfr32 __at(fulladdr)             name

#define ISR(a,b) void a(void) __interrupt(b)
//-----------------------------------------------------------------------------
// Interrupt Priorities
//-----------------------------------------------------------------------------

#define INTERRUPT_INT0          0   // External Interrupt 0
#define INTERRUPT_TIMER0        1   // Timer0 Overflow
#define INTERRUPT_INT1          2   // External Interrupt 1
#define INTERRUPT_TIMER1        3   // Timer1 Overflow
#define INTERRUPT_UART0         4   // Serial Port 0
#define INTERRUPT_TIMER2        5   // Timer2 Overflow
#define INTERRUPT_I2C           6   // I2C status/timer-out interrupt
#define INTERRUPT_PIN           7   // Pin interrupt
#define INTERRUPT_BROWOUT       8   // Brown-out detection interrupt
#define INTERRUPT_SPI           9   // SPI interrupt
#define INTERRUPT_WDT           10  // WDT interrupt
#define INTERRUPT_ADC           11  // ADC interrupt
#define INTERRUPT_INPUTCAP      12  // Input capture interrupt
#define INTERRUPT_PWM           13  // PWM interrupt
#define INTERRUPT_FAULTBREAK    14  // Fault Brake interrupt
#define INTERRUPT_UART1         15  // Serial port 1 interrupt
#define INTERRUPT_TIMER3        16  // Timer 3 overflow
#define INTERRUPT_WAKEUP        17  // Self Wake-up Timer interrupt


#define	P0		    p0
#define	SP		    sp
#define	DPL		    dpl
#define	DPH		    dph
#define	RCTRIM0		rctrim0
#define	RCTRIM1		rctrim1
#define	RWK		    rwk
#define	PCON		pcon
		
#define	TCON		tcon
#define	TMOD		tmod
#define	TL0		    tl0
#define	TL1		    tl1
#define	TH0		    th0
#define	TH1		    th1
#define	CKCON		ckcon
#define	WKCON		wkcon
		
#define	P1		    p1
#define	SFRS		sfrs
#define	CAPCON0		capcon0
#define	CAPCON1		capcon1
#define	CAPCON2		capcon2
#define	CKDIV		ckdiv
#define	CKSWT		ckswt
#define	CKEN		cken
		
#define	SCON		scon
#define	SBUF		sbuf
#define	SBUF_1		sbuf_1
#define	EIE		    eie
#define	EIE1		eie1
#define	CHPCON		chpcon
		
#define	P2		    p2
#define	AUXR1		auxr1
#define	BODCON0		bodcon0
#define	IAPTRG		iaptrg
#define	IAPUEN		iapuen
#define	IAPAL		iapal
#define	IAPAH		iapah
		
#define	IE		    ie
#define	SADDR		saddr
#define	WDCON		wdcon
#define	BODCON1		bodcon1
#define	P3M1		p3m1
#define	P3S		    p3s
#define	P3M2		p3m2
#define	P3SR		p3sr
#define	IAPFD		iapfd
#define	IAPCN		iapcn
		
#define	P3		    p3
#define	P0M1		p0m1
#define	P0S		    p0s
#define	P0M2		p0m2
#define	P0SR		p0sr
#define	P1M1		p1m1
#define	P1S		    p1s
#define	P1M2		p1m2
#define	P1SR		p1sr
#define	P2S		    p2s
#define	IPH		    iph
#define	PWMINTC		pwmintc
	
#define	IP		    ip
#define	SADEN		saden
#define	SADEN_1		saden_1
#define	SADDR_1		saddr_1
#define	I2DAT		i2dat
#define	I2STAT		i2stat
#define	I2CLK		i2clk
#define	I2TOC		i2toc
	
#define	I2CON		i2con
#define	I2ADDR		i2addr
#define	ADCRL		adcrl
#define	ADCRH		adcrh
#define	T3CON		t3con
#define	PWM4H		pwm4h
#define	RL3		    rl3
#define	PWM5H		pwm5h
#define	RH3		    rh3
#define	PIOCON1		piocon1
#define	TA		    ta
		
#define	T2CON		t2con
#define	T2MOD		t2mod
#define	RCMP2L		rcmp2l
#define	RCMP2H		rcmp2h
#define	TL2		    tl2
#define	PWM4L		pwm4l
#define	TH2		    th2
#define	PWM5L		pwm5l
#define	ADCMPL		adcmpl
#define	ADCMPH		adcmph
		
#define	PSW		    psw
#define	PWMPH		pwmph
#define	PWM0H		pwm0h
#define	PWM1H		pwm1h
#define	PWM2H		pwm2h
#define	PWM3H		pwm3h
#define	PNP		    pnp
#define	FBD		    fbd
		
#define	PWMCON0		pwmcon0
#define	PWMPL		pwmpl
#define	PWM0L		pwm0l
#define	PWM1L		pwm1l
#define	PWM2L		pwm2l
#define	PWM3L		pwm3l
#define	PIOCON0		piocon0
#define	PWMCON1		pwmcon1
	
#define	ACC		    acc
#define	ADCCON1		adccon1
#define	ADCCON2		adccon2
#define	ADCDLY		adcdly
#define	C0L		    c0l
#define	C0H		    c0h
#define	C1L		    c1l
#define	C1H		    c1h

#define	ADCCON0		adccon0
#define	PICON		picon
#define	PINEN		pinen
#define	PIPEN		pipen
#define	PIF		    pif
#define	C2L		    c2l
#define	C2H		    c2h
#define	EIP		    eip

#define	B		    b
#define	CAPCON3		capcon3
#define	CAPCON4		capcon4
#define	SPCR		spcr
#define	SPCR2		spcr2
#define	SPSR		spsr
#define	SPDR		spdr
#define	AINDIDS		aindids
#define	EIPH		eiph
	
#define	SCON_1		scon_1
#define	PDTEN		pdten
#define	PDTCNT		pdtcnt
#define	PMEN		pmen
#define	PMD		    pmd
#define	EIP1		eip1
#define	EIPH1		eiph1


// config byte
#define CONFIG0     0x00
#define CONFIG1     0x01
#define CONFIG2     0x02
#define CONFIG4     0x04

/*  BIT Registers  */

//**** SCON	98H *****
#define SM0_FE  7
#define SM1     6
#define SM2     5
#define REN     4
#define TB8     3
#define RB8     2
#define TI      1
#define RI      0

//**** PCON	87H *****
#define SMOD    7
#define SMOD0   6
#define POF     4
#define GF1     3
#define GF0     2
#define PD      1
#define IDL    	0

//**** CKCON	8EH ****
#define PWMCKS  6
#define T1M     4
#define T0M     3
#define CLOEN   1
          
//**** IAPTRG	A4H ****  
#define IAPGO   0

//**** IAPUEN	5AH ****  
#define CFUEN   2 
#define LDUEN   1 
#define APUEN   0


/*  T3CON */
#define SM0D_1  7
#define SMOD0_1 6
#define BRCK    5
#define TF3     4
#define TR3     3
#define T3PS2   2
#define T3PS1   1
#define T3PS0   0

/*  SCON_1  */
#define SM0_FE_1  7
#define SM1_1     6
#define SM2_1     5
#define REN_1     4
#define TB8_1     3
#define RB8_1     2
#define TI_1      1
#define RI_1      0

/*  CHPCON 9FH  */
#define SWRST     7
#define IAPFF     6
#define BS        1
#define IAPEN     0

//  IE  
#define EA         7
#define EADC       6
#define EBOD       5
#define ES         4
#define ET1        3
#define EX1        2
#define ET0        1
#define EX0        0

//  TCON  
#define TF1		    7
#define TR1		    6
#define TF0			5
#define TR0			4
#define IE1			3
#define IT1			2
#define IE0			1
#define IT0			0

//  I2CON  
#define I2CEN       6
#define STA         5
#define STO         4
#define SI          3
#define AA          2
#define I2CPX	    0

//  SPCR  
#define SSOE		7
#define SPIEN		6
#define LSBFE		5
#define MSTR		4
#define CPOL		3
#define CPHA		2
#define SPR1		1
#define SPR0		0

//  SPCR2  
#define SPIS1		1
#define SPIS0		0

//  SPSR  
#define SPIF		7
#define WCOL		6
#define SPIOVF		5
#define MODF		4
#define DISMODF		3
#define TXBUF		2

// PICON – Pin Interrupt Control
#define	PIT67       7
#define	PIT45       6
#define	PIT3        5
#define	PIT2        4
#define	PIT1        3
#define	PIT0        2
#define	PIPS1       1
#define	PIPS0       0

// PINEN – Pin Interrupt Negative Polarity Enable
#define	PINEN0	    0
#define	PINEN1	    1
#define	PINEN2	    2
#define	PINEN3	    3
#define	PINEN4	    4
#define	PINEN5	    5
#define	PINEN6	    6
#define	PINEN7	    7

// PIPEN – Pin Interrupt Positive Polarity Enable.

#define	PIPEN0	    0
#define	PIPEN1	    1
#define	PIPEN2	    2
#define	PIPEN3	    3
#define	PIPEN4	    4
#define	PIPEN5	    5
#define	PIPEN6	    6
#define	PIPEN7	    7

//  PIF – Pin Interrupt Flags  
#define	PIF0	    0
#define	PIF1	    1
#define	PIF2	    2
#define	PIF3	    3
#define	PIF4	    4
#define	PIF5	    5
#define	PIF6	    6
#define	PIF7	    7


////////////////////////////////////////////////

__sfr   __at(0x80)	p0;
__sfr   __at(0x81)	sp;
__sfr   __at(0x82)	dpl;
__sfr   __at(0x83)	dph;
__sfr   __at(0x84)	rctrim0;
__sfr   __at(0x85)	rctrim1;
__sfr   __at(0x86)	rwk;
__sfr   __at(0x87)	pcon;

__sfr   __at(0x88)	tcon;
__sfr   __at(0x89)	tmod;
__sfr   __at(0x8A)	tl0;
__sfr   __at(0x8B)	tl1;
__sfr   __at(0x8C)	th0;
__sfr   __at(0x8D)	th1;
__sfr   __at(0x8E)	ckcon;
__sfr   __at(0x8F)	wkcon;

__sfr   __at(0x90)	p1;
__sfr   __at(0x91)	sfrs; // TA Protection
__sfr   __at(0x92)	capcon0;
__sfr   __at(0x93)	capcon1;
__sfr   __at(0x94)	capcon2;
__sfr   __at(0x95)	ckdiv;
__sfr   __at(0x96)	ckswt; // TA Protection
__sfr   __at(0x97)	cken; // TA Protection

__sfr   __at(0x98)	scon;
__sfr   __at(0x99)	sbuf;
__sfr   __at(0x9A)	sbuf_1;
__sfr   __at(0x9B)	eie;
__sfr   __at(0x9C)	eie1;
__sfr   __at(0x9F)	chpcon; // TA Protection

__sfr   __at(0xA0)	p2;
__sfr   __at(0xA2)	auxr1;
__sfr   __at(0xA3)	bodcon0; // TA Protection
__sfr   __at(0xA4)	iaptrg; // TA Protection
__sfr   __at(0xA5)	iapuen; // TA Protection
__sfr   __at(0xA6)	iapal;
__sfr   __at(0xA7)	iapah;

__sfr   __at(0xA8)	ie;
__sfr   __at(0xA9)	saddr;
__sfr   __at(0xAA)	wdcon; // TA Protection
__sfr   __at(0xAB)	bodcon1; // TA Protection
__sfr   __at(0xAC)	p3m1;
__sfr   __at(0xAC)	p3s; // Page1
__sfr   __at(0xAD)	p3m2;
__sfr   __at(0xAD)	p3sr; // Page1
__sfr   __at(0xAE)	iapfd;
__sfr   __at(0xAF)	iapcn;

__sfr   __at(0xB0)	p3;
__sfr   __at(0xB1)	p0m1;
__sfr   __at(0xB1)	p0s; // Page1
__sfr   __at(0xB2)	p0m2;
__sfr   __at(0xB2)	p0sr; // Page1
__sfr   __at(0xB3)	p1m1;
__sfr   __at(0xB3)	p1s; // Page1
__sfr   __at(0xB4)	p1m2;
__sfr   __at(0xB4)	p1sr; // Page1
__sfr   __at(0xB5)	p2s;
__sfr   __at(0xB7)	iph;
__sfr   __at(0xB7)	pwmintc; // Page1

__sfr   __at(0xB8)	ip;
__sfr   __at(0xB9)	saden;
__sfr   __at(0xBA)	saden_1;
__sfr   __at(0xBB)	saddr_1;
__sfr   __at(0xBC)	i2dat;
__sfr   __at(0xBD)	i2stat;
__sfr   __at(0xBE)	i2clk;
__sfr   __at(0xBF)	i2toc;

__sfr   __at(0xC0)	i2con;
__sfr   __at(0xC1)	i2addr;
__sfr   __at(0xC2)	adcrl;
__sfr   __at(0xC3)	adcrh;
__sfr   __at(0xC4)	t3con;
__sfr   __at(0xC4)	pwm4h; // Page1
__sfr   __at(0xC5)	rl3;
__sfr   __at(0xC5)	pwm5h; // Page1
__sfr   __at(0xC6)	rh3;
__sfr   __at(0xC6)	piocon1; // Page1
__sfr   __at(0xC7)	ta;

__sfr   __at(0xC8)	t2con;
__sfr   __at(0xC9)	t2mod;
__sfr   __at(0xCA)	rcmp2l;
__sfr   __at(0xCB)	rcmp2h;
__sfr   __at(0xCC)	tl2;
__sfr   __at(0xCC)	pwm4l; // Page1
__sfr   __at(0xCD)	th2;
__sfr   __at(0xCD)	pwm5l; // Page1
__sfr   __at(0xCE)	adcmpl;
__sfr   __at(0xCF)	adcmph;

__sfr   __at(0xD0)	psw;
__sfr   __at(0xD1)	pwmph;
__sfr   __at(0xD2)	pwm0h;
__sfr   __at(0xD3)	pwm1h;
__sfr   __at(0xD4)	pwm2h;
__sfr   __at(0xD5)	pwm3h;
__sfr   __at(0xD6)	pnp;
__sfr   __at(0xD7)	fbd;

__sfr   __at(0xD8)	pwmcon0;
__sfr   __at(0xD9)	pwmpl;
__sfr   __at(0xDA)	pwm0l;
__sfr   __at(0xDB)	pwm1l;
__sfr   __at(0xDC)	pwm2l;
__sfr   __at(0xDD)	pwm3l;
__sfr   __at(0xDE)	piocon0;
__sfr   __at(0xDF)	pwmcon1;

__sfr   __at(0xE0)	acc;
__sfr   __at(0xE1)	adccon1;
__sfr   __at(0xE2)	adccon2;
__sfr   __at(0xE3)	adcdly;
__sfr   __at(0xE4)	c0l;
__sfr   __at(0xE5)	c0h;
__sfr   __at(0xE6)	c1l;
__sfr   __at(0xE7)	c1h;
	
__sfr   __at(0xE8)	adccon0;
__sfr   __at(0xE9)	picon;
__sfr   __at(0xEA)	pinen;
__sfr   __at(0xEB)	pipen;
__sfr   __at(0xEC)	pif;
__sfr   __at(0xED)	c2l;
__sfr   __at(0xEE)	c2h;
__sfr   __at(0xEF)	eip;

__sfr   __at(0xF0)	b;
__sfr   __at(0xF1)	capcon3;
__sfr   __at(0xF2)	capcon4;
__sfr   __at(0xF3)	spcr;
__sfr   __at(0xF3)	spcr2; // Page1
__sfr   __at(0xF4)	spsr;
__sfr   __at(0xF5)	spdr;
__sfr   __at(0xF6)	aindids;
__sfr   __at(0xF7)	eiph;

__sfr   __at(0xF8)	scon_1;
__sfr   __at(0xF9)	pdten; // TA Protection
__sfr   __at(0xFA)	pdtcnt; // TA Protection
__sfr   __at(0xFB)	pmen;
__sfr   __at(0xFC)	pmd;
__sfr   __at(0xFE)	eip1;
__sfr   __at(0xFF)	eiph1;


/*  ADCCON0  */
/*sbit ADCF       , ADCCON0^7);
sbit ADCS       , ADCCON0^6);
sbit ETGSEL1    , ADCCON0^5);
sbit ETGSEL0    , ADCCON0^4);
sbit ADCHS3     , ADCCON0^3);
sbit ADCHS2     , ADCCON0^2);
sbit ADCHS1     , ADCCON0^1);
sbit ADCHS0     , ADCCON0^0);

//  PWMCON0  
sbit PWMRUN     , PWMCON0^7);
sbit LOAD       , PWMCON0^6);
sbit PWMF       , PWMCON0^5);
sbit CLRPWM     , PWMCON0^4);


//  PSW 
sbit CY         , PSW^7);
sbit AC         , PSW^6);
sbit F0         , PSW^5);
sbit RS1        , PSW^4);
sbit RS0        , PSW^3);
sbit OV         , PSW^2);
sbit P          , PSW^0);

//  T2CON  
sbit TF2        , T2CON^7);
sbit TR2        , T2CON^2);
sbit CM_RL2     , T2CON^0);
 

//  IP  
sbit PADC       , IP^6);
sbit PBOD       , IP^5);
sbit PS         , IP^4);
sbit PT1        , IP^3);
sbit PX1        , IP^2);
sbit PT0        , IP^1);
sbit PX0        , IP^0);

//  P3   
sbit P30		, P3^0);



//  P2   
sbit P20        , P2^0);

//  P1       
sbit P17	, P1^7);
sbit P16	, P1^6);
sbit TXD_1	, P1^6); 
sbit P15	, P1^5);
sbit P14	, P1^4);
sbit SDA	, P1^4);    
sbit P13	, P1^3);
sbit SCL	, P1^3);  
sbit P12        , P1^2); 
sbit P11        , P1^1);
sbit P10        , P1^0);

//  P0    

sbit P07				, P0^7);
sbit RXD				, P0^7);
sbit P06				, P0^6);
sbit TXD				, P0^6);
sbit P05				, P0^5);
sbit P04				, P0^4);
sbit STADC				, P0^4);
sbit P03				, P0^3);
sbit P02				, P0^2);
sbit RXD_1				, P0^2);
sbit P01				, P0^1);
sbit MISO				, P0^1);
sbit P00				, P0^0);
sbit MOSI				, P0^0);
*/