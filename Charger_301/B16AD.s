.autoimport
EM78P301N EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\B16AD.c",100,0,3,0
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
public _ad_init
public ad_init_bp
.section ".code"
.stabs "ad_init:F15",36,0,0,_ad_init
.section ".S0",C_CODE
.SYMDEF ".S0" 
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
.stabn 192,0,0,L2
L2:
.stabs "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\user_ad.h",132,0,0,0
L3:
.stabn 68,0,11,L4
L4:
.stabn 68,0,12,L5
L5:
mov a,@4
STA _AISR,0,0
.stabn 68,0,13,L6
L6:
mov a,@8
STA _ADCON,0,0
.stabn 68,0,14,L7
L7:
mov a,@6
STA _ADOC,0,0
.stabn 68,0,15,L8
L8:
mov a,@136
STA _RE,0,0
.stabn 68,0,16,L9
L9:
clr _RF
.stabn 68,0,17,L10
L10:
bs _ADRUN,4
.stabn 68,0,18,L11
L11:
LDA _IOCE0,0,2
or a,@32
STA _IOCE0,0,2
.stabn 68,0,19,L12
L12:
.stabn 224,0,0,L13
L13:
L$1:
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
.stabs "ad_read:F14",36,0,0,_ad_read
.section ".S1",C_CODE
.SYMDEF ".S1" 
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
.stabs "result:14",128,0,0,ad_read_bp-5
.stabn 192,0,0,L15
L15:
.stabn 68,0,22,L16
L16:
.stabn 68,0,23,L17
L17:
clr ad_read_bp-5
.stabn 68,0,24,L18
L18:
LDA _ADDATA1H,0,0
mov ecx,a
LSHUMIB ecx,8,0
mov a,ecx
STA ad_read_bp-5,0,0
.stabn 68,0,25,L19
L19:
LDA ad_read_bp-5,0,0
add a,_ADDATA1L
STA ad_read_bp-5,0,0
.stabn 68,0,26,L20
L20:
LDA ad_read_bp-5,0,0
mov eax,a
.stabn 68,0,27,L21
L21:
.stabn 224,0,0,L22
L22:
L$14:
mov a,ad_read_bp-4
mov ecx,a
mov a,ad_read_bp-3
mov ecx+1,a
mov a,ad_read_bp-2
mov ecx+2,a
mov a,ad_read_bp-1
mov ecx+3,a
ret
.STACK ad_read_bp,local,5
public _ad_enable
public ad_enable_bp
.stabs "ad_enable:F15",36,0,0,_ad_enable
.section ".S2",C_CODE
.SYMDEF ".S2" 
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
.stabn 192,0,0,L24
L24:
.stabn 68,0,30,L25
L25:
.stabn 68,0,31,L26
L26:
LDA _ADCON,0,0
or a,@8
STA _ADCON,0,0
.stabn 68,0,32,L27
L27:
.stabn 224,0,0,L28
L28:
L$23:
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
.section ".S3",C_CODE
.SYMDEF ".S3" 
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
.stabn 192,0,0,L30
L30:
.stabn 68,0,35,L31
L31:
.stabn 68,0,36,L32
L32:
LDA _ADCON,0,0
and a,@247
STA _ADCON,0,0
.stabn 68,0,37,L33
L33:
.stabn 224,0,0,L34
L34:
L$29:
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
.section ".S4",C_CODE
.SYMDEF ".S4" 
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
.stabn 192,0,0,L36
L36:
.stabs "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\user_system_initial.h",132,0,0,0
L37:
.stabn 68,0,5,L38
L38:
.stabn 68,0,6,L39
L39:
mov a,@111
STA _SYS_CON,0,0
.stabn 68,0,7,L40
L40:
mov a,@1
STA _IOC50,0,2
.stabn 68,0,8,L41
L41:
clr _PORT5
.stabn 68,0,9,L42
L42:
mov a,@0
STA _IOC60,0,2
.stabn 68,0,10,L43
L43:
clr _PORT6
.stabn 68,0,11,L44
L44:
mov a,@0
STA _IOC70,0,2
.stabn 68,0,12,L45
L45:
clr _PORT7
.stabn 68,0,13,L46
L46:
.stabn 224,0,0,L47
L47:
L$35:
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
public _time_tcc_pro
public time_tcc_pro_bp
.stabs "time_tcc_pro:F15",36,0,0,_time_tcc_pro
.section ".S5",C_CODE
.SYMDEF ".S5" 
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
.stabn 192,0,0,L49
L49:
.stabs "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\user_tcc.h",132,0,0,0
L50:
.stabn 68,0,7,L51
L51:
.stabn 68,0,8,L52
L52:
.cfile "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\user_tcc.h(8):"
mov a,@0b00001110
.stabn 68,0,9,L53
L53:
.cfile "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\user_tcc.h(9):"
contw
.stabn 68,0,11,L54
L54:
clr _TCC
.stabn 68,0,12,L55
L55:
LDA _RF,0,0
and a,@254
STA _RF,0,0
.stabn 68,0,14,L56
L56:
LDA _IOCF0,0,2
or a,@1
STA _IOCF0,0,2
.stabn 68,0,15,L57
L57:
mov a,@6
STA _TCC,0,0
.stabn 68,0,16,L58
L58:
.stabn 224,0,0,L59
L59:
L$48:
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
.section ".S6",C_CODE
.SYMDEF ".S6" 
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
.stabn 192,0,0,L61
L61:
.stabs "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\user_bit.h",132,0,0,0
L62:
.stabn 68,0,19,L63
L63:
.stabn 68,0,20,L64
L64:
bc _bit_ad_interrupt,0
.stabn 68,0,21,L65
L65:
bc _bit_tcc_interrupt,1
.stabn 68,0,22,L66
L66:
bc _bit_first_ad,2
.stabn 68,0,23,L67
L67:
bc _bit_need_cmp,3
.stabn 68,0,24,L68
L68:
bc _bit_need_output,4
.stabn 68,0,25,L69
L69:
clr _reg_ad_temp_cnt+3
clr _reg_ad_temp_cnt+2
clr _reg_ad_temp_cnt+1
clr _reg_ad_temp_cnt
.stabn 68,0,26,L70
L70:
clr _reg_ad_calculate_cnt_cp+3
clr _reg_ad_calculate_cnt_cp+2
clr _reg_ad_calculate_cnt_cp+1
clr _reg_ad_calculate_cnt_cp
.stabn 68,0,27,L71
L71:
clr _reg_ad_calculate_cnt+3
clr _reg_ad_calculate_cnt+2
clr _reg_ad_calculate_cnt+1
clr _reg_ad_calculate_cnt
.stabn 68,0,28,L72
L72:
clr _reg_ad_average_cnt
.stabn 68,0,29,L73
L73:
.stabn 224,0,0,L74
L74:
L$60:
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
.section ".S7",C_CODE
.SYMDEF ".S7" 
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
.stabn 192,0,0,L82
L82:
.stabs "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\user_output.h",132,0,0,0
L83:
.stabn 68,0,8,L84
L84:
.stabn 68,0,9,L85
L85:
jbs _bit_need_output,4
EXTJMP @L$76
.stabn 192,0,1,L86
L86:
.stabn 68,0,10,L87
L87:
.stabn 68,0,11,L88
L88:
bs _P71,1
.stabn 68,0,12,L89
L89:
LDA _reg_time_cnt,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _reg_time_cnt,0,0
ULTRIB ecx,0x32
jbs STATUS, cf
EXTJMP L$77
.stabn 192,0,2,L90
L90:
.stabn 68,0,13,L91
L91:
.stabn 68,0,14,L92
L92:
clr _reg_time_cnt
.stabn 68,0,15,L93
L93:
LDA _reg_time_cnt1,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _reg_time_cnt1,0,0
ULTRIB ecx,0x19
jbs STATUS, cf
EXTJMP L$77
.stabn 192,0,3,L94
L94:
.stabn 68,0,16,L95
L95:
.stabn 68,0,17,L96
L96:
clr _reg_time_cnt1
.stabn 68,0,18,L97
L97:
bc _bit_need_output,4
.stabn 68,0,19,L98
L98:
.stabn 224,0,3,L99
L99:
.stabn 68,0,20,L100
L100:
.stabn 224,0,2,L101
L101:
.stabn 68,0,21,L102
L102:
.stabn 224,0,1,L103
L103:
jmp @L$77
L$76:
.stabn 192,0,1,L104
L104:
.stabn 68,0,23,L105
L105:
.stabn 68,0,24,L106
L106:
bc _P71,1
.stabn 68,0,25,L107
L107:
.stabn 224,0,1,L108
L108:
L$77:
.stabn 68,0,26,L109
L109:
.stabn 224,0,0,L110
L110:
L$75:
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
public _timeout_handle
public timeout_handle_bp
.section ".code"
.stabs "timeout_handle:F15",36,0,0,_timeout_handle
.section ".S8",C_CODE
.SYMDEF ".S8" 
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
.stabn 192,0,0,L114
L114:
.stabs "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\interrupt_vector.h",132,0,0,0
L115:
.stabn 68,0,14,L116
L116:
.stabn 68,0,16,L117
L117:
ILTRIB _second_count,0xfd
jbs STATUS, cf
EXTJMP L$112
.stabn 192,0,1,L118
L118:
.stabn 68,0,17,L119
L119:
.stabn 68,0,18,L120
L120:
clr _second_count
.stabn 68,0,19,L121
L121:
LDA _timeout,0,0
add a,@1
STA _timeout,0,0
.stabn 68,0,21,L122
L122:
call _ad_enable
.stabn 68,0,22,L123
L123:
.stabn 224,0,1,L124
L124:
L$112:
.stabn 68,0,23,L125
L125:
.stabn 224,0,0,L126
L126:
L$111:
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
.section ".S9",C_CODE
.SYMDEF ".S9" INT:-1
_ALLInt:
.SYMDEF "_ALLInt" INT:-1
.stabn 192,0,0,L132
L132:
.stabn 68,0,27,L133
L133:
.stabn 68,0,28,L134
L134:
LDA _IntVecIdx,0,0
mov ecx,a
EQNEPRIB ecx,10
jbc STATUS,zf
EXTJMP @L$130
EQNEPRIB ecx,13
jbc STATUS,zf
EXTJMP @L$131
jmp @L$129
.stabn 192,0,1,L135
L135:
.stabn 68,0,29,L136
L136:
L$130:
.stabn 68,0,32,L137
L137:
LDA _second_count,0,0
add a,@1
STA _second_count,0,0
.stabn 68,0,33,L138
L138:
call _timeout_handle
.stabn 68,0,34,L139
L139:
LDA _RF,0,0
and a,@254
STA _RF,0,0
.stabn 68,0,35,L140
L140:
mov a,@6
STA _TCC,0,0
.stabn 68,0,36,L141
L141:
jmp @L$129
L$131:
.stabn 68,0,39,L142
L142:
bs _bit_ad_interrupt,0
.stabn 68,0,40,L143
L143:
call _ad_read
mov a,eax
mov ecx,a
mov a,ecx
STA _adc_value,0,0
.stabn 68,0,41,L144
L144:
call _ad_disable
.stabn 68,0,42,L145
L145:
LDA _RE,0,0
and a,@223
STA _RE,0,0
.stabn 68,0,43,L146
L146:
.stabn 68,0,46,L147
L147:
.stabn 68,0,47,L148
L148:
.stabn 224,0,1,L149
L149:
L$129:
.stabn 68,0,48,L150
L150:
.stabn 224,0,0,L151
L151:
L$127:
reti
.STACK ALLInt_bp,local,0
public _TCC_l
public TCC_l_bp
.stabs "TCC_l:F15",36,0,0,_TCC_l
.section ".S10",C_CODE
.SYMDEF ".S10" LOWINT:2,9
_TCC_l:
.SYMDEF "_TCC_l" LOWINT:2,9
.stabn 192,0,0,L153
L153:
.stabn 68,0,61,L154
L154:
.stabn 68,0,62,L155
L155:
.cfile "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\interrupt_vector.h(62):"
MOV A,0x2
.stabn 68,0,62,L156
L156:
.stabn 68,0,63,L157
L157:
.stabn 224,0,0,L158
L158:
L$152:
reti
.STACK TCC_l_bp,local,0
public _ADC_l
public ADC_l_bp
.stabs "ADC_l:F15",36,0,0,_ADC_l
.section ".S11",C_CODE
.SYMDEF ".S11" LOWINT:3,12
_ADC_l:
.SYMDEF "_ADC_l" LOWINT:3,12
.stabn 192,0,0,L160
L160:
.stabn 68,0,66,L161
L161:
.stabn 68,0,67,L162
L162:
.cfile "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\interrupt_vector.h(67):"
MOV A,0x2
.stabn 68,0,67,L163
L163:
.stabn 68,0,68,L164
L164:
.stabn 224,0,0,L165
L165:
L$159:
reti
.STACK ADC_l_bp,local,0
.section ".data"
public _timeout
.align 1
_timeout:
.SYMDEF "_timeout" LEN:1
db 0
.stabs "timeout:G1",32,0,0,_timeout
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S12",C_CODE
.SYMDEF ".S12" 
_main:
.SYMDEF "_main" 
.stabn 192,0,0,L175
L175:
.stabs "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\B16AD.c",132,0,0,0
L176:
.stabn 68,0,81,L177
L177:
.stabn 68,0,82,L178
L178:
call _system_initial
.stabn 68,0,83,L179
L179:
call _time_tcc_pro
.stabn 68,0,84,L180
L180:
call _set_all_bit_ram
jmp @L$168
L$167:
.stabn 192,0,1,L181
L181:
.stabn 68,0,86,L182
L182:
.stabn 68,0,87,L183
L183:
.cfile "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\B16AD.c(87):"
eni
.stabn 68,0,88,L184
L184:
.cfile "C:\Users\Administrator\Desktop\�½��ļ��� (4)\301\B16AD.c(88):"
wdtc
jmp @L$171
L$170:
.stabn 192,0,2,L185
L185:
.stabn 68,0,90,L186
L186:
.stabn 68,0,91,L187
L187:
call _b16ad_init
.stabn 68,0,92,L188
L188:
LDA _adc_value,0,0
mov ecx,a
ULTRIB ecx,0xa4
jbs STATUS, cf
EXTJMP L$173
.stabn 192,0,3,L189
L189:
.stabn 68,0,93,L190
L190:
.stabn 68,0,94,L191
L191:
call _Charger
.stabn 68,0,95,L192
L192:
.stabn 224,0,3,L193
L193:
L$173:
.stabn 68,0,96,L194
L194:
.stabn 224,0,2,L195
L195:
L$171:
.stabn 68,0,89,L196
L196:
jmp @L$170
.stabn 68,0,97,L197
L197:
.stabn 224,0,1,L198
L198:
L$168:
.stabn 68,0,85,L199
L199:
jmp @L$167
.stabn 68,0,98,L200
L200:
.stabn 224,0,0,L201
L201:
L$166:
ret
.STACK main_bp,local,0
public _b16ad_init
public b16ad_init_bp
.stabs "b16ad_init:F15",36,0,0,_b16ad_init
.section ".S13",C_CODE
.SYMDEF ".S13" 
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
.stabn 192,0,0,L203
L203:
.stabn 68,0,102,L204
L204:
.stabn 68,0,105,L205
L205:
.stabn 224,0,0,L206
L206:
L$202:
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
.section ".S14",C_CODE
.SYMDEF ".S14" 
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
.stabn 192,0,0,L214
L214:
.stabn 68,0,111,L215
L215:
.stabn 68,0,112,L216
L216:
LDA _adc_value,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
IGTRIW ecx,0x8199
jbs STATUS, cf
EXTJMP L$208
.stabn 192,0,1,L217
L217:
.stabn 68,0,113,L218
L218:
.stabn 68,0,114,L219
L219:
call _charger_half_hour_last
.stabn 68,0,115,L220
L220:
.stabn 224,0,1,L221
L221:
jmp @L$209
L$208:
.stabn 68,0,116,L222
L222:
LDA _adc_value,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
IGTRIW ecx,0x8266
jbs STATUS, cf
EXTJMP L$210
.stabn 192,0,1,L223
L223:
.stabn 68,0,117,L224
L224:
.stabn 68,0,119,L225
L225:
call _charger_half_hour
.stabn 68,0,120,L226
L226:
.stabn 224,0,1,L227
L227:
jmp @L$211
L$210:
.stabn 68,0,121,L228
L228:
LDA _adc_value,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
IGTRIW ecx,0x8332
jbs STATUS, cf
EXTJMP L$212
.stabn 192,0,1,L229
L229:
.stabn 68,0,122,L230
L230:
.stabn 68,0,124,L231
L231:
call _charger_half_hour
.stabn 68,0,125,L232
L232:
.stabn 224,0,1,L233
L233:
jmp @L$213
L$212:
.stabn 192,0,1,L234
L234:
.stabn 68,0,127,L235
L235:
.stabn 68,0,129,L236
L236:
call _charger_eight_hours
.stabn 68,0,130,L237
L237:
.stabn 224,0,1,L238
L238:
L$213:
L$211:
L$209:
.stabn 68,0,131,L239
L239:
.stabn 224,0,0,L240
L240:
L$207:
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
.section ".S15",C_CODE
.SYMDEF ".S15" 
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
.stabn 192,0,0,L249
L249:
.stabn 68,0,135,L250
L250:
.stabn 68,0,138,L251
L251:
clr charger_an_hour_bp-5
.stabn 68,0,139,L252
L252:
clr _timeout
jmp @L$243
L$242:
.stabn 192,0,1,L253
L253:
.stabn 68,0,141,L254
L254:
.stabn 68,0,142,L255
L255:
LDA _adc_value,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
ILTRIW ecx,0x8266
jbc STATUS, cf
EXTJMP L$245
.stabn 192,0,2,L256
L256:
.stabn 68,0,143,L257
L257:
.stabn 68,0,145,L258
L258:
mov a,@1
STA charger_an_hour_bp-5,0,0
.stabn 68,0,146,L259
L259:
jmp @L$244
.stabn 68,0,147,L260
L260:
.stabn 224,0,2,L261
L261:
L$245:
.stabn 68,0,148,L262
L262:
LDA _timeout,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
NEPRIW ecx,3600,@L$247
.stabn 192,0,2,L263
L263:
.stabn 68,0,149,L264
L264:
.stabn 68,0,150,L265
L265:
call _charger_floating_an_hour
.stabn 68,0,151,L266
L266:
.stabn 224,0,2,L267
L267:
L$247:
.stabn 68,0,153,L268
L268:
.stabn 224,0,1,L269
L269:
L$243:
.stabn 68,0,140,L270
L270:
jmp @L$242
L$244:
.stabn 68,0,154,L271
L271:
call _charger_half_hour
.stabn 68,0,155,L272
L272:
.stabn 224,0,0,L273
L273:
L$241:
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
.section ".S16",C_CODE
.SYMDEF ".S16" 
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
.stabn 192,0,0,L282
L282:
.stabn 68,0,158,L283
L283:
.stabn 68,0,161,L284
L284:
clr charger_half_hour_bp-5
.stabn 68,0,162,L285
L285:
clr _timeout
jmp @L$276
L$275:
.stabn 192,0,1,L286
L286:
.stabn 68,0,164,L287
L287:
.stabn 68,0,165,L288
L288:
LDA _adc_value,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
ILTRIW ecx,0x8199
jbc STATUS, cf
EXTJMP L$278
.stabn 192,0,2,L289
L289:
.stabn 68,0,166,L290
L290:
.stabn 68,0,168,L291
L291:
mov a,@1
STA charger_half_hour_bp-5,0,0
.stabn 68,0,169,L292
L292:
.stabn 224,0,2,L293
L293:
L$278:
.stabn 68,0,170,L294
L294:
LDA _timeout,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
NEPRIW ecx,1800,@L$280
.stabn 192,0,2,L295
L295:
.stabn 68,0,171,L296
L296:
.stabn 68,0,172,L297
L297:
call _charger_floating_an_hour
.stabn 68,0,173,L298
L298:
.stabn 224,0,2,L299
L299:
L$280:
.stabn 68,0,175,L300
L300:
.stabn 224,0,1,L301
L301:
L$276:
.stabn 68,0,163,L302
L302:
jmp @L$275
.stabn 68,0,176,L303
L303:
call _charger_half_hour_last
.stabn 68,0,177,L304
L304:
.stabn 224,0,0,L305
L305:
L$274:
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
.section ".S17",C_CODE
.SYMDEF ".S17" 
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
.stabn 192,0,0,L312
L312:
.stabn 68,0,180,L313
L313:
.stabn 68,0,183,L314
L314:
clr charger_half_hour_last_bp-5
.stabn 68,0,184,L315
L315:
clr _timeout
jmp @L$308
L$307:
.stabn 192,0,1,L316
L316:
.stabn 68,0,186,L317
L317:
.stabn 68,0,187,L318
L318:
LDA _timeout,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
NEPRIW ecx,1800,@L$310
.stabn 192,0,2,L319
L319:
.stabn 68,0,188,L320
L320:
.stabn 68,0,189,L321
L321:
call _charger_floating_an_hour
.stabn 68,0,190,L322
L322:
jmp @L$309
.stabn 68,0,191,L323
L323:
.stabn 224,0,2,L324
L324:
L$310:
.stabn 68,0,193,L325
L325:
.stabn 224,0,1,L326
L326:
L$308:
.stabn 68,0,185,L327
L327:
jmp @L$307
L$309:
.stabn 68,0,195,L328
L328:
.stabn 224,0,0,L329
L329:
L$306:
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
.section ".S18",C_CODE
.SYMDEF ".S18" 
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
.stabn 192,0,0,L338
L338:
.stabn 68,0,198,L339
L339:
.stabn 68,0,201,L340
L340:
clr charger_eight_hours_bp-5
.stabn 68,0,202,L341
L341:
clr _timeout
jmp @L$332
L$331:
.stabn 192,0,1,L342
L342:
.stabn 68,0,204,L343
L343:
.stabn 68,0,205,L344
L344:
LDA _adc_value,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
ILTRIW ecx,0x8332
jbc STATUS, cf
EXTJMP L$334
.stabn 192,0,2,L345
L345:
.stabn 68,0,206,L346
L346:
.stabn 68,0,208,L347
L347:
mov a,@1
STA charger_eight_hours_bp-5,0,0
.stabn 68,0,209,L348
L348:
call _charger_half_hour
.stabn 68,0,210,L349
L349:
jmp @L$333
.stabn 68,0,211,L350
L350:
.stabn 224,0,2,L351
L351:
L$334:
.stabn 68,0,212,L352
L352:
LDA _timeout,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
NEPRIW ecx,28800,@L$336
.stabn 192,0,2,L353
L353:
.stabn 68,0,213,L354
L354:
.stabn 68,0,214,L355
L355:
call _charger_floating_an_hour
.stabn 68,0,215,L356
L356:
.stabn 224,0,2,L357
L357:
L$336:
.stabn 68,0,217,L358
L358:
.stabn 224,0,1,L359
L359:
L$332:
.stabn 68,0,203,L360
L360:
jmp @L$331
L$333:
.stabn 68,0,219,L361
L361:
.stabn 224,0,0,L362
L362:
L$330:
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
.section ".S19",C_CODE
.SYMDEF ".S19" 
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
.stabn 192,0,0,L369
L369:
.stabn 68,0,222,L370
L370:
.stabn 68,0,223,L371
L371:
clr _timeout
L$364:
.stabn 68,0,224,L372
L372:
L$365:
.stabn 68,0,224,L373
L373:
jmp @L$364
.stabn 192,0,1,L374
L374:
.stabn 68,0,225,L375
L375:
.stabn 68,0,227,L376
L376:
LDA _timeout,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clra
jbc ecx,7
mov a,@0xff
mov ecx+1,a
ILTRIW ecx,0x8e10
jbs STATUS, cf
EXTJMP L$367
.stabn 192,0,2,L377
L377:
.stabn 68,0,228,L378
L378:
.stabn 68,0,231,L379
L379:
.stabn 224,0,2,L380
L380:
L$367:
.stabn 68,0,232,L381
L381:
.stabn 224,0,1,L382
L382:
.stabn 68,0,233,L383
L383:
.stabn 224,0,0,L384
L384:
L$363:
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
.section ".S20",C_CODE
.SYMDEF ".S20" 
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
.stabn 192,0,0,L386
L386:
.stabn 68,0,242,L387
L387:
.stabn 68,0,255,L388
L388:
mov a,@111
STA _SYS_CON,0,0
.stabn 68,0,256,L389
L389:
mov a,@1
STA _IOC50,0,2
.stabn 68,0,257,L390
L390:
clr _PORT5
.stabn 68,0,258,L391
L391:
mov a,@0
STA _IOC60,0,2
.stabn 68,0,259,L392
L392:
clr _PORT6
.stabn 68,0,260,L393
L393:
mov a,@0
STA _IOC70,0,2
.stabn 68,0,261,L394
L394:
clr _PORT7
.stabn 68,0,263,L395
L395:
.stabn 224,0,0,L396
L396:
L$385:
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
.section ".S21",C_CODE
.SYMDEF ".S21" 
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
.stabn 192,0,0,L415
L415:
.stabn 68,0,268,L416
L416:
.stabn 68,0,270,L417
L417:
LDA IO_H_L_bp+0,0,0
mov ecx,a
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$400
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$403
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$406
EQNEPRIB ecx,5
jbc STATUS,zf
EXTJMP @L$409
EQNEPRIB ecx,6
jbc STATUS,zf
EXTJMP @L$412
jmp @L$399
.stabn 192,0,1,L418
L418:
.stabn 68,0,271,L419
L419:
L$400:
.stabn 68,0,272,L420
L420:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$401
.stabn 68,0,272,L421
L421:
bs _P55,5
jmp @L$399
L$401:
.stabn 68,0,273,L422
L422:
bc _P55,5
.stabn 68,0,274,L423
L423:
jmp @L$399
L$403:
.stabn 68,0,276,L424
L424:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$404
.stabn 68,0,276,L425
L425:
bs _P70,0
jmp @L$399
L$404:
.stabn 68,0,277,L426
L426:
bc _P70,0
.stabn 68,0,278,L427
L427:
jmp @L$399
L$406:
.stabn 68,0,279,L428
L428:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$407
.stabn 68,0,279,L429
L429:
bs _P71,1
jmp @L$399
L$407:
.stabn 68,0,280,L430
L430:
bc _P71,1
.stabn 68,0,281,L431
L431:
jmp @L$399
L$409:
.stabn 68,0,283,L432
L432:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$410
.stabn 68,0,283,L433
L433:
bs _P67,7
jmp @L$399
L$410:
.stabn 68,0,284,L434
L434:
bc _P67,7
.stabn 68,0,285,L435
L435:
jmp @L$399
L$412:
.stabn 68,0,286,L436
L436:
EQNEPRIB IO_H_L_bp+1,1
jbs STATUS,zf
EXTJMP @L$413
.stabn 68,0,286,L437
L437:
bs _P51,1
jmp @L$399
L$413:
.stabn 68,0,287,L438
L438:
bc _P51,1
.stabn 68,0,288,L439
L439:
.stabn 68,0,289,L440
L440:
.stabn 68,0,291,L441
L441:
.stabn 224,0,1,L442
L442:
L$399:
.stabn 68,0,294,L443
L443:
.stabn 224,0,0,L444
L444:
L$397:
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