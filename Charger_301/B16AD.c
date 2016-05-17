#include "interrupt_vector.h"

#include "user_comon_head.h"



#define sei()  _asm{eni}
#define cli()  _asm{disi}
#define wdtc() _asm{wdtc}
#define nop()  _asm{nop}

#define TRUE    1
#define FALSE   0
#define ENABLE  1
#define DISABLE 0
#define ON      1
#define OFF     0

/*****************************************************
*             TCCC CONTROL REGISTER                  *
*****************************************************/
#define   TCCC_ENABLE              0X04
#define   TCCC_DISABLE             0X00
#define   TCCC_SRC_INT             0X00
#define   TCCC_SRC_EXT             0X02
#define   TCCC_EDGE_RISE           0X00
#define   TCCC_EDGE_FALL           0X01
/****************************************************/
#define   TCCC_1_1                 0X00          /*   TCCC PRESCALE 1:1 (DEFAULT)       */      
#define   TCCC_1_2                 0X80          /*   TCCC PRESCALE 1:2                 */
#define   TCCC_1_4                 0X90          /*   TCCC PRESCALE 1:4                 */
#define   TCCC_1_8                 0XA0          /*   TCCC PRESCALE 1:8                 */
#define   TCCC_1_16                0XB0          /*   TCCC PRESCALE 1:16                */
#define   TCCC_1_32                0XC0          /*   TCCC PRESCALE 1:32                */
#define   TCCC_1_64                0XD0          /*   TCCC PRESCALE 1:64                */
#define   TCCC_1_128               0XE0          /*   TCCC PRESCALE 1:128               */
#define   TCCC_1_256               0XF0          /*   TCCC PRESCALE 1:256               */
/****************************************************/

/*   1/FOSC*SCALE*(256 – IOC81)*1(CLK=2)    
     1/FOSC*SCALE*(256 – IOC81)*2(CLK=4)   */


/*****************************************************
*             TCCB CONTROL REGISTER                  *
*****************************************************/
#define   TCCB_16BIT               0X80
#define   TCCB_8BIT                0X00
#define   TCCB_ENABLE              0X40
#define   TCCB_DISABLE             0X00
#define   TCCB_SRC_INT             0X00
#define   TCCB_SRC_EXT             0X20
#define   TCCB_EDGE_RISE           0X00
#define   TCCB_EDGE_FALL           0X10
/****************************************************/

/******************define by howie************************/
#define   ADC_004V              164   //根据参考电压设置，参考电压1V
#define   ADC_010V              409   //根据参考电压设置，参考电压1V	
#define   ADC_015V              614   //根据参考电压设置，参考电压1V
#define   ADC_020V              818   //根据参考电压设置，参考电压1V
/******************define by howie************************/

void Charger(void);
void io_init(void);

void IO_H_L(char ch,char status);
void b16ad_init(void);
void charger_an_hour(void);
void charger_half_hour(void);
void charger_half_hour_last(void);
void charger_eight_hours(void);
void charger_floating_an_hour(void);

int adc_value;
int timeout =0 ;



void main(void)
{
	system_initial();		//系统初始化
	time_tcc_pro();			//64ms
	set_all_bit_ram();
	io_init();
	while(1)
	{
		_asm{eni}
		_asm{wdtc}
		while(1)
		{
			b16ad_init();
			if(adc_value >= ADC_004V)
			{
				Charger();
			}
		}
	}
}


void b16ad_init(void)
{
	//设置初始化状态
	//2脚低3脚低4脚低5脚低6
	IO_H_L(2,0);
	IO_H_L(3,0);
	IO_H_L(4,0);
	IO_H_L(5,0);
	IO_H_L(6,1);
	
}




void Charger(void)//应该有个task一直在检测adc值
{
	if(adc_value<=ADC_010V)
	{	//恒流充电0.5小时
		charger_half_hour_last();
	}
	else if(adc_value<=ADC_015V)
	{
		//恒流充电0.5小时
		charger_half_hour();
	}
	else if(adc_value<=ADC_020V)
	{
		//恒流充电1小时
		charger_half_hour();
	}
	else //= 0.2v
	{
		//恒流充电8小时
		charger_eight_hours();
	}
}


void charger_an_hour(void)
{
	//start timer,开始计时
	
	char exit_this = 0;
	timeout = 0;//一小时等于3600秒
	while(1)
	{
		if(adc_value < ADC_015V)
		{
			//退出此循环，调用charger_half_hour();
			exit_this = 1;
			break;
		}
		if(timeout == 3600)//时间到了,一小时等于3600秒
		{
			charger_floating_an_hour();
		}
		//按照恒流75%~100%设置IO OUTPUT 状态
		IO_H_L(2,1);
		IO_H_L(3,0);
		IO_H_L(4,0);
		IO_H_L(5,1);
	}
	charger_half_hour();
}

void charger_half_hour(void)
{
	//start timer,开始计时
	
	char exit_this = 0;
	timeout = 0;//半小时等于1800秒
	while(1)
	{
		if(adc_value < ADC_010V)
		{
			//退出此循环，调用charger_half_hour();
			exit_this = 1;
		}
		if(timeout == 1800)//时间到了,一小时等于1800秒
		{
			charger_floating_an_hour();
		}
		//按照恒流50%~75%设置IO OUTPUT 状态
		IO_H_L(2,1);
		IO_H_L(3,0);
		IO_H_L(4,0);
		IO_H_L(5,1);
	}
	charger_half_hour_last();
}

void charger_half_hour_last(void)
{
	//start timer,开始计时
	
	char exit_this = 0;
	timeout = 0;//半小时等于1800秒
	while(1)
	{
		if(timeout == 1800)//时间到了,一小时等于1800秒
		{
			charger_floating_an_hour();
			break;
		}
		//按照恒流小于50%设置IO OUTPUT 状态
		IO_H_L(2,1);
		IO_H_L(3,0);
		IO_H_L(4,0);
		IO_H_L(5,1);
	}
	
}

void charger_eight_hours(void)
{
	//start timer,开始计时
	
	char exit_this = 0;
	timeout = 0;//一小时等于3600秒
	while(1)
	{
		if(adc_value < ADC_020V)
		{
			//退出此循环，调用charger_half_hour();
			exit_this = 1;
			charger_half_hour();
			break;
		}
		if(timeout == 3600*8)//时间到了,一小时等于3600秒
		{
			charger_floating_an_hour();
		}
		//按照恒流设置IO OUTPUT 状态
		IO_H_L(2,1);
		IO_H_L(3,0);
		IO_H_L(4,0);
		IO_H_L(5,1);
	}

}

void charger_floating_an_hour(void)
{
	timeout = 0;//一小时等于3600秒
	while(1);
	{
		//设置浮充状态
		if(adc_value>ADC_004V)
		{
			IO_H_L(5,1);
		}
		if(adc_value<=ADC_004V)
		{
			IO_H_L(5,0);
		}
		
		if(timeout >=3600)
		{
			//关机状态
			IO_H_L(3,0);
			//断电复位
		}
	}
}







void io_init(void)   //IO初始化
{
  //2 P55 3 P70 4  P71  5  P67   6  P51
  
 //P5CR=0x22; //PORT5设为输出 P51 P55
 //PHCR = 0xDD;//上拉设置，0使能，1禁止
 
 //P6CR=0x80; //PORT6设为输出 P67
 //PHCR = 0x7F;//上拉设置，0使能，1禁止
 
 //P6CR=0x03; //PORT7设为输出 P70  P71
 //PHCR = 0xFC;//上拉设置，0使能，1禁止
 
 
    SYS_CON=0B01101111;		//选择主频模式运行
	IOC50=0B00000001;
	PORT5=0B00000000;
	IOC60=0B00000000;
	PORT6=0B00000000;
	IOC70=0B00000000;
	PORT7=0B00000000;

}

//2 P55 3 P70 4  P71  5  P67   6  P51
//函数功能CH 分别为2 3 4 5 6 引脚 status为引脚状态
void IO_H_L(char ch,char status)
{
  
 switch(ch)
   {
    case 2: if(status==1)P55=1;
              else P55=0;
              break;
    
    case 3: if(status==1)P70=1;
              else P70=0;
              break;
    case 4: if(status==1)P71=1;
              else P71=0;
              break; 
              
    case 5: if(status==1)P67=1;
             else P67=0;
             break;  
    case 6: if(status==1)P51=1;
             else P51=0;
             break; 
    default :break;      
                       
   }


}