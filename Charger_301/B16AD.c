#include "interrupt_vector.h"

#include "user_comon_head.h"



void Charger(void);
void io_init(void);

void IO_H_L(char ch,char status);
void b16ad_init(void);
void charger_an_hour(void);
void charger_half_hour(void);
void charger_half_hour_last(void);
void charger_eight_hours(void);
void charger_floating_an_hour(void);

void pwm2_init(void)//������
{
	PWMCON=0B00000010;
	PRD2=0B11111111;
	DT2= 0B01111111;
	TMRCON=0B10111000;
	//PWM_T_D=0B11001100;
	
}
void pwm2_increase(void)
{
}
void pwm2_devrease(void)
{

}

int adc_value;
unsigned short timeout =0 ;



void main(void)
{
	clear_all_ram();		//clear ram
	system_initial();		//system init
	time_tcc_pro();			//8ms
	io_init(); 				//seems ok
	_asm{eni}  // enable global interrupt by howie
	_asm{wdtc} //watch dog interrupt clear by howie��clear watch dog in while
	b16ad_init();
	ad_init(); 				// adc init by howie.
	//pwm2_init();
	//while(1);
	while(1)
	{
		while(1)
		{
			IOC70|=0B00000010;//setting P71 floating ����4�Ÿ���
			b16ad_init();//�����ʼ����ƽ״̬
			if(adc_value >= ADC_004V)
			{
				Charger();
			}
		}
	}
}


void b16ad_init(void)
{
	//���ó�ʼ��״̬
	//2�ŵ�3�ŵ�4�ŵ�5�ŵ�6
	IO_H_L(2,0);
	IO_H_L(3,0);
	IO_H_L(4,0);//floating
	IO_H_L(5,0);
	IO_H_L(6,1);
	
}




void Charger(void)//Ӧ���и�taskһֱ�ڼ��adcֵ
{
	if(adc_value<=ADC_010V)
	{	//�������0.5Сʱ
		charger_half_hour_last();
	}
	else if(adc_value<=ADC_015V)
	{
		//�������0.5Сʱ
		charger_half_hour();
	}
	else if(adc_value<=ADC_020V)
	{
		//�������1Сʱ
		charger_half_hour();
	}
	else //>= 0.2v
	{
		//�������8Сʱ
		charger_eight_hours();
	}
}


void charger_an_hour(void)
{
	//start timer,��ʼ��ʱ
	
	char exit_this = 0;//����˵��¡���ʺ�ʹ�þֲ�������������Ҫ�޸ģ�ʵ�������
	timeout = 0;//һСʱ����3600��
	while(1)
	{
		if(adc_value < ADC_015V)
		{
			//�˳���ѭ��������charger_half_hour();
			exit_this = 1;
			break;
		}
		if(timeout >= 10)//ʱ�䵽��,һСʱ����3600��
		{
			charger_floating_an_hour();
		}
		//���պ���75%~100%����IO OUTPUT ״̬
		IO_H_L(2,1);
		IO_H_L(3,0);
		IO_H_L(4,0);
		IO_H_L(5,1);
	}
	charger_half_hour();
}

void charger_half_hour(void)
{
	//start timer,��ʼ��ʱ
	
	char exit_this = 0;
	timeout = 0;//��Сʱ����1800��
	while(1)
	{
		if(adc_value < ADC_010V)
		{
			//�˳���ѭ��������charger_half_hour();
			exit_this = 1;
		}
		if(timeout >= 10)//ʱ�䵽��,һСʱ����1800��
		{
			charger_floating_an_hour();
		}
		//���պ���50%~75%����IO OUTPUT ״̬
		IO_H_L(2,1);
		IO_H_L(3,0);
		IO_H_L(4,0);
		IO_H_L(5,1);
	}
	charger_half_hour_last();
}

void charger_half_hour_last(void)
{
	//start timer,��ʼ��ʱ
	
	char exit_this = 0;
	timeout = 0;//��Сʱ����1800��
	while(1)
	{
		if(timeout >= 10)//ʱ�䵽��,һСʱ����1800��
		{
			charger_floating_an_hour();
			break;
		}
		//���պ���С��50%����IO OUTPUT ״̬
		IO_H_L(2,1);
		IO_H_L(3,0);
		IO_H_L(4,0);
		IO_H_L(5,1);
	}
	
}

void charger_eight_hours(void)
{
	//start timer,��ʼ��ʱ
	
	char exit_this = 0;
	timeout = 0;//һСʱ����3600��
	while(1)
	{
		if(adc_value < ADC_020V)
		{
			//�˳���ѭ��������charger_half_hour();
			exit_this = 1;			
			break;
		}
		if(timeout >= 10)//ʱ�䵽��,һСʱ����3600��
		{
			charger_floating_an_hour();
		}
		//���պ�������IO OUTPUT ״̬
		IO_H_L(2,1);
		IO_H_L(3,0);
		IO_H_L(4,0);
		IO_H_L(5,1);
	}
	charger_half_hour();

}

void charger_floating_an_hour(void)
{
	timeout = 0;//һСʱ����3600��
	while(1)
	{
		//���ø���״̬
		if(adc_value>ADC_004V)
		{
			IO_H_L(5,1);
		}
		if(adc_value<=ADC_004V)
		{
			IO_H_L(5,0);
			//����2������
			IOC50|=0B00100000;//setting P55 floating ����2�Ÿ���
		}
		
		if(timeout >=10)
		{
			//�ػ�״̬
			IO_H_L(3,1);
			//�ϵ縴λ
		}
	}
}







void io_init(void)   //IO��ʼ��
{
  //2 P55 3 P70 4  P71  5  P67   6  P51
  
 //P5CR=0x22; //PORT5��Ϊ��� P51 P55
 //PHCR = 0xDD;//�������ã�0ʹ�ܣ�1��ֹ
 
 //P6CR=0x80; //PORT6��Ϊ��� P67
 //PHCR = 0x7F;//�������ã�0ʹ�ܣ�1��ֹ
 
 //P6CR=0x03; //PORT7��Ϊ��� P70  P71
 //PHCR = 0xFC;//�������ã�0ʹ�ܣ�1��ֹ
 
 
    SYS_CON=0B01101111;		//ѡ����Ƶģʽ����
	IOC50=0B00000001;
	PORT5=0B00000000;
	IOC60=0B00000000;
	PORT6=0B00000000;
	IOC70=0B00000000;
	PORT7=0B00000000;

}

//2 P55 3 P70 4  P71  5  P67   6  P51
//��������CH �ֱ�Ϊ2 3 4 5 6 ���� statusΪ����״̬
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