#ifndef _user_outpit_h_
#define _user_output_h_

extern	unsigned char	reg_time_cnt;
extern	unsigned char	reg_time_cnt1;

void	out_put_pro()
{
	if(bit_need_output==1)
	{
		P71=1;
		if(++reg_time_cnt>=50)
		{
			reg_time_cnt=0;
			if(++reg_time_cnt1>=25)
			{
				reg_time_cnt1=0;
				bit_need_output=0;
			}
		}
	}
	else
	{
		P71=0;
	}
}

#endif