.autoimport
EM78P301N EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\B16AD.c",100,0,3,0
.stabs "int:t1=r1;-128;127;",128,0,0,0
.stabs "char:t2=r2;-128;127;",128,0,0,0
.stabs "double:t3=r1;3;0;",128,0,0,0
.stabs "float:t4=r1;3;0;",128,0,0,0
.stabs "long double:t5=r1;3;0;",128,0,0,0
.stabs "long:t6=r1;-2147483648;2147483647;",128,0,0,0
.stabs "long long:t7=r1;-2147483648;2147483647;",128,0,0,0
.stabs "short:t8=r1;-32768;32767;",128,0,0,0
.stabs "signed char:t9=r1;-128;127;",128,0,0,0
.stabs "unsigned char:t10=r1;0;255;",128,0,0,0
.stabs "unsigned long:t11=r1;0;4294967295;",128,0,0,0
.stabs "unsigned long long:t12=r1;0;4294967295;",128,0,0,0
.stabs "unsigned short:t13=r1;0;65535;",128,0,0,0
.stabs "unsigned int:t14=r1;0;255;",128,0,0,0
.stabs "void:t15=15",128,0,0,0
.stabs "bit:t16=r16;0;1;",128,0,0,0
.section ".data"
public _flag_ad
.align 1
_flag_ad:
.SYMDEF "_flag_ad" LEN:1
db 0
.stabs "flag_ad:G1",32,0,0,_flag_ad
public _flag_pwm
.align 1
_flag_pwm:
.SYMDEF "_flag_pwm" LEN:1
db 0x0
.stabs "flag_pwm:G14",32,0,0,_flag_pwm
public _testcode_3
public testcode_3_bp
.section ".code"
.stabs "testcode_3:F15",36,0,0,_testcode_3
.section ".S0",C_CODE
.SYMDEF ".S0" 
_testcode_3:
.SYMDEF "_testcode_3" 
mov a,ecx
mov testcode_3_bp-4,a
mov a,ecx+1
mov testcode_3_bp-3,a
mov a,ecx+2
mov testcode_3_bp-2,a
mov a,ecx+3
mov testcode_3_bp-1,a
.stabn 192,0,0,L4
L4:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\user_ad.h",132,0,0,0
L5:
.stabn 68,0,27,L6
L6:
.stabn 68,0,28,L7
L7:
EQNEPRIB _flag_ad,1
jbs STATUS,zf
EXTJMP @L$2
.stabn 192,0,1,L8
L8:
.stabn 68,0,29,L9
L9:
.stabn 68,0,30,L10
L10:
clr _flag_ad
.stabn 68,0,31,L11
L11:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,33,L12
L12:
.stabn 224,0,1,L13
L13:
jmp @L$3
L$2:
.stabn 192,0,1,L14
L14:
.stabn 68,0,35,L15
L15:
.stabn 68,0,36,L16
L16:
mov a,@1
STA _flag_ad,0,0
.stabn 68,0,37,L17
L17:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,38,L18
L18:
.stabn 224,0,1,L19
L19:
L$3:
.stabn 68,0,39,L20
L20:
.stabn 224,0,0,L21
L21:
L$1:
mov a,testcode_3_bp-4
mov ecx,a
mov a,testcode_3_bp-3
mov ecx+1,a
mov a,testcode_3_bp-2
mov ecx+2,a
mov a,testcode_3_bp-1
mov ecx+3,a
ret
.STACK testcode_3_bp,local,4
public _ad_init
public ad_init_bp
.stabs "ad_init:F15",36,0,0,_ad_init
.section ".S1",C_CODE
.SYMDEF ".S1" 
_ad_init:
.SYMDEF "_ad_init" 
mov a,ecx
mov ad_init_bp-4,a
mov a,ecx+1
mov ad_init_bp-3,a
mov a,ecx+2
mov ad_init_bp-2,a
mov a,ecx+3
mov ad_init_bp-1,a
.stabn 192,0,0,L23
L23:
.stabn 68,0,43,L24
L24:
.stabn 68,0,44,L25
L25:
mov a,@1
STA _AISR,0,0
.stabn 68,0,45,L26
L26:
mov a,@8
STA _ADCON,0,0
.stabn 68,0,46,L27
L27:
mov a,@6
STA _ADOC,0,0
.stabn 68,0,48,L28
L28:
bs _ADRUN,4
.stabn 68,0,49,L29
L29:
LDA _IOCE0,0,2
or a,@32
STA _IOCE0,0,2
.stabn 68,0,50,L30
L30:
.stabn 224,0,0,L31
L31:
L$22:
mov a,ad_init_bp-4
mov ecx,a
mov a,ad_init_bp-3
mov ecx+1,a
mov a,ad_init_bp-2
mov ecx+2,a
mov a,ad_init_bp-1
mov ecx+3,a
ret
.STACK ad_init_bp,local,4
public _ad_read
public ad_read_bp
.stabs "ad_read:F13",36,0,0,_ad_read
.section ".S2",C_CODE
.SYMDEF ".S2" 
_ad_read:
.SYMDEF "_ad_read" 
mov a,ecx
mov ad_read_bp-4,a
mov a,ecx+1
mov ad_read_bp-3,a
mov a,ecx+2
mov ad_read_bp-2,a
mov a,ecx+3
mov ad_read_bp-1,a
.stabs "result:13",128,0,0,ad_read_bp-6
.stabn 192,0,0,L41
L41:
.stabn 68,0,53,L42
L42:
.stabn 68,0,54,L43
L43:
clr ad_read_bp-6+1
clr ad_read_bp-6
.stabn 68,0,56,L44
L44:
LDA _ADDATA,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clr ecx+1
mov a,ecx
STA ad_read_bp-6,0,0
mov a,ecx+1
STA ad_read_bp-6,1,0
.stabn 68,0,57,L45
L45:
ULTRIW ad_read_bp-6,0x6
jbs STATUS, cf
EXTJMP L$33
.stabn 192,0,1,L46
L46:
.stabn 68,0,58,L47
L47:
.stabn 68,0,59,L48
L48:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,60,L49
L49:
.stabn 224,0,1,L50
L50:
L$33:
.stabn 68,0,61,L51
L51:
ULTRIW ad_read_bp-6,0x5
jbc STATUS, cf
EXTJMP L$35
.stabn 192,0,1,L52
L52:
.stabn 68,0,62,L53
L53:
.stabn 68,0,63,L54
L54:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,64,L55
L55:
.stabn 224,0,1,L56
L56:
L$35:
.stabn 68,0,65,L57
L57:
ULTRIW ad_read_bp-6,0x1e
jbs STATUS, cf
EXTJMP L$37
.stabn 192,0,1,L58
L58:
.stabn 68,0,66,L59
L59:
.stabn 68,0,67,L60
L60:
EQNEPRIB _flag_pwm,0
jbs STATUS,zf
EXTJMP @L$39
.stabn 192,0,2,L61
L61:
.stabn 68,0,68,L62
L62:
.stabn 68,0,69,L63
L63:
call _pwm2_init
.stabn 68,0,70,L64
L64:
mov a,@1
STA _flag_pwm,0,0
.stabn 68,0,71,L65
L65:
.stabn 224,0,2,L66
L66:
jmp @L$40
L$39:
.stabn 192,0,2,L67
L67:
.stabn 68,0,73,L68
L68:
.stabn 68,0,74,L69
L69:
call _pwm2_decrease
.stabn 68,0,75,L70
L70:
.stabn 224,0,2,L71
L71:
L$40:
.stabn 68,0,77,L72
L72:
.stabn 224,0,1,L73
L73:
L$37:
.stabn 68,0,78,L74
L74:
LDA ad_read_bp-6,0,0
mov eax,a
LDA ad_read_bp-6,1,0
mov eax+1,a
.stabn 68,0,79,L75
L75:
.stabn 224,0,0,L76
L76:
L$32:
mov a,ad_read_bp-4
mov ecx,a
mov a,ad_read_bp-3
mov ecx+1,a
mov a,ad_read_bp-2
mov ecx+2,a
mov a,ad_read_bp-1
mov ecx+3,a
ret
.STACK ad_read_bp,local,6
public _ad_enable
public ad_enable_bp
.stabs "ad_enable:F15",36,0,0,_ad_enable
.section ".S3",C_CODE
.SYMDEF ".S3" 
_ad_enable:
.SYMDEF "_ad_enable" 
mov a,ecx
mov ad_enable_bp-4,a
mov a,ecx+1
mov ad_enable_bp-3,a
mov a,ecx+2
mov ad_enable_bp-2,a
mov a,ecx+3
mov ad_enable_bp-1,a
.stabn 192,0,0,L78
L78:
.stabn 68,0,82,L79
L79:
.stabn 68,0,83,L80
L80:
bs _ADRUN,4
.stabn 68,0,84,L81
L81:
.stabn 224,0,0,L82
L82:
L$77:
mov a,ad_enable_bp-4
mov ecx,a
mov a,ad_enable_bp-3
mov ecx+1,a
mov a,ad_enable_bp-2
mov ecx+2,a
mov a,ad_enable_bp-1
mov ecx+3,a
ret
.STACK ad_enable_bp,local,4
public _ad_disable
public ad_disable_bp
.stabs "ad_disable:F15",36,0,0,_ad_disable
.section ".S4",C_CODE
.SYMDEF ".S4" 
_ad_disable:
.SYMDEF "_ad_disable" 
mov a,ecx
mov ad_disable_bp-4,a
mov a,ecx+1
mov ad_disable_bp-3,a
mov a,ecx+2
mov ad_disable_bp-2,a
mov a,ecx+3
mov ad_disable_bp-1,a
.stabn 192,0,0,L84
L84:
.stabn 68,0,87,L85
L85:
.stabn 68,0,89,L86
L86:
.stabn 224,0,0,L87
L87:
L$83:
mov a,ad_disable_bp-4
mov ecx,a
mov a,ad_disable_bp-3
mov ecx+1,a
mov a,ad_disable_bp-2
mov ecx+2,a
mov a,ad_disable_bp-1
mov ecx+3,a
ret
.STACK ad_disable_bp,local,4
public _system_initial
public system_initial_bp
.stabs "system_initial:F15",36,0,0,_system_initial
.section ".S5",C_CODE
.SYMDEF ".S5" 
_system_initial:
.SYMDEF "_system_initial" 
mov a,ecx
mov system_initial_bp-4,a
mov a,ecx+1
mov system_initial_bp-3,a
mov a,ecx+2
mov system_initial_bp-2,a
mov a,ecx+3
mov system_initial_bp-1,a
.stabn 192,0,0,L89
L89:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h",132,0,0,0
L90:
.stabn 68,0,5,L91
L91:
.stabn 68,0,6,L92
L92:
mov a,@111
STA _SYS_CON,0,0
.stabn 68,0,7,L93
L93:
mov a,@1
STA _IOC50,0,2
.stabn 68,0,8,L94
L94:
clr _PORT5
.stabn 68,0,9,L95
L95:
mov a,@0
STA _IOC60,0,2
.stabn 68,0,10,L96
L96:
clr _PORT6
.stabn 68,0,11,L97
L97:
mov a,@0
STA _IOC70,0,2
.stabn 68,0,12,L98
L98:
clr _PORT7
.stabn 68,0,13,L99
L99:
.stabn 224,0,0,L100
L100:
L$88:
mov a,system_initial_bp-4
mov ecx,a
mov a,system_initial_bp-3
mov ecx+1,a
mov a,system_initial_bp-2
mov ecx+2,a
mov a,system_initial_bp-1
mov ecx+3,a
ret
.STACK system_initial_bp,local,4
public _clear_all_ram
public clear_all_ram_bp
.stabs "clear_all_ram:F15",36,0,0,_clear_all_ram
.section ".S6",C_CODE
.SYMDEF ".S6" 
_clear_all_ram:
.SYMDEF "_clear_all_ram" 
mov a,ecx
mov clear_all_ram_bp-4,a
mov a,ecx+1
mov clear_all_ram_bp-3,a
mov a,ecx+2
mov clear_all_ram_bp-2,a
mov a,ecx+3
mov clear_all_ram_bp-1,a
.stabn 192,0,0,L102
L102:
.stabn 68,0,19,L103
L103:
.stabn 68,0,22,L104
L104:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(22):"
MOV   	A,@0X10
.stabn 68,0,23,L105
L105:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(23):"
MOV   	RSR,A
.stabn 68,0,24,L106
L106:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(24):"
S_CLRLOOP:
.stabn 68,0,25,L107
L107:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(25):"
CLR   	R0
.stabn 68,0,26,L108
L108:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(26):"
INC   	RSR
.stabn 68,0,27,L109
L109:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(27):"
JBC   	RSR,6
.stabn 68,0,28,L110
L110:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(28):"
BS    	RSR,5
.stabn 68,0,29,L111
L111:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(29):"
MOV		A,RSR
.stabn 68,0,30,L112
L112:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(30):"
AND    	A,@0X7F
.stabn 68,0,31,L113
L113:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(31):"
JBS		STATUS,2
.stabn 68,0,32,L114
L114:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(32):"
JMP   	S_CLRLOOP
.stabn 68,0,34,L115
L115:
.stabn 224,0,0,L116
L116:
L$101:
mov a,clear_all_ram_bp-4
mov ecx,a
mov a,clear_all_ram_bp-3
mov ecx+1,a
mov a,clear_all_ram_bp-2
mov ecx+2,a
mov a,clear_all_ram_bp-1
mov ecx+3,a
ret
.STACK clear_all_ram_bp,local,4
public _time_tcc_pro
public time_tcc_pro_bp
.stabs "time_tcc_pro:F15",36,0,0,_time_tcc_pro
.section ".S7",C_CODE
.SYMDEF ".S7" 
_time_tcc_pro:
.SYMDEF "_time_tcc_pro" 
mov a,ecx
mov time_tcc_pro_bp-4,a
mov a,ecx+1
mov time_tcc_pro_bp-3,a
mov a,ecx+2
mov time_tcc_pro_bp-2,a
mov a,ecx+3
mov time_tcc_pro_bp-1,a
.stabn 192,0,0,L118
L118:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\user_tcc.h",132,0,0,0
L119:
.stabn 68,0,7,L120
L120:
.stabn 68,0,8,L121
L121:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_tcc.h(8):"
mov a,@0b00001110
.stabn 68,0,9,L122
L122:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_tcc.h(9):"
contw
.stabn 68,0,11,L123
L123:
clr _TCC
.stabn 68,0,12,L124
L124:
LDA _RF,0,0
and a,@254
STA _RF,0,0
.stabn 68,0,14,L125
L125:
LDA _IOCF0,0,2
or a,@1
STA _IOCF0,0,2
.stabn 68,0,15,L126
L126:
mov a,@6
STA _TCC,0,0
.stabn 68,0,16,L127
L127:
.stabn 224,0,0,L128
L128:
L$117:
mov a,time_tcc_pro_bp-4
mov ecx,a
mov a,time_tcc_pro_bp-3
mov ecx+1,a
mov a,time_tcc_pro_bp-2
mov ecx+2,a
mov a,time_tcc_pro_bp-1
mov ecx+3,a
ret
.STACK time_tcc_pro_bp,local,4
public _set_all_bit_ram
public set_all_bit_ram_bp
.stabs "set_all_bit_ram:F15",36,0,0,_set_all_bit_ram
.section ".S8",C_CODE
.SYMDEF ".S8" 
_set_all_bit_ram:
.SYMDEF "_set_all_bit_ram" 
mov a,ecx
mov set_all_bit_ram_bp-4,a
mov a,ecx+1
mov set_all_bit_ram_bp-3,a
mov a,ecx+2
mov set_all_bit_ram_bp-2,a
mov a,ecx+3
mov set_all_bit_ram_bp-1,a
.stabn 192,0,0,L130
L130:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\user_bit.h",132,0,0,0
L131:
.stabn 68,0,19,L132
L132:
.stabn 68,0,20,L133
L133:
bc _bit_ad_interrupt,0
.stabn 68,0,21,L134
L134:
bc _bit_tcc_interrupt,1
.stabn 68,0,22,L135
L135:
bc _bit_first_ad,2
.stabn 68,0,23,L136
L136:
bc _bit_need_cmp,3
.stabn 68,0,24,L137
L137:
bc _bit_need_output,4
.stabn 68,0,25,L138
L138:
clr _reg_ad_temp_cnt+3
clr _reg_ad_temp_cnt+2
clr _reg_ad_temp_cnt+1
clr _reg_ad_temp_cnt
.stabn 68,0,26,L139
L139:
clr _reg_ad_calculate_cnt_cp+3
clr _reg_ad_calculate_cnt_cp+2
clr _reg_ad_calculate_cnt_cp+1
clr _reg_ad_calculate_cnt_cp
.stabn 68,0,27,L140
L140:
clr _reg_ad_calculate_cnt+3
clr _reg_ad_calculate_cnt+2
clr _reg_ad_calculate_cnt+1
clr _reg_ad_calculate_cnt
.stabn 68,0,28,L141
L141:
clr _reg_ad_average_cnt
.stabn 68,0,29,L142
L142:
.stabn 224,0,0,L143
L143:
L$129:
mov a,set_all_bit_ram_bp-4
mov ecx,a
mov a,set_all_bit_ram_bp-3
mov ecx+1,a
mov a,set_all_bit_ram_bp-2
mov ecx+2,a
mov a,set_all_bit_ram_bp-1
mov ecx+3,a
ret
.STACK set_all_bit_ram_bp,local,4
public _out_put_pro
public out_put_pro_bp
.stabs "out_put_pro:F15",36,0,0,_out_put_pro
.section ".S9",C_CODE
.SYMDEF ".S9" 
_out_put_pro:
.SYMDEF "_out_put_pro" 
mov a,ecx
mov out_put_pro_bp-4,a
mov a,ecx+1
mov out_put_pro_bp-3,a
mov a,ecx+2
mov out_put_pro_bp-2,a
mov a,ecx+3
mov out_put_pro_bp-1,a
.stabn 192,0,0,L151
L151:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\user_output.h",132,0,0,0
L152:
.stabn 68,0,8,L153
L153:
.stabn 68,0,9,L154
L154:
jbs _bit_need_output,4
EXTJMP @L$145
.stabn 192,0,1,L155
L155:
.stabn 68,0,10,L156
L156:
.stabn 68,0,11,L157
L157:
bs _P71,1
.stabn 68,0,12,L158
L158:
LDA _reg_time_cnt,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _reg_time_cnt,0,0
ULTRIB ecx,0x32
jbs STATUS, cf
EXTJMP L$146
.stabn 192,0,2,L159
L159:
.stabn 68,0,13,L160
L160:
.stabn 68,0,14,L161
L161:
clr _reg_time_cnt
.stabn 68,0,15,L162
L162:
LDA _reg_time_cnt1,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _reg_time_cnt1,0,0
ULTRIB ecx,0x19
jbs STATUS, cf
EXTJMP L$146
.stabn 192,0,3,L163
L163:
.stabn 68,0,16,L164
L164:
.stabn 68,0,17,L165
L165:
clr _reg_time_cnt1
.stabn 68,0,18,L166
L166:
bc _bit_need_output,4
.stabn 68,0,19,L167
L167:
.stabn 224,0,3,L168
L168:
.stabn 68,0,20,L169
L169:
.stabn 224,0,2,L170
L170:
.stabn 68,0,21,L171
L171:
.stabn 224,0,1,L172
L172:
jmp @L$146
L$145:
.stabn 192,0,1,L173
L173:
.stabn 68,0,23,L174
L174:
.stabn 68,0,24,L175
L175:
bc _P71,1
.stabn 68,0,25,L176
L176:
.stabn 224,0,1,L177
L177:
L$146:
.stabn 68,0,26,L178
L178:
.stabn 224,0,0,L179
L179:
L$144:
mov a,out_put_pro_bp-4
mov ecx,a
mov a,out_put_pro_bp-3
mov ecx+1,a
mov a,out_put_pro_bp-2
mov ecx+2,a
mov a,out_put_pro_bp-1
mov ecx+3,a
ret
.STACK out_put_pro_bp,local,4
.section ".data"
public _second_count
.align 1
_second_count:
.SYMDEF "_second_count" LEN:1
db 0
.stabs "second_count:G1",32,0,0,_second_count
public _flag
.align 1
_flag:
.SYMDEF "_flag" LEN:1
db 0
.stabs "flag:G1",32,0,0,_flag
public _testcode_2
public testcode_2_bp
.section ".code"
.stabs "testcode_2:F15",36,0,0,_testcode_2
.section ".S10",C_CODE
.SYMDEF ".S10" 
_testcode_2:
.SYMDEF "_testcode_2" 
mov a,ecx
mov testcode_2_bp-4,a
mov a,ecx+1
mov testcode_2_bp-3,a
mov a,ecx+2
mov testcode_2_bp-2,a
mov a,ecx+3
mov testcode_2_bp-1,a
.stabn 192,0,0,L183
L183:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\interrupt_vector.h",132,0,0,0
L184:
.stabn 68,0,16,L185
L185:
.stabn 68,0,17,L186
L186:
EQNEPRIB _flag,1
jbs STATUS,zf
EXTJMP @L$181
.stabn 192,0,1,L187
L187:
.stabn 68,0,18,L188
L188:
.stabn 68,0,19,L189
L189:
clr _flag
.stabn 68,0,20,L190
L190:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,22,L191
L191:
.stabn 224,0,1,L192
L192:
jmp @L$182
L$181:
.stabn 192,0,1,L193
L193:
.stabn 68,0,24,L194
L194:
.stabn 68,0,25,L195
L195:
mov a,@1
STA _flag,0,0
.stabn 68,0,26,L196
L196:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,27,L197
L197:
.stabn 224,0,1,L198
L198:
L$182:
.stabn 68,0,28,L199
L199:
.stabn 224,0,0,L200
L200:
L$180:
mov a,testcode_2_bp-4
mov ecx,a
mov a,testcode_2_bp-3
mov ecx+1,a
mov a,testcode_2_bp-2
mov ecx+2,a
mov a,testcode_2_bp-1
mov ecx+3,a
ret
.STACK testcode_2_bp,local,4
public _timeout_handle
public timeout_handle_bp
.stabs "timeout_handle:F15",36,0,0,_timeout_handle
.section ".S11",C_CODE
.SYMDEF ".S11" 
_timeout_handle:
.SYMDEF "_timeout_handle" 
mov a,ecx
mov timeout_handle_bp-4,a
mov a,ecx+1
mov timeout_handle_bp-3,a
mov a,ecx+2
mov timeout_handle_bp-2,a
mov a,ecx+3
mov timeout_handle_bp-1,a
.stabn 192,0,0,L204
L204:
.stabn 68,0,36,L205
L205:
.stabn 68,0,39,L206
L206:
ILTRIB _second_count,0xfd
jbs STATUS, cf
EXTJMP L$202
.stabn 192,0,1,L207
L207:
.stabn 68,0,40,L208
L208:
.stabn 68,0,41,L209
L209:
clr _second_count
.stabn 68,0,42,L210
L210:
INCMW _timeout,0
.stabn 68,0,44,L211
L211:
call _ad_enable
.stabn 68,0,46,L212
L212:
.stabn 224,0,1,L213
L213:
L$202:
.stabn 68,0,48,L214
L214:
.stabn 224,0,0,L215
L215:
L$201:
mov a,timeout_handle_bp-4
mov ecx,a
mov a,timeout_handle_bp-3
mov ecx+1,a
mov a,timeout_handle_bp-2
mov ecx+2,a
mov a,timeout_handle_bp-1
mov ecx+3,a
ret
.STACK timeout_handle_bp,local,4
public _ALLInt
public ALLInt_bp
.stabs "ALLInt:F15",36,0,0,_ALLInt
.section ".S12",C_CODE
.SYMDEF ".S12" INT:-1
_ALLInt:
.SYMDEF "_ALLInt" INT:-1
.stabn 192,0,0,L221
L221:
.stabn 68,0,52,L222
L222:
.stabn 68,0,53,L223
L223:
LDA _IntVecIdx,0,0
mov ecx,a
EQNEPRIB ecx,10
jbc STATUS,zf
EXTJMP @L$219
EQNEPRIB ecx,13
jbc STATUS,zf
EXTJMP @L$220
jmp @L$218
.stabn 192,0,1,L224
L224:
.stabn 68,0,54,L225
L225:
L$219:
.stabn 68,0,57,L226
L226:
LDA _second_count,0,0
add a,@1
STA _second_count,0,0
.stabn 68,0,58,L227
L227:
call _timeout_handle
.stabn 68,0,59,L228
L228:
LDA _RF,0,0
and a,@254
STA _RF,0,0
.stabn 68,0,60,L229
L229:
mov a,@6
STA _TCC,0,0
.stabn 68,0,61,L230
L230:
jmp @L$218
L$220:
.stabn 68,0,64,L231
L231:
call _ad_read
mov a,eax
mov ecx,a
mov a,ecx
STA _adc_value,0,0
.stabn 68,0,65,L232
L232:
LDA _RE,0,0
and a,@223
STA _RE,0,0
.stabn 68,0,66,L233
L233:
.stabn 68,0,69,L234
L234:
.stabn 68,0,70,L235
L235:
.stabn 224,0,1,L236
L236:
L$218:
.stabn 68,0,71,L237
L237:
.stabn 224,0,0,L238
L238:
L$216:
reti
.STACK ALLInt_bp,local,0
public _TCC_l
public TCC_l_bp
.stabs "TCC_l:F15",36,0,0,_TCC_l
.section ".S13",C_CODE
.SYMDEF ".S13" LOWINT:2,9
_TCC_l:
.SYMDEF "_TCC_l" LOWINT:2,9
.stabn 192,0,0,L240
L240:
.stabn 68,0,84,L241
L241:
.stabn 68,0,85,L242
L242:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\interrupt_vector.h(85):"
MOV A,0x2
.stabn 68,0,85,L243
L243:
.stabn 68,0,86,L244
L244:
.stabn 224,0,0,L245
L245:
L$239:
reti
.STACK TCC_l_bp,local,0
public _ADC_l
public ADC_l_bp
.stabs "ADC_l:F15",36,0,0,_ADC_l
.section ".S14",C_CODE
.SYMDEF ".S14" LOWINT:3,12
_ADC_l:
.SYMDEF "_ADC_l" LOWINT:3,12
.stabn 192,0,0,L247
L247:
.stabn 68,0,89,L248
L248:
.stabn 68,0,90,L249
L249:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\interrupt_vector.h(90):"
MOV A,0x2
.stabn 68,0,90,L250
L250:
.stabn 68,0,91,L251
L251:
.stabn 224,0,0,L252
L252:
L$246:
reti
.STACK ADC_l_bp,local,0
.section ".data"
public _duty
.align 1
_duty:
.SYMDEF "_duty" LEN:1
db 0x7f
.stabs "duty:G14",32,0,0,_duty
public _pwm2_init
public pwm2_init_bp
.section ".code"
.stabs "pwm2_init:F15",36,0,0,_pwm2_init
.section ".S15",C_CODE
.SYMDEF ".S15" 
_pwm2_init:
.SYMDEF "_pwm2_init" 
mov a,ecx
mov pwm2_init_bp-4,a
mov a,ecx+1
mov pwm2_init_bp-3,a
mov a,ecx+2
mov pwm2_init_bp-2,a
mov a,ecx+3
mov pwm2_init_bp-1,a
.stabn 192,0,0,L254
L254:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\B16AD.c",132,0,0,0
L255:
.stabn 68,0,21,L256
L256:
.stabn 68,0,22,L257
L257:
mov a,@2
STA _PWMCON,0,0
.stabn 68,0,23,L258
L258:
mov a,@255
STA _PRD2,0,0
.stabn 68,0,24,L259
L259:
mov a,@127
STA _DT2,0,0
.stabn 68,0,25,L260
L260:
mov a,@184
STA _TMRCON,0,0
.stabn 68,0,28,L261
L261:
.stabn 224,0,0,L262
L262:
L$253:
mov a,pwm2_init_bp-4
mov ecx,a
mov a,pwm2_init_bp-3
mov ecx+1,a
mov a,pwm2_init_bp-2
mov ecx+2,a
mov a,pwm2_init_bp-1
mov ecx+3,a
ret
.STACK pwm2_init_bp,local,4
public _pwm2_increase
public pwm2_increase_bp
.stabs "pwm2_increase:F15",36,0,0,_pwm2_increase
.section ".S16",C_CODE
.SYMDEF ".S16" 
_pwm2_increase:
.SYMDEF "_pwm2_increase" 
mov a,ecx
mov pwm2_increase_bp-4,a
mov a,ecx+1
mov pwm2_increase_bp-3,a
mov a,ecx+2
mov pwm2_increase_bp-2,a
mov a,ecx+3
mov pwm2_increase_bp-1,a
.stabn 192,0,0,L264
L264:
.stabn 68,0,30,L265
L265:
.stabn 68,0,32,L266
L266:
.stabn 224,0,0,L267
L267:
L$263:
mov a,pwm2_increase_bp-4
mov ecx,a
mov a,pwm2_increase_bp-3
mov ecx+1,a
mov a,pwm2_increase_bp-2
mov ecx+2,a
mov a,pwm2_increase_bp-1
mov ecx+3,a
ret
.STACK pwm2_increase_bp,local,4
public _pwm2_decrease
public pwm2_decrease_bp
.stabs "pwm2_decrease:F15",36,0,0,_pwm2_decrease
.section ".S17",C_CODE
.SYMDEF ".S17" 
_pwm2_decrease:
.SYMDEF "_pwm2_decrease" 
mov a,ecx
mov pwm2_decrease_bp-4,a
mov a,ecx+1
mov pwm2_decrease_bp-3,a
mov a,ecx+2
mov pwm2_decrease_bp-2,a
mov a,ecx+3
mov pwm2_decrease_bp-1,a
.stabn 192,0,0,L269
L269:
.stabn 68,0,34,L270
L270:
.stabn 68,0,35,L271
L271:
SUBMIB _duty,5,0
.stabn 68,0,36,L272
L272:
LDA _duty,0,0
STA _DT2,0,0
.stabn 68,0,37,L273
L273:
.stabn 224,0,0,L274
L274:
L$268:
mov a,pwm2_decrease_bp-4
mov ecx,a
mov a,pwm2_decrease_bp-3
mov ecx+1,a
mov a,pwm2_decrease_bp-2
mov ecx+2,a
mov a,pwm2_decrease_bp-1
mov ecx+3,a
ret
.STACK pwm2_decrease_bp,local,4
.section ".data"
public _timeout
.align 1
_timeout:
.SYMDEF "_timeout" LEN:2
dw 0x0
.stabs "timeout:G13",32,0,0,_timeout
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S18",C_CODE
.SYMDEF ".S18" 
_main:
.SYMDEF "_main" 
.stabn 192,0,0,L284
L284:
.stabn 68,0,45,L285
L285:
.stabn 68,0,46,L286
L286:
call _clear_all_ram
.stabn 68,0,47,L287
L287:
call _system_initial
.stabn 68,0,48,L288
L288:
call _time_tcc_pro
.stabn 68,0,49,L289
L289:
call _io_init
.stabn 68,0,50,L290
L290:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\B16AD.c(50):"
eni
.stabn 68,0,51,L291
L291:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\B16AD.c(51):"
wdtc
.stabn 68,0,52,L292
L292:
call _b16ad_init
.stabn 68,0,53,L293
L293:
call _ad_init
jmp @L$277
.stabn 192,0,1,L294
L294:
.stabn 68,0,57,L295
L295:
L$279:
.stabn 192,0,2,L296
L296:
.stabn 68,0,59,L297
L297:
.stabn 68,0,60,L298
L298:
LDA _IOC70,0,2
or a,@2
STA _IOC70,0,2
.stabn 68,0,61,L299
L299:
call _b16ad_init
.stabn 68,0,62,L300
L300:
ILTRIB _adc_value,0x85
jbs STATUS, cf
EXTJMP L$282
.stabn 192,0,3,L301
L301:
.stabn 68,0,63,L302
L302:
.stabn 68,0,64,L303
L303:
call _Charger
.stabn 68,0,65,L304
L304:
.stabn 224,0,3,L305
L305:
L$282:
.stabn 68,0,66,L306
L306:
.stabn 224,0,2,L307
L307:
L$280:
.stabn 68,0,58,L308
L308:
jmp @L$279
.stabn 68,0,67,L309
L309:
.stabn 224,0,1,L310
L310:
L$277:
.stabn 68,0,56,L311
L311:
jmp @L$280
.stabn 68,0,68,L312
L312:
.stabn 224,0,0,L313
L313:
L$275:
ret
.STACK main_bp,local,0
public _b16ad_init
public b16ad_init_bp
.stabs "b16ad_init:F15",36,0,0,_b16ad_init
.section ".S19",C_CODE
.SYMDEF ".S19" 
_b16ad_init:
.SYMDEF "_b16ad_init" 
mov a,ecx
mov b16ad_init_bp-4,a
mov a,ecx+1
mov b16ad_init_bp-3,a
mov a,ecx+2
mov b16ad_init_bp-2,a
mov a,ecx+3
mov b16ad_init_bp-1,a
.stabn 192,0,0,L315
L315:
.stabn 68,0,72,L316
L316:
.stabn 68,0,75,L317
L317:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,76,L318
L318:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,77,L319
L319:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,78,L320
L320:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,79,L321
L321:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@6
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,81,L322
L322:
.stabn 224,0,0,L323
L323:
L$314:
mov a,b16ad_init_bp-4
mov ecx,a
mov a,b16ad_init_bp-3
mov ecx+1,a
mov a,b16ad_init_bp-2
mov ecx+2,a
mov a,b16ad_init_bp-1
mov ecx+3,a
ret
.STACK b16ad_init_bp,local,4
public _Charger
public Charger_bp
.stabs "Charger:F15",36,0,0,_Charger
.section ".S20",C_CODE
.SYMDEF ".S20" 
_Charger:
.SYMDEF "_Charger" 
mov a,ecx
mov Charger_bp-4,a
mov a,ecx+1
mov Charger_bp-3,a
mov a,ecx+2
mov Charger_bp-2,a
mov a,ecx+3
mov Charger_bp-1,a
.stabn 192,0,0,L331
L331:
.stabn 68,0,87,L332
L332:
.stabn 68,0,88,L333
L333:
IGTRIB _adc_value,0x8d
jbs STATUS, cf
EXTJMP L$325
.stabn 192,0,1,L334
L334:
.stabn 68,0,89,L335
L335:
.stabn 68,0,90,L336
L336:
call _charger_half_hour_last
.stabn 68,0,91,L337
L337:
.stabn 224,0,1,L338
L338:
jmp @L$326
L$325:
.stabn 68,0,92,L339
L339:
IGTRIB _adc_value,0x93
jbs STATUS, cf
EXTJMP L$327
.stabn 192,0,1,L340
L340:
.stabn 68,0,93,L341
L341:
.stabn 68,0,95,L342
L342:
call _charger_half_hour
.stabn 68,0,96,L343
L343:
.stabn 224,0,1,L344
L344:
jmp @L$328
L$327:
.stabn 68,0,97,L345
L345:
IGTRIB _adc_value,0x9a
jbs STATUS, cf
EXTJMP L$329
.stabn 192,0,1,L346
L346:
.stabn 68,0,98,L347
L347:
.stabn 68,0,100,L348
L348:
call _charger_half_hour
.stabn 68,0,101,L349
L349:
.stabn 224,0,1,L350
L350:
jmp @L$330
L$329:
.stabn 192,0,1,L351
L351:
.stabn 68,0,103,L352
L352:
.stabn 68,0,105,L353
L353:
call _charger_eight_hours
.stabn 68,0,106,L354
L354:
.stabn 224,0,1,L355
L355:
L$330:
L$328:
L$326:
.stabn 68,0,107,L356
L356:
.stabn 224,0,0,L357
L357:
L$324:
mov a,Charger_bp-4
mov ecx,a
mov a,Charger_bp-3
mov ecx+1,a
mov a,Charger_bp-2
mov ecx+2,a
mov a,Charger_bp-1
mov ecx+3,a
ret
.STACK Charger_bp,local,4
public _charger_an_hour
public charger_an_hour_bp
.stabs "charger_an_hour:F15",36,0,0,_charger_an_hour
.section ".S21",C_CODE
.SYMDEF ".S21" 
_charger_an_hour:
.SYMDEF "_charger_an_hour" 
mov a,ecx
mov charger_an_hour_bp-4,a
mov a,ecx+1
mov charger_an_hour_bp-3,a
mov a,ecx+2
mov charger_an_hour_bp-2,a
mov a,ecx+3
mov charger_an_hour_bp-1,a
.stabs "exit_this:2",128,0,0,charger_an_hour_bp-5
.stabn 192,0,0,L366
L366:
.stabn 68,0,111,L367
L367:
.stabn 68,0,114,L368
L368:
clr charger_an_hour_bp-5
.stabn 68,0,115,L369
L369:
clr _timeout+1
clr _timeout
jmp @L$360
L$359:
.stabn 192,0,1,L370
L370:
.stabn 68,0,117,L371
L371:
.stabn 68,0,118,L372
L372:
ILTRIB _adc_value,0x93
jbc STATUS, cf
EXTJMP L$362
.stabn 192,0,2,L373
L373:
.stabn 68,0,119,L374
L374:
.stabn 68,0,121,L375
L375:
mov a,@1
STA charger_an_hour_bp-5,0,0
.stabn 68,0,122,L376
L376:
jmp @L$361
.stabn 68,0,123,L377
L377:
.stabn 224,0,2,L378
L378:
L$362:
.stabn 68,0,124,L379
L379:
ULTRIW _timeout,0xe10
jbs STATUS, cf
EXTJMP L$364
.stabn 192,0,2,L380
L380:
.stabn 68,0,125,L381
L381:
.stabn 68,0,126,L382
L382:
call _charger_floating_an_hour
.stabn 68,0,127,L383
L383:
.stabn 224,0,2,L384
L384:
L$364:
.stabn 68,0,129,L385
L385:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,130,L386
L386:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,131,L387
L387:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,132,L388
L388:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,133,L389
L389:
.stabn 224,0,1,L390
L390:
L$360:
.stabn 68,0,116,L391
L391:
jmp @L$359
L$361:
.stabn 68,0,134,L392
L392:
call _charger_half_hour
.stabn 68,0,135,L393
L393:
.stabn 224,0,0,L394
L394:
L$358:
mov a,charger_an_hour_bp-4
mov ecx,a
mov a,charger_an_hour_bp-3
mov ecx+1,a
mov a,charger_an_hour_bp-2
mov ecx+2,a
mov a,charger_an_hour_bp-1
mov ecx+3,a
ret
.STACK charger_an_hour_bp,local,5
public _charger_half_hour
public charger_half_hour_bp
.stabs "charger_half_hour:F15",36,0,0,_charger_half_hour
.section ".S22",C_CODE
.SYMDEF ".S22" 
_charger_half_hour:
.SYMDEF "_charger_half_hour" 
mov a,ecx
mov charger_half_hour_bp-4,a
mov a,ecx+1
mov charger_half_hour_bp-3,a
mov a,ecx+2
mov charger_half_hour_bp-2,a
mov a,ecx+3
mov charger_half_hour_bp-1,a
.stabs "exit_this:2",128,0,0,charger_half_hour_bp-5
.stabn 192,0,0,L403
L403:
.stabn 68,0,138,L404
L404:
.stabn 68,0,141,L405
L405:
clr charger_half_hour_bp-5
.stabn 68,0,142,L406
L406:
clr _timeout+1
clr _timeout
jmp @L$397
L$396:
.stabn 192,0,1,L407
L407:
.stabn 68,0,144,L408
L408:
.stabn 68,0,145,L409
L409:
ILTRIB _adc_value,0x8d
jbc STATUS, cf
EXTJMP L$399
.stabn 192,0,2,L410
L410:
.stabn 68,0,146,L411
L411:
.stabn 68,0,148,L412
L412:
mov a,@1
STA charger_half_hour_bp-5,0,0
.stabn 68,0,149,L413
L413:
.stabn 224,0,2,L414
L414:
L$399:
.stabn 68,0,150,L415
L415:
ULTRIW _timeout,0x708
jbs STATUS, cf
EXTJMP L$401
.stabn 192,0,2,L416
L416:
.stabn 68,0,151,L417
L417:
.stabn 68,0,152,L418
L418:
call _charger_floating_an_hour
.stabn 68,0,153,L419
L419:
.stabn 224,0,2,L420
L420:
L$401:
.stabn 68,0,155,L421
L421:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,156,L422
L422:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,157,L423
L423:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,158,L424
L424:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,159,L425
L425:
.stabn 224,0,1,L426
L426:
L$397:
.stabn 68,0,143,L427
L427:
jmp @L$396
.stabn 68,0,160,L428
L428:
call _charger_half_hour_last
.stabn 68,0,161,L429
L429:
.stabn 224,0,0,L430
L430:
L$395:
mov a,charger_half_hour_bp-4
mov ecx,a
mov a,charger_half_hour_bp-3
mov ecx+1,a
mov a,charger_half_hour_bp-2
mov ecx+2,a
mov a,charger_half_hour_bp-1
mov ecx+3,a
ret
.STACK charger_half_hour_bp,local,5
public _charger_half_hour_last
public charger_half_hour_last_bp
.stabs "charger_half_hour_last:F15",36,0,0,_charger_half_hour_last
.section ".S23",C_CODE
.SYMDEF ".S23" 
_charger_half_hour_last:
.SYMDEF "_charger_half_hour_last" 
mov a,ecx
mov charger_half_hour_last_bp-4,a
mov a,ecx+1
mov charger_half_hour_last_bp-3,a
mov a,ecx+2
mov charger_half_hour_last_bp-2,a
mov a,ecx+3
mov charger_half_hour_last_bp-1,a
.stabs "exit_this:2",128,0,0,charger_half_hour_last_bp-5
.stabn 192,0,0,L437
L437:
.stabn 68,0,164,L438
L438:
.stabn 68,0,167,L439
L439:
clr charger_half_hour_last_bp-5
.stabn 68,0,168,L440
L440:
clr _timeout+1
clr _timeout
jmp @L$433
L$432:
.stabn 192,0,1,L441
L441:
.stabn 68,0,170,L442
L442:
.stabn 68,0,171,L443
L443:
ULTRIW _timeout,0x708
jbs STATUS, cf
EXTJMP L$435
.stabn 192,0,2,L444
L444:
.stabn 68,0,172,L445
L445:
.stabn 68,0,173,L446
L446:
call _charger_floating_an_hour
.stabn 68,0,174,L447
L447:
jmp @L$434
.stabn 68,0,175,L448
L448:
.stabn 224,0,2,L449
L449:
L$435:
.stabn 68,0,177,L450
L450:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,178,L451
L451:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,179,L452
L452:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,180,L453
L453:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,181,L454
L454:
.stabn 224,0,1,L455
L455:
L$433:
.stabn 68,0,169,L456
L456:
jmp @L$432
L$434:
.stabn 68,0,183,L457
L457:
.stabn 224,0,0,L458
L458:
L$431:
mov a,charger_half_hour_last_bp-4
mov ecx,a
mov a,charger_half_hour_last_bp-3
mov ecx+1,a
mov a,charger_half_hour_last_bp-2
mov ecx+2,a
mov a,charger_half_hour_last_bp-1
mov ecx+3,a
ret
.STACK charger_half_hour_last_bp,local,5
public _charger_eight_hours
public charger_eight_hours_bp
.stabs "charger_eight_hours:F15",36,0,0,_charger_eight_hours
.section ".S24",C_CODE
.SYMDEF ".S24" 
_charger_eight_hours:
.SYMDEF "_charger_eight_hours" 
mov a,ecx
mov charger_eight_hours_bp-4,a
mov a,ecx+1
mov charger_eight_hours_bp-3,a
mov a,ecx+2
mov charger_eight_hours_bp-2,a
mov a,ecx+3
mov charger_eight_hours_bp-1,a
.stabs "exit_this:2",128,0,0,charger_eight_hours_bp-5
.stabn 192,0,0,L467
L467:
.stabn 68,0,186,L468
L468:
.stabn 68,0,189,L469
L469:
clr charger_eight_hours_bp-5
.stabn 68,0,190,L470
L470:
clr _timeout+1
clr _timeout
jmp @L$461
L$460:
.stabn 192,0,1,L471
L471:
.stabn 68,0,192,L472
L472:
.stabn 68,0,193,L473
L473:
ILTRIB _adc_value,0x9a
jbc STATUS, cf
EXTJMP L$463
.stabn 192,0,2,L474
L474:
.stabn 68,0,194,L475
L475:
.stabn 68,0,196,L476
L476:
mov a,@1
STA charger_eight_hours_bp-5,0,0
.stabn 68,0,197,L477
L477:
clr _PWMCON
.stabn 68,0,198,L478
L478:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@6
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,199,L479
L479:
jmp @L$462
.stabn 68,0,200,L480
L480:
.stabn 224,0,2,L481
L481:
L$463:
.stabn 68,0,202,L482
L482:
ULTRIW _timeout,0x7080
jbs STATUS, cf
EXTJMP L$465
.stabn 192,0,2,L483
L483:
.stabn 68,0,203,L484
L484:
.stabn 68,0,204,L485
L485:
call _charger_floating_an_hour
.stabn 68,0,205,L486
L486:
.stabn 224,0,2,L487
L487:
L$465:
.stabn 68,0,207,L488
L488:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,208,L489
L489:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,209,L490
L490:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,210,L491
L491:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,211,L492
L492:
.stabn 224,0,1,L493
L493:
L$461:
.stabn 68,0,191,L494
L494:
jmp @L$460
L$462:
.stabn 68,0,212,L495
L495:
call _charger_half_hour
.stabn 68,0,214,L496
L496:
.stabn 224,0,0,L497
L497:
L$459:
mov a,charger_eight_hours_bp-4
mov ecx,a
mov a,charger_eight_hours_bp-3
mov ecx+1,a
mov a,charger_eight_hours_bp-2
mov ecx+2,a
mov a,charger_eight_hours_bp-1
mov ecx+3,a
ret
.STACK charger_eight_hours_bp,local,5
public _charger_floating_an_hour
public charger_floating_an_hour_bp
.stabs "charger_floating_an_hour:F15",36,0,0,_charger_floating_an_hour
.section ".S25",C_CODE
.SYMDEF ".S25" 
_charger_floating_an_hour:
.SYMDEF "_charger_floating_an_hour" 
mov a,ecx
mov charger_floating_an_hour_bp-4,a
mov a,ecx+1
mov charger_floating_an_hour_bp-3,a
mov a,ecx+2
mov charger_floating_an_hour_bp-2,a
mov a,ecx+3
mov charger_floating_an_hour_bp-1,a
.stabn 192,0,0,L508
L508:
.stabn 68,0,217,L509
L509:
.stabn 68,0,218,L510
L510:
clr _timeout+1
clr _timeout
jmp @L$500
L$499:
.stabn 192,0,1,L511
L511:
.stabn 68,0,220,L512
L512:
.stabn 68,0,222,L513
L513:
IGTRIB _adc_value,0x85
jbc STATUS, cf
EXTJMP L$502
.stabn 192,0,2,L514
L514:
.stabn 68,0,223,L515
L515:
.stabn 68,0,224,L516
L516:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,225,L517
L517:
.stabn 224,0,2,L518
L518:
L$502:
.stabn 68,0,226,L519
L519:
IGTRIB _adc_value,0x85
jbs STATUS, cf
EXTJMP L$504
.stabn 192,0,2,L520
L520:
.stabn 68,0,227,L521
L521:
.stabn 68,0,228,L522
L522:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,230,L523
L523:
LDA _IOC50,0,2
or a,@32
STA _IOC50,0,2
.stabn 68,0,231,L524
L524:
.stabn 224,0,2,L525
L525:
L$504:
.stabn 68,0,233,L526
L526:
ULTRIW _timeout,0xe10
jbs STATUS, cf
EXTJMP L$506
.stabn 192,0,2,L527
L527:
.stabn 68,0,234,L528
L528:
.stabn 68,0,236,L529
L529:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,238,L530
L530:
.stabn 224,0,2,L531
L531:
L$506:
.stabn 68,0,239,L532
L532:
.stabn 224,0,1,L533
L533:
L$500:
.stabn 68,0,219,L534
L534:
jmp @L$499
.stabn 68,0,240,L535
L535:
.stabn 224,0,0,L536
L536:
L$498:
mov a,charger_floating_an_hour_bp-4
mov ecx,a
mov a,charger_floating_an_hour_bp-3
mov ecx+1,a
mov a,charger_floating_an_hour_bp-2
mov ecx+2,a
mov a,charger_floating_an_hour_bp-1
mov ecx+3,a
ret
.STACK charger_floating_an_hour_bp,local,4
public _io_init
public io_init_bp
.stabs "io_init:F15",36,0,0,_io_init
.section ".S26",C_CODE
.SYMDEF ".S26" 
_io_init:
.SYMDEF "_io_init" 
mov a,ecx
mov io_init_bp-4,a
mov a,ecx+1
mov io_init_bp-3,a
mov a,ecx+2
mov io_init_bp-2,a
mov a,ecx+3
mov io_init_bp-1,a
.stabn 192,0,0,L538
L538:
.stabn 68,0,249,L539
L539:
.stabn 68,0,262,L540
L540:
mov a,@111
STA _SYS_CON,0,0
.stabn 68,0,263,L541
L541:
mov a,@1
STA _IOC50,0,2
.stabn 68,0,264,L542
L542:
clr _PORT5
.stabn 68,0,265,L543
L543:
mov a,@0
STA _IOC60,0,2
.stabn 68,0,266,L544
L544:
clr _PORT6
.stabn 68,0,267,L545
L545:
mov a,@0
STA _IOC70,0,2
.stabn 68,0,268,L546
L546:
clr _PORT7
.stabn 68,0,270,L547
L547:
.stabn 224,0,0,L548
L548:
L$537:
mov a,io_init_bp-4
mov ecx,a
mov a,io_init_bp-3
mov ecx+1,a
mov a,io_init_bp-2
mov ecx+2,a
mov a,io_init_bp-1
mov ecx+3,a
ret
.STACK io_init_bp,local,4
public _IO_H_L
public IO_H_L_bp
.stabs "IO_H_L:F15",36,0,0,_IO_H_L
.section ".S27",C_CODE
.SYMDEF ".S27" 
_IO_H_L:
.SYMDEF "_IO_H_L" 
mov a,ecx
mov IO_H_L_bp-4,a
mov a,ecx+1
mov IO_H_L_bp-3,a
mov a,ecx+2
mov IO_H_L_bp-2,a
mov a,ecx+3
mov IO_H_L_bp-1,a
.stabs "ch:2",160,0,0,IO_H_L_bp+0
.stabs "status:2",160,0,0,IO_H_L_bp+1
.stabn 192,0,0,L567
L567:
.stabn 68,0,275,L568
L568:
.stabn 68,0,277,L569
L569:
LDA IO_H_L_bp+0,0,0
mov ecx,a
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$552
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$555
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$558
EQNEPRIB ecx,5
jbc STATUS,zf
EXTJMP @L$561
EQNEPRIB ecx,6
jbc STATUS,zf
EXTJMP @L$564
jmp @L$551
.stabn 192,0,1,L570
L570:
.stabn 68,0,278,L571
L571:
L$552:
.stabn 68,0,279,L572
L572:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$553
.stabn 68,0,279,L573
L573:
bs _P55,5
jmp @L$551
L$553:
.stabn 68,0,280,L574
L574:
bc _P55,5
.stabn 68,0,281,L575
L575:
jmp @L$551
L$555:
.stabn 68,0,283,L576
L576:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$556
.stabn 68,0,283,L577
L577:
bs _P70,0
jmp @L$551
L$556:
.stabn 68,0,284,L578
L578:
bc _P70,0
.stabn 68,0,285,L579
L579:
jmp @L$551
L$558:
.stabn 68,0,286,L580
L580:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$559
.stabn 68,0,286,L581
L581:
bs _P71,1
jmp @L$551
L$559:
.stabn 68,0,287,L582
L582:
bc _P71,1
.stabn 68,0,288,L583
L583:
jmp @L$551
L$561:
.stabn 68,0,290,L584
L584:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$562
.stabn 68,0,290,L585
L585:
bs _P67,7
jmp @L$551
L$562:
.stabn 68,0,291,L586
L586:
bc _P67,7
.stabn 68,0,292,L587
L587:
jmp @L$551
L$564:
.stabn 68,0,293,L588
L588:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$565
.stabn 68,0,293,L589
L589:
bs _P51,1
jmp @L$551
L$565:
.stabn 68,0,294,L590
L590:
bc _P51,1
.stabn 68,0,295,L591
L591:
.stabn 68,0,296,L592
L592:
.stabn 68,0,298,L593
L593:
.stabn 224,0,1,L594
L594:
L$551:
.stabn 68,0,301,L595
L595:
.stabn 224,0,0,L596
L596:
L$549:
mov a,IO_H_L_bp-4
mov ecx,a
mov a,IO_H_L_bp-3
mov ecx+1,a
mov a,IO_H_L_bp-2
mov ecx+2,a
mov a,IO_H_L_bp-1
mov ecx+3,a
ret
.STACK IO_H_L_bp,local,4
extrn _IntVecIdx
.section ".code"
.section ".bss"
public _adc_value
.align 1
_adc_value:
.SYMDEF "_adc_value" LEN:1
ds 1
.stabs "adc_value:G1",32,0,0,_adc_value
public _reg_time_cnt1
.align 1
_reg_time_cnt1:
.SYMDEF "_reg_time_cnt1" LEN:1
ds 1
.stabs "reg_time_cnt1:G10",32,0,0,_reg_time_cnt1
public _reg_time_cnt
.align 1
_reg_time_cnt:
.SYMDEF "_reg_time_cnt" LEN:1
ds 1
.stabs "reg_time_cnt:G10",32,0,0,_reg_time_cnt
public _reg_ad_average_cnt
.align 1
_reg_ad_average_cnt:
.SYMDEF "_reg_ad_average_cnt" LEN:1
ds 1
.stabs "reg_ad_average_cnt:G10",32,0,0,_reg_ad_average_cnt
public _reg_ad_calculate_cnt
.align 1
_reg_ad_calculate_cnt:
.SYMDEF "_reg_ad_calculate_cnt" LEN:4
ds 4
.stabs "reg_ad_calculate_cnt:G11",32,0,0,_reg_ad_calculate_cnt
public _reg_ad_calculate_cnt_cp
.align 1
_reg_ad_calculate_cnt_cp:
.SYMDEF "_reg_ad_calculate_cnt_cp" LEN:4
ds 4
.stabs "reg_ad_calculate_cnt_cp:G11",32,0,0,_reg_ad_calculate_cnt_cp
public _reg_ad_temp_cnt
.align 1
_reg_ad_temp_cnt:
.SYMDEF "_reg_ad_temp_cnt" LEN:4
ds 4
.stabs "reg_ad_temp_cnt:G11",32,0,0,_reg_ad_temp_cnt
public _bit_need_output
.align 1
_bit_need_output:
.SYMDEF "_bit_need_output" BANK:0,BIT:4,32,LEN:1
ds 1
.stabs "bit_need_output:G16",32,0,0,_bit_need_output@4
public _bit_need_cmp
.align 1
_bit_need_cmp:
.SYMDEF "_bit_need_cmp" BANK:0,BIT:3,32,LEN:1
ds 1
.stabs "bit_need_cmp:G16",32,0,0,_bit_need_cmp@3
public _bit_first_ad
.align 1
_bit_first_ad:
.SYMDEF "_bit_first_ad" BANK:0,BIT:2,32,LEN:1
ds 1
.stabs "bit_first_ad:G16",32,0,0,_bit_first_ad@2
public _bit_tcc_interrupt
.align 1
_bit_tcc_interrupt:
.SYMDEF "_bit_tcc_interrupt" BANK:0,BIT:1,32,LEN:1
ds 1
.stabs "bit_tcc_interrupt:G16",32,0,0,_bit_tcc_interrupt@1
public _bit_ad_interrupt
.align 1
_bit_ad_interrupt:
.SYMDEF "_bit_ad_interrupt" BANK:0,BIT:0,32,LEN:1
ds 1
.stabs "bit_ad_interrupt:G16",32,0,0,_bit_ad_interrupt@0
.align 1
_TCIF:
.SYMDEF "_TCIF" REG:0,BIT:0,15,LEN:1
ds 1
.stabs "TCIF:S16",40,0,0,_TCIF
.align 1
_ICIF:
.SYMDEF "_ICIF" REG:0,BIT:1,15,LEN:1
ds 1
.stabs "ICIF:S16",40,0,0,_ICIF
.align 1
_EXIF:
.SYMDEF "_EXIF" REG:0,BIT:2,15,LEN:1
ds 1
.stabs "EXIF:S16",40,0,0,_EXIF
.align 1
_SIGN:
.SYMDEF "_SIGN" REG:0,BIT:6,10,LEN:1
ds 1
.stabs "SIGN:S16",40,0,0,_SIGN
.align 1
_CALI:
.SYMDEF "_CALI" REG:0,BIT:7,10,LEN:1
ds 1
.stabs "CALI:S16",40,0,0,_CALI
.align 1
_ICWE:
.SYMDEF "_ICWE" REG:0,BIT:1,14,LEN:1
ds 1
.stabs "ICWE:S16",40,0,0,_ICWE
.align 1
_CMPWE:
.SYMDEF "_CMPWE" REG:0,BIT:2,14,LEN:1
ds 1
.stabs "CMPWE:S16",40,0,0,_CMPWE
.align 1
_ADWE:
.SYMDEF "_ADWE" REG:0,BIT:3,14,LEN:1
ds 1
.stabs "ADWE:S16",40,0,0,_ADWE
.align 1
_CMPIF:
.SYMDEF "_CMPIF" REG:0,BIT:4,14,LEN:1
ds 1
.stabs "CMPIF:S16",40,0,0,_CMPIF
.align 1
_ADIF:
.SYMDEF "_ADIF" REG:0,BIT:5,14,LEN:1
ds 1
.stabs "ADIF:S16",40,0,0,_ADIF
.align 1
_ADIS0:
.SYMDEF "_ADIS0" REG:0,BIT:0,9,LEN:1
ds 1
.stabs "ADIS0:S16",40,0,0,_ADIS0
.align 1
_ADIS1:
.SYMDEF "_ADIS1" REG:0,BIT:1,9,LEN:1
ds 1
.stabs "ADIS1:S16",40,0,0,_ADIS1
.align 1
_ADIS2:
.SYMDEF "_ADIS2" REG:0,BIT:2,9,LEN:1
ds 1
.stabs "ADIS2:S16",40,0,0,_ADIS2
.align 1
_ADPD:
.SYMDEF "_ADPD" REG:0,BIT:3,9,LEN:1
ds 1
.stabs "ADPD:S16",40,0,0,_ADPD
.align 1
_ADRUN:
.SYMDEF "_ADRUN" REG:0,BIT:4,9,LEN:1
ds 1
.stabs "ADRUN:S16",40,0,0,_ADRUN
.align 1
_VREFS:
.SYMDEF "_VREFS" REG:0,BIT:7,9,LEN:1
ds 1
.stabs "VREFS:S16",40,0,0,_VREFS
.align 1
_P71:
.SYMDEF "_P71" REG:0,BIT:1,7,LEN:1
ds 1
.stabs "P71:S16",40,0,0,_P71
.align 1
_P70:
.SYMDEF "_P70" REG:0,BIT:0,7,LEN:1
ds 1
.stabs "P70:S16",40,0,0,_P70
.align 1
_P60:
.SYMDEF "_P60" REG:0,BIT:0,6,LEN:1
ds 1
.stabs "P60:S16",40,0,0,_P60
.align 1
_P61:
.SYMDEF "_P61" REG:0,BIT:1,6,LEN:1
ds 1
.stabs "P61:S16",40,0,0,_P61
.align 1
_P62:
.SYMDEF "_P62" REG:0,BIT:2,6,LEN:1
ds 1
.stabs "P62:S16",40,0,0,_P62
.align 1
_P63:
.SYMDEF "_P63" REG:0,BIT:3,6,LEN:1
ds 1
.stabs "P63:S16",40,0,0,_P63
.align 1
_P64:
.SYMDEF "_P64" REG:0,BIT:4,6,LEN:1
ds 1
.stabs "P64:S16",40,0,0,_P64
.align 1
_P65:
.SYMDEF "_P65" REG:0,BIT:5,6,LEN:1
ds 1
.stabs "P65:S16",40,0,0,_P65
.align 1
_P66:
.SYMDEF "_P66" REG:0,BIT:6,6,LEN:1
ds 1
.stabs "P66:S16",40,0,0,_P66
.align 1
_P67:
.SYMDEF "_P67" REG:0,BIT:7,6,LEN:1
ds 1
.stabs "P67:S16",40,0,0,_P67
.align 1
_P50:
.SYMDEF "_P50" REG:0,BIT:0,5,LEN:1
ds 1
.stabs "P50:S16",40,0,0,_P50
.align 1
_P51:
.SYMDEF "_P51" REG:0,BIT:1,5,LEN:1
ds 1
.stabs "P51:S16",40,0,0,_P51
.align 1
_P52:
.SYMDEF "_P52" REG:0,BIT:2,5,LEN:1
ds 1
.stabs "P52:S16",40,0,0,_P52
.align 1
_P53:
.SYMDEF "_P53" REG:0,BIT:3,5,LEN:1
ds 1
.stabs "P53:S16",40,0,0,_P53
.align 1
_P54:
.SYMDEF "_P54" REG:0,BIT:4,5,LEN:1
ds 1
.stabs "P54:S16",40,0,0,_P54
.align 1
_P55:
.SYMDEF "_P55" REG:0,BIT:5,5,LEN:1
ds 1
.stabs "P55:S16",40,0,0,_P55
.align 1
_C:
.SYMDEF "_C" REG:0,BIT:0,3,LEN:1
ds 1
.stabs "C:S16",40,0,0,_C
.align 1
_DC:
.SYMDEF "_DC" REG:0,BIT:1,3,LEN:1
ds 1
.stabs "DC:S16",40,0,0,_DC
.align 1
_Z:
.SYMDEF "_Z" REG:0,BIT:2,3,LEN:1
ds 1
.stabs "Z:S16",40,0,0,_Z
.align 1
_P:
.SYMDEF "_P" REG:0,BIT:3,3,LEN:1
ds 1
.stabs "P:S16",40,0,0,_P
.align 1
_T:
.SYMDEF "_T" REG:0,BIT:4,3,LEN:1
ds 1
.stabs "T:S16",40,0,0,_T
.align 1
_RST:
.SYMDEF "_RST" REG:0,BIT:7,3,LEN:1
ds 1
.stabs "RST:S16",40,0,0,_RST
.align 1
_IOCF1:
.SYMDEF "_IOCF1" IO:1,15,LEN:1
ds 1
.stabs "IOCF1:S14",40,0,0,_IOCF1
.align 1
_IOC81:
.SYMDEF "_IOC81" IO:1,8,LEN:1
ds 1
.stabs "IOC81:S14",40,0,0,_IOC81
.align 1
_IOC71:
.SYMDEF "_IOC71" IO:1,7,LEN:1
ds 1
.stabs "IOC71:S14",40,0,0,_IOC71
.align 1
_IOC61:
.SYMDEF "_IOC61" IO:1,6,LEN:1
ds 1
.stabs "IOC61:S14",40,0,0,_IOC61
.align 1
_IOC51:
.SYMDEF "_IOC51" IO:1,5,LEN:1
ds 1
.stabs "IOC51:S14",40,0,0,_IOC51
.align 1
_IOCF0:
.SYMDEF "_IOCF0" IO:0,15,LEN:1
ds 1
.stabs "IOCF0:S14",40,0,0,_IOCF0
.align 1
_IOCE0:
.SYMDEF "_IOCE0" IO:0,14,LEN:1
ds 1
.stabs "IOCE0:S14",40,0,0,_IOCE0
.align 1
_IOCD0:
.SYMDEF "_IOCD0" IO:0,13,LEN:1
ds 1
.stabs "IOCD0:S14",40,0,0,_IOCD0
.align 1
_IOCC0:
.SYMDEF "_IOCC0" IO:0,12,LEN:1
ds 1
.stabs "IOCC0:S14",40,0,0,_IOCC0
.align 1
_IOCB0:
.SYMDEF "_IOCB0" IO:0,11,LEN:1
ds 1
.stabs "IOCB0:S14",40,0,0,_IOCB0
.align 1
_IOCA0:
.SYMDEF "_IOCA0" IO:0,10,LEN:1
ds 1
.stabs "IOCA0:S14",40,0,0,_IOCA0
.align 1
_IOC90:
.SYMDEF "_IOC90" IO:0,9,LEN:1
ds 1
.stabs "IOC90:S14",40,0,0,_IOC90
.align 1
_IOC80:
.SYMDEF "_IOC80" IO:0,8,LEN:1
ds 1
.stabs "IOC80:S14",40,0,0,_IOC80
.align 1
_IOC70:
.SYMDEF "_IOC70" IO:0,7,LEN:1
ds 1
.stabs "IOC70:S14",40,0,0,_IOC70
.align 1
_IOC60:
.SYMDEF "_IOC60" IO:0,6,LEN:1
ds 1
.stabs "IOC60:S14",40,0,0,_IOC60
.align 1
_IOC50:
.SYMDEF "_IOC50" IO:0,5,LEN:1
ds 1
.stabs "IOC50:S14",40,0,0,_IOC50
.align 1
_SYS_CON:
.SYMDEF "_SYS_CON" REG:1,15,LEN:1
ds 1
.stabs "SYS_CON:S14",40,0,0,_SYS_CON
.align 1
_LVD_I_W:
.SYMDEF "_LVD_I_W" REG:1,14,LEN:1
ds 1
.stabs "LVD_I_W:S14",40,0,0,_LVD_I_W
.align 1
_PWM_T_D:
.SYMDEF "_PWM_T_D" REG:1,13,LEN:1
ds 1
.stabs "PWM_T_D:S14",40,0,0,_PWM_T_D
.align 1
_DT2:
.SYMDEF "_DT2" REG:1,12,LEN:1
ds 1
.stabs "DT2:S14",40,0,0,_DT2
.align 1
_DT1:
.SYMDEF "_DT1" REG:1,11,LEN:1
ds 1
.stabs "DT1:S14",40,0,0,_DT1
.align 1
_PRD2:
.SYMDEF "_PRD2" REG:1,10,LEN:1
ds 1
.stabs "PRD2:S14",40,0,0,_PRD2
.align 1
_PRD1:
.SYMDEF "_PRD1" REG:1,9,LEN:1
ds 1
.stabs "PRD1:S14",40,0,0,_PRD1
.align 1
_TMRCON:
.SYMDEF "_TMRCON" REG:1,8,LEN:1
ds 1
.stabs "TMRCON:S14",40,0,0,_TMRCON
.align 1
_PWMCON:
.SYMDEF "_PWMCON" REG:1,7,LEN:1
ds 1
.stabs "PWMCON:S14",40,0,0,_PWMCON
.align 1
_TBLP:
.SYMDEF "_TBLP" REG:1,6,LEN:1
ds 1
.stabs "TBLP:S14",40,0,0,_TBLP
.align 1
_TBHP:
.SYMDEF "_TBHP" REG:1,5,LEN:1
ds 1
.stabs "TBHP:S14",40,0,0,_TBHP
.align 1
_RF:
.SYMDEF "_RF" REG:0,15,LEN:1
ds 1
.stabs "RF:S14",40,0,0,_RF
.align 1
_ISR:
.SYMDEF "_ISR" REG:0,15,LEN:1
ds 1
.stabs "ISR:S14",40,0,0,_ISR
.align 1
_RE:
.SYMDEF "_RE" REG:0,14,LEN:1
ds 1
.stabs "RE:S14",40,0,0,_RE
.align 1
_ADDATA1L:
.SYMDEF "_ADDATA1L" REG:0,13,LEN:1
ds 1
.stabs "ADDATA1L:S14",40,0,0,_ADDATA1L
.align 1
_RD:
.SYMDEF "_RD" REG:0,13,LEN:1
ds 1
.stabs "RD:S14",40,0,0,_RD
.align 1
_ADDATA1H:
.SYMDEF "_ADDATA1H" REG:0,12,LEN:1
ds 1
.stabs "ADDATA1H:S14",40,0,0,_ADDATA1H
.align 1
_RC:
.SYMDEF "_RC" REG:0,12,LEN:1
ds 1
.stabs "RC:S14",40,0,0,_RC
.align 1
_ADDATA:
.SYMDEF "_ADDATA" REG:0,11,LEN:1
ds 1
.stabs "ADDATA:S14",40,0,0,_ADDATA
.align 1
_RB:
.SYMDEF "_RB" REG:0,11,LEN:1
ds 1
.stabs "RB:S14",40,0,0,_RB
.align 1
_ADOC:
.SYMDEF "_ADOC" REG:0,10,LEN:1
ds 1
.stabs "ADOC:S14",40,0,0,_ADOC
.align 1
_RA:
.SYMDEF "_RA" REG:0,10,LEN:1
ds 1
.stabs "RA:S14",40,0,0,_RA
.align 1
_ADCON:
.SYMDEF "_ADCON" REG:0,9,LEN:1
ds 1
.stabs "ADCON:S14",40,0,0,_ADCON
.align 1
_R9:
.SYMDEF "_R9" REG:0,9,LEN:1
ds 1
.stabs "R9:S14",40,0,0,_R9
.align 1
_AISR:
.SYMDEF "_AISR" REG:0,8,LEN:1
ds 1
.stabs "AISR:S14",40,0,0,_AISR
.align 1
_R8:
.SYMDEF "_R8" REG:0,8,LEN:1
ds 1
.stabs "R8:S14",40,0,0,_R8
.align 1
_PORT7:
.SYMDEF "_PORT7" REG:0,7,LEN:1
ds 1
.stabs "PORT7:S14",40,0,0,_PORT7
.align 1
_PORT6:
.SYMDEF "_PORT6" REG:0,6,LEN:1
ds 1
.stabs "PORT6:S14",40,0,0,_PORT6
.align 1
_PORT5:
.SYMDEF "_PORT5" REG:0,5,LEN:1
ds 1
.stabs "PORT5:S14",40,0,0,_PORT5
.align 1
_R4:
.SYMDEF "_R4" REG:0,4,LEN:1
ds 1
.stabs "R4:S14",40,0,0,_R4
.align 1
_STATUS:
.SYMDEF "_STATUS" REG:0,3,LEN:1
ds 1
.stabs "STATUS:S14",40,0,0,_STATUS
.align 1
_PC:
.SYMDEF "_PC" REG:0,2,LEN:1
ds 1
.stabs "PC:S14",40,0,0,_PC
.align 1
_TCC:
.SYMDEF "_TCC" REG:0,1,LEN:1
ds 1
.stabs "TCC:S14",40,0,0,_TCC
.align 1
_R0:
.SYMDEF "_R0" REG:0,0,LEN:1
ds 1
.stabs "R0:S14",40,0,0,_R0
.section ".code"
end
