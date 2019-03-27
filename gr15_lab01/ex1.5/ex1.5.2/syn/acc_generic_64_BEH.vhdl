
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_N64 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_N64;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity ACC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (63 downto 0));

end ACC_N64;

architecture SYN_beh of ACC_N64 is

   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_BUF
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SELECT_OP
      generic( num_inputs, input_width : integer );
      port( DATA : in std_logic_vector( num_inputs* input_width - 1 downto 0 );
            CONTROL : in std_logic_vector( num_inputs - 1 downto 0 ); Z : out 
            std_logic_vector( input_width - 1 downto 0 ) );
   end component;
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   signal N0, N1, N2, N3, X_Logic1_port, X_Logic0_port, A_63_port, A_62_port, 
      A_61_port, A_60_port, A_59_port, A_58_port, A_57_port, A_56_port, 
      A_55_port, A_54_port, A_53_port, A_52_port, A_51_port, A_50_port, 
      A_49_port, A_48_port, A_47_port, A_46_port, A_45_port, A_44_port, 
      A_43_port, A_42_port, A_41_port, A_40_port, A_39_port, A_38_port, 
      A_37_port, A_36_port, A_35_port, A_34_port, A_33_port, A_32_port, 
      A_31_port, A_30_port, A_29_port, A_28_port, A_27_port, A_26_port, 
      A_25_port, A_24_port, A_23_port, A_22_port, A_21_port, A_20_port, 
      A_19_port, A_18_port, A_17_port, A_16_port, A_15_port, A_14_port, 
      A_13_port, A_12_port, A_11_port, A_10_port, A_9_port, A_8_port, A_7_port,
      A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, A_1_port, A_0_port, 
      B_63_port, B_62_port, B_61_port, B_60_port, B_59_port, B_58_port, 
      B_57_port, B_56_port, B_55_port, B_54_port, B_53_port, B_52_port, 
      B_51_port, B_50_port, B_49_port, B_48_port, B_47_port, B_46_port, 
      B_45_port, B_44_port, B_43_port, B_42_port, B_41_port, B_40_port, 
      B_39_port, B_38_port, B_37_port, B_36_port, B_35_port, B_34_port, 
      B_33_port, B_32_port, B_31_port, B_30_port, B_29_port, B_28_port, 
      B_27_port, B_26_port, B_25_port, B_24_port, B_23_port, B_22_port, 
      B_21_port, B_20_port, B_19_port, B_18_port, B_17_port, B_16_port, 
      B_15_port, B_14_port, B_13_port, B_12_port, B_11_port, B_10_port, 
      B_9_port, B_8_port, B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, 
      B_2_port, B_1_port, B_0_port, CLK_port, Y_63_port, Y_62_port, Y_61_port, 
      Y_60_port, Y_59_port, Y_58_port, Y_57_port, Y_56_port, Y_55_port, 
      Y_54_port, Y_53_port, Y_52_port, Y_51_port, Y_50_port, Y_49_port, 
      Y_48_port, Y_47_port, Y_46_port, Y_45_port, Y_44_port, Y_43_port, 
      Y_42_port, Y_41_port, Y_40_port, Y_39_port, Y_38_port, Y_37_port, 
      Y_36_port, Y_35_port, Y_34_port, Y_33_port, Y_32_port, Y_31_port, 
      Y_30_port, Y_29_port, Y_28_port, Y_27_port, Y_26_port, Y_25_port, 
      Y_24_port, Y_23_port, Y_22_port, Y_21_port, Y_20_port, Y_19_port, 
      Y_18_port, Y_17_port, Y_16_port, Y_15_port, Y_14_port, Y_13_port, 
      Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port, Y_7_port, Y_6_port, 
      Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port, N4, 
      MuxOutAdderIn_63_port, MuxOutAdderIn_62_port, MuxOutAdderIn_61_port, 
      MuxOutAdderIn_60_port, MuxOutAdderIn_59_port, MuxOutAdderIn_58_port, 
      MuxOutAdderIn_57_port, MuxOutAdderIn_56_port, MuxOutAdderIn_55_port, 
      MuxOutAdderIn_54_port, MuxOutAdderIn_53_port, MuxOutAdderIn_52_port, 
      MuxOutAdderIn_51_port, MuxOutAdderIn_50_port, MuxOutAdderIn_49_port, 
      MuxOutAdderIn_48_port, MuxOutAdderIn_47_port, MuxOutAdderIn_46_port, 
      MuxOutAdderIn_45_port, MuxOutAdderIn_44_port, MuxOutAdderIn_43_port, 
      MuxOutAdderIn_42_port, MuxOutAdderIn_41_port, MuxOutAdderIn_40_port, 
      MuxOutAdderIn_39_port, MuxOutAdderIn_38_port, MuxOutAdderIn_37_port, 
      MuxOutAdderIn_36_port, MuxOutAdderIn_35_port, MuxOutAdderIn_34_port, 
      MuxOutAdderIn_33_port, MuxOutAdderIn_32_port, MuxOutAdderIn_31_port, 
      MuxOutAdderIn_30_port, MuxOutAdderIn_29_port, MuxOutAdderIn_28_port, 
      MuxOutAdderIn_27_port, MuxOutAdderIn_26_port, MuxOutAdderIn_25_port, 
      MuxOutAdderIn_24_port, MuxOutAdderIn_23_port, MuxOutAdderIn_22_port, 
      MuxOutAdderIn_21_port, MuxOutAdderIn_20_port, MuxOutAdderIn_19_port, 
      MuxOutAdderIn_18_port, MuxOutAdderIn_17_port, MuxOutAdderIn_16_port, 
      MuxOutAdderIn_15_port, MuxOutAdderIn_14_port, MuxOutAdderIn_13_port, 
      MuxOutAdderIn_12_port, MuxOutAdderIn_11_port, MuxOutAdderIn_10_port, 
      MuxOutAdderIn_9_port, MuxOutAdderIn_8_port, MuxOutAdderIn_7_port, 
      MuxOutAdderIn_6_port, MuxOutAdderIn_5_port, MuxOutAdderIn_4_port, 
      MuxOutAdderIn_3_port, MuxOutAdderIn_2_port, MuxOutAdderIn_1_port, 
      MuxOutAdderIn_0_port, out_add_63_port, out_add_62_port, out_add_61_port, 
      out_add_60_port, out_add_59_port, out_add_58_port, out_add_57_port, 
      out_add_56_port, out_add_55_port, out_add_54_port, out_add_53_port, 
      out_add_52_port, out_add_51_port, out_add_50_port, out_add_49_port, 
      out_add_48_port, out_add_47_port, out_add_46_port, out_add_45_port, 
      out_add_44_port, out_add_43_port, out_add_42_port, out_add_41_port, 
      out_add_40_port, out_add_39_port, out_add_38_port, out_add_37_port, 
      out_add_36_port, out_add_35_port, out_add_34_port, out_add_33_port, 
      out_add_32_port, out_add_31_port, out_add_30_port, out_add_29_port, 
      out_add_28_port, out_add_27_port, out_add_26_port, out_add_25_port, 
      out_add_24_port, out_add_23_port, out_add_22_port, out_add_21_port, 
      out_add_20_port, out_add_19_port, out_add_18_port, out_add_17_port, 
      out_add_16_port, out_add_15_port, out_add_14_port, out_add_13_port, 
      out_add_12_port, out_add_11_port, out_add_10_port, out_add_9_port, 
      out_add_8_port, out_add_7_port, out_add_6_port, out_add_5_port, 
      out_add_4_port, out_add_3_port, out_add_2_port, out_add_1_port, 
      out_add_0_port, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, 
      N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31
      , N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, 
      N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60
      , N61, N62, N63, N64, N65, N66, N67, N68, N69, n_1000, n_1001, n_1002, 
      n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, 
      n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, 
      n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, 
      n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, 
      n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, 
      n_1048, n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, 
      n_1057, n_1058, n_1059, n_1060, n_1061, n_1062, n_1063 : std_logic;

begin
   ( A_63_port, A_62_port, A_61_port, A_60_port, A_59_port, A_58_port, 
      A_57_port, A_56_port, A_55_port, A_54_port, A_53_port, A_52_port, 
      A_51_port, A_50_port, A_49_port, A_48_port, A_47_port, A_46_port, 
      A_45_port, A_44_port, A_43_port, A_42_port, A_41_port, A_40_port, 
      A_39_port, A_38_port, A_37_port, A_36_port, A_35_port, A_34_port, 
      A_33_port, A_32_port, A_31_port, A_30_port, A_29_port, A_28_port, 
      A_27_port, A_26_port, A_25_port, A_24_port, A_23_port, A_22_port, 
      A_21_port, A_20_port, A_19_port, A_18_port, A_17_port, A_16_port, 
      A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, A_10_port, 
      A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, A_4_port, A_3_port, 
      A_2_port, A_1_port, A_0_port ) <= A;
   ( B_63_port, B_62_port, B_61_port, B_60_port, B_59_port, B_58_port, 
      B_57_port, B_56_port, B_55_port, B_54_port, B_53_port, B_52_port, 
      B_51_port, B_50_port, B_49_port, B_48_port, B_47_port, B_46_port, 
      B_45_port, B_44_port, B_43_port, B_42_port, B_41_port, B_40_port, 
      B_39_port, B_38_port, B_37_port, B_36_port, B_35_port, B_34_port, 
      B_33_port, B_32_port, B_31_port, B_30_port, B_29_port, B_28_port, 
      B_27_port, B_26_port, B_25_port, B_24_port, B_23_port, B_22_port, 
      B_21_port, B_20_port, B_19_port, B_18_port, B_17_port, B_16_port, 
      B_15_port, B_14_port, B_13_port, B_12_port, B_11_port, B_10_port, 
      B_9_port, B_8_port, B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, 
      B_2_port, B_1_port, B_0_port ) <= B;
   CLK_port <= CLK;
   Y <= ( Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port, Y_58_port, 
      Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, Y_52_port, 
      Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, Y_46_port, 
      Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, Y_40_port, 
      Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, Y_34_port, 
      Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, 
      Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, 
      Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, 
      Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port );
   
   feed_back_reg_63_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N68,
               clocked_on => CLK_port, Q => Y_63_port, QN => n_1000);
   feed_back_reg_62_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N67,
               clocked_on => CLK_port, Q => Y_62_port, QN => n_1001);
   feed_back_reg_61_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N66,
               clocked_on => CLK_port, Q => Y_61_port, QN => n_1002);
   feed_back_reg_60_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N65,
               clocked_on => CLK_port, Q => Y_60_port, QN => n_1003);
   feed_back_reg_59_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N64,
               clocked_on => CLK_port, Q => Y_59_port, QN => n_1004);
   feed_back_reg_58_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N63,
               clocked_on => CLK_port, Q => Y_58_port, QN => n_1005);
   feed_back_reg_57_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N62,
               clocked_on => CLK_port, Q => Y_57_port, QN => n_1006);
   feed_back_reg_56_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N61,
               clocked_on => CLK_port, Q => Y_56_port, QN => n_1007);
   feed_back_reg_55_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N60,
               clocked_on => CLK_port, Q => Y_55_port, QN => n_1008);
   feed_back_reg_54_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N59,
               clocked_on => CLK_port, Q => Y_54_port, QN => n_1009);
   feed_back_reg_53_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N58,
               clocked_on => CLK_port, Q => Y_53_port, QN => n_1010);
   feed_back_reg_52_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N57,
               clocked_on => CLK_port, Q => Y_52_port, QN => n_1011);
   feed_back_reg_51_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N56,
               clocked_on => CLK_port, Q => Y_51_port, QN => n_1012);
   feed_back_reg_50_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N55,
               clocked_on => CLK_port, Q => Y_50_port, QN => n_1013);
   feed_back_reg_49_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N54,
               clocked_on => CLK_port, Q => Y_49_port, QN => n_1014);
   feed_back_reg_48_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N53,
               clocked_on => CLK_port, Q => Y_48_port, QN => n_1015);
   feed_back_reg_47_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N52,
               clocked_on => CLK_port, Q => Y_47_port, QN => n_1016);
   feed_back_reg_46_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N51,
               clocked_on => CLK_port, Q => Y_46_port, QN => n_1017);
   feed_back_reg_45_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N50,
               clocked_on => CLK_port, Q => Y_45_port, QN => n_1018);
   feed_back_reg_44_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N49,
               clocked_on => CLK_port, Q => Y_44_port, QN => n_1019);
   feed_back_reg_43_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N48,
               clocked_on => CLK_port, Q => Y_43_port, QN => n_1020);
   feed_back_reg_42_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N47,
               clocked_on => CLK_port, Q => Y_42_port, QN => n_1021);
   feed_back_reg_41_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N46,
               clocked_on => CLK_port, Q => Y_41_port, QN => n_1022);
   feed_back_reg_40_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N45,
               clocked_on => CLK_port, Q => Y_40_port, QN => n_1023);
   feed_back_reg_39_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N44,
               clocked_on => CLK_port, Q => Y_39_port, QN => n_1024);
   feed_back_reg_38_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N43,
               clocked_on => CLK_port, Q => Y_38_port, QN => n_1025);
   feed_back_reg_37_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N42,
               clocked_on => CLK_port, Q => Y_37_port, QN => n_1026);
   feed_back_reg_36_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N41,
               clocked_on => CLK_port, Q => Y_36_port, QN => n_1027);
   feed_back_reg_35_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N40,
               clocked_on => CLK_port, Q => Y_35_port, QN => n_1028);
   feed_back_reg_34_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N39,
               clocked_on => CLK_port, Q => Y_34_port, QN => n_1029);
   feed_back_reg_33_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N38,
               clocked_on => CLK_port, Q => Y_33_port, QN => n_1030);
   feed_back_reg_32_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N37,
               clocked_on => CLK_port, Q => Y_32_port, QN => n_1031);
   feed_back_reg_31_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N36,
               clocked_on => CLK_port, Q => Y_31_port, QN => n_1032);
   feed_back_reg_30_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N35,
               clocked_on => CLK_port, Q => Y_30_port, QN => n_1033);
   feed_back_reg_29_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N34,
               clocked_on => CLK_port, Q => Y_29_port, QN => n_1034);
   feed_back_reg_28_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N33,
               clocked_on => CLK_port, Q => Y_28_port, QN => n_1035);
   feed_back_reg_27_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N32,
               clocked_on => CLK_port, Q => Y_27_port, QN => n_1036);
   feed_back_reg_26_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N31,
               clocked_on => CLK_port, Q => Y_26_port, QN => n_1037);
   feed_back_reg_25_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N30,
               clocked_on => CLK_port, Q => Y_25_port, QN => n_1038);
   feed_back_reg_24_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N29,
               clocked_on => CLK_port, Q => Y_24_port, QN => n_1039);
   feed_back_reg_23_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N28,
               clocked_on => CLK_port, Q => Y_23_port, QN => n_1040);
   feed_back_reg_22_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N27,
               clocked_on => CLK_port, Q => Y_22_port, QN => n_1041);
   feed_back_reg_21_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N26,
               clocked_on => CLK_port, Q => Y_21_port, QN => n_1042);
   feed_back_reg_20_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N25,
               clocked_on => CLK_port, Q => Y_20_port, QN => n_1043);
   feed_back_reg_19_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N24,
               clocked_on => CLK_port, Q => Y_19_port, QN => n_1044);
   feed_back_reg_18_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N23,
               clocked_on => CLK_port, Q => Y_18_port, QN => n_1045);
   feed_back_reg_17_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N22,
               clocked_on => CLK_port, Q => Y_17_port, QN => n_1046);
   feed_back_reg_16_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N21,
               clocked_on => CLK_port, Q => Y_16_port, QN => n_1047);
   feed_back_reg_15_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N20,
               clocked_on => CLK_port, Q => Y_15_port, QN => n_1048);
   feed_back_reg_14_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N19,
               clocked_on => CLK_port, Q => Y_14_port, QN => n_1049);
   feed_back_reg_13_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N18,
               clocked_on => CLK_port, Q => Y_13_port, QN => n_1050);
   feed_back_reg_12_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N17,
               clocked_on => CLK_port, Q => Y_12_port, QN => n_1051);
   feed_back_reg_11_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N16,
               clocked_on => CLK_port, Q => Y_11_port, QN => n_1052);
   feed_back_reg_10_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N15,
               clocked_on => CLK_port, Q => Y_10_port, QN => n_1053);
   feed_back_reg_9_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N14,
               clocked_on => CLK_port, Q => Y_9_port, QN => n_1054);
   feed_back_reg_8_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N13,
               clocked_on => CLK_port, Q => Y_8_port, QN => n_1055);
   feed_back_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N12,
               clocked_on => CLK_port, Q => Y_7_port, QN => n_1056);
   feed_back_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N11,
               clocked_on => CLK_port, Q => Y_6_port, QN => n_1057);
   feed_back_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N10,
               clocked_on => CLK_port, Q => Y_5_port, QN => n_1058);
   feed_back_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N9, 
               clocked_on => CLK_port, Q => Y_4_port, QN => n_1059);
   feed_back_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N8, 
               clocked_on => CLK_port, Q => Y_3_port, QN => n_1060);
   feed_back_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N7, 
               clocked_on => CLK_port, Q => Y_2_port, QN => n_1061);
   feed_back_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N6, 
               clocked_on => CLK_port, Q => Y_1_port, QN => n_1062);
   feed_back_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N5, 
               clocked_on => CLK_port, Q => Y_0_port, QN => n_1063);
   I_0 : GTECH_NOT port map( A => RST_n, Z => N69);
   add_153 : process ( A_63_port, A_62_port, A_61_port, A_60_port, A_59_port, 
         A_58_port, A_57_port, A_56_port, A_55_port, A_54_port, A_53_port, 
         A_52_port, A_51_port, A_50_port, A_49_port, A_48_port, A_47_port, 
         A_46_port, A_45_port, A_44_port, A_43_port, A_42_port, A_41_port, 
         A_40_port, A_39_port, A_38_port, A_37_port, A_36_port, A_35_port, 
         A_34_port, A_33_port, A_32_port, A_31_port, A_30_port, A_29_port, 
         A_28_port, A_27_port, A_26_port, A_25_port, A_24_port, A_23_port, 
         A_22_port, A_21_port, A_20_port, A_19_port, A_18_port, A_17_port, 
         A_16_port, A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, 
         A_10_port, A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, A_4_port,
         A_3_port, A_2_port, A_1_port, A_0_port, MuxOutAdderIn_63_port, 
         MuxOutAdderIn_62_port, MuxOutAdderIn_61_port, MuxOutAdderIn_60_port, 
         MuxOutAdderIn_59_port, MuxOutAdderIn_58_port, MuxOutAdderIn_57_port, 
         MuxOutAdderIn_56_port, MuxOutAdderIn_55_port, MuxOutAdderIn_54_port, 
         MuxOutAdderIn_53_port, MuxOutAdderIn_52_port, MuxOutAdderIn_51_port, 
         MuxOutAdderIn_50_port, MuxOutAdderIn_49_port, MuxOutAdderIn_48_port, 
         MuxOutAdderIn_47_port, MuxOutAdderIn_46_port, MuxOutAdderIn_45_port, 
         MuxOutAdderIn_44_port, MuxOutAdderIn_43_port, MuxOutAdderIn_42_port, 
         MuxOutAdderIn_41_port, MuxOutAdderIn_40_port, MuxOutAdderIn_39_port, 
         MuxOutAdderIn_38_port, MuxOutAdderIn_37_port, MuxOutAdderIn_36_port, 
         MuxOutAdderIn_35_port, MuxOutAdderIn_34_port, MuxOutAdderIn_33_port, 
         MuxOutAdderIn_32_port, MuxOutAdderIn_31_port, MuxOutAdderIn_30_port, 
         MuxOutAdderIn_29_port, MuxOutAdderIn_28_port, MuxOutAdderIn_27_port, 
         MuxOutAdderIn_26_port, MuxOutAdderIn_25_port, MuxOutAdderIn_24_port, 
         MuxOutAdderIn_23_port, MuxOutAdderIn_22_port, MuxOutAdderIn_21_port, 
         MuxOutAdderIn_20_port, MuxOutAdderIn_19_port, MuxOutAdderIn_18_port, 
         MuxOutAdderIn_17_port, MuxOutAdderIn_16_port, MuxOutAdderIn_15_port, 
         MuxOutAdderIn_14_port, MuxOutAdderIn_13_port, MuxOutAdderIn_12_port, 
         MuxOutAdderIn_11_port, MuxOutAdderIn_10_port, MuxOutAdderIn_9_port, 
         MuxOutAdderIn_8_port, MuxOutAdderIn_7_port, MuxOutAdderIn_6_port, 
         MuxOutAdderIn_5_port, MuxOutAdderIn_4_port, MuxOutAdderIn_3_port, 
         MuxOutAdderIn_2_port, MuxOutAdderIn_1_port, MuxOutAdderIn_0_port )
      variable A : UNSIGNED( 63 downto 0 );
      variable B : UNSIGNED( 63 downto 0 );
      variable Z : UNSIGNED( 63 downto 0 );
   begin
      A := ( A_63_port, A_62_port, A_61_port, A_60_port, A_59_port, A_58_port, 
            A_57_port, A_56_port, A_55_port, A_54_port, A_53_port, A_52_port, 
            A_51_port, A_50_port, A_49_port, A_48_port, A_47_port, A_46_port, 
            A_45_port, A_44_port, A_43_port, A_42_port, A_41_port, A_40_port, 
            A_39_port, A_38_port, A_37_port, A_36_port, A_35_port, A_34_port, 
            A_33_port, A_32_port, A_31_port, A_30_port, A_29_port, A_28_port, 
            A_27_port, A_26_port, A_25_port, A_24_port, A_23_port, A_22_port, 
            A_21_port, A_20_port, A_19_port, A_18_port, A_17_port, A_16_port, 
            A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, A_10_port, 
            A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, A_4_port, 
            A_3_port, A_2_port, A_1_port, A_0_port );
      B := ( MuxOutAdderIn_63_port, MuxOutAdderIn_62_port, 
            MuxOutAdderIn_61_port, MuxOutAdderIn_60_port, MuxOutAdderIn_59_port
            , MuxOutAdderIn_58_port, MuxOutAdderIn_57_port, 
            MuxOutAdderIn_56_port, MuxOutAdderIn_55_port, MuxOutAdderIn_54_port
            , MuxOutAdderIn_53_port, MuxOutAdderIn_52_port, 
            MuxOutAdderIn_51_port, MuxOutAdderIn_50_port, MuxOutAdderIn_49_port
            , MuxOutAdderIn_48_port, MuxOutAdderIn_47_port, 
            MuxOutAdderIn_46_port, MuxOutAdderIn_45_port, MuxOutAdderIn_44_port
            , MuxOutAdderIn_43_port, MuxOutAdderIn_42_port, 
            MuxOutAdderIn_41_port, MuxOutAdderIn_40_port, MuxOutAdderIn_39_port
            , MuxOutAdderIn_38_port, MuxOutAdderIn_37_port, 
            MuxOutAdderIn_36_port, MuxOutAdderIn_35_port, MuxOutAdderIn_34_port
            , MuxOutAdderIn_33_port, MuxOutAdderIn_32_port, 
            MuxOutAdderIn_31_port, MuxOutAdderIn_30_port, MuxOutAdderIn_29_port
            , MuxOutAdderIn_28_port, MuxOutAdderIn_27_port, 
            MuxOutAdderIn_26_port, MuxOutAdderIn_25_port, MuxOutAdderIn_24_port
            , MuxOutAdderIn_23_port, MuxOutAdderIn_22_port, 
            MuxOutAdderIn_21_port, MuxOutAdderIn_20_port, MuxOutAdderIn_19_port
            , MuxOutAdderIn_18_port, MuxOutAdderIn_17_port, 
            MuxOutAdderIn_16_port, MuxOutAdderIn_15_port, MuxOutAdderIn_14_port
            , MuxOutAdderIn_13_port, MuxOutAdderIn_12_port, 
            MuxOutAdderIn_11_port, MuxOutAdderIn_10_port, MuxOutAdderIn_9_port,
            MuxOutAdderIn_8_port, MuxOutAdderIn_7_port, MuxOutAdderIn_6_port, 
            MuxOutAdderIn_5_port, MuxOutAdderIn_4_port, MuxOutAdderIn_3_port, 
            MuxOutAdderIn_2_port, MuxOutAdderIn_1_port, MuxOutAdderIn_0_port );
      Z := A + B;
      ( out_add_63_port, out_add_62_port, out_add_61_port, out_add_60_port, 
            out_add_59_port, out_add_58_port, out_add_57_port, out_add_56_port,
            out_add_55_port, out_add_54_port, out_add_53_port, out_add_52_port,
            out_add_51_port, out_add_50_port, out_add_49_port, out_add_48_port,
            out_add_47_port, out_add_46_port, out_add_45_port, out_add_44_port,
            out_add_43_port, out_add_42_port, out_add_41_port, out_add_40_port,
            out_add_39_port, out_add_38_port, out_add_37_port, out_add_36_port,
            out_add_35_port, out_add_34_port, out_add_33_port, out_add_32_port,
            out_add_31_port, out_add_30_port, out_add_29_port, out_add_28_port,
            out_add_27_port, out_add_26_port, out_add_25_port, out_add_24_port,
            out_add_23_port, out_add_22_port, out_add_21_port, out_add_20_port,
            out_add_19_port, out_add_18_port, out_add_17_port, out_add_16_port,
            out_add_15_port, out_add_14_port, out_add_13_port, out_add_12_port,
            out_add_11_port, out_add_10_port, out_add_9_port, out_add_8_port, 
            out_add_7_port, out_add_6_port, out_add_5_port, out_add_4_port, 
            out_add_3_port, out_add_2_port, out_add_1_port, out_add_0_port ) <=
            Z;
   end process;
   
   C145_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 64 )
      port map(
         -- Connections to port 'DATA1'
         DATA(63) => Y_63_port, DATA(62) => Y_62_port, DATA(61) => Y_61_port, 
               DATA(60) => Y_60_port, DATA(59) => Y_59_port, DATA(58) => 
               Y_58_port, DATA(57) => Y_57_port, DATA(56) => Y_56_port, 
               DATA(55) => Y_55_port, DATA(54) => Y_54_port, DATA(53) => 
               Y_53_port, DATA(52) => Y_52_port, DATA(51) => Y_51_port, 
               DATA(50) => Y_50_port, DATA(49) => Y_49_port, DATA(48) => 
               Y_48_port, DATA(47) => Y_47_port, DATA(46) => Y_46_port, 
               DATA(45) => Y_45_port, DATA(44) => Y_44_port, DATA(43) => 
               Y_43_port, DATA(42) => Y_42_port, DATA(41) => Y_41_port, 
               DATA(40) => Y_40_port, DATA(39) => Y_39_port, DATA(38) => 
               Y_38_port, DATA(37) => Y_37_port, DATA(36) => Y_36_port, 
               DATA(35) => Y_35_port, DATA(34) => Y_34_port, DATA(33) => 
               Y_33_port, DATA(32) => Y_32_port, DATA(31) => Y_31_port, 
               DATA(30) => Y_30_port, DATA(29) => Y_29_port, DATA(28) => 
               Y_28_port, DATA(27) => Y_27_port, DATA(26) => Y_26_port, 
               DATA(25) => Y_25_port, DATA(24) => Y_24_port, DATA(23) => 
               Y_23_port, DATA(22) => Y_22_port, DATA(21) => Y_21_port, 
               DATA(20) => Y_20_port, DATA(19) => Y_19_port, DATA(18) => 
               Y_18_port, DATA(17) => Y_17_port, DATA(16) => Y_16_port, 
               DATA(15) => Y_15_port, DATA(14) => Y_14_port, DATA(13) => 
               Y_13_port, DATA(12) => Y_12_port, DATA(11) => Y_11_port, 
               DATA(10) => Y_10_port, DATA(9) => Y_9_port, DATA(8) => Y_8_port,
               DATA(7) => Y_7_port, DATA(6) => Y_6_port, DATA(5) => Y_5_port, 
               DATA(4) => Y_4_port, DATA(3) => Y_3_port, DATA(2) => Y_2_port, 
               DATA(1) => Y_1_port, DATA(0) => Y_0_port, 
         -- Connections to port 'DATA2'
         DATA(127) => B_63_port, DATA(126) => B_62_port, DATA(125) => B_61_port
               , DATA(124) => B_60_port, DATA(123) => B_59_port, DATA(122) => 
               B_58_port, DATA(121) => B_57_port, DATA(120) => B_56_port, 
               DATA(119) => B_55_port, DATA(118) => B_54_port, DATA(117) => 
               B_53_port, DATA(116) => B_52_port, DATA(115) => B_51_port, 
               DATA(114) => B_50_port, DATA(113) => B_49_port, DATA(112) => 
               B_48_port, DATA(111) => B_47_port, DATA(110) => B_46_port, 
               DATA(109) => B_45_port, DATA(108) => B_44_port, DATA(107) => 
               B_43_port, DATA(106) => B_42_port, DATA(105) => B_41_port, 
               DATA(104) => B_40_port, DATA(103) => B_39_port, DATA(102) => 
               B_38_port, DATA(101) => B_37_port, DATA(100) => B_36_port, 
               DATA(99) => B_35_port, DATA(98) => B_34_port, DATA(97) => 
               B_33_port, DATA(96) => B_32_port, DATA(95) => B_31_port, 
               DATA(94) => B_30_port, DATA(93) => B_29_port, DATA(92) => 
               B_28_port, DATA(91) => B_27_port, DATA(90) => B_26_port, 
               DATA(89) => B_25_port, DATA(88) => B_24_port, DATA(87) => 
               B_23_port, DATA(86) => B_22_port, DATA(85) => B_21_port, 
               DATA(84) => B_20_port, DATA(83) => B_19_port, DATA(82) => 
               B_18_port, DATA(81) => B_17_port, DATA(80) => B_16_port, 
               DATA(79) => B_15_port, DATA(78) => B_14_port, DATA(77) => 
               B_13_port, DATA(76) => B_12_port, DATA(75) => B_11_port, 
               DATA(74) => B_10_port, DATA(73) => B_9_port, DATA(72) => 
               B_8_port, DATA(71) => B_7_port, DATA(70) => B_6_port, DATA(69) 
               => B_5_port, DATA(68) => B_4_port, DATA(67) => B_3_port, 
               DATA(66) => B_2_port, DATA(65) => B_1_port, DATA(64) => B_0_port
               , 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(63) => MuxOutAdderIn_63_port, Z(62) => MuxOutAdderIn_62_port, Z(61) 
               => MuxOutAdderIn_61_port, Z(60) => MuxOutAdderIn_60_port, Z(59) 
               => MuxOutAdderIn_59_port, Z(58) => MuxOutAdderIn_58_port, Z(57) 
               => MuxOutAdderIn_57_port, Z(56) => MuxOutAdderIn_56_port, Z(55) 
               => MuxOutAdderIn_55_port, Z(54) => MuxOutAdderIn_54_port, Z(53) 
               => MuxOutAdderIn_53_port, Z(52) => MuxOutAdderIn_52_port, Z(51) 
               => MuxOutAdderIn_51_port, Z(50) => MuxOutAdderIn_50_port, Z(49) 
               => MuxOutAdderIn_49_port, Z(48) => MuxOutAdderIn_48_port, Z(47) 
               => MuxOutAdderIn_47_port, Z(46) => MuxOutAdderIn_46_port, Z(45) 
               => MuxOutAdderIn_45_port, Z(44) => MuxOutAdderIn_44_port, Z(43) 
               => MuxOutAdderIn_43_port, Z(42) => MuxOutAdderIn_42_port, Z(41) 
               => MuxOutAdderIn_41_port, Z(40) => MuxOutAdderIn_40_port, Z(39) 
               => MuxOutAdderIn_39_port, Z(38) => MuxOutAdderIn_38_port, Z(37) 
               => MuxOutAdderIn_37_port, Z(36) => MuxOutAdderIn_36_port, Z(35) 
               => MuxOutAdderIn_35_port, Z(34) => MuxOutAdderIn_34_port, Z(33) 
               => MuxOutAdderIn_33_port, Z(32) => MuxOutAdderIn_32_port, Z(31) 
               => MuxOutAdderIn_31_port, Z(30) => MuxOutAdderIn_30_port, Z(29) 
               => MuxOutAdderIn_29_port, Z(28) => MuxOutAdderIn_28_port, Z(27) 
               => MuxOutAdderIn_27_port, Z(26) => MuxOutAdderIn_26_port, Z(25) 
               => MuxOutAdderIn_25_port, Z(24) => MuxOutAdderIn_24_port, Z(23) 
               => MuxOutAdderIn_23_port, Z(22) => MuxOutAdderIn_22_port, Z(21) 
               => MuxOutAdderIn_21_port, Z(20) => MuxOutAdderIn_20_port, Z(19) 
               => MuxOutAdderIn_19_port, Z(18) => MuxOutAdderIn_18_port, Z(17) 
               => MuxOutAdderIn_17_port, Z(16) => MuxOutAdderIn_16_port, Z(15) 
               => MuxOutAdderIn_15_port, Z(14) => MuxOutAdderIn_14_port, Z(13) 
               => MuxOutAdderIn_13_port, Z(12) => MuxOutAdderIn_12_port, Z(11) 
               => MuxOutAdderIn_11_port, Z(10) => MuxOutAdderIn_10_port, Z(9) 
               => MuxOutAdderIn_9_port, Z(8) => MuxOutAdderIn_8_port, Z(7) => 
               MuxOutAdderIn_7_port, Z(6) => MuxOutAdderIn_6_port, Z(5) => 
               MuxOutAdderIn_5_port, Z(4) => MuxOutAdderIn_4_port, Z(3) => 
               MuxOutAdderIn_3_port, Z(2) => MuxOutAdderIn_2_port, Z(1) => 
               MuxOutAdderIn_1_port, Z(0) => MuxOutAdderIn_0_port );
   B_0 : GTECH_BUF port map( A => ACCUMULATE, Z => N0);
   B_1 : GTECH_BUF port map( A => N4, Z => N1);
   C146_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 64 )
      port map(
         -- Connections to port 'DATA1'
         DATA(63) => X_Logic0_port, DATA(62) => X_Logic0_port, DATA(61) => 
               X_Logic0_port, DATA(60) => X_Logic0_port, DATA(59) => 
               X_Logic0_port, DATA(58) => X_Logic0_port, DATA(57) => 
               X_Logic0_port, DATA(56) => X_Logic0_port, DATA(55) => 
               X_Logic0_port, DATA(54) => X_Logic0_port, DATA(53) => 
               X_Logic0_port, DATA(52) => X_Logic0_port, DATA(51) => 
               X_Logic0_port, DATA(50) => X_Logic0_port, DATA(49) => 
               X_Logic0_port, DATA(48) => X_Logic0_port, DATA(47) => 
               X_Logic0_port, DATA(46) => X_Logic0_port, DATA(45) => 
               X_Logic0_port, DATA(44) => X_Logic0_port, DATA(43) => 
               X_Logic0_port, DATA(42) => X_Logic0_port, DATA(41) => 
               X_Logic0_port, DATA(40) => X_Logic0_port, DATA(39) => 
               X_Logic0_port, DATA(38) => X_Logic0_port, DATA(37) => 
               X_Logic0_port, DATA(36) => X_Logic0_port, DATA(35) => 
               X_Logic0_port, DATA(34) => X_Logic0_port, DATA(33) => 
               X_Logic0_port, DATA(32) => X_Logic0_port, DATA(31) => 
               X_Logic0_port, DATA(30) => X_Logic0_port, DATA(29) => 
               X_Logic0_port, DATA(28) => X_Logic0_port, DATA(27) => 
               X_Logic0_port, DATA(26) => X_Logic0_port, DATA(25) => 
               X_Logic0_port, DATA(24) => X_Logic0_port, DATA(23) => 
               X_Logic0_port, DATA(22) => X_Logic0_port, DATA(21) => 
               X_Logic0_port, DATA(20) => X_Logic0_port, DATA(19) => 
               X_Logic0_port, DATA(18) => X_Logic0_port, DATA(17) => 
               X_Logic0_port, DATA(16) => X_Logic0_port, DATA(15) => 
               X_Logic0_port, DATA(14) => X_Logic0_port, DATA(13) => 
               X_Logic0_port, DATA(12) => X_Logic0_port, DATA(11) => 
               X_Logic0_port, DATA(10) => X_Logic0_port, DATA(9) => 
               X_Logic0_port, DATA(8) => X_Logic0_port, DATA(7) => 
               X_Logic0_port, DATA(6) => X_Logic0_port, DATA(5) => 
               X_Logic0_port, DATA(4) => X_Logic0_port, DATA(3) => 
               X_Logic0_port, DATA(2) => X_Logic0_port, DATA(1) => 
               X_Logic0_port, DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(127) => out_add_63_port, DATA(126) => out_add_62_port, DATA(125) 
               => out_add_61_port, DATA(124) => out_add_60_port, DATA(123) => 
               out_add_59_port, DATA(122) => out_add_58_port, DATA(121) => 
               out_add_57_port, DATA(120) => out_add_56_port, DATA(119) => 
               out_add_55_port, DATA(118) => out_add_54_port, DATA(117) => 
               out_add_53_port, DATA(116) => out_add_52_port, DATA(115) => 
               out_add_51_port, DATA(114) => out_add_50_port, DATA(113) => 
               out_add_49_port, DATA(112) => out_add_48_port, DATA(111) => 
               out_add_47_port, DATA(110) => out_add_46_port, DATA(109) => 
               out_add_45_port, DATA(108) => out_add_44_port, DATA(107) => 
               out_add_43_port, DATA(106) => out_add_42_port, DATA(105) => 
               out_add_41_port, DATA(104) => out_add_40_port, DATA(103) => 
               out_add_39_port, DATA(102) => out_add_38_port, DATA(101) => 
               out_add_37_port, DATA(100) => out_add_36_port, DATA(99) => 
               out_add_35_port, DATA(98) => out_add_34_port, DATA(97) => 
               out_add_33_port, DATA(96) => out_add_32_port, DATA(95) => 
               out_add_31_port, DATA(94) => out_add_30_port, DATA(93) => 
               out_add_29_port, DATA(92) => out_add_28_port, DATA(91) => 
               out_add_27_port, DATA(90) => out_add_26_port, DATA(89) => 
               out_add_25_port, DATA(88) => out_add_24_port, DATA(87) => 
               out_add_23_port, DATA(86) => out_add_22_port, DATA(85) => 
               out_add_21_port, DATA(84) => out_add_20_port, DATA(83) => 
               out_add_19_port, DATA(82) => out_add_18_port, DATA(81) => 
               out_add_17_port, DATA(80) => out_add_16_port, DATA(79) => 
               out_add_15_port, DATA(78) => out_add_14_port, DATA(77) => 
               out_add_13_port, DATA(76) => out_add_12_port, DATA(75) => 
               out_add_11_port, DATA(74) => out_add_10_port, DATA(73) => 
               out_add_9_port, DATA(72) => out_add_8_port, DATA(71) => 
               out_add_7_port, DATA(70) => out_add_6_port, DATA(69) => 
               out_add_5_port, DATA(68) => out_add_4_port, DATA(67) => 
               out_add_3_port, DATA(66) => out_add_2_port, DATA(65) => 
               out_add_1_port, DATA(64) => out_add_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N2, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N3, 
         -- Connections to port 'Z'
         Z(63) => N68, Z(62) => N67, Z(61) => N66, Z(60) => N65, Z(59) => N64, 
               Z(58) => N63, Z(57) => N62, Z(56) => N61, Z(55) => N60, Z(54) =>
               N59, Z(53) => N58, Z(52) => N57, Z(51) => N56, Z(50) => N55, 
               Z(49) => N54, Z(48) => N53, Z(47) => N52, Z(46) => N51, Z(45) =>
               N50, Z(44) => N49, Z(43) => N48, Z(42) => N47, Z(41) => N46, 
               Z(40) => N45, Z(39) => N44, Z(38) => N43, Z(37) => N42, Z(36) =>
               N41, Z(35) => N40, Z(34) => N39, Z(33) => N38, Z(32) => N37, 
               Z(31) => N36, Z(30) => N35, Z(29) => N34, Z(28) => N33, Z(27) =>
               N32, Z(26) => N31, Z(25) => N30, Z(24) => N29, Z(23) => N28, 
               Z(22) => N27, Z(21) => N26, Z(20) => N25, Z(19) => N24, Z(18) =>
               N23, Z(17) => N22, Z(16) => N21, Z(15) => N20, Z(14) => N19, 
               Z(13) => N18, Z(12) => N17, Z(11) => N16, Z(10) => N15, Z(9) => 
               N14, Z(8) => N13, Z(7) => N12, Z(6) => N11, Z(5) => N10, Z(4) =>
               N9, Z(3) => N8, Z(2) => N7, Z(1) => N6, Z(0) => N5 );
   B_2 : GTECH_BUF port map( A => N69, Z => N2);
   B_3 : GTECH_BUF port map( A => RST_n, Z => N3);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   I_1 : GTECH_NOT port map( A => ACCUMULATE, Z => N4);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;
entity SELECT_OP is
   generic ( num_inputs, input_width : integer );
   port(
      DATA : in std_logic_vector( num_inputs  * input_width - 1 downto 0 );
      CONTROL : in std_logic_vector( num_inputs - 1 downto 0 );
      Z : out std_logic_vector( input_width - 1 downto 0 )
   );
end SELECT_OP;

architecture RTL of SELECT_OP is
begin

   process ( DATA, CONTROL )
      variable index, high, low : integer;
   begin
   
      --  Initialize variables
      index := 0;
      
      -- Loop over the values of the control inputs
      for_loop : for i in CONTROL'range loop
      
         if ( CONTROL(i) = '1' ) then
         
            index := i;
            exit for_loop;
            
         end if;
         
      end loop;
      
      -- Store the corresponding data lines into the output
      low := input_width * index;
      high := low + input_width - 1;
      Z <= DATA( high downto low );
   
   end process;
   
end RTL;

library IEEE;

use IEEE.std_logic_1164.all;

entity SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
   generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
   port(
      clear, preset, enable, data_in, synch_clear, synch_preset, synch_toggle, 
         synch_enable, next_state, clocked_on : in std_logic;
      Q, QN : buffer std_logic
   );
end SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT;

architecture RTL of SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
begin

   process ( preset, clear, enable, data_in, clocked_on )
   begin
   
            -- Check the value of inputs (asynchronous first)
            if ( ( ( preset /= '1' ) and ( preset /= '0' ) ) or ( ( clear /= 
                     '1' ) and ( clear /= '0' ) )  ) then
               Q <= 'X';
            elsif ( clear = '1' and preset = '1' ) then
               case ac_as_q is
                  when 2 =>
                     Q <= '1';
                  when 1 =>
                     Q <= '0';
                  when others =>
                     Q <= 'X';
               end case;
               case ac_as_qn is
                  when 2 =>
                     QN <= '1';
                  when 1 =>
                     QN <= '0';
                  when others =>
                     QN <= 'X';
               end case;
            elsif ( clear = '1' ) then
               Q <= '0';
            elsif ( preset = '1' ) then
               Q <= '1';
            elsif ( ( enable /= '1' ) and ( enable /= '0' ) ) then
               Q <= 'X';
            elsif ( enable = '1' ) then
               Q <= data_in;
            elsif ( ( clocked_on /= '1' ) and ( clocked_on /= '0' ) ) then
               Q <= 'X';
            elsif ( clocked_on'event and clocked_on = '1' ) then
         if ( ( ( synch_preset /= '1' ) and ( synch_preset /= '0' ) ) or ( ( 
                  synch_clear /= '1' ) and ( synch_clear /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_clear = '1' and synch_preset = '1' ) then
            case sc_ss_q is
               when 2 =>
                  Q <= '1';
               when 1 =>
                  Q <= '0';
               when others =>
                  Q <= 'X';
            end case;
         elsif ( synch_clear = '1' ) then
            Q <= '0';
         elsif ( synch_preset = '1' ) then
            Q <= '1';
         elsif ( ( ( synch_toggle /= '1' ) and ( synch_toggle /= '0' ) ) or ( (
                  synch_enable /= '1' ) and ( synch_enable /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_enable = '1' and synch_toggle = '1' ) then
            Q <= 'X';
         elsif ( synch_toggle = '1' ) then
            Q <= QN;
         elsif ( synch_enable = '1' ) then
            Q <= next_state;
         end if;
      end if;
   
   end process;

end RTL;
