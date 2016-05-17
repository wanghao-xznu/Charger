#ifndef _em78p301n_h_
#define _em78p301n_h_

/****************************************************
 *	Header file for the Elan 						*
 *	EM78P301n chip									*
 *	Registers and Bits 				                *
 *	Company: ELAN MICROELECTRONICS (SZ) LTD.		*
 *	Author:	seven								*
 *	Date: 20/04/2015								*
 *	Version: v1.0									*
 ****************************************************/
static unsigned int R0		@0X00:rpage 0; 
static unsigned int TCC     @0x01:rpage 0;
static unsigned int PC      @0x02:rpage 0;
static unsigned int STATUS  @0x03:rpage 0;
static unsigned int R4      @0x04:rpage 0;
static unsigned int PORT5   @0x05:rpage 0;
static unsigned int PORT6   @0x06:rpage 0;
static unsigned int PORT7	@0X07:rpage 0;
static unsigned int R8		@0x08:rpage 0;
static unsigned int AISR    @0x08:rpage 0;
static unsigned int R9		@0x09:rpage 0;
static unsigned int ADCON   @0x09:rpage 0;
static unsigned	int RA		@0x0a:rpage 0;
static unsigned int ADOC	@0x0a:rpage 0;
static unsigned int	RB		@0x0b:rpage	0;
static unsigned int ADDATA	@0X0b:rpage	0;
static unsigned int	RC		@0x0c:rpage	0;
static unsigned int ADDATA1H @0x0c:rpage 0;
static unsigned int RD		@0x0d:rpage	0;
static unsigned int	ADDATA1L @0x0d:rpage 0;
static unsigned int	RE		@0x0e:rpage 0;
static unsigned int ISR     @0x0F:rpage 0;
static unsigned int RF     @0x0F:rpage 0;


static	unsigned int TBHP    @0X05 :rpage 1;
static	unsigned int TBLP    @0X06 :rpage 1;
static	unsigned int PWMCON  @0X07 :rpage 1;
static	unsigned int TMRCON  @0X08 :rpage 1;
static	unsigned int PRD1    @0X09 :rpage 1;
static	unsigned int PRD2    @0X0A :rpage 1;
static	unsigned int DT1     @0X0B :rpage 1;
static	unsigned int DT2     @0X0C :rpage 1;
static	unsigned int PWM_T_D  @0X0D :rpage 1;
static	unsigned int LVD_I_W @0X0E :rpage 1;
static	unsigned int SYS_CON @0X0F :rpage 1;
 
static io unsigned int IOC50 	@0x05:iopage 0;
static io unsigned int IOC60 	@0x06:iopage 0;
static io unsigned int IOC70	@0x07:iopage 0;
static io unsigned int IOC80 	@0x08:iopage 0;
static io unsigned int IOC90 	@0x09:iopage 0;
static io unsigned int IOCA0	@0x0A:iopage 0;
static io unsigned int IOCB0 	@0x0B:iopage 0;	//Push-down Control Register
static io unsigned int IOCC0 	@0x0C:iopage 0;	//Open-drain Control Register
static io unsigned int IOCD0 	@0x0D:iopage 0;	//Push-high Control Register
static io unsigned int IOCE0	@0x0E:iopage 0;	//WDT Control Register
static io unsigned int IOCF0	@0x0F:iopage 0;	//Interrupt Mask Register

static io unsigned int IOC51 	@0x05:iopage 1;
static io unsigned int IOC61 	@0x06:iopage 1;
static io unsigned int IOC71	@0x07:iopage 1;
static io unsigned int IOC81 	@0x08:iopage 1;
static io unsigned int IOCF1 	@0x0F:iopage 1;

 /*	STATUS bits	*/
static bit RST @0x03@7:rpage 0;	//bit for reset type

static bit T   @0x03@4:rpage 0;	//time-out bit
static bit P   @0x03@3:rpage 0;	//power down bit
static bit Z   @0x03@2:rpage 0;	///Zero flag
static bit DC  @0x03@1:rpage 0;	//Auxiliary carry bit
static bit C   @0x03@0:rpage 0;	//carry flag
 
 /*	PORT5 bits	*/
static bit P55 @0x05@5:rpage 0;
static bit P54 @0x05@4:rpage 0;
static bit P53 @0x05@3:rpage 0;
static bit P52 @0x05@2:rpage 0;
static bit P51 @0x05@1:rpage 0;
static bit P50 @0x05@0:rpage 0;

 /*	PORT6 bits	*/
static bit P67 @0x06@7:rpage 0;
static bit P66 @0x06@6:rpage 0;
static bit P65 @0x06@5:rpage 0;
static bit P64 @0x06@4:rpage 0;
static bit P63 @0x06@3:rpage 0;
static bit P62 @0x06@2:rpage 0;
static bit P61 @0x06@1:rpage 0;
static bit P60 @0x06@0:rpage 0;
 /* PORT7 bits	*/
static bit P70 @0x07@0:rpage 0;
static bit P71 @0x07@1:rpage 0;
 /*ADCON BIT */
static bit VREFS @0X09@7:rpage 0;
static bit ADRUN @0X09@4:rpage 0;
static bit ADPD  @0X09@3:rpage 0;
static bit ADIS2  @0X09@2:rpage 0;
static bit ADIS1  @0X09@1:rpage 0;
static bit ADIS0  @0X09@0:rpage 0;
 /* INTR BIT */
static bit ADIF  @0X0E@5:rpage 0;
static bit CMPIF @0X0E@4:rpage 0;
static bit ADWE  @0X0E@3:rpage 0;
static bit CMPWE @0X0E@2:rpage 0;
static bit ICWE  @0X0E@1:rpage 0;
 /* ADOC BIT */
static bit CALI @0x0a@7:rpage 0;
static bit SIGN	@0X0A@6:rpage 0;
  
/*	interrupt static register(RF)	*/
static bit EXIF @0x0F@2:rpage 0;	//External interrupt flag
static bit ICIF @0x0F@1:rpage 0;	//input status changed interrupt flag
static bit TCIF @0x0F@0:rpage 0;	//TCC overflowing interrupt flag 

/*  define BIT0~BIT8*/
#define BIT0 (unsigned int)0B00000001
#define BIT1 (unsigned int)0B00000010
#define BIT2 (unsigned int)0B00000100
#define BIT3 (unsigned int)0B00001000
#define BIT4 (unsigned int)0B00010000
#define BIT5 (unsigned int)0B00100000
#define BIT6 (unsigned int)0B01000000
#define BIT7 (unsigned int)0B10000000

#endif
