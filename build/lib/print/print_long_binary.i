# 1 "source\\lib\\print\\print_long_binary.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "source\\lib\\print\\print_long_binary.c"




# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vectrex.h" 1
# 37 "..\\..\\gcc6809\\vectrex\\include\\system/vectrex.h"
       



# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram.h"
       

# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_0x.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_0x.h"
       
# 48 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_0x.h"
extern int Vec_Snd_Shadow __attribute__((section(".dpc8")));
extern int Vec_Snd_shadow[15] __attribute__((section(".dpc8")));
extern unsigned int Vec_Btn_State __attribute__((section(".dpc8")));
extern unsigned int Vec_Prev_Btns __attribute__((section(".dpc8")));
extern unsigned int Vec_Buttons __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_2 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_3 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_4 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_2 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_3 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_4 __attribute__((section(".dpc8")));
extern int Vec_Joy_Resltn __attribute__((section(".dpc8")));
extern int Vec_Joy_1_X __attribute__((section(".dpc8")));
extern int Vec_Joy_1_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_2_X __attribute__((section(".dpc8")));
extern int Vec_Joy_2_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux __attribute__((section(".dpc8")));
extern int Vec_Joy_mux[4] __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_1_X __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_1_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_2_X __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_2_Y __attribute__((section(".dpc8")));
extern unsigned int Vec_Misc_Count __attribute__((section(".dpc8")));
extern int Vec_0Ref_Enable __attribute__((section(".dpc8")));
extern unsigned long int Vec_Loop_Count __attribute__((section(".dpc8")));
extern unsigned int Vec_Loop_Count_hi __attribute__((section(".dpc8")));
extern unsigned int Vec_Loop_Count_lo __attribute__((section(".dpc8")));
extern int Vec_Brightness __attribute__((section(".dpc8")));
extern unsigned int Vec_Dot_Dwell __attribute__((section(".dpc8")));
extern unsigned int Vec_Pattern __attribute__((section(".dpc8")));
extern unsigned long int Vec_Text_HW __attribute__((section(".dpc8")));
extern int Vec_Text_Height __attribute__((section(".dpc8")));
extern int Vec_Text_Width __attribute__((section(".dpc8")));
extern int* Vec_Str_Ptr __attribute__((section(".dpc8")));
extern int Vec_counters[6] __attribute__((section(".dpc8")));
extern int Vec_Counters __attribute__((section(".dpc8")));
extern int Vec_Counter_1 __attribute__((section(".dpc8")));
extern int Vec_Counter_2 __attribute__((section(".dpc8")));
extern int Vec_Counter_3 __attribute__((section(".dpc8")));
extern int Vec_Counter_4 __attribute__((section(".dpc8")));
extern int Vec_Counter_5 __attribute__((section(".dpc8")));
extern int Vec_Counter_6 __attribute__((section(".dpc8")));
extern unsigned long int Vec_RiseRun_Tmp __attribute__((section(".dpc8")));
extern int Vec_Angle __attribute__((section(".dpc8")));
extern unsigned long int Vec_Run_Index __attribute__((section(".dpc8")));
extern unsigned long int Vec_Rise_Index __attribute__((section(".dpc8")));
extern unsigned long int Vec_XXX_00 __attribute__((section(".dpc8")));
extern int Vec_RiseRun_Len __attribute__((section(".dpc8")));
extern int Vec_XXX_01 __attribute__((section(".dpc8")));
extern int Vec_XXX_02 __attribute__((section(".dpc8")));
extern unsigned long int Vec_Rfrsh __attribute__((section(".dpc8")));
extern unsigned int Vec_Rfrsh_lo __attribute__((section(".dpc8")));
extern unsigned int Vec_Rfrsh_hi __attribute__((section(".dpc8")));
extern int Vec_Music_Work __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_A __attribute__((section(".dpc8")));
extern int Vec_XXX_03 __attribute__((section(".dpc8")));
extern int Vec_XXX_04 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_7 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_6 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_5 __attribute__((section(".dpc8")));
extern int Vec_XXX_05 __attribute__((section(".dpc8")));
extern int Vec_XXX_06 __attribute__((section(".dpc8")));
extern int Vec_XXX_07 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_1 __attribute__((section(".dpc8")));
extern int Vec_XXX_08 __attribute__((section(".dpc8")));
extern int* Vec_Freq_Table __attribute__((section(".dpc8")));
extern long unsigned int Vec_ADSR_Table __attribute__((section(".dpc8")));
extern int Vec_Max_Players __attribute__((section(".dpc8")));
extern int Vec_Max_Games __attribute__((section(".dpc8")));
extern int* Vec_Twang_Table __attribute__((section(".dpc8")));
extern int* Vec_Music_Ptr __attribute__((section(".dpc8")));
extern int Vec_Expl_ChanA __attribute__((section(".dpc8")));
extern int Vec_Expl_Chans __attribute__((section(".dpc8")));
extern int Vec_Music_Chan __attribute__((section(".dpc8")));
extern int Vec_Music_Flag __attribute__((section(".dpc8")));
extern int Vec_Duration __attribute__((section(".dpc8")));
extern int Vec_Expl_1 __attribute__((section(".dpc8")));
extern long unsigned int Vec_Music_Twang __attribute__((section(".dpc8")));
extern int Vec_Expl_2 __attribute__((section(".dpc8")));
extern int Vec_Expl_3 __attribute__((section(".dpc8")));
extern int Vec_Expl_4 __attribute__((section(".dpc8")));
extern int Vec_Expl_Chan __attribute__((section(".dpc8")));
extern int Vec_Expl_ChanB __attribute__((section(".dpc8")));
extern int Vec_XXX_09 __attribute__((section(".dpc8")));
extern int Vec_ADSR_Timers __attribute__((section(".dpc8")));
extern int Vec_ADSR_timers[3] __attribute__((section(".dpc8")));
extern unsigned long int Vec_Music_Freq __attribute__((section(".dpc8")));
extern unsigned long int Vec_Music_freq[3] __attribute__((section(".dpc8")));
extern unsigned int Vec_Expl_Flag __attribute__((section(".dpc8")));
extern int Vec_XXX_10 __attribute__((section(".dpc8")));
extern int Vec_XXX_11 __attribute__((section(".dpc8")));
extern int Vec_XXX_12 __attribute__((section(".dpc8")));
extern int Vec_XXX_13 __attribute__((section(".dpc8")));
extern int Vec_XXX_14 __attribute__((section(".dpc8")));
extern int Vec_XXX_15 __attribute__((section(".dpc8")));
extern int Vec_XXX_16 __attribute__((section(".dpc8")));
extern int Vec_XXX_17 __attribute__((section(".dpc8")));
extern int Vec_XXX_18 __attribute__((section(".dpc8")));
extern int Vec_XXX_19 __attribute__((section(".dpc8")));
extern int Vec_XXX_20 __attribute__((section(".dpc8")));
extern int Vec_XXX_21 __attribute__((section(".dpc8")));
extern int Vec_XXX_22 __attribute__((section(".dpc8")));
extern int Vec_XXX_23 __attribute__((section(".dpc8")));
extern int Vec_XXX_24 __attribute__((section(".dpc8")));
extern int Vec_Expl_Timer __attribute__((section(".dpc8")));
extern int Vec_XXX_25 __attribute__((section(".dpc8")));
extern unsigned int Vec_Num_Players __attribute__((section(".dpc8")));
extern unsigned int Vec_Num_Game __attribute__((section(".dpc8")));
extern unsigned int* Vec_Seed_Ptr __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed0 __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed2 __attribute__((section(".dpc8")));



extern int Vec_Default_Stk __attribute__((section(".dpcb")));
extern unsigned int Vec_High_Score __attribute__((section(".dpcb")));
extern unsigned int Vec_High_score[7] __attribute__((section(".dpcb")));
extern int Vec_SWI3_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI3_vector[3] __attribute__((section(".dpcb")));
extern int Vec_SWI2_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI2_vector[3] __attribute__((section(".dpcb")));
extern int Vec_FIRQ_Vector __attribute__((section(".dpcb")));
extern int Vec_FIRQ_vector[3] __attribute__((section(".dpcb")));
extern int Vec_IRQ_Vector __attribute__((section(".dpcb")));
extern int Vec_IRQ_vector[3] __attribute__((section(".dpcb")));
extern int Vec_SWI_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI_vector[3] __attribute__((section(".dpcb")));
extern int Vec_NWI_Vector __attribute__((section(".dpcb")));
extern int Vec_NWI_vector[3] __attribute__((section(".dpcb")));
extern long unsigned int Vec_Cold_Flag __attribute__((section(".dpcb")));





extern volatile unsigned long int VIA_port_ba __attribute__((section(".dpd0")));

extern volatile int VIA_port_b __attribute__((section(".dpd0")));
extern volatile int VIA_port_a __attribute__((section(".dpd0")));
# 199 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_0x.h"
extern volatile unsigned long int VIA_DDR_ba __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_DDR_b __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_DDR_a __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t1_cnt __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_cnt_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_cnt_hi __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t1_lch __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_lch_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_lch_hi __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t2 __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t2_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t2_hi __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_shift_reg __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_aux_cntl_w __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_aux_cntl __attribute__((section(".dpd0")));
# 222 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_0x.h"
extern volatile unsigned int VIA_cntl __attribute__((section(".dpd0")));
# 231 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_0x.h"
extern volatile unsigned int VIA_int_flags __attribute__((section(".dpd0")));
# 241 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_0x.h"
extern volatile unsigned int VIA_int_enable __attribute__((section(".dpd0")));
# 250 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_0x.h"
extern volatile unsigned int VIA_port_a_nohs __attribute__((section(".dpd0")));
# 41 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_dp.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_dp.h"
       
# 48 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram_dp.h"
extern int dp_Vec_Snd_Shadow __attribute__((section(".direct")));
extern int dp_Vec_Snd_shadow[15] __attribute__((section(".direct")));
extern unsigned int dp_Vec_Btn_State __attribute__((section(".direct")));
extern unsigned int dp_Vec_Prev_Btns __attribute__((section(".direct")));
extern unsigned int dp_Vec_Buttons __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_1_1 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_1_2 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_1_3 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_1_4 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_2_1 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_2_2 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_2_3 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_2_4 __attribute__((section(".direct")));
extern int dp_Vec_Joy_Resltn __attribute__((section(".direct")));
extern int dp_Vec_Joy_1_X __attribute__((section(".direct")));
extern int dp_Vec_Joy_1_Y __attribute__((section(".direct")));
extern int dp_Vec_Joy_2_X __attribute__((section(".direct")));
extern int dp_Vec_Joy_2_Y __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux __attribute__((section(".direct")));
extern int dp_Vec_Joy_mux[4] __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux_1_X __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux_1_Y __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux_2_X __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux_2_Y __attribute__((section(".direct")));
extern unsigned int dp_Vec_Misc_Count __attribute__((section(".direct")));
extern int dp_Vec_0Ref_Enable __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Loop_Count __attribute__((section(".direct")));
extern unsigned int dp_Vec_Loop_Count_hi __attribute__((section(".direct")));
extern unsigned int dp_Vec_Loop_Count_lo __attribute__((section(".direct")));
extern int dp_Vec_Brightness __attribute__((section(".direct")));
extern unsigned int dp_Vec_Dot_Dwell __attribute__((section(".direct")));
extern unsigned int dp_Vec_Pattern __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Text_HW __attribute__((section(".direct")));
extern int dp_Vec_Text_Height __attribute__((section(".direct")));
extern int dp_Vec_Text_Width __attribute__((section(".direct")));
extern int* dp_Vec_Str_Ptr __attribute__((section(".direct")));
extern int dp_Vec_counters[6] __attribute__((section(".direct")));
extern int dp_Vec_Counters __attribute__((section(".direct")));
extern int dp_Vec_Counter_1 __attribute__((section(".direct")));
extern int dp_Vec_Counter_2 __attribute__((section(".direct")));
extern int dp_Vec_Counter_3 __attribute__((section(".direct")));
extern int dp_Vec_Counter_4 __attribute__((section(".direct")));
extern int dp_Vec_Counter_5 __attribute__((section(".direct")));
extern int dp_Vec_Counter_6 __attribute__((section(".direct")));
extern unsigned long int dp_Vec_RiseRun_Tmp __attribute__((section(".direct")));
extern int dp_Vec_Angle __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Run_Index __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Rise_Index __attribute__((section(".direct")));
extern unsigned long int dp_Vec_XXX_00 __attribute__((section(".direct")));
extern int dp_Vec_RiseRun_Len __attribute__((section(".direct")));
extern int dp_Vec_XXX_01 __attribute__((section(".direct")));
extern int dp_Vec_XXX_02 __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Rfrsh __attribute__((section(".direct")));
extern unsigned int dp_Vec_Rfrsh_lo __attribute__((section(".direct")));
extern unsigned int dp_Vec_Rfrsh_hi __attribute__((section(".direct")));
extern int dp_Vec_Music_Work __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_A __attribute__((section(".direct")));
extern int dp_Vec_XXX_03 __attribute__((section(".direct")));
extern int dp_Vec_XXX_04 __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_7 __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_6 __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_5 __attribute__((section(".direct")));
extern int dp_Vec_XXX_05 __attribute__((section(".direct")));
extern int dp_Vec_XXX_06 __attribute__((section(".direct")));
extern int dp_Vec_XXX_07 __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_1 __attribute__((section(".direct")));
extern int dp_Vec_XXX_08 __attribute__((section(".direct")));
extern int* dp_Vec_Freq_Table __attribute__((section(".direct")));
extern long unsigned int dp_Vec_ADSR_Table __attribute__((section(".direct")));
extern int dp_Vec_Max_Players __attribute__((section(".direct")));
extern int dp_Vec_Max_Games __attribute__((section(".direct")));
extern int* dp_Vec_Twang_Table __attribute__((section(".direct")));
extern int* dp_Vec_Music_Ptr __attribute__((section(".direct")));
extern int dp_Vec_Expl_ChanA __attribute__((section(".direct")));
extern int dp_Vec_Expl_Chans __attribute__((section(".direct")));
extern int dp_Vec_Music_Chan __attribute__((section(".direct")));
extern int dp_Vec_Music_Flag __attribute__((section(".direct")));
extern int dp_Vec_Duration __attribute__((section(".direct")));
extern int dp_Vec_Expl_1 __attribute__((section(".direct")));
extern long unsigned int dp_Vec_Music_Twang __attribute__((section(".direct")));
extern int dp_Vec_Expl_2 __attribute__((section(".direct")));
extern int dp_Vec_Expl_3 __attribute__((section(".direct")));
extern int dp_Vec_Expl_4 __attribute__((section(".direct")));
extern int dp_Vec_Expl_Chan __attribute__((section(".direct")));
extern int dp_Vec_Expl_ChanB __attribute__((section(".direct")));
extern int dp_Vec_XXX_09 __attribute__((section(".direct")));
extern int dp_Vec_ADSR_Timers __attribute__((section(".direct")));
extern int dp_Vec_ADSR_timers[3] __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Music_Freq __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Music_freq[3] __attribute__((section(".direct")));
extern unsigned int dp_Vec_Expl_Flag __attribute__((section(".direct")));
extern int dp_Vec_XXX_10 __attribute__((section(".direct")));
extern int dp_Vec_XXX_11 __attribute__((section(".direct")));
extern int dp_Vec_XXX_12 __attribute__((section(".direct")));
extern int dp_Vec_XXX_13 __attribute__((section(".direct")));
extern int dp_Vec_XXX_14 __attribute__((section(".direct")));
extern int dp_Vec_XXX_15 __attribute__((section(".direct")));
extern int dp_Vec_XXX_16 __attribute__((section(".direct")));
extern int dp_Vec_XXX_17 __attribute__((section(".direct")));
extern int dp_Vec_XXX_18 __attribute__((section(".direct")));
extern int dp_Vec_XXX_19 __attribute__((section(".direct")));
extern int dp_Vec_XXX_20 __attribute__((section(".direct")));
extern int dp_Vec_XXX_21 __attribute__((section(".direct")));
extern int dp_Vec_XXX_22 __attribute__((section(".direct")));
extern int dp_Vec_XXX_23 __attribute__((section(".direct")));
extern int dp_Vec_XXX_24 __attribute__((section(".direct")));
extern int dp_Vec_Expl_Timer __attribute__((section(".direct")));
extern int dp_Vec_XXX_25 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Num_Players __attribute__((section(".direct")));
extern unsigned int dp_Vec_Num_Game __attribute__((section(".direct")));
extern unsigned int* dp_Vec_Seed_Ptr __attribute__((section(".direct")));
extern unsigned int dp_Vec_Random_Seed __attribute__((section(".direct")));
extern unsigned int dp_Vec_Random_Seed0 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Random_Seed1 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Random_Seed2 __attribute__((section(".direct")));



extern int dp_Vec_Default_Stk __attribute__((section(".direct")));
extern unsigned int dp_Vec_High_Score __attribute__((section(".direct")));
extern unsigned int dp_Vec_High_score[7] __attribute__((section(".direct")));
extern int dp_Vec_SWI3_Vector __attribute__((section(".direct")));
extern int dp_Vec_SWI3_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_SWI2_Vector __attribute__((section(".direct")));
extern int dp_Vec_SWI2_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_FIRQ_Vector __attribute__((section(".direct")));
extern int dp_Vec_FIRQ_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_IRQ_Vector __attribute__((section(".direct")));
extern int dp_Vec_IRQ_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_SWI_Vector __attribute__((section(".direct")));
extern int dp_Vec_SWI_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_NWI_Vector __attribute__((section(".direct")));
extern int dp_Vec_NWI_vector[3] __attribute__((section(".direct")));
extern long unsigned int dp_Vec_Cold_Flag __attribute__((section(".direct")));





extern volatile unsigned long int dp_VIA_port_ba __attribute__((section(".direct")));
extern volatile int dp_VIA_port_b __attribute__((section(".direct")));
extern volatile int dp_VIA_port_a __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_DDR_ba __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_DDR_b __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_DDR_a __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_t1_cnt __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t1_cnt_lo __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t1_cnt_hi __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_t1_lch __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t1_lch_lo __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t1_lch_hi __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_t2 __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t2_lo __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t2_hi __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_shift_reg __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_aux_cntl_w __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_aux_cntl __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_cntl __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_int_flags __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_int_enable __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_port_a_nohs __attribute__((section(".direct")));
# 42 "..\\..\\gcc6809\\vectrex\\include\\system/vec_ram.h" 2
# 42 "..\\..\\gcc6809\\vectrex\\include\\system/vectrex.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rom.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rom.h"
       

# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rom_0x.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rom_0x.h"
       




extern const int Vec_Sine_Table __attribute__((section(".dpfc")));
extern const int Vec_Cosine_Table __attribute__((section(".dpfc")));
extern const int Vec_Note_Table __attribute__((section(".dpfc")));




extern const unsigned int Vec_Music_0 __attribute__((section(".dped")));
extern const unsigned int Vec_Music_1 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_2 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_3 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_4 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_5 __attribute__((section(".dpfe")));
extern const unsigned int Vec_Music_6 __attribute__((section(".dpfe")));
extern const unsigned int Vec_Music_7 __attribute__((section(".dpfc")));
extern const unsigned int Vec_Music_8 __attribute__((section(".dpf8")));
extern const unsigned int Vec_Music_9 __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_a __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_b __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_c __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_d __attribute__((section(".dpff")));




extern const unsigned int Vec_ADSR_FADE66 __attribute__((section(".dped")));
extern const unsigned int Vec_ADSR_FADE0 __attribute__((section(".dpfd")));
extern const unsigned int Vec_ADSR_FADE1 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE2 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE3 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE4 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE8 __attribute__((section(".dpff")));
extern const unsigned int Vec_ADSR_FADE12 __attribute__((section(".dpfd")));




extern const unsigned int Vec_TWANG_VIBE0 __attribute__((section(".dpfd")));
extern const unsigned int Vec_TWANG_VIBEHL __attribute__((section(".dpfe")));
extern const unsigned int Vec_TWANG_VIBENL __attribute__((section(".dpfe")));
# 41 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rom.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rom_dp.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rom_dp.h"
       




extern const int dp_Vec_Sine_Table __attribute__((section(".direct")));
extern const int dp_Vec_Cosine_Table __attribute__((section(".direct")));
extern const int dp_Vec_Note_Table __attribute__((section(".direct")));




extern const unsigned int dp_Vec_Music_0 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_1 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_2 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_3 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_4 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_5 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_6 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_7 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_8 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_9 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_a __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_b __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_c __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_d __attribute__((section(".direct")));




extern const unsigned int dp_Vec_ADSR_FADE66 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE0 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE1 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE2 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE3 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE4 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE8 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE12 __attribute__((section(".direct")));




extern const unsigned int dp_Vec_TWANG_VIBE0 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_TWANG_VIBEHL __attribute__((section(".direct")));
extern const unsigned int dp_Vec_TWANG_VIBENL __attribute__((section(".direct")));
# 42 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rom.h" 2
# 43 "..\\..\\gcc6809\\vectrex\\include\\system/vectrex.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum.h"
       





# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct.h"
       

# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
       

# 1 "..\\..\\gcc6809\\vectrex\\include\\system/macro.h" 1
# 39 "..\\..\\gcc6809\\vectrex\\include\\system/macro.h"
       
# 41 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h" 2

# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
       
# 80 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Wait_Recal(void);
__attribute__((noinline)) void __Set_Refresh(void);
__attribute__((noinline)) void __Recalibrate(void);
__attribute__((noinline)) void __Reset0Ref_D0(void);
__attribute__((noinline)) void __Check0Ref(void);
__attribute__((noinline)) void __Reset0Ref(void);
__attribute__((noinline)) void __Reset_Pen(void);
__attribute__((noinline)) void __Reset0Int(void);
# 102 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Dec_3_Counters(void);
__attribute__((noinline)) void __Dec_6_Counters(void);
__attribute__((noinline)) void __Dec_Counters(volatile const unsigned int b, void* volatile const x);







__attribute__((noinline)) void __DP_to_D0(void);
__attribute__((noinline)) void __DP_to_C8(void);
# 130 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Delay_3(void);
__attribute__((noinline)) void __Delay_2(void);
__attribute__((noinline)) void __Delay_1(void);
__attribute__((noinline)) void __Delay_0(void);
__attribute__((noinline)) void __Delay_b(volatile const unsigned int b);
__attribute__((noinline)) void __Delay_RTS(void);
# 147 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Dot_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Dot_ix(void* volatile const x);
__attribute__((noinline)) void __Dot_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Dot_dd(volatile const long int d);
__attribute__((noinline)) void __Dot_here(void);
__attribute__((noinline)) void __Dot_List(void* volatile const x);
__attribute__((noinline)) void __Dot_List_Reset(void* volatile const x);
# 173 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Print_Str_hwyx(void* volatile const u);
__attribute__((noinline)) void __Print_Str_yx(const void* volatile const u);
__attribute__((noinline)) void __Print_Str_d(volatile const int a, volatile const int b, void* volatile const u);
__attribute__((noinline)) void __Print_Str_dd(volatile const long int d, void* volatile const u);
__attribute__((noinline)) void __Print_List_hw(void* volatile const u);
__attribute__((noinline)) void __Print_List(void* volatile const u);
__attribute__((noinline)) void __Print_List_chk(void* volatile const u);
__attribute__((noinline)) void __Print_Ships_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Print_Ships(volatile const unsigned int a, volatile const unsigned int b, volatile const unsigned long int x);
__attribute__((noinline)) void __Print_Str(void* volatile const u);
__attribute__((noinline)) void __Print_MRast(void);
# 220 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Draw_Pat_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void __Draw_Pat_VL(void* volatile const x);
__attribute__((noinline)) void __Draw_Pat_VL_d(volatile const long unsigned int d, void* volatile const x);
__attribute__((noinline)) void __Draw_Line_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Draw_Line_dd(volatile const long int d);
__attribute__((noinline)) void __Draw_VLc(void* volatile const x);
__attribute__((noinline)) void __Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Draw_VL(void* volatile const x);
__attribute__((noinline)) void __Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void __Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Draw_VL_a(volatile const unsigned int a, void* volatile const x);
# 248 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Mov_Draw_VLc_a(void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL(void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_d(volatile const int a, volatile const int b);
# 284 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Draw_VL_mode(volatile const const void* x);
__attribute__((noinline)) void __Draw_VLp_7F(void* volatile const x);
__attribute__((noinline)) void __Draw_VLp_FF(void* volatile const x);
__attribute__((noinline)) void __Draw_VLp_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Draw_VLp(void* const x);
__attribute__((noinline)) void __Draw_VLp_scale(void* volatile const x);
__attribute__((noinline)) void __Rot_VL_Mode_a(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Rot_VL_Pack(void* volatile const x, void* volatile const u);
# 301 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Draw_Grid_VL(void* volatile const x, void* volatile const y);
# 324 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) unsigned int __Random_3(void);
__attribute__((noinline)) unsigned int __Random(void);
__attribute__((noinline)) unsigned int __xRandom(void);

__attribute__((noinline)) unsigned int __Bitmask_a(volatile const unsigned int a);

__attribute__((noinline)) long unsigned int __Abs_a_b(volatile const int a, volatile const int b);
__attribute__((noinline)) unsigned int __Abs_b(volatile const int b);

__attribute__((noinline)) long unsigned int __Rise_Run_Angle(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int __Get_Rise_Idx(volatile const int a);
__attribute__((noinline)) int __Xform_Sin(volatile const int a);
__attribute__((noinline)) long unsigned int __Get_Rise_Run(void);

__attribute__((noinline)) int __Xform_Run_a(volatile const int a);
__attribute__((noinline)) int __Xform_Run(void);
__attribute__((noinline)) int __Xform_Rise_a(volatile const int a);
__attribute__((noinline)) int __Xform_Rise(void);
# 351 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Clear_x_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Clear_C8_RAM(void);
__attribute__((noinline)) void __Clear_x_256(void* volatile const x);
__attribute__((noinline)) void __Clear_x_d(volatile const long unsigned int d, void* volatile const x);







__attribute__((noinline)) void __Move_Mem_a_1(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Move_Mem_a(volatile const unsigned int a, void* volatile const x, void* volatile const u);







__attribute__((noinline)) void __Clear_x_b_80(volatile const int b, void* volatile const x);
__attribute__((noinline)) void __Clear_x_b_a(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
# 382 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Read_Btns_Mask(volatile const unsigned int a);
__attribute__((noinline)) void __Read_Btns(void);
__attribute__((noinline)) void __Joy_Analog(void);
__attribute__((noinline)) void __Joy_Digital(void);
# 430 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Select_Game(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) void __Display_Option(volatile const unsigned int a, const void (*volatile const const y));
# 443 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Reset(void);
__attribute__((noinline)) void __Init_VIA(void);
__attribute__((noinline)) void __Init_OS_RAM(void);
__attribute__((noinline)) void __Init_OS(void);
__attribute__((noinline)) void __Init_Music_Buf(void);
# 471 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Clear_Score(void* volatile const x);
__attribute__((noinline)) void __Add_Score_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void __Add_Score_d(volatile const long unsigned int d, void* volatile const x);
__attribute__((noinline)) void __Strip_Zeros(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) unsigned int __Compare_Score(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __New_High_Score(void* volatile const x, void* volatile const u);
# 495 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Sound_Byte(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) void __Sound_Byte_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Clear_Sound(void);
__attribute__((noinline)) void __Sound_Bytes(void* volatile const u);
__attribute__((noinline)) void __Sound_Bytes_x(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Do_Sound(void);
__attribute__((noinline)) void __Do_Sound_x(void* volatile const x);
__attribute__((noinline)) void __Init_Music_chk(volatile const const void* u);
__attribute__((noinline)) void __Init_Music(void* volatile const u);
__attribute__((noinline)) void __Init_Music_a(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Init_Music_x(void* volatile const u);
__attribute__((noinline)) void __Stop_Sound(void);
__attribute__((noinline)) void __Explosion_Snd(volatile const const void* u);
__attribute__((noinline)) void __Set_Amp(volatile const unsigned int b);
# 549 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Moveto_x_7F(void* volatile const x);
__attribute__((noinline)) void __Moveto_d_7F(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Moveto_dd_7F(volatile const long int d);
__attribute__((noinline)) void __Moveto_ix_FF(void* volatile const x);
__attribute__((noinline)) void __Moveto_ix_7F(void* volatile const x);
__attribute__((noinline)) void __Moveto_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Moveto_ix(void* volatile const x);
__attribute__((noinline)) void __Moveto_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Moveto_dd(volatile const long int d);
# 568 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Intensity_1F(void);
__attribute__((noinline)) void __Intensity_3F(void);
__attribute__((noinline)) void __Intensity_5F(void);
__attribute__((noinline)) void __Intensity_7F(void);
__attribute__((noinline)) void __Intensity_a(volatile const unsigned int a);
# 581 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) unsigned int __Obj_Will_Hit_u(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int u);
__attribute__((noinline)) unsigned int __Obj_Will_Hit(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int* u);

__attribute__((noinline)) unsigned int __Obj_Hit(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y);
# 598 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) long unsigned int __Rise_Run_X(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int __Rise_Run_Y(volatile const int a, volatile const int b);
__attribute__((noinline)) int __Rise_Run_Len(volatile const int a);
__attribute__((noinline)) void __Rot_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Rot_VL_Diff(volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Rot_VL(void* volatile const x, void* volatile const u);
# 652 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Dot_y(volatile const long int y);
__attribute__((noinline)) void __Dot_py(void* volatile const y);

__attribute__((noinline)) void __Draw_Pack(volatile const unsigned int b, void* volatile const x, volatile const long int y);
__attribute__((noinline)) void __Draw_Pack_py(volatile const unsigned int b, void* volatile const x, void* volatile const y);

__attribute__((noinline)) void __Print_Msg(void* volatile const y, void* volatile const u);
__attribute__((noinline)) unsigned int __Rnd_Cone(void);

__attribute__((noinline)) long unsigned int __Displ8_xy(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) long unsigned int __Displ16_xy(volatile const unsigned int a, volatile const unsigned int b);

__attribute__((noinline)) long unsigned int __Ranpos(void);
__attribute__((noinline)) void __Draw_Scores(void);
__attribute__((noinline)) void __Draw_Score(void);
__attribute__((noinline)) void __Wait_Bound(void);
# 43 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
       
# 80 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Wait_Recal(void);
__attribute__((noinline)) void _Set_Refresh(void);
__attribute__((noinline)) void _Recalibrate(void);
__attribute__((noinline)) void _Reset0Ref_D0(void);
__attribute__((noinline)) void _Check0Ref(void);
__attribute__((noinline)) void _Reset0Ref(void);
__attribute__((noinline)) void _Reset_Pen(void);
__attribute__((noinline)) void _Reset0Int(void);
# 102 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Dec_3_Counters(void);
__attribute__((noinline)) void _Dec_6_Counters(void);
__attribute__((noinline)) void _Dec_Counters(volatile const unsigned int b, void* volatile const x);







__attribute__((noinline)) void _DP_to_D0(void);
__attribute__((noinline)) void _DP_to_C8(void);
# 130 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Delay_3(void);
__attribute__((noinline)) void _Delay_2(void);
__attribute__((noinline)) void _Delay_1(void);
__attribute__((noinline)) void _Delay_0(void);
__attribute__((noinline)) void _Delay_b(volatile const unsigned int b);
__attribute__((noinline)) void _Delay_RTS(void);
# 147 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Dot_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Dot_ix(void* volatile const x);
__attribute__((noinline)) void _Dot_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Dot_dd(volatile const long int d);
__attribute__((noinline)) void _Dot_here(void);
__attribute__((noinline)) void _Dot_List(void* volatile const x);
__attribute__((noinline)) void _Dot_List_Reset(void* volatile const x);
# 173 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Print_Str_hwyx(void* volatile const u);
__attribute__((noinline)) void _Print_Str_yx(const void* volatile const u);
__attribute__((noinline)) void _Print_Str_d(volatile const int a, volatile const int b, void* volatile const u);
__attribute__((noinline)) void _Print_Str_dd(volatile const long int d, void* volatile const u);
__attribute__((noinline)) void _Print_List_hw(void* volatile const u);
__attribute__((noinline)) void _Print_List(void* volatile const u);
__attribute__((noinline)) void _Print_List_chk(void* volatile const u);
__attribute__((noinline)) void _Print_Ships_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Print_Ships(volatile const unsigned int a, volatile const unsigned int b, volatile const unsigned long int x);
__attribute__((noinline)) void _Print_Str(void* volatile const u);
__attribute__((noinline)) void _Print_MRast(void);
# 220 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Draw_Pat_VL_aa(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Draw_Pat_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Draw_Pat_VL(void* volatile const x);





__attribute__((noinline)) void _Draw_Line_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Draw_Line_dd(volatile const long int d);
__attribute__((noinline)) void _Draw_VLc(void* volatile const x);
__attribute__((noinline)) void _Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Draw_VL(void* volatile const x);
__attribute__((noinline)) void _Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void _Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Draw_VL_a(volatile const unsigned int a, void* volatile const x);
# 253 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Mov_Draw_VLc_a(void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL(void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_d(volatile const int a, volatile const int b);
# 289 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Draw_VL_mode(volatile const const void* x);
__attribute__((noinline)) void _Draw_VLp_7F(void* volatile const x);
__attribute__((noinline)) void _Draw_VLp_FF(void* volatile const x);
__attribute__((noinline)) void _Draw_VLp_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Draw_VLp(void* const x);
__attribute__((noinline)) void _Draw_VLp_scale(void* volatile const x);
__attribute__((noinline)) void _Rot_VL_Mode(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Rot_VL_Pack(void* volatile const x, void* volatile const u);
# 306 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Draw_Grid_VL(void* volatile const x, void* volatile const y);
# 329 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) unsigned int _Random_3(void);
__attribute__((noinline)) unsigned int _Random(void);

__attribute__((noinline)) unsigned int _Bitmask_a(volatile const unsigned int a);

__attribute__((noinline)) long unsigned int _Abs_a_b(volatile const int a, volatile const int b);
__attribute__((noinline)) unsigned int _Abs_b(volatile const int b);

__attribute__((noinline)) long unsigned int _Rise_Run_Angle(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int _Get_Rise_Idx(volatile const int a);
__attribute__((noinline)) int _Xform_Sin(volatile const int a);
__attribute__((noinline)) long unsigned int _Get_Rise_Run(void);

__attribute__((noinline)) int _Xform_Run_a(volatile const int a);
__attribute__((noinline)) int _Xform_Run(void);
__attribute__((noinline)) int _Xform_Rise_a(volatile const int a);
__attribute__((noinline)) int _Xform_Rise(void);
# 355 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Clear_x_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Clear_C8_RAM(void);
__attribute__((noinline)) void _Clear_x_256(void* volatile const x);
__attribute__((noinline)) void _Clear_x_d(void* volatile const x, volatile const long unsigned int d);







__attribute__((noinline)) void _Move_Mem_a_1(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Move_Mem_a(volatile const unsigned int a, void* volatile const x, void* volatile const u);







__attribute__((noinline)) void _Clear_x_b_80(volatile const int b, void* volatile const x);
__attribute__((noinline)) void _Clear_x_b_a(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
# 386 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Read_Btns_Mask(volatile const unsigned int a);
__attribute__((noinline)) void _Read_Btns(void);
__attribute__((noinline)) void _Joy_Analog(void);
__attribute__((noinline)) void _Joy_Digital(void);
# 434 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Select_Game(volatile const unsigned int b, volatile const unsigned int a);
__attribute__((noinline)) void _Display_Option(volatile const unsigned int b, const void* const x);
# 447 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Reset(void);
__attribute__((noinline)) void _Init_VIA(void);
__attribute__((noinline)) void _Init_OS_RAM(void);
__attribute__((noinline)) void _Init_OS(void);
__attribute__((noinline)) void _Init_Music_Buf(void);
# 475 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Clear_Score(void* volatile const x);
__attribute__((noinline)) void _Add_Score_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Add_Score_d(void* volatile const x, volatile const long unsigned int d);
__attribute__((noinline)) void _Strip_Zeros(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) unsigned int _Compare_Score(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _New_High_Score(void* volatile const x, void* volatile const u);
# 499 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Sound_Byte(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) void _Sound_Byte_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Clear_Sound(void);
__attribute__((noinline)) void _Sound_Bytes(void* volatile const u);
__attribute__((noinline)) void _Sound_Bytes_x(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Do_Sound(void);
__attribute__((noinline)) void _Do_Sound_x(void* volatile const x);
__attribute__((noinline)) void _Init_Music_chk(volatile const const void* u);
__attribute__((noinline)) void _Init_Music(void* volatile const u);
__attribute__((noinline)) void _Init_Music_a(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Init_Music_x(void* volatile const u);
__attribute__((noinline)) void _Stop_Sound(void);
__attribute__((noinline)) void _Explosion_Snd(volatile const const void* u);
__attribute__((noinline)) void _Set_Amp(volatile const unsigned int b);
# 553 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Moveto_x_7F(void* volatile const x);
__attribute__((noinline)) void _Moveto_d_7F(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Moveto_dd_7F(volatile const long int d);
__attribute__((noinline)) void _Moveto_ix_FF(void* volatile const x);
__attribute__((noinline)) void _Moveto_ix_7F(void* volatile const x);
__attribute__((noinline)) void _Moveto_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Moveto_ix(void* volatile const x);
__attribute__((noinline)) void _Moveto_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Moveto_dd(volatile const long int d);
# 572 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Intensity_1F(void);
__attribute__((noinline)) void _Intensity_3F(void);
__attribute__((noinline)) void _Intensity_5F(void);
__attribute__((noinline)) void _Intensity_7F(void);
__attribute__((noinline)) void _Intensity_a(volatile const unsigned int a);
# 585 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) unsigned int _Obj_Will_Hit_u(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int u);
__attribute__((noinline)) unsigned int _Obj_Will_Hit(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int* u);

__attribute__((noinline)) unsigned int _Obj_Hit(volatile int a, volatile const int b, volatile const long int x, volatile const long int y);
# 602 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) long unsigned int _Rise_Run_X(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int _Rise_Run_Y(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int _Rise_Run_Len(volatile const int a);
__attribute__((noinline)) void _Rot_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Rot_VL_Diff(volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Rot_VL(void* volatile const x, void* volatile const u);




__attribute__((noinline)) void _Rot_VL_M_dft(void* volatile const x, void* volatile const u);
# 656 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Dot_y(volatile const long int y);
__attribute__((noinline)) void _Dot_py(void* volatile const y);

__attribute__((noinline)) void _Draw_Pack(volatile const unsigned int b, void* volatile const x, volatile const long int y);
__attribute__((noinline)) void _Draw_Pack_py(volatile const unsigned int b, void* volatile const x, void* volatile const y);

__attribute__((noinline)) void _Print_Msg(void* volatile const y, void* volatile const u);
__attribute__((noinline)) unsigned int _Rnd_Cone(void);

__attribute__((noinline)) long unsigned int _Displ8_xy(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) long unsigned int _Displ16_xy(volatile const unsigned int a, volatile const unsigned int b);

__attribute__((noinline)) long unsigned int _Ranpos(void);
__attribute__((noinline)) void _Draw_Scores(void);
__attribute__((noinline)) void _Draw_Score(void);
__attribute__((noinline)) void _Wait_Bound(void);
# 44 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h" 2
# 98 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Wait_Recal(void)
{
 __Wait_Recal();
}
# 125 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Recalibrate(void)
{
 __Recalibrate();
}
# 140 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset0Ref_D0(void)
{
 __Reset0Ref_D0();
}
# 156 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Check0Ref(void)
{
 __Check0Ref();
}
# 169 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset0Ref(void)
{
 __Reset0Ref();
}
# 185 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset_Pen(void)
{
 __Reset_Pen();
}
# 198 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset0Int(void)
{
 __Reset0Int();
}
# 220 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dec_3_Counters(void)
{
 __Dec_3_Counters();
}
# 235 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dec_6_Counters(void)
{
 __Dec_6_Counters();
}
# 250 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dec_Counters(const unsigned int b, void* const x)
{
 __Dec_Counters(b, x);
}
# 269 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void DP_to_D0(void)
{
 __DP_to_D0();
}
# 282 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void DP_to_C8(void)
{
 __DP_to_C8();
}
# 304 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_3(void)
{
 __Delay_3();
}
# 316 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_2(void)
{
 __Delay_2();
}
# 328 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_1(void)
{
 __Delay_1();
}
# 340 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_0(void)
{
 __Delay_0();
}
# 352 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_b(const unsigned int b)
{
 __Delay_b(b);
}






static inline __attribute__((always_inline)) void Delay_RTS(void)
{
 __Delay_RTS();
}
# 393 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_ix_b(const unsigned int b, void* const x)
{
 __Dot_ix_b(b, x);
}
# 412 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_ix(void* const x)
{
 __Dot_ix(x);
}
# 429 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_d(const int a, const int b)
{
 _Dot_d(b, a);
}

static inline __attribute__((always_inline)) void Dot_dd(const long int d)
{
 _Dot_dd(d);
}
# 448 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_here(void)
{
 __Dot_here();
}
# 471 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_List(void* const x)
{
 __Dot_List(x);
}
# 495 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_List_Reset(void* const x)
{
 __Dot_List_Reset(x);
}
# 530 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str_hwyx(void* const u)
{
 _Print_Str_hwyx(u);
}
# 551 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str_yx(const void* const u)
{
 _Print_Str_yx(u);
}
# 573 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str_d(const int a, const int b, void* const u)
{
 _Print_Str_d(b, a, u);
}

static inline __attribute__((always_inline)) void Print_Str_dd(const long int d, void* const u)
{
 _Print_Str_dd(d, u);
}
# 601 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_List_hw(void* const u)
{
 _Print_List_hw(u);
}
# 624 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_List(void* const u)
{
 _Print_List(u);
}
# 647 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_List_chk(void* const u)
{
 _Print_List_chk(u);
}
# 668 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Ships_x(const unsigned int a, const unsigned int b, void* const x)
{
 _Print_Ships_x(b, a, x);
}
# 689 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Ships(const unsigned int a, const unsigned int b, const unsigned long int x)
{
 _Print_Ships(b, a, x);
}
# 709 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str(void* const u)
{
 _Print_Str(u);
}
# 729 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_MRast(void)
{
 _Print_MRast();
}
# 792 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL_aa(const unsigned int a, void* const x)
{
 _Draw_Pat_VL_aa(a, x);
}
# 819 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL_a(const unsigned int a, void* const x)
{
 _Draw_Pat_VL_a(a, x);
}
# 846 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL(void* const x)
{
 __Draw_Pat_VL(x);
}
# 874 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Line_d(const int a, const int b)
{
 _Draw_Line_d(b, a);
}

static inline __attribute__((always_inline)) void Draw_Line_dd(const long int d)
{
 _Draw_Line_dd(d);
}
# 903 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLc(void* const x)
{
 __Draw_VLc(x);
}
# 927 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_ab(const unsigned int a, const unsigned int b, void* const x)
{
 _Draw_VL_ab(b, a, x);
}
# 951 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL(void* const x)
{
 __Draw_VL(x);
}
# 975 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLcs(void* const x)
{
 __Draw_VLcs(x);
}
# 999 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_b(const unsigned int b, void* const x)
{
 __Draw_VL_b(b, x);
}
# 1023 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_a(const unsigned int a, void* const x)
{
 _Draw_VL_a(a, x);
}
# 1063 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLc_a(void* const x)
{
 __Mov_Draw_VLc_a(x);
}
# 1086 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_b(const unsigned int b, void* const x)
{
 __Mov_Draw_VL_b(b, x);
}
# 1110 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLcs(void* const x)
{
 __Mov_Draw_VLcs(x);
}
# 1134 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_ab(const unsigned int a, const unsigned int b, void* const x)
{
 _Mov_Draw_VL_ab(b, a, x);
}
# 1158 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_a(const unsigned int a, void* const x)
{
 _Mov_Draw_VL_a(a, x);
}
# 1182 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL(void* const x)
{
 __Mov_Draw_VL(x);
}
# 1203 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_d(const int a, const int b)
{
 _Mov_Draw_VL_d(b, a);
}
# 1236 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_mode(const const void* x)
{
 __Draw_VL_mode(x);
}
# 1263 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_7F(void* const x)
{
 __Draw_VLp_7F(x);
}
# 1291 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_FF(void* const x)
{
 __Draw_VLp_FF(x);
}
# 1317 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_b(const unsigned int b, void* const x)
{
 __Draw_VLp_b(b, x);
}
# 1343 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp(void* const x)
{
 __Draw_VLp(x);
}
# 1369 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_scale(void* const x)
{
 __Draw_VLp_scale(x);
}
# 1392 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Mode(const unsigned int a, void* const x, void* const u)
{
 _Rot_VL_Mode(a, x, u);
}
# 1415 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Pack(void* const x, void* const u)
{
 _Rot_VL_Pack(x, u);
}
# 1438 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_M_dft(void* const x, void* const u)
{
 _Rot_VL_M_dft(x, u);
}







static inline __attribute__((always_inline)) void Draw_Grid_VL(void* const x, void* const y)
{
 _Draw_Grid_VL(x, y);
}
# 1484 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Random_3(void)
{
 return _Random_3();
}
# 1497 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Random(void)
{
 return _Random();
}
# 1519 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Bitmask_a(const unsigned int a)
{
 return _Bitmask_a(a);
}
# 1535 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Abs_a_b(const int a, const int b)
{
 return _Abs_a_b(b, a);
}
# 1549 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Abs_b(const int b)
{
 return __Abs_b(b);
}
# 1565 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Angle(const int a, const int b)
{
 return _Rise_Run_Angle(b, a);
}
# 1579 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Idx(const int a)
{
 return _Get_Rise_Idx(a);
}
# 1593 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Sin(const int a)
{
 return _Xform_Sin(a);
}
# 1608 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Run(void)
{
 return _Get_Rise_Run();
}
# 1624 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Run_a(const int a)
{
 return _Xform_Run_a(a);
}
# 1639 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Run(void)
{
 return _Xform_Run();
}
# 1655 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Rise_a(const int a)
{
 return _Xform_Rise_a(a);
}
# 1670 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Rise(void)
{
 return _Xform_Rise();
}
# 1692 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_x_b(const unsigned int b, void* const x)
{
 __Clear_x_b(b, x);
}
# 1705 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_C8_RAM(void)
{
 __Clear_C8_RAM();
}
# 1717 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_x_256(void* const x)
{
 __Clear_x_256(x);
}
# 1730 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_x_d(const long unsigned int d, void* const x)
{
 _Clear_x_d(x, d);
}
# 1751 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Move_Mem_a_1(const unsigned int a, void* const x, void* const u)
{
 _Move_Mem_a_1(a, x, u);
}
# 1766 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Move_Mem_a(const unsigned int a, void* const x, void* const u)
{
 _Move_Mem_a(a, x, u);
}







static inline __attribute__((always_inline)) void Clear_x_b_80(const int b, void* const x)
{
 __Clear_x_b_80(b, x);
}

static inline __attribute__((always_inline)) void Clear_x_b_a(const unsigned int a, const unsigned int b, void* const x)
{
 _Clear_x_b_a(b, a, x);
}
# 1805 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Read_Btns_Mask(const unsigned int a)
{
 _Read_Btns_Mask(a);
}
# 1819 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Read_Btns(void)
{
 __Read_Btns();
}
# 1852 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Joy_Analog(void)
{
 __Joy_Analog();
}
# 1881 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Joy_Digital(void)
{
 __Joy_Digital();
}
# 1944 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Select_Game(const unsigned int a, const unsigned int b)
{
 _Select_Game(b, a);
}
# 1961 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Display_Option(const unsigned int a, const void* const y)
{
 _Display_Option(a, y);
}
# 1976 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset(void)
{
 __Reset();
}
# 1994 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_VIA(void)
{
 __Init_VIA();
}
# 2018 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_OS_RAM(void)
{
 __Init_OS_RAM();
}
# 2044 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_OS(void)
{
 __Init_OS();
}
# 2060 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_Buf(void)
{
 __Init_Music_Buf();
}
# 2103 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_Score(void* const x)
{
 __Clear_Score(x);
}
# 2127 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Add_Score_a(const unsigned int a, void* const x)
{
 _Add_Score_a(a, x);
}
# 2150 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Add_Score_d(const long unsigned int d, void* const x)
{
 _Add_Score_d(x, d);
}



static inline __attribute__((always_inline)) void Strip_Zeros(const unsigned int b, void* const x)
{
 __Strip_Zeros(b, x);
}
# 2183 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Compare_Score(void* const x, void* const u)
{
 return _Compare_Score(x, u);
}
# 2207 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void New_High_Score(void* const x, void* const u)
{
 _New_High_Score(x, u);
}
# 2239 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Byte(const unsigned int a, const unsigned int b)
{
 _Sound_Byte(b, a);
}
# 2254 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Byte_x(const unsigned int a, const unsigned int b, void* const x)
{
 _Sound_Byte_x(b, a, x);
}
# 2268 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_Sound(void)
{
 __Clear_Sound();
}
# 2283 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Bytes(void* const u)
{
 _Sound_Bytes(u);
}
# 2298 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Bytes_x(void* const x, void* const u)
{
 _Sound_Bytes_x(x, u);
}
# 2314 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Do_Sound(void)
{
 _Do_Sound();
}
# 2351 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_chk(const const void* u)
{
 _Init_Music_chk(u);
}
# 2395 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music(void* const u)
{
 _Init_Music(u);
}
# 2423 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_a(void* const x, void* const u)
{
 _Init_Music_a(x, u);
}
# 2452 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_x(void* const u)
{
 _Init_Music_x(u);
}
# 2467 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Stop_Sound(void)
{
 __Stop_Sound();
}
# 2502 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Explosion_Snd(const const void* u)
{
 _Explosion_Snd(u);
}
# 2517 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Set_Amp(const unsigned int b)
{
 __Set_Amp(b);
}
# 2575 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_x_7F(void* const x)
{
 __Moveto_x_7F(x);
}
# 2590 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_d_7F(const int a, const int b)
{
 _Moveto_d_7F(b, a);
}

static inline __attribute__((always_inline)) void Moveto_dd_7F(const long int d)
{
 _Moveto_dd_7F(d);
}
# 2614 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_FF(void* const x)
{
 __Moveto_ix_FF(x);
}
# 2633 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_7F(void* const x)
{
 __Moveto_ix_7F(x);
}
# 2653 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_b(const unsigned int b, void* const x)
{
 __Moveto_ix_b(b, x);
}
# 2671 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix(void* const x)
{
 __Moveto_ix(x);
}
# 2689 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_d(const int a, const int b)
{
 _Moveto_d(b, a);
}

static inline __attribute__((always_inline)) void Moveto_dd(const long int d)
{
 _Moveto_dd(d);
}
# 2718 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_1F(void)
{
 __Intensity_1F();
}
# 2733 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_3F(void)
{
 __Intensity_3F();
}
# 2748 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_5F(void)
{
 __Intensity_5F();
}
# 2763 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_7F(void)
{
 __Intensity_7F();
}
# 2780 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_a(const unsigned int a)
{
 _Intensity_a(a);
}
# 2803 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit_u(const int a, const int b, const long int x, const long int y, const long int u)
{
 return _Obj_Will_Hit_u(b, a, x, y, u);
}
# 2819 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit(const int a, const int b, const long int x, const long int y, const long int* u)
{
 return _Obj_Will_Hit(b, a, x, y, u);
}
# 2834 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Hit(const int a, const int b, const long int x, const long int y)
{
 return _Obj_Hit(b, a, x, y);
}
# 2861 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_X(const int a, const int b)
{
 return _Rise_Run_X(b, a);
}
# 2876 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Y(const int a, const int b)
{
 return _Rise_Run_Y(b, a);
}
# 2891 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned long int Rise_Run_Len(const int a)
{
 return _Rise_Run_Len(a);
}
# 2914 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_ab(const unsigned int a, const unsigned int b, void* const x, void* const u)
{
 _Rot_VL_ab(b, a, x, u);
}
# 2936 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Diff(const unsigned int b, void* const x, void* const u)
{
 _Rot_VL_Diff(b, x, u);
}
# 2959 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL(void* const x, void* const u)
{
 _Rot_VL(x, u);
}
# 3014 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_y(const long int y)
{
 _Dot_y(y);
}
# 3028 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_py(void* const y)
{
 _Dot_py(y);
}
# 3053 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pack(const unsigned int b, void* const x, const long int y)
{
 _Draw_Pack(b, x, y);
}
# 3076 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pack_py(const unsigned int b, void* const x, void* const y)
{
 _Draw_Pack_py(b, x, y);
}
# 3094 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Msg(void* const y, void* const u)
{
 _Print_Msg(y, u);
}
# 3106 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Rnd_Cone(void)
{
 return __Rnd_Cone();
}
# 3121 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Displ8_xy(const unsigned int a, const unsigned int b)
{
 return _Displ8_xy(b, a);
}
# 3136 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Displ16_xy(const unsigned int a, const unsigned int b)
{
 return _Displ16_xy(b, a);
}
# 3150 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Ranpos(void)
{
 return _Ranpos();
}
# 3176 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Scores(void)
{
 _Draw_Scores();
}
# 3202 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Score(void)
{
 _Draw_Score();
}
# 3226 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Wait_Bound(void)
{
 _Wait_Bound();
}
# 41 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum_fct.h" 2
# 45 "..\\..\\gcc6809\\vectrex\\include\\system/vec_rum.h" 2
# 44 "..\\..\\gcc6809\\vectrex\\include\\system/vectrex.h" 2
# 6 "source\\lib\\print\\print_long_binary.c" 2
# 1 ".\\source/utils/utils.h" 1




       




# 1 ".\\source\\lib/sound/sound.h" 1




       
# 29 ".\\source\\lib/sound/sound.h"
struct sound_adsr_table_t
{
 unsigned int amplitude[16];
};



struct sound_twang_table_t
{
 int frequency[8];
};



struct sound_music_t
{
 const struct sound_adsr_table_t* adsr_table;
 const struct sound_twang_table_t* twang_table;
 unsigned int music_data[];
};



extern const struct sound_music_t music_off;
extern const struct sound_music_t* current_music;



struct sound_explosion_t
{
 int enable;
 int noise;
 int volume;
 unsigned int duration;
};
# 76 ".\\source\\lib/sound/sound.h"
extern const struct sound_explosion_t explosion_off;
extern const struct sound_explosion_t* current_explosion;





void sound_init(void);

void play_music(const struct sound_music_t* music);
void stop_music(void);

void play_explosion(const struct sound_explosion_t* explosion);
void stop_explosion(void);

void play_tune(unsigned int channel, long unsigned int frequency, unsigned int volume);
# 11 ".\\source/utils/utils.h" 2




static inline __attribute__((always_inline))
void reset_beam(void)
{
 Reset0Ref();
}

static inline __attribute__((always_inline))
void scale_beam(const unsigned int scale)
{
 dp_VIA_t1_cnt_lo = scale;
}

static inline __attribute__((always_inline))
void position_beam(const int y, const int x)
{
 reset_beam();
 scale_beam(0x7f);
 Moveto_d(y, x);
}

static inline __attribute__((always_inline))
void position_beam_s(const int y, const int x, const unsigned int scale)
{
 reset_beam();
 scale_beam(scale);
 Moveto_d(y, x);
}




static inline __attribute__((always_inline))
void sync(void)
{

 DP_to_C8();
 Explosion_Snd(current_explosion);
 Init_Music_chk(current_music);
 Wait_Recal();
 Do_Sound();

}




static inline __attribute__((always_inline))
unsigned int shift_left(unsigned int operand, unsigned int bits)
{
 return (unsigned int) ((long unsigned int) operand << (long unsigned int) bits);
}

static inline __attribute__((always_inline))
unsigned int shift_right(unsigned int operand, unsigned int bits)
{
 return (unsigned int) ((long unsigned int) operand >> (long unsigned int) bits);
}

static inline __attribute__((always_inline))
int rotate_left(int operand, unsigned int bits)
{
 return (int) ((long int) operand << (long unsigned int) bits);
}

static inline __attribute__((always_inline))
int roate_right(int operand, unsigned int bits)
{
 return (int) ((long int) operand >> (long unsigned int) bits);
}




static inline __attribute__((always_inline))
unsigned int divu(unsigned int dividend, unsigned int divisor)
{
 return (unsigned int) ((long unsigned int) dividend / (long unsigned int) divisor);
}

static inline __attribute__((always_inline))
int divs(int dividend, int divisor)
{
 return (int) ((long int) dividend / (long int) divisor);
}
# 7 "source\\lib\\print\\print_long_binary.c" 2
# 1 "source\\lib\\print\\/print.h" 1




       





void print_string(int y, int x, char* text);
void print_unsigned_int(int y, int x, unsigned int z);
void print_signed_int(int y, int x, int z);
void print_long_unsigned_int(int y, int x, long unsigned int z);
void print_long_signed_int(int y, int x, long signed int z);
void print_binary(int y, int x, unsigned int z);
void print_long_binary(int y, int x, long unsigned int z);
# 8 "source\\lib\\print\\print_long_binary.c" 2




void print_long_binary(int y, int x, long unsigned int z)
{
 volatile char message[17];
 message[16] = '\x80';
 unsigned int i = 15;
 do
 {
  message[i--] = (char) ('0' + (z & 1));
  z >>= 1;
 }
 while (i != 255);
 position_beam_s(y, x, 0x7F);
 Print_Str((void*) &message[0]);
}