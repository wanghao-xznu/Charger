#ifndef _system_initial_h_
#define _system_initial_h_

void	system_initial()
{
	SYS_CON=0B01101111;		//选择主频模式运行  clock = 4MHz
	IOC50=0B00000001;
	PORT5=0B00000000;
	IOC60=0B00000000;
	PORT6=0B00000000;
	IOC70=0B00000000;
	PORT7=0B00000000;
}

#endif