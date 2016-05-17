#ifndef _user_ad_h_
#define _user_ad_h_

void	ad_init(void);
unsigned int	ad_read(void);
void	ad_enable();
void	ad_enable();


void	ad_init(void)
{
	AISR=0B00000100;		//enable p52 ad
	ADCON=0B00001000;		//使能AD
	ADOC=0B00000110;		//参考电压2V
	RE=0B10001000;			//禁止低电压功能，使能AD唤醒
	RF=0B00000000;			//清除所有中断标志位
	ADRUN=1;
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
	ADCON |=BIT3;		//使能AD
}

void ad_disable(void)
{
	ADCON &=~BIT3;		//使能AD
}

#endif