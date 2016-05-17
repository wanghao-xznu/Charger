#ifndef _user_bit_h_
#define _user_bit_h_

bit  bit_ad_interrupt @0x20@0:bank 0;
bit	 bit_tcc_interrupt@0x20@1:bank 0;
bit  bit_first_ad	  @0x20@2:bank 0;
bit  bit_need_cmp	  @0x20@3:bank 0;
bit	 bit_need_output  @0x20@4:bank 0;

unsigned long reg_ad_temp_cnt;
unsigned long reg_ad_calculate_cnt_cp;
unsigned long reg_ad_calculate_cnt;
unsigned char reg_ad_average_cnt;

unsigned char reg_time_cnt;
unsigned char reg_time_cnt1;

void	set_all_bit_ram()
{
	bit_ad_interrupt=0;
	bit_tcc_interrupt=0;
	bit_first_ad=0;
	bit_need_cmp=0;
	bit_need_output=0;
	reg_ad_temp_cnt=0;
	reg_ad_calculate_cnt_cp=0;
	reg_ad_calculate_cnt=0;
	reg_ad_average_cnt=0;
}


#endif