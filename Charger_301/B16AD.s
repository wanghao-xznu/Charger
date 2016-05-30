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
.stabn 68,0,22,L6
L6:
.stabn 68,0,23,L7
L7:
EQNEPRIB _flag_ad,1
jbs STATUS,zf
EXTJMP @L$2
.stabn 192,0,1,L8
L8:
.stabn 68,0,24,L9
L9:
.stabn 68,0,25,L10
L10:
clr _flag_ad
.stabn 68,0,26,L11
L11:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,28,L12
L12:
.stabn 224,0,1,L13
L13:
jmp @L$3
L$2:
.stabn 192,0,1,L14
L14:
.stabn 68,0,30,L15
L15:
.stabn 68,0,31,L16
L16:
mov a,@1
STA _flag_ad,0,0
.stabn 68,0,32,L17
L17:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,33,L18
L18:
.stabn 224,0,1,L19
L19:
L$3:
.stabn 68,0,34,L20
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
.stabn 68,0,38,L24
L24:
.stabn 68,0,39,L25
L25:
mov a,@1
STA _AISR,0,0
.stabn 68,0,40,L26
L26:
mov a,@8
STA _ADCON,0,0
.stabn 68,0,41,L27
L27:
mov a,@6
STA _ADOC,0,0
.stabn 68,0,43,L28
L28:
bs _ADRUN,4
.stabn 68,0,44,L29
L29:
LDA _IOCE0,0,2
or a,@32
STA _IOCE0,0,2
.stabn 68,0,45,L30
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
.stabn 192,0,0,L37
L37:
.stabn 68,0,48,L38
L38:
.stabn 68,0,49,L39
L39:
clr ad_read_bp-6+1
clr ad_read_bp-6
.stabn 68,0,51,L40
L40:
LDA _ADDATA,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clr ecx+1
mov a,ecx
STA ad_read_bp-6,0,0
mov a,ecx+1
STA ad_read_bp-6,1,0
.stabn 68,0,52,L41
L41:
ULTRIW ad_read_bp-6,0x5
jbs STATUS, cf
EXTJMP L$33
.stabn 192,0,1,L42
L42:
.stabn 68,0,53,L43
L43:
.stabn 68,0,54,L44
L44:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,55,L45
L45:
.stabn 224,0,1,L46
L46:
L$33:
.stabn 68,0,56,L47
L47:
ULTRIW ad_read_bp-6,0x5
jbc STATUS, cf
EXTJMP L$35
.stabn 192,0,1,L48
L48:
.stabn 68,0,57,L49
L49:
.stabn 68,0,58,L50
L50:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,59,L51
L51:
.stabn 224,0,1,L52
L52:
L$35:
.stabn 68,0,60,L53
L53:
LDA ad_read_bp-6,0,0
mov eax,a
LDA ad_read_bp-6,1,0
mov eax+1,a
.stabn 68,0,61,L54
L54:
.stabn 224,0,0,L55
L55:
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
.stabn 192,0,0,L57
L57:
.stabn 68,0,64,L58
L58:
.stabn 68,0,65,L59
L59:
bs _ADRUN,4
.stabn 68,0,66,L60
L60:
.stabn 224,0,0,L61
L61:
L$56:
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
.stabn 192,0,0,L63
L63:
.stabn 68,0,69,L64
L64:
.stabn 68,0,71,L65
L65:
.stabn 224,0,0,L66
L66:
L$62:
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
.stabn 192,0,0,L68
L68:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h",132,0,0,0
L69:
.stabn 68,0,5,L70
L70:
.stabn 68,0,6,L71
L71:
mov a,@111
STA _SYS_CON,0,0
.stabn 68,0,7,L72
L72:
mov a,@1
STA _IOC50,0,2
.stabn 68,0,8,L73
L73:
clr _PORT5
.stabn 68,0,9,L74
L74:
mov a,@0
STA _IOC60,0,2
.stabn 68,0,10,L75
L75:
clr _PORT6
.stabn 68,0,11,L76
L76:
mov a,@0
STA _IOC70,0,2
.stabn 68,0,12,L77
L77:
clr _PORT7
.stabn 68,0,13,L78
L78:
.stabn 224,0,0,L79
L79:
L$67:
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
.stabn 192,0,0,L81
L81:
.stabn 68,0,19,L82
L82:
.stabn 68,0,22,L83
L83:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(22):"
MOV   	A,@0X10
.stabn 68,0,23,L84
L84:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(23):"
MOV   	RSR,A
.stabn 68,0,24,L85
L85:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(24):"
S_CLRLOOP:
.stabn 68,0,25,L86
L86:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(25):"
CLR   	R0
.stabn 68,0,26,L87
L87:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(26):"
INC   	RSR
.stabn 68,0,27,L88
L88:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(27):"
JBC   	RSR,6
.stabn 68,0,28,L89
L89:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(28):"
BS    	RSR,5
.stabn 68,0,29,L90
L90:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(29):"
MOV		A,RSR
.stabn 68,0,30,L91
L91:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(30):"
AND    	A,@0X7F
.stabn 68,0,31,L92
L92:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(31):"
JBS		STATUS,2
.stabn 68,0,32,L93
L93:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_system_initial.h(32):"
JMP   	S_CLRLOOP
.stabn 68,0,34,L94
L94:
.stabn 224,0,0,L95
L95:
L$80:
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
.stabn 192,0,0,L97
L97:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\user_tcc.h",132,0,0,0
L98:
.stabn 68,0,7,L99
L99:
.stabn 68,0,8,L100
L100:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_tcc.h(8):"
mov a,@0b00001110
.stabn 68,0,9,L101
L101:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\user_tcc.h(9):"
contw
.stabn 68,0,11,L102
L102:
clr _TCC
.stabn 68,0,12,L103
L103:
LDA _RF,0,0
and a,@254
STA _RF,0,0
.stabn 68,0,14,L104
L104:
LDA _IOCF0,0,2
or a,@1
STA _IOCF0,0,2
.stabn 68,0,15,L105
L105:
mov a,@6
STA _TCC,0,0
.stabn 68,0,16,L106
L106:
.stabn 224,0,0,L107
L107:
L$96:
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
.stabn 192,0,0,L109
L109:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\user_bit.h",132,0,0,0
L110:
.stabn 68,0,19,L111
L111:
.stabn 68,0,20,L112
L112:
bc _bit_ad_interrupt,0
.stabn 68,0,21,L113
L113:
bc _bit_tcc_interrupt,1
.stabn 68,0,22,L114
L114:
bc _bit_first_ad,2
.stabn 68,0,23,L115
L115:
bc _bit_need_cmp,3
.stabn 68,0,24,L116
L116:
bc _bit_need_output,4
.stabn 68,0,25,L117
L117:
clr _reg_ad_temp_cnt+3
clr _reg_ad_temp_cnt+2
clr _reg_ad_temp_cnt+1
clr _reg_ad_temp_cnt
.stabn 68,0,26,L118
L118:
clr _reg_ad_calculate_cnt_cp+3
clr _reg_ad_calculate_cnt_cp+2
clr _reg_ad_calculate_cnt_cp+1
clr _reg_ad_calculate_cnt_cp
.stabn 68,0,27,L119
L119:
clr _reg_ad_calculate_cnt+3
clr _reg_ad_calculate_cnt+2
clr _reg_ad_calculate_cnt+1
clr _reg_ad_calculate_cnt
.stabn 68,0,28,L120
L120:
clr _reg_ad_average_cnt
.stabn 68,0,29,L121
L121:
.stabn 224,0,0,L122
L122:
L$108:
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
.stabn 192,0,0,L130
L130:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\user_output.h",132,0,0,0
L131:
.stabn 68,0,8,L132
L132:
.stabn 68,0,9,L133
L133:
jbs _bit_need_output,4
EXTJMP @L$124
.stabn 192,0,1,L134
L134:
.stabn 68,0,10,L135
L135:
.stabn 68,0,11,L136
L136:
bs _P71,1
.stabn 68,0,12,L137
L137:
LDA _reg_time_cnt,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _reg_time_cnt,0,0
ULTRIB ecx,0x32
jbs STATUS, cf
EXTJMP L$125
.stabn 192,0,2,L138
L138:
.stabn 68,0,13,L139
L139:
.stabn 68,0,14,L140
L140:
clr _reg_time_cnt
.stabn 68,0,15,L141
L141:
LDA _reg_time_cnt1,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _reg_time_cnt1,0,0
ULTRIB ecx,0x19
jbs STATUS, cf
EXTJMP L$125
.stabn 192,0,3,L142
L142:
.stabn 68,0,16,L143
L143:
.stabn 68,0,17,L144
L144:
clr _reg_time_cnt1
.stabn 68,0,18,L145
L145:
bc _bit_need_output,4
.stabn 68,0,19,L146
L146:
.stabn 224,0,3,L147
L147:
.stabn 68,0,20,L148
L148:
.stabn 224,0,2,L149
L149:
.stabn 68,0,21,L150
L150:
.stabn 224,0,1,L151
L151:
jmp @L$125
L$124:
.stabn 192,0,1,L152
L152:
.stabn 68,0,23,L153
L153:
.stabn 68,0,24,L154
L154:
bc _P71,1
.stabn 68,0,25,L155
L155:
.stabn 224,0,1,L156
L156:
L$125:
.stabn 68,0,26,L157
L157:
.stabn 224,0,0,L158
L158:
L$123:
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
.stabn 192,0,0,L162
L162:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\interrupt_vector.h",132,0,0,0
L163:
.stabn 68,0,16,L164
L164:
.stabn 68,0,17,L165
L165:
EQNEPRIB _flag,1
jbs STATUS,zf
EXTJMP @L$160
.stabn 192,0,1,L166
L166:
.stabn 68,0,18,L167
L167:
.stabn 68,0,19,L168
L168:
clr _flag
.stabn 68,0,20,L169
L169:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,22,L170
L170:
.stabn 224,0,1,L171
L171:
jmp @L$161
L$160:
.stabn 192,0,1,L172
L172:
.stabn 68,0,24,L173
L173:
.stabn 68,0,25,L174
L174:
mov a,@1
STA _flag,0,0
.stabn 68,0,26,L175
L175:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,27,L176
L176:
.stabn 224,0,1,L177
L177:
L$161:
.stabn 68,0,28,L178
L178:
.stabn 224,0,0,L179
L179:
L$159:
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
.stabn 192,0,0,L183
L183:
.stabn 68,0,36,L184
L184:
.stabn 68,0,39,L185
L185:
ILTRIB _second_count,0xfd
jbs STATUS, cf
EXTJMP L$181
.stabn 192,0,1,L186
L186:
.stabn 68,0,40,L187
L187:
.stabn 68,0,41,L188
L188:
clr _second_count
.stabn 68,0,42,L189
L189:
INCMW _timeout,0
.stabn 68,0,44,L190
L190:
call _ad_enable
.stabn 68,0,46,L191
L191:
.stabn 224,0,1,L192
L192:
L$181:
.stabn 68,0,48,L193
L193:
.stabn 224,0,0,L194
L194:
L$180:
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
.stabn 192,0,0,L200
L200:
.stabn 68,0,52,L201
L201:
.stabn 68,0,53,L202
L202:
LDA _IntVecIdx,0,0
mov ecx,a
EQNEPRIB ecx,10
jbc STATUS,zf
EXTJMP @L$198
EQNEPRIB ecx,13
jbc STATUS,zf
EXTJMP @L$199
jmp @L$197
.stabn 192,0,1,L203
L203:
.stabn 68,0,54,L204
L204:
L$198:
.stabn 68,0,57,L205
L205:
LDA _second_count,0,0
add a,@1
STA _second_count,0,0
.stabn 68,0,58,L206
L206:
call _timeout_handle
.stabn 68,0,59,L207
L207:
LDA _RF,0,0
and a,@254
STA _RF,0,0
.stabn 68,0,60,L208
L208:
mov a,@6
STA _TCC,0,0
.stabn 68,0,61,L209
L209:
jmp @L$197
L$199:
.stabn 68,0,64,L210
L210:
call _ad_read
mov a,eax
mov ecx,a
mov a,ecx
STA _adc_value,0,0
.stabn 68,0,65,L211
L211:
LDA _RE,0,0
and a,@223
STA _RE,0,0
.stabn 68,0,66,L212
L212:
.stabn 68,0,69,L213
L213:
.stabn 68,0,70,L214
L214:
.stabn 224,0,1,L215
L215:
L$197:
.stabn 68,0,71,L216
L216:
.stabn 224,0,0,L217
L217:
L$195:
reti
.STACK ALLInt_bp,local,0
public _TCC_l
public TCC_l_bp
.stabs "TCC_l:F15",36,0,0,_TCC_l
.section ".S13",C_CODE
.SYMDEF ".S13" LOWINT:2,9
_TCC_l:
.SYMDEF "_TCC_l" LOWINT:2,9
.stabn 192,0,0,L219
L219:
.stabn 68,0,84,L220
L220:
.stabn 68,0,85,L221
L221:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\interrupt_vector.h(85):"
MOV A,0x2
.stabn 68,0,85,L222
L222:
.stabn 68,0,86,L223
L223:
.stabn 224,0,0,L224
L224:
L$218:
reti
.STACK TCC_l_bp,local,0
public _ADC_l
public ADC_l_bp
.stabs "ADC_l:F15",36,0,0,_ADC_l
.section ".S14",C_CODE
.SYMDEF ".S14" LOWINT:3,12
_ADC_l:
.SYMDEF "_ADC_l" LOWINT:3,12
.stabn 192,0,0,L226
L226:
.stabn 68,0,89,L227
L227:
.stabn 68,0,90,L228
L228:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\interrupt_vector.h(90):"
MOV A,0x2
.stabn 68,0,90,L229
L229:
.stabn 68,0,91,L230
L230:
.stabn 224,0,0,L231
L231:
L$225:
reti
.STACK ADC_l_bp,local,0
public _pwm2_init
public pwm2_init_bp
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
.stabn 192,0,0,L233
L233:
.stabs "D:\外接项目\义隆单片机\Charger\Charger_301\B16AD.c",132,0,0,0
L234:
.stabn 68,0,19,L235
L235:
.stabn 68,0,20,L236
L236:
mov a,@2
STA _PWMCON,0,0
.stabn 68,0,21,L237
L237:
mov a,@255
STA _PRD2,0,0
.stabn 68,0,22,L238
L238:
mov a,@127
STA _DT2,0,0
.stabn 68,0,23,L239
L239:
mov a,@184
STA _TMRCON,0,0
.stabn 68,0,26,L240
L240:
.stabn 224,0,0,L241
L241:
L$232:
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
.stabn 192,0,0,L243
L243:
.stabn 68,0,28,L244
L244:
.stabn 68,0,29,L245
L245:
.stabn 224,0,0,L246
L246:
L$242:
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
public _pwm2_devrease
public pwm2_devrease_bp
.stabs "pwm2_devrease:F15",36,0,0,_pwm2_devrease
.section ".S17",C_CODE
.SYMDEF ".S17" 
_pwm2_devrease:
.SYMDEF "_pwm2_devrease" 
mov a,ecx
mov pwm2_devrease_bp-4,a
mov a,ecx+1
mov pwm2_devrease_bp-3,a
mov a,ecx+2
mov pwm2_devrease_bp-2,a
mov a,ecx+3
mov pwm2_devrease_bp-1,a
.stabn 192,0,0,L248
L248:
.stabn 68,0,31,L249
L249:
.stabn 68,0,33,L250
L250:
.stabn 224,0,0,L251
L251:
L$247:
mov a,pwm2_devrease_bp-4
mov ecx,a
mov a,pwm2_devrease_bp-3
mov ecx+1,a
mov a,pwm2_devrease_bp-2
mov ecx+2,a
mov a,pwm2_devrease_bp-1
mov ecx+3,a
ret
.STACK pwm2_devrease_bp,local,4
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
.stabn 192,0,0,L261
L261:
.stabn 68,0,41,L262
L262:
.stabn 68,0,42,L263
L263:
call _clear_all_ram
.stabn 68,0,43,L264
L264:
call _system_initial
.stabn 68,0,44,L265
L265:
call _time_tcc_pro
.stabn 68,0,45,L266
L266:
call _io_init
.stabn 68,0,46,L267
L267:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\B16AD.c(46):"
eni
.stabn 68,0,47,L268
L268:
.cfile "D:\外接项目\义隆单片机\Charger\Charger_301\B16AD.c(47):"
wdtc
.stabn 68,0,48,L269
L269:
call _b16ad_init
.stabn 68,0,49,L270
L270:
call _ad_init
jmp @L$254
.stabn 192,0,1,L271
L271:
.stabn 68,0,53,L272
L272:
L$256:
.stabn 192,0,2,L273
L273:
.stabn 68,0,55,L274
L274:
.stabn 68,0,56,L275
L275:
LDA _IOC70,0,2
or a,@2
STA _IOC70,0,2
.stabn 68,0,57,L276
L276:
call _b16ad_init
.stabn 68,0,58,L277
L277:
ILTRIB _adc_value,0x85
jbs STATUS, cf
EXTJMP L$259
.stabn 192,0,3,L278
L278:
.stabn 68,0,59,L279
L279:
.stabn 68,0,60,L280
L280:
call _Charger
.stabn 68,0,61,L281
L281:
.stabn 224,0,3,L282
L282:
L$259:
.stabn 68,0,62,L283
L283:
.stabn 224,0,2,L284
L284:
L$257:
.stabn 68,0,54,L285
L285:
jmp @L$256
.stabn 68,0,63,L286
L286:
.stabn 224,0,1,L287
L287:
L$254:
.stabn 68,0,52,L288
L288:
jmp @L$257
.stabn 68,0,64,L289
L289:
.stabn 224,0,0,L290
L290:
L$252:
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
.stabn 192,0,0,L292
L292:
.stabn 68,0,68,L293
L293:
.stabn 68,0,71,L294
L294:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,72,L295
L295:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,73,L296
L296:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,74,L297
L297:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,75,L298
L298:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@6
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,77,L299
L299:
.stabn 224,0,0,L300
L300:
L$291:
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
.stabn 192,0,0,L308
L308:
.stabn 68,0,83,L309
L309:
.stabn 68,0,84,L310
L310:
IGTRIB _adc_value,0x8d
jbs STATUS, cf
EXTJMP L$302
.stabn 192,0,1,L311
L311:
.stabn 68,0,85,L312
L312:
.stabn 68,0,86,L313
L313:
call _charger_half_hour_last
.stabn 68,0,87,L314
L314:
.stabn 224,0,1,L315
L315:
jmp @L$303
L$302:
.stabn 68,0,88,L316
L316:
IGTRIB _adc_value,0x93
jbs STATUS, cf
EXTJMP L$304
.stabn 192,0,1,L317
L317:
.stabn 68,0,89,L318
L318:
.stabn 68,0,91,L319
L319:
call _charger_half_hour
.stabn 68,0,92,L320
L320:
.stabn 224,0,1,L321
L321:
jmp @L$305
L$304:
.stabn 68,0,93,L322
L322:
IGTRIB _adc_value,0x90
jbs STATUS, cf
EXTJMP L$306
.stabn 192,0,1,L323
L323:
.stabn 68,0,94,L324
L324:
.stabn 68,0,96,L325
L325:
call _charger_half_hour
.stabn 68,0,97,L326
L326:
.stabn 224,0,1,L327
L327:
jmp @L$307
L$306:
.stabn 192,0,1,L328
L328:
.stabn 68,0,99,L329
L329:
.stabn 68,0,101,L330
L330:
call _charger_eight_hours
.stabn 68,0,102,L331
L331:
.stabn 224,0,1,L332
L332:
L$307:
L$305:
L$303:
.stabn 68,0,103,L333
L333:
.stabn 224,0,0,L334
L334:
L$301:
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
.stabn 192,0,0,L343
L343:
.stabn 68,0,107,L344
L344:
.stabn 68,0,110,L345
L345:
clr charger_an_hour_bp-5
.stabn 68,0,111,L346
L346:
clr _timeout+1
clr _timeout
jmp @L$337
L$336:
.stabn 192,0,1,L347
L347:
.stabn 68,0,113,L348
L348:
.stabn 68,0,114,L349
L349:
ILTRIB _adc_value,0x93
jbc STATUS, cf
EXTJMP L$339
.stabn 192,0,2,L350
L350:
.stabn 68,0,115,L351
L351:
.stabn 68,0,117,L352
L352:
mov a,@1
STA charger_an_hour_bp-5,0,0
.stabn 68,0,118,L353
L353:
jmp @L$338
.stabn 68,0,119,L354
L354:
.stabn 224,0,2,L355
L355:
L$339:
.stabn 68,0,120,L356
L356:
ULTRIW _timeout,0xa
jbs STATUS, cf
EXTJMP L$341
.stabn 192,0,2,L357
L357:
.stabn 68,0,121,L358
L358:
.stabn 68,0,122,L359
L359:
call _charger_floating_an_hour
.stabn 68,0,123,L360
L360:
.stabn 224,0,2,L361
L361:
L$341:
.stabn 68,0,125,L362
L362:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,126,L363
L363:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,127,L364
L364:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,128,L365
L365:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,129,L366
L366:
.stabn 224,0,1,L367
L367:
L$337:
.stabn 68,0,112,L368
L368:
jmp @L$336
L$338:
.stabn 68,0,130,L369
L369:
call _charger_half_hour
.stabn 68,0,131,L370
L370:
.stabn 224,0,0,L371
L371:
L$335:
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
.stabn 192,0,0,L380
L380:
.stabn 68,0,134,L381
L381:
.stabn 68,0,137,L382
L382:
clr charger_half_hour_bp-5
.stabn 68,0,138,L383
L383:
clr _timeout+1
clr _timeout
jmp @L$374
L$373:
.stabn 192,0,1,L384
L384:
.stabn 68,0,140,L385
L385:
.stabn 68,0,141,L386
L386:
ILTRIB _adc_value,0x8d
jbc STATUS, cf
EXTJMP L$376
.stabn 192,0,2,L387
L387:
.stabn 68,0,142,L388
L388:
.stabn 68,0,144,L389
L389:
mov a,@1
STA charger_half_hour_bp-5,0,0
.stabn 68,0,145,L390
L390:
.stabn 224,0,2,L391
L391:
L$376:
.stabn 68,0,146,L392
L392:
ULTRIW _timeout,0xa
jbs STATUS, cf
EXTJMP L$378
.stabn 192,0,2,L393
L393:
.stabn 68,0,147,L394
L394:
.stabn 68,0,148,L395
L395:
call _charger_floating_an_hour
.stabn 68,0,149,L396
L396:
.stabn 224,0,2,L397
L397:
L$378:
.stabn 68,0,151,L398
L398:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,152,L399
L399:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,153,L400
L400:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,154,L401
L401:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,155,L402
L402:
.stabn 224,0,1,L403
L403:
L$374:
.stabn 68,0,139,L404
L404:
jmp @L$373
.stabn 68,0,156,L405
L405:
call _charger_half_hour_last
.stabn 68,0,157,L406
L406:
.stabn 224,0,0,L407
L407:
L$372:
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
.stabn 192,0,0,L414
L414:
.stabn 68,0,160,L415
L415:
.stabn 68,0,163,L416
L416:
clr charger_half_hour_last_bp-5
.stabn 68,0,164,L417
L417:
clr _timeout+1
clr _timeout
jmp @L$410
L$409:
.stabn 192,0,1,L418
L418:
.stabn 68,0,166,L419
L419:
.stabn 68,0,167,L420
L420:
ULTRIW _timeout,0xa
jbs STATUS, cf
EXTJMP L$412
.stabn 192,0,2,L421
L421:
.stabn 68,0,168,L422
L422:
.stabn 68,0,169,L423
L423:
call _charger_floating_an_hour
.stabn 68,0,170,L424
L424:
jmp @L$411
.stabn 68,0,171,L425
L425:
.stabn 224,0,2,L426
L426:
L$412:
.stabn 68,0,173,L427
L427:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,174,L428
L428:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,175,L429
L429:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,176,L430
L430:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,177,L431
L431:
.stabn 224,0,1,L432
L432:
L$410:
.stabn 68,0,165,L433
L433:
jmp @L$409
L$411:
.stabn 68,0,179,L434
L434:
.stabn 224,0,0,L435
L435:
L$408:
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
.stabn 192,0,0,L444
L444:
.stabn 68,0,182,L445
L445:
.stabn 68,0,185,L446
L446:
clr charger_eight_hours_bp-5
.stabn 68,0,186,L447
L447:
clr _timeout+1
clr _timeout
jmp @L$438
L$437:
.stabn 192,0,1,L448
L448:
.stabn 68,0,188,L449
L449:
.stabn 68,0,189,L450
L450:
ILTRIB _adc_value,0x90
jbc STATUS, cf
EXTJMP L$440
.stabn 192,0,2,L451
L451:
.stabn 68,0,190,L452
L452:
.stabn 68,0,192,L453
L453:
mov a,@1
STA charger_eight_hours_bp-5,0,0
.stabn 68,0,193,L454
L454:
jmp @L$439
.stabn 68,0,194,L455
L455:
.stabn 224,0,2,L456
L456:
L$440:
.stabn 68,0,195,L457
L457:
ULTRIW _timeout,0xa
jbs STATUS, cf
EXTJMP L$442
.stabn 192,0,2,L458
L458:
.stabn 68,0,196,L459
L459:
.stabn 68,0,197,L460
L460:
call _charger_floating_an_hour
.stabn 68,0,198,L461
L461:
.stabn 224,0,2,L462
L462:
L$442:
.stabn 68,0,200,L463
L463:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@2
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,201,L464
L464:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,202,L465
L465:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@4
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,203,L466
L466:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,204,L467
L467:
.stabn 224,0,1,L468
L468:
L$438:
.stabn 68,0,187,L469
L469:
jmp @L$437
L$439:
.stabn 68,0,205,L470
L470:
call _charger_half_hour
.stabn 68,0,207,L471
L471:
.stabn 224,0,0,L472
L472:
L$436:
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
.stabn 192,0,0,L483
L483:
.stabn 68,0,210,L484
L484:
.stabn 68,0,211,L485
L485:
clr _timeout+1
clr _timeout
jmp @L$475
L$474:
.stabn 192,0,1,L486
L486:
.stabn 68,0,213,L487
L487:
.stabn 68,0,215,L488
L488:
IGTRIB _adc_value,0x85
jbc STATUS, cf
EXTJMP L$477
.stabn 192,0,2,L489
L489:
.stabn 68,0,216,L490
L490:
.stabn 68,0,217,L491
L491:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,218,L492
L492:
.stabn 224,0,2,L493
L493:
L$477:
.stabn 68,0,219,L494
L494:
IGTRIB _adc_value,0x85
jbs STATUS, cf
EXTJMP L$479
.stabn 192,0,2,L495
L495:
.stabn 68,0,220,L496
L496:
.stabn 68,0,221,L497
L497:
mov a,@0
mov IO_H_L_bp+1,a
mov a,@5
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,223,L498
L498:
LDA _IOC50,0,2
or a,@32
STA _IOC50,0,2
.stabn 68,0,224,L499
L499:
.stabn 224,0,2,L500
L500:
L$479:
.stabn 68,0,226,L501
L501:
ULTRIW _timeout,0xa
jbs STATUS, cf
EXTJMP L$481
.stabn 192,0,2,L502
L502:
.stabn 68,0,227,L503
L503:
.stabn 68,0,229,L504
L504:
mov a,@1
mov IO_H_L_bp+1,a
mov a,@3
mov IO_H_L_bp+0,a
.STACK IO_H_L_bp,parameter,2
call _IO_H_L
.stabn 68,0,231,L505
L505:
.stabn 224,0,2,L506
L506:
L$481:
.stabn 68,0,232,L507
L507:
.stabn 224,0,1,L508
L508:
L$475:
.stabn 68,0,212,L509
L509:
jmp @L$474
.stabn 68,0,233,L510
L510:
.stabn 224,0,0,L511
L511:
L$473:
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
.stabn 192,0,0,L513
L513:
.stabn 68,0,242,L514
L514:
.stabn 68,0,255,L515
L515:
mov a,@111
STA _SYS_CON,0,0
.stabn 68,0,256,L516
L516:
mov a,@1
STA _IOC50,0,2
.stabn 68,0,257,L517
L517:
clr _PORT5
.stabn 68,0,258,L518
L518:
mov a,@0
STA _IOC60,0,2
.stabn 68,0,259,L519
L519:
clr _PORT6
.stabn 68,0,260,L520
L520:
mov a,@0
STA _IOC70,0,2
.stabn 68,0,261,L521
L521:
clr _PORT7
.stabn 68,0,263,L522
L522:
.stabn 224,0,0,L523
L523:
L$512:
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
.stabn 192,0,0,L542
L542:
.stabn 68,0,268,L543
L543:
.stabn 68,0,270,L544
L544:
LDA IO_H_L_bp+0,0,0
mov ecx,a
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$527
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$530
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$533
EQNEPRIB ecx,5
jbc STATUS,zf
EXTJMP @L$536
EQNEPRIB ecx,6
jbc STATUS,zf
EXTJMP @L$539
jmp @L$526
.stabn 192,0,1,L545
L545:
.stabn 68,0,271,L546
L546:
L$527:
.stabn 68,0,272,L547
L547:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$528
.stabn 68,0,272,L548
L548:
bs _P55,5
jmp @L$526
L$528:
.stabn 68,0,273,L549
L549:
bc _P55,5
.stabn 68,0,274,L550
L550:
jmp @L$526
L$530:
.stabn 68,0,276,L551
L551:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$531
.stabn 68,0,276,L552
L552:
bs _P70,0
jmp @L$526
L$531:
.stabn 68,0,277,L553
L553:
bc _P70,0
.stabn 68,0,278,L554
L554:
jmp @L$526
L$533:
.stabn 68,0,279,L555
L555:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$534
.stabn 68,0,279,L556
L556:
bs _P71,1
jmp @L$526
L$534:
.stabn 68,0,280,L557
L557:
bc _P71,1
.stabn 68,0,281,L558
L558:
jmp @L$526
L$536:
.stabn 68,0,283,L559
L559:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$537
.stabn 68,0,283,L560
L560:
bs _P67,7
jmp @L$526
L$537:
.stabn 68,0,284,L561
L561:
bc _P67,7
.stabn 68,0,285,L562
L562:
jmp @L$526
L$539:
.stabn 68,0,286,L563
L563:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$540
.stabn 68,0,286,L564
L564:
bs _P51,1
jmp @L$526
L$540:
.stabn 68,0,287,L565
L565:
bc _P51,1
.stabn 68,0,288,L566
L566:
.stabn 68,0,289,L567
L567:
.stabn 68,0,291,L568
L568:
.stabn 224,0,1,L569
L569:
L$526:
.stabn 68,0,294,L570
L570:
.stabn 224,0,0,L571
L571:
L$524:
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
