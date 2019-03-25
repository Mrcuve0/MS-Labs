
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU_N16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU_N16;

package body CONV_PACK_ALU_N16 is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU_N16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N16.all;

entity ALU_N16 is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (15 downto 0); 
         OUTALU : out std_logic_vector (15 downto 0));

end ALU_N16;

architecture SYN_BEHAVIOR of ALU_N16 is

   component GTECH_BUF
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_XOR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SELECT_OP
      generic( num_inputs, input_width : integer );
      port( DATA : in std_logic_vector( num_inputs* input_width - 1 downto 0 );
            CONTROL : in std_logic_vector( num_inputs - 1 downto 0 ); Z : out 
            std_logic_vector( input_width - 1 downto 0 ) );
   end component;
   
   component GTECH_OR5
      port( A, B, C, D, E : in std_logic;  Z : out std_logic);
   end component;
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   component BSHR_UNS_OP
      generic( A_width, SH_width, Z_width : integer );
      port( A : in std_logic_vector(A_width - 1 downto 0); SH : in 
            std_logic_vector(SH_width - 1 downto 0); Z : out 
            std_logic_vector(Z_width - 1 downto 0) );
   end component;
   
   component BSH_UNS_OP
      generic( A_width, SH_width, Z_width : integer );
      port( A : in std_logic_vector(A_width - 1 downto 0); SH : in 
            std_logic_vector(SH_width - 1 downto 0); Z : out 
            std_logic_vector(Z_width - 1 downto 0) );
   end component;
   
   component ASHR_UNS_UNS_OP
      generic( A_width, SH_width, Z_width : integer );
      port( A : in std_logic_vector(A_width - 1 downto 0); SH : in 
            std_logic_vector(SH_width - 1 downto 0); Z : out 
            std_logic_vector(Z_width - 1 downto 0) );
   end component;
   
   component ASH_UNS_UNS_OP
      generic( A_width, SH_width, Z_width : integer );
      port( A : in std_logic_vector(A_width - 1 downto 0); SH : in 
            std_logic_vector(SH_width - 1 downto 0); Z : out 
            std_logic_vector(Z_width - 1 downto 0) );
   end component;
   
   signal N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, X_Logic0_port, FUNC_3_port, 
      FUNC_2_port, FUNC_1_port, FUNC_0_port, DATA1_15_port, DATA1_14_port, 
      DATA1_13_port, DATA1_12_port, DATA1_11_port, DATA1_10_port, DATA1_9_port,
      DATA1_8_port, DATA1_7_port, DATA1_6_port, DATA1_5_port, DATA1_4_port, 
      DATA1_3_port, DATA1_2_port, DATA1_1_port, DATA1_0_port, DATA2_15_port, 
      DATA2_14_port, DATA2_13_port, DATA2_12_port, DATA2_11_port, DATA2_10_port
      , DATA2_9_port, DATA2_8_port, DATA2_7_port, DATA2_6_port, DATA2_5_port, 
      DATA2_4_port, DATA2_3_port, DATA2_2_port, DATA2_1_port, DATA2_0_port, 
      OUTALU_15_port, OUTALU_14_port, OUTALU_13_port, OUTALU_12_port, 
      OUTALU_11_port, OUTALU_10_port, OUTALU_9_port, OUTALU_8_port, 
      OUTALU_7_port, OUTALU_6_port, OUTALU_5_port, OUTALU_4_port, OUTALU_3_port
      , OUTALU_2_port, OUTALU_1_port, OUTALU_0_port, N10, N11, N12, N13, N14, 
      N15, N16, net16, N17, N18, net18, N19, N20, N21, net20, N22, N23, N24, 
      N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, net25, N35, N36, net27,
      N37, N38, N39, net29, N40, N41, net31, N42, N43, N44, N45, N46, N47, N48,
      N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63
      , N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, 
      N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92
      , N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, 
      N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, 
      N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, 
      N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, 
      N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, 
      N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, 
      N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177, 
      N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189, 
      N190, N191, N192, N193, N194, N195, N196, N197, N198, N199, N200, N201, 
      N202, N203, N204, N205, N206, N207, N208, N209, N210, N211, N212, N213, 
      N214, N215, N216, N217, N218, N219, N220, n_1000, n_1001, n_1002, n_1003,
      n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, 
      n_1013, n_1014, n_1015 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   ( DATA1_15_port, DATA1_14_port, DATA1_13_port, DATA1_12_port, DATA1_11_port,
      DATA1_10_port, DATA1_9_port, DATA1_8_port, DATA1_7_port, DATA1_6_port, 
      DATA1_5_port, DATA1_4_port, DATA1_3_port, DATA1_2_port, DATA1_1_port, 
      DATA1_0_port ) <= DATA1;
   ( DATA2_15_port, DATA2_14_port, DATA2_13_port, DATA2_12_port, DATA2_11_port,
      DATA2_10_port, DATA2_9_port, DATA2_8_port, DATA2_7_port, DATA2_6_port, 
      DATA2_5_port, DATA2_4_port, DATA2_3_port, DATA2_2_port, DATA2_1_port, 
      DATA2_0_port ) <= DATA2;
   OUTALU <= ( OUTALU_15_port, OUTALU_14_port, OUTALU_13_port, OUTALU_12_port, 
      OUTALU_11_port, OUTALU_10_port, OUTALU_9_port, OUTALU_8_port, 
      OUTALU_7_port, OUTALU_6_port, OUTALU_5_port, OUTALU_4_port, OUTALU_3_port
      , OUTALU_2_port, OUTALU_1_port, OUTALU_0_port );
   
   C8 : GTECH_AND2 port map( A => N10, B => N11, Z => N14);
   C9 : GTECH_AND2 port map( A => N12, B => N13, Z => N15);
   C10 : GTECH_AND2 port map( A => N14, B => N15, Z => N16);
   C14 : GTECH_OR2 port map( A => N22, B => N30, Z => N17);
   C18 : GTECH_OR2 port map( A => N12, B => FUNC_0_port, Z => N19);
   C19 : GTECH_OR2 port map( A => N22, B => N19, Z => N20);
   C23 : GTECH_OR2 port map( A => FUNC_3_port, B => FUNC_2_port, Z => N22);
   C24 : GTECH_OR2 port map( A => N12, B => N13, Z => N23);
   C25 : GTECH_OR2 port map( A => N22, B => N23, Z => N24);
   C28 : GTECH_OR2 port map( A => FUNC_3_port, B => N11, Z => N26);
   C29 : GTECH_OR2 port map( A => FUNC_1_port, B => FUNC_0_port, Z => N27);
   C30 : GTECH_OR2 port map( A => N26, B => N27, Z => N28);
   C35 : GTECH_OR2 port map( A => FUNC_1_port, B => N13, Z => N30);
   C36 : GTECH_OR2 port map( A => N26, B => N30, Z => N31);
   C42 : GTECH_OR2 port map( A => N26, B => N19, Z => N33);
   C49 : GTECH_OR2 port map( A => N26, B => N23, Z => N35);
   C52 : GTECH_OR2 port map( A => N10, B => FUNC_2_port, Z => N37);
   C54 : GTECH_OR2 port map( A => N37, B => N27, Z => N38);
   C60 : GTECH_OR2 port map( A => N37, B => N30, Z => N40);
   sll_38 : ASH_UNS_UNS_OP
      generic map ( A_width => 16, SH_width => 16, Z_width => 16 )
      port map(
         -- Connections to port 'A'
         A(15) => DATA1_15_port, A(14) => DATA1_14_port, A(13) => DATA1_13_port
               , A(12) => DATA1_12_port, A(11) => DATA1_11_port, A(10) => 
               DATA1_10_port, A(9) => DATA1_9_port, A(8) => DATA1_8_port, A(7) 
               => DATA1_7_port, A(6) => DATA1_6_port, A(5) => DATA1_5_port, 
               A(4) => DATA1_4_port, A(3) => DATA1_3_port, A(2) => DATA1_2_port
               , A(1) => DATA1_1_port, A(0) => DATA1_0_port, 
         -- Connections to port 'SH'
         SH(15) => DATA2_15_port, SH(14) => DATA2_14_port, SH(13) => 
               DATA2_13_port, SH(12) => DATA2_12_port, SH(11) => DATA2_11_port,
               SH(10) => DATA2_10_port, SH(9) => DATA2_9_port, SH(8) => 
               DATA2_8_port, SH(7) => DATA2_7_port, SH(6) => DATA2_6_port, 
               SH(5) => DATA2_5_port, SH(4) => DATA2_4_port, SH(3) => 
               DATA2_3_port, SH(2) => DATA2_2_port, SH(1) => DATA2_1_port, 
               SH(0) => DATA2_0_port, 
         -- Connections to port 'Z'
         Z(15) => N153, Z(14) => N152, Z(13) => N151, Z(12) => N150, Z(11) => 
               N149, Z(10) => N148, Z(9) => N147, Z(8) => N146, Z(7) => N145, 
               Z(6) => N144, Z(5) => N143, Z(4) => N142, Z(3) => N141, Z(2) => 
               N140, Z(1) => N139, Z(0) => N138
      );
   srl_40 : ASHR_UNS_UNS_OP
      generic map ( A_width => 16, SH_width => 16, Z_width => 16 )
      port map(
         -- Connections to port 'A'
         A(15) => DATA1_15_port, A(14) => DATA1_14_port, A(13) => DATA1_13_port
               , A(12) => DATA1_12_port, A(11) => DATA1_11_port, A(10) => 
               DATA1_10_port, A(9) => DATA1_9_port, A(8) => DATA1_8_port, A(7) 
               => DATA1_7_port, A(6) => DATA1_6_port, A(5) => DATA1_5_port, 
               A(4) => DATA1_4_port, A(3) => DATA1_3_port, A(2) => DATA1_2_port
               , A(1) => DATA1_1_port, A(0) => DATA1_0_port, 
         -- Connections to port 'SH'
         SH(15) => DATA2_15_port, SH(14) => DATA2_14_port, SH(13) => 
               DATA2_13_port, SH(12) => DATA2_12_port, SH(11) => DATA2_11_port,
               SH(10) => DATA2_10_port, SH(9) => DATA2_9_port, SH(8) => 
               DATA2_8_port, SH(7) => DATA2_7_port, SH(6) => DATA2_6_port, 
               SH(5) => DATA2_5_port, SH(4) => DATA2_4_port, SH(3) => 
               DATA2_3_port, SH(2) => DATA2_2_port, SH(1) => DATA2_1_port, 
               SH(0) => DATA2_0_port, 
         -- Connections to port 'Z'
         Z(15) => N169, Z(14) => N168, Z(13) => N167, Z(12) => N166, Z(11) => 
               N165, Z(10) => N164, Z(9) => N163, Z(8) => N162, Z(7) => N161, 
               Z(6) => N160, Z(5) => N159, Z(4) => N158, Z(3) => N157, Z(2) => 
               N156, Z(1) => N155, Z(0) => N154
      );
   rol_42 : BSH_UNS_OP
      generic map ( A_width => 16, SH_width => 4, Z_width => 16 )
      port map(
         -- Connections to port 'A'
         A(15) => DATA1_15_port, A(14) => DATA1_14_port, A(13) => DATA1_13_port
               , A(12) => DATA1_12_port, A(11) => DATA1_11_port, A(10) => 
               DATA1_10_port, A(9) => DATA1_9_port, A(8) => DATA1_8_port, A(7) 
               => DATA1_7_port, A(6) => DATA1_6_port, A(5) => DATA1_5_port, 
               A(4) => DATA1_4_port, A(3) => DATA1_3_port, A(2) => DATA1_2_port
               , A(1) => DATA1_1_port, A(0) => DATA1_0_port, 
         -- Connections to port 'SH'
         SH(3) => DATA2_3_port, SH(2) => DATA2_2_port, SH(1) => DATA2_1_port, 
               SH(0) => DATA2_0_port, 
         -- Connections to port 'Z'
         Z(15) => N185, Z(14) => N184, Z(13) => N183, Z(12) => N182, Z(11) => 
               N181, Z(10) => N180, Z(9) => N179, Z(8) => N178, Z(7) => N177, 
               Z(6) => N176, Z(5) => N175, Z(4) => N174, Z(3) => N173, Z(2) => 
               N172, Z(1) => N171, Z(0) => N170
      );
   ror_44 : BSHR_UNS_OP
      generic map ( A_width => 16, SH_width => 4, Z_width => 16 )
      port map(
         -- Connections to port 'A'
         A(15) => DATA1_15_port, A(14) => DATA1_14_port, A(13) => DATA1_13_port
               , A(12) => DATA1_12_port, A(11) => DATA1_11_port, A(10) => 
               DATA1_10_port, A(9) => DATA1_9_port, A(8) => DATA1_8_port, A(7) 
               => DATA1_7_port, A(6) => DATA1_6_port, A(5) => DATA1_5_port, 
               A(4) => DATA1_4_port, A(3) => DATA1_3_port, A(2) => DATA1_2_port
               , A(1) => DATA1_1_port, A(0) => DATA1_0_port, 
         -- Connections to port 'SH'
         SH(3) => DATA2_3_port, SH(2) => DATA2_2_port, SH(1) => DATA2_1_port, 
               SH(0) => DATA2_0_port, 
         -- Connections to port 'Z'
         Z(15) => N201, Z(14) => N200, Z(13) => N199, Z(12) => N198, Z(11) => 
               N197, Z(10) => N196, Z(9) => N195, Z(8) => N194, Z(7) => N193, 
               Z(6) => N192, Z(5) => N191, Z(4) => N190, Z(3) => N189, Z(2) => 
               N188, Z(1) => N187, Z(0) => N186
      );
   OUTALU_reg_15_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N218, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_15_port, QN => n_1000);
   OUTALU_reg_14_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N217, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_14_port, QN => n_1001);
   OUTALU_reg_13_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N216, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_13_port, QN => n_1002);
   OUTALU_reg_12_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N215, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_12_port, QN => n_1003);
   OUTALU_reg_11_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N214, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_11_port, QN => n_1004);
   OUTALU_reg_10_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N213, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_10_port, QN => n_1005);
   OUTALU_reg_9_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N212, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_9_port, QN => n_1006);
   OUTALU_reg_8_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N211, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_8_port, QN => n_1007);
   OUTALU_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N210, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_7_port, QN => n_1008);
   OUTALU_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N209, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_6_port, QN => n_1009);
   OUTALU_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N208, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_5_port, QN => n_1010);
   OUTALU_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N207, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_4_port, QN => n_1011);
   OUTALU_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N206, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_3_port, QN => n_1012);
   OUTALU_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N205, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_2_port, QN => n_1013);
   OUTALU_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N204, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_1_port, QN => n_1014);
   OUTALU_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N202, data_in => N203, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_0_port, QN => n_1015);
   add_26 : process ( DATA1_15_port, DATA1_14_port, DATA1_13_port, 
         DATA1_12_port, DATA1_11_port, DATA1_10_port, DATA1_9_port, 
         DATA1_8_port, DATA1_7_port, DATA1_6_port, DATA1_5_port, DATA1_4_port, 
         DATA1_3_port, DATA1_2_port, DATA1_1_port, DATA1_0_port, DATA2_15_port,
         DATA2_14_port, DATA2_13_port, DATA2_12_port, DATA2_11_port, 
         DATA2_10_port, DATA2_9_port, DATA2_8_port, DATA2_7_port, DATA2_6_port,
         DATA2_5_port, DATA2_4_port, DATA2_3_port, DATA2_2_port, DATA2_1_port, 
         DATA2_0_port )
      variable A : UNSIGNED( 15 downto 0 );
      variable B : UNSIGNED( 15 downto 0 );
      variable Z : UNSIGNED( 15 downto 0 );
   begin
      A := ( DATA1_15_port, DATA1_14_port, DATA1_13_port, DATA1_12_port, 
            DATA1_11_port, DATA1_10_port, DATA1_9_port, DATA1_8_port, 
            DATA1_7_port, DATA1_6_port, DATA1_5_port, DATA1_4_port, 
            DATA1_3_port, DATA1_2_port, DATA1_1_port, DATA1_0_port );
      B := ( DATA2_15_port, DATA2_14_port, DATA2_13_port, DATA2_12_port, 
            DATA2_11_port, DATA2_10_port, DATA2_9_port, DATA2_8_port, 
            DATA2_7_port, DATA2_6_port, DATA2_5_port, DATA2_4_port, 
            DATA2_3_port, DATA2_2_port, DATA2_1_port, DATA2_0_port );
      Z := A + B;
      ( N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, 
            N43, N42 ) <= Z;
   end process;
   
   C168 : GTECH_OR5 port map( A => N16, B => N18, C => N21, D => N25, E => N29,
                           Z => N219);
   C169 : GTECH_OR5 port map( A => N32, B => N34, C => N36, D => N39, E => N41,
                           Z => N220);
   C170 : GTECH_OR2 port map( A => N219, B => N220, Z => N202);
   sub_28 : process ( DATA1_15_port, DATA1_14_port, DATA1_13_port, 
         DATA1_12_port, DATA1_11_port, DATA1_10_port, DATA1_9_port, 
         DATA1_8_port, DATA1_7_port, DATA1_6_port, DATA1_5_port, DATA1_4_port, 
         DATA1_3_port, DATA1_2_port, DATA1_1_port, DATA1_0_port, DATA2_15_port,
         DATA2_14_port, DATA2_13_port, DATA2_12_port, DATA2_11_port, 
         DATA2_10_port, DATA2_9_port, DATA2_8_port, DATA2_7_port, DATA2_6_port,
         DATA2_5_port, DATA2_4_port, DATA2_3_port, DATA2_2_port, DATA2_1_port, 
         DATA2_0_port )
      variable A : UNSIGNED( 15 downto 0 );
      variable B : UNSIGNED( 15 downto 0 );
      variable Z : UNSIGNED( 15 downto 0 );
   begin
      A := ( DATA1_15_port, DATA1_14_port, DATA1_13_port, DATA1_12_port, 
            DATA1_11_port, DATA1_10_port, DATA1_9_port, DATA1_8_port, 
            DATA1_7_port, DATA1_6_port, DATA1_5_port, DATA1_4_port, 
            DATA1_3_port, DATA1_2_port, DATA1_1_port, DATA1_0_port );
      B := ( DATA2_15_port, DATA2_14_port, DATA2_13_port, DATA2_12_port, 
            DATA2_11_port, DATA2_10_port, DATA2_9_port, DATA2_8_port, 
            DATA2_7_port, DATA2_6_port, DATA2_5_port, DATA2_4_port, 
            DATA2_3_port, DATA2_2_port, DATA2_1_port, DATA2_0_port );
      Z := A - B;
      ( N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, 
            N59, N58 ) <= Z;
   end process;
   
   mult_30 : process ( DATA1_7_port, DATA1_6_port, DATA1_5_port, DATA1_4_port, 
         DATA1_3_port, DATA1_2_port, DATA1_1_port, DATA1_0_port, DATA2_7_port, 
         DATA2_6_port, DATA2_5_port, DATA2_4_port, DATA2_3_port, DATA2_2_port, 
         DATA2_1_port, DATA2_0_port )
      variable A : UNSIGNED( 7 downto 0 );
      variable B : UNSIGNED( 7 downto 0 );
      variable Z : UNSIGNED( 15 downto 0 );
   begin
      A := ( DATA1_7_port, DATA1_6_port, DATA1_5_port, DATA1_4_port, 
            DATA1_3_port, DATA1_2_port, DATA1_1_port, DATA1_0_port );
      B := ( DATA2_7_port, DATA2_6_port, DATA2_5_port, DATA2_4_port, 
            DATA2_3_port, DATA2_2_port, DATA2_1_port, DATA2_0_port );
      Z := A * B;
      ( N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, 
            N75, N74 ) <= Z;
   end process;
   
   C232_cell : SELECT_OP
      generic map ( num_inputs => 10, input_width => 16 )
      port map(
         -- Connections to port 'DATA1'
         DATA(15) => N57, DATA(14) => N56, DATA(13) => N55, DATA(12) => N54, 
               DATA(11) => N53, DATA(10) => N52, DATA(9) => N51, DATA(8) => N50
               , DATA(7) => N49, DATA(6) => N48, DATA(5) => N47, DATA(4) => N46
               , DATA(3) => N45, DATA(2) => N44, DATA(1) => N43, DATA(0) => N42
               , 
         -- Connections to port 'DATA2'
         DATA(31) => N73, DATA(30) => N72, DATA(29) => N71, DATA(28) => N70, 
               DATA(27) => N69, DATA(26) => N68, DATA(25) => N67, DATA(24) => 
               N66, DATA(23) => N65, DATA(22) => N64, DATA(21) => N63, DATA(20)
               => N62, DATA(19) => N61, DATA(18) => N60, DATA(17) => N59, 
               DATA(16) => N58, 
         -- Connections to port 'DATA3'
         DATA(47) => N89, DATA(46) => N88, DATA(45) => N87, DATA(44) => N86, 
               DATA(43) => N85, DATA(42) => N84, DATA(41) => N83, DATA(40) => 
               N82, DATA(39) => N81, DATA(38) => N80, DATA(37) => N79, DATA(36)
               => N78, DATA(35) => N77, DATA(34) => N76, DATA(33) => N75, 
               DATA(32) => N74, 
         -- Connections to port 'DATA4'
         DATA(63) => N90, DATA(62) => N91, DATA(61) => N92, DATA(60) => N93, 
               DATA(59) => N94, DATA(58) => N95, DATA(57) => N96, DATA(56) => 
               N97, DATA(55) => N98, DATA(54) => N99, DATA(53) => N100, 
               DATA(52) => N101, DATA(51) => N102, DATA(50) => N103, DATA(49) 
               => N104, DATA(48) => N105, 
         -- Connections to port 'DATA5'
         DATA(79) => N106, DATA(78) => N107, DATA(77) => N108, DATA(76) => N109
               , DATA(75) => N110, DATA(74) => N111, DATA(73) => N112, DATA(72)
               => N113, DATA(71) => N114, DATA(70) => N115, DATA(69) => N116, 
               DATA(68) => N117, DATA(67) => N118, DATA(66) => N119, DATA(65) 
               => N120, DATA(64) => N121, 
         -- Connections to port 'DATA6'
         DATA(95) => N122, DATA(94) => N123, DATA(93) => N124, DATA(92) => N125
               , DATA(91) => N126, DATA(90) => N127, DATA(89) => N128, DATA(88)
               => N129, DATA(87) => N130, DATA(86) => N131, DATA(85) => N132, 
               DATA(84) => N133, DATA(83) => N134, DATA(82) => N135, DATA(81) 
               => N136, DATA(80) => N137, 
         -- Connections to port 'DATA7'
         DATA(111) => N153, DATA(110) => N152, DATA(109) => N151, DATA(108) => 
               N150, DATA(107) => N149, DATA(106) => N148, DATA(105) => N147, 
               DATA(104) => N146, DATA(103) => N145, DATA(102) => N144, 
               DATA(101) => N143, DATA(100) => N142, DATA(99) => N141, DATA(98)
               => N140, DATA(97) => N139, DATA(96) => N138, 
         -- Connections to port 'DATA8'
         DATA(127) => N169, DATA(126) => N168, DATA(125) => N167, DATA(124) => 
               N166, DATA(123) => N165, DATA(122) => N164, DATA(121) => N163, 
               DATA(120) => N162, DATA(119) => N161, DATA(118) => N160, 
               DATA(117) => N159, DATA(116) => N158, DATA(115) => N157, 
               DATA(114) => N156, DATA(113) => N155, DATA(112) => N154, 
         -- Connections to port 'DATA9'
         DATA(143) => N185, DATA(142) => N184, DATA(141) => N183, DATA(140) => 
               N182, DATA(139) => N181, DATA(138) => N180, DATA(137) => N179, 
               DATA(136) => N178, DATA(135) => N177, DATA(134) => N176, 
               DATA(133) => N175, DATA(132) => N174, DATA(131) => N173, 
               DATA(130) => N172, DATA(129) => N171, DATA(128) => N170, 
         -- Connections to port 'DATA10'
         DATA(159) => N201, DATA(158) => N200, DATA(157) => N199, DATA(156) => 
               N198, DATA(155) => N197, DATA(154) => N196, DATA(153) => N195, 
               DATA(152) => N194, DATA(151) => N193, DATA(150) => N192, 
               DATA(149) => N191, DATA(148) => N190, DATA(147) => N189, 
               DATA(146) => N188, DATA(145) => N187, DATA(144) => N186, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N2, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N3, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N4, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N5, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N6, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N7, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N8, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N9, 
         -- Connections to port 'Z'
         Z(15) => N218, Z(14) => N217, Z(13) => N216, Z(12) => N215, Z(11) => 
               N214, Z(10) => N213, Z(9) => N212, Z(8) => N211, Z(7) => N210, 
               Z(6) => N209, Z(5) => N208, Z(4) => N207, Z(3) => N206, Z(2) => 
               N205, Z(1) => N204, Z(0) => N203 );
   B_0 : GTECH_BUF port map( A => N16, Z => N0);
   B_1 : GTECH_BUF port map( A => N18, Z => N1);
   B_2 : GTECH_BUF port map( A => N21, Z => N2);
   B_3 : GTECH_BUF port map( A => N25, Z => N3);
   B_4 : GTECH_BUF port map( A => N29, Z => N4);
   B_5 : GTECH_BUF port map( A => N32, Z => N5);
   B_6 : GTECH_BUF port map( A => N34, Z => N6);
   B_7 : GTECH_BUF port map( A => N36, Z => N7);
   B_8 : GTECH_BUF port map( A => N39, Z => N8);
   B_9 : GTECH_BUF port map( A => N41, Z => N9);
   X_Logic0_port <= '0';
   I_0 : GTECH_NOT port map( A => FUNC_3_port, Z => N10);
   I_1 : GTECH_NOT port map( A => FUNC_2_port, Z => N11);
   I_2 : GTECH_NOT port map( A => FUNC_1_port, Z => N12);
   I_3 : GTECH_NOT port map( A => FUNC_0_port, Z => N13);
   I_4 : GTECH_NOT port map( A => N17, Z => N18);
   I_5 : GTECH_NOT port map( A => N20, Z => N21);
   I_6 : GTECH_NOT port map( A => N24, Z => N25);
   I_7 : GTECH_NOT port map( A => N28, Z => N29);
   I_8 : GTECH_NOT port map( A => N31, Z => N32);
   I_9 : GTECH_NOT port map( A => N33, Z => N34);
   I_10 : GTECH_NOT port map( A => N35, Z => N36);
   I_11 : GTECH_NOT port map( A => N38, Z => N39);
   I_12 : GTECH_NOT port map( A => N40, Z => N41);
   B_10 : GTECH_BUF port map( A => N16, Z => net16);
   B_11 : GTECH_BUF port map( A => N18, Z => net18);
   B_12 : GTECH_BUF port map( A => N21, Z => net20);
   C261 : GTECH_AND2 port map( A => DATA1_15_port, B => DATA2_15_port, Z => N90
                           );
   C262 : GTECH_AND2 port map( A => DATA1_14_port, B => DATA2_14_port, Z => N91
                           );
   C263 : GTECH_AND2 port map( A => DATA1_13_port, B => DATA2_13_port, Z => N92
                           );
   C264 : GTECH_AND2 port map( A => DATA1_12_port, B => DATA2_12_port, Z => N93
                           );
   C265 : GTECH_AND2 port map( A => DATA1_11_port, B => DATA2_11_port, Z => N94
                           );
   C266 : GTECH_AND2 port map( A => DATA1_10_port, B => DATA2_10_port, Z => N95
                           );
   C267 : GTECH_AND2 port map( A => DATA1_9_port, B => DATA2_9_port, Z => N96);
   C268 : GTECH_AND2 port map( A => DATA1_8_port, B => DATA2_8_port, Z => N97);
   C269 : GTECH_AND2 port map( A => DATA1_7_port, B => DATA2_7_port, Z => N98);
   C270 : GTECH_AND2 port map( A => DATA1_6_port, B => DATA2_6_port, Z => N99);
   C271 : GTECH_AND2 port map( A => DATA1_5_port, B => DATA2_5_port, Z => N100)
                           ;
   C272 : GTECH_AND2 port map( A => DATA1_4_port, B => DATA2_4_port, Z => N101)
                           ;
   C273 : GTECH_AND2 port map( A => DATA1_3_port, B => DATA2_3_port, Z => N102)
                           ;
   C274 : GTECH_AND2 port map( A => DATA1_2_port, B => DATA2_2_port, Z => N103)
                           ;
   C275 : GTECH_AND2 port map( A => DATA1_1_port, B => DATA2_1_port, Z => N104)
                           ;
   C276 : GTECH_AND2 port map( A => DATA1_0_port, B => DATA2_0_port, Z => N105)
                           ;
   C277 : GTECH_OR2 port map( A => DATA1_15_port, B => DATA2_15_port, Z => N106
                           );
   C278 : GTECH_OR2 port map( A => DATA1_14_port, B => DATA2_14_port, Z => N107
                           );
   C279 : GTECH_OR2 port map( A => DATA1_13_port, B => DATA2_13_port, Z => N108
                           );
   C280 : GTECH_OR2 port map( A => DATA1_12_port, B => DATA2_12_port, Z => N109
                           );
   C281 : GTECH_OR2 port map( A => DATA1_11_port, B => DATA2_11_port, Z => N110
                           );
   C282 : GTECH_OR2 port map( A => DATA1_10_port, B => DATA2_10_port, Z => N111
                           );
   C283 : GTECH_OR2 port map( A => DATA1_9_port, B => DATA2_9_port, Z => N112);
   C284 : GTECH_OR2 port map( A => DATA1_8_port, B => DATA2_8_port, Z => N113);
   C285 : GTECH_OR2 port map( A => DATA1_7_port, B => DATA2_7_port, Z => N114);
   C286 : GTECH_OR2 port map( A => DATA1_6_port, B => DATA2_6_port, Z => N115);
   C287 : GTECH_OR2 port map( A => DATA1_5_port, B => DATA2_5_port, Z => N116);
   C288 : GTECH_OR2 port map( A => DATA1_4_port, B => DATA2_4_port, Z => N117);
   C289 : GTECH_OR2 port map( A => DATA1_3_port, B => DATA2_3_port, Z => N118);
   C290 : GTECH_OR2 port map( A => DATA1_2_port, B => DATA2_2_port, Z => N119);
   C291 : GTECH_OR2 port map( A => DATA1_1_port, B => DATA2_1_port, Z => N120);
   C292 : GTECH_OR2 port map( A => DATA1_0_port, B => DATA2_0_port, Z => N121);
   C293 : GTECH_XOR2 port map( A => DATA1_15_port, B => DATA2_15_port, Z => 
                           N122);
   C294 : GTECH_XOR2 port map( A => DATA1_14_port, B => DATA2_14_port, Z => 
                           N123);
   C295 : GTECH_XOR2 port map( A => DATA1_13_port, B => DATA2_13_port, Z => 
                           N124);
   C296 : GTECH_XOR2 port map( A => DATA1_12_port, B => DATA2_12_port, Z => 
                           N125);
   C297 : GTECH_XOR2 port map( A => DATA1_11_port, B => DATA2_11_port, Z => 
                           N126);
   C298 : GTECH_XOR2 port map( A => DATA1_10_port, B => DATA2_10_port, Z => 
                           N127);
   C299 : GTECH_XOR2 port map( A => DATA1_9_port, B => DATA2_9_port, Z => N128)
                           ;
   C300 : GTECH_XOR2 port map( A => DATA1_8_port, B => DATA2_8_port, Z => N129)
                           ;
   C301 : GTECH_XOR2 port map( A => DATA1_7_port, B => DATA2_7_port, Z => N130)
                           ;
   C302 : GTECH_XOR2 port map( A => DATA1_6_port, B => DATA2_6_port, Z => N131)
                           ;
   C303 : GTECH_XOR2 port map( A => DATA1_5_port, B => DATA2_5_port, Z => N132)
                           ;
   C304 : GTECH_XOR2 port map( A => DATA1_4_port, B => DATA2_4_port, Z => N133)
                           ;
   C305 : GTECH_XOR2 port map( A => DATA1_3_port, B => DATA2_3_port, Z => N134)
                           ;
   C306 : GTECH_XOR2 port map( A => DATA1_2_port, B => DATA2_2_port, Z => N135)
                           ;
   C307 : GTECH_XOR2 port map( A => DATA1_1_port, B => DATA2_1_port, Z => N136)
                           ;
   C308 : GTECH_XOR2 port map( A => DATA1_0_port, B => DATA2_0_port, Z => N137)
                           ;
   B_13 : GTECH_BUF port map( A => N34, Z => net25);
   B_14 : GTECH_BUF port map( A => N36, Z => net27);
   B_15 : GTECH_BUF port map( A => N39, Z => net29);
   B_16 : GTECH_BUF port map( A => N41, Z => net31);

end SYN_BEHAVIOR;

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
