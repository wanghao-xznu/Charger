#ifndef _user_tcc_h_
#define _user_tcc_h_



void	time_tcc_pro()
{
	_asm{mov a,@0b00001110
		contw					//tcc ��Ƶ������Ƶ128
		}
		TCC=0;
		RF=RF&0B11111110;		//���TCC�жϱ�־
						//TCC time 32*(1/4)*250*1 = 8ms
		IOCF0|=0B00000001;		//����TCC�ж�
		TCC=6;
}


#endif