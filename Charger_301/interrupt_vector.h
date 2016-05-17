#ifndef __INTERRUPT_VECTOR_H__
#define __INTERRUPT_VECTOR_H__

/* You can remove marks, if you want using any interrupt funcitons.	*/
#include "user_comon_head.h"
extern int timeout;
extern int adc_value;

int second_count = 0;

void timeout_handle(void);

void timeout_handle(void)
{
	//一秒钟进入一次这个处理流程
	if(second_count >= 125)
	{
		second_count = 0;
		timeout++;
		//每秒钟启动一次ADC
		ad_enable();
	}
}

extern int IntVecIdx; //occupied 0x10:rpage 0
void _intcall ALLInt(void) @ int 
{     
  switch(IntVecIdx)
  {
    
    case 0xA://配置成8ms钟进图一次中断
    second_count++;
    timeout_handle();
    RF &=~BIT0;		//清除TCC中断标志
    TCC=6;
    break;

    case 0xD:
    bit_ad_interrupt=1;
    adc_value = ad_read();
    ad_disable();
    RE &=~BIT5;		//清除AD中断标志
    break;
    
    default:
    break;
  } 	
}

/*void _intcall Ext_l(void) @ 0x03:low_int 0
{
 _asm{MOV A,0x2};
}*/

/*void _intcall PortChange_l(void) @ 0x06:low_int 1
{
 _asm{MOV A,0x2};
}*/

void _intcall TCC_l(void) @ 0x09:low_int 2
{
 _asm{MOV A,0x2};
}

void _intcall ADC_l(void) @ 0x0C:low_int 3
{
 _asm{MOV A,0x2};
}

/*void _intcall COM_l(void) @ 0x0F:low_int 4
{
 _asm{MOV A,0x2};
}*/

/*void _intcall PWM1P_l(void) @ 0x12:low_int 5
{
 _asm{MOV A,0x2};
}*/

/*void _intcall PWM2P_l(void) @ 0x15:low_int 6
{
 _asm{MOV A,0x2};
}*/

/*void _intcall PWM1D_l(void) @ 0x18:low_int 7
{
 _asm{MOV A,0x2};
}*/

/*void _intcall PWM2D_l(void) @ 0x1B:low_int 8
{
 _asm{MOV A,0x2};
}
*/

/*void _intcall LVD_l(void) @ 0x21:low_int 9
{
 _asm{MOV A,0x2};
}*/


#endif