#ifndef _user_ad_h_
#define _user_ad_h_

void	ad_init(void);
unsigned int	ad_read(void);
void	ad_enable();
void	ad_enable();


void	ad_init(void)
{
	AISR=0B00000100;		//enable p52 ad
	ADCON=0B00001000;		//ʹ��AD ��ʡ��ģʽ by howie
	ADOC=0B00000110;		//�ο���ѹ2V
	RE=0B10001000;			//bit7��ֹ�͵�ѹ���ܣ�ʹ��AD����
	RF=0B00000000;			//��������жϱ�־λ
	ADRUN=1;                //bit4 ADC��ʼת��
	IOCE0|=0B00100000;		//����AD�ж�
}

unsigned int ad_read(void)		//AD�������
{
	unsigned int result =0;
	result = ADDATA1H<<8;
	result = result + ADDATA1L;
	return result;
}	

void ad_enable(void)
{
	ADCON |=BIT4;		//ʹ��AD
}

void ad_disable(void)
{
	//ADCON &=~BIT4;		//ʹ��AD ʵ�����������disable
}

#endif