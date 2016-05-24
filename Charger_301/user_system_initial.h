#ifndef _system_initial_h_
#define _system_initial_h_

void	system_initial()
{
	SYS_CON=0B01101111;		//ѡ����Ƶģʽ����  clock = 4MHz
	IOC50=0B00000001;
	PORT5=0B00000000;
	IOC60=0B00000000;
	PORT6=0B00000000;
	IOC70=0B00000000;
	PORT7=0B00000000;
}

//********************************************************
//*******************��RAM�ӳ���**************************
//********************************************************
void clear_all_ram()
{
	_asm
		{
			MOV   	A,@0X10
     		MOV   	RSR,A
	S_CLRLOOP: 	   
     		CLR   	R0   
     		INC   	RSR
     		JBC   	RSR,6
     		BS    	RSR,5 
     		MOV		A,RSR
     		AND    	A,@0X7F
     		JBS		STATUS,2        
     		JMP   	S_CLRLOOP      
		}
}

#endif