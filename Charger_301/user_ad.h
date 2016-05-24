#ifndef _user_ad_h_
#define _user_ad_h_

void	ad_init(void);
unsigned int	ad_read(void);
void	ad_enable();
void	ad_enable();


void	ad_init(void)
{
	AISR=0B00000100;		//enable p52 ad
	ADCON=0B00001010;		//使能AD 非省电模式 by howie
	ADOC=0B00000110;		//参考电压2V
	RF=0B00000000;			//清除所有中断标志位
	ADRUN=1;                //bit4 ADC开始转换
	IOCE0|=0B00100000;		//允许AD中断
}

unsigned int ad_read(void)		//AD处理程序
{
	unsigned int result =0;
	result = ADDATA1H<<8;
	result = result + ADDATA1L;
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