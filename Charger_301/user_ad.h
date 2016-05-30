#ifndef _user_ad_h_
#define _user_ad_h_

/******************define by howie************************/
#define   ADC_004V              5   //根据参考电压设置，参考电压2V
#define   ADC_010V              13   //根据参考电压设置，参考电压2V	
#define   ADC_015V              19   //根据参考电压设置，参考电压2V
#define   ADC_020V              16   //根据参考电压设置，参考电压2V
/******************define by howie************************/

int flag_ad = 0;
extern void io_init(void);

extern void IO_H_L(char ch,char status);

void	ad_init(void);
unsigned short	ad_read(void);
void	ad_enable();
void	ad_enable();
void testcode_3(void);
void testcode_3(void)
{
	if(flag_ad == 1)
	{
		flag_ad = 0;
		IO_H_L(3,1);
		
	}
	else
	{
		flag_ad = 1;
		IO_H_L(3,0);		
	}
}


void	ad_init(void)
{
	AISR=0B00000001;		//enable p50 ad
	ADCON=0B00001000;		//使能AD 非省电模式 by howie
	ADOC=0B00000110;		//参考电压2V
	//RF=0B00000000;			//清除所有中断标志位
	ADRUN=1;                //bit4 ADC开始转换
	IOCE0|=0B00100000;		//允许AD中断
}

 unsigned short ad_read(void)		//AD处理程序
{
	unsigned short result =0;
	//testcode_3();//测试使用，可以注释掉
	result = ADDATA;
	if(result >= ADC_004V)
	{
		IO_H_L(5,1);
	}
	if(result <ADC_004V )
	{
		IO_H_L(5,0);
	}
	return result;
}	

void ad_enable(void)
{
	ADRUN=1; 
}

void ad_disable(void)
{
	//ADCON &=~BIT4;		//使能AD 实际上软件不能disable
}

#endif