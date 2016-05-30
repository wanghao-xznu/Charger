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

void pwm2_init(void)//第六脚
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
	_asm{wdtc} //watch dog interrupt clear by howie，clear watch dog in while
	b16ad_init();
	ad_init(); 				// adc init by howie.
	//pwm2_init();
	//while(1);
	while(1)
	{
		while(1)
		{
			IOC70|=0B00000010;//setting P71 floating 设置4脚浮空
			b16ad_init();//输出初始化电平状态
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
	IO_H_L(4,0);//floating
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
	else //>= 0.2v
	{
		//恒流充电8小时
		charger_eight_hours();
	}
}


void charger_an_hour(void)
{
	//start timer,开始计时
	
	char exit_this = 0;//网上说义隆不适合使用局部变量，可能需要修改，实际情况定
	timeout = 0;//一小时等于3600秒
	while(1)
	{
		if(adc_value < ADC_015V)
		{
			//退出此循环，调用charger_half_hour();
			exit_this = 1;
			break;
		}
		if(timeout >= 10)//时间到了,一小时等于3600秒
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
		if(timeout >= 10)//时间到了,一小时等于1800秒
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
		if(timeout >= 10)//时间到了,一小时等于1800秒
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
			break;
		}
		if(timeout >= 10)//时间到了,一小时等于3600秒
		{
			charger_floating_an_hour();
		}
		//按照恒流设置IO OUTPUT 状态
		IO_H_L(2,1);
		IO_H_L(3,0);
		IO_H_L(4,0);
		IO_H_L(5,1);
	}
	charger_half_hour();

}

void charger_floating_an_hour(void)
{
	timeout = 0;//一小时等于3600秒
	while(1)
	{
		//设置浮充状态
		if(adc_value>ADC_004V)
		{
			IO_H_L(5,1);
		}
		if(adc_value<=ADC_004V)
		{
			IO_H_L(5,0);
			//设置2脚悬空
			IOC50|=0B00100000;//setting P55 floating 设置2脚浮空
		}
		
		if(timeout >=10)
		{
			//关机状态
			IO_H_L(3,1);
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