#ifndef _user_tcc_h_
#define _user_tcc_h_



void	time_tcc_pro()
{
	_asm{mov a,@0b00001110
		contw					//tcc 分频器，分频128
		}
		TCC=0;
		RF=RF&0B11111110;		//清除TCC中断标志
						//TCC time 32*(1/4)*250*1 = 8ms
		IOCF0|=0B00000001;		//允许TCC中断
		TCC=6;
}


#endif