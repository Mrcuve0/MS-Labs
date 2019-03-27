
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

   component GTECH_XOR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_BUF
      port( A : in std_logic;  Z : out std_logic);
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
   
   signal N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, X_Logic0_port, 
      FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, DATA1_15_port, 
      DATA1_14_port, DATA1_13_port, DATA1_12_port, DATA1_11_port, DATA1_10_port
      , DATA1_9_port, DATA1_8_port, DATA1_7_port, DATA1_6_port, DATA1_5_port, 
      DATA1_4_port, DATA1_3_port, DATA1_2_port, DATA1_1_port, DATA1_0_port, 
      DATA2_15_port, DATA2_14_port, DATA2_13_port, DATA2_12_port, DATA2_11_port
      , DATA2_10_port, DATA2_9_port, DATA2_8_port, DATA2_7_port, DATA2_6_port, 
      DATA2_5_port, DATA2_4_port, DATA2_3_port, DATA2_2_port, DATA2_1_port, 
      DATA2_0_port, OUTALU_15_port, OUTALU_14_port, OUTALU_13_port, 
      OUTALU_12_port, OUTALU_11_port, OUTALU_10_port, OUTALU_9_port, 
      OUTALU_8_port, OUTALU_7_port, OUTALU_6_port, OUTALU_5_port, OUTALU_4_port
      , OUTALU_3_port, OUTALU_2_port, OUTALU_1_port, OUTALU_0_port, N12, N13, 
      N14, N15, N16, N17, N18, net47, N19, N20, net49, N21, N22, net51, N23, 
      N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38
      , N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, 
      N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67
      , N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, 
      N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96
      , N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, 
      N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, 
      N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, 
      N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, 
      N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156, 
      N157, N158, N159, N160, n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, 
      n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, n_1014, 
      n_1015 : std_logic;

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
   
   C8 : GTECH_AND2 port map( A => N12, B => N13, Z => N16);
   C9 : GTECH_AND2 port map( A => N14, B => N15, Z => N17);
   C10 : GTECH_AND2 port map( A => N16, B => N17, Z => N18);
   C14 : GTECH_OR2 port map( A => N23, B => N31, Z => N19);
   C19 : GTECH_OR2 port map( A => N23, B => N34, Z => N21);
   C23 : GTECH_OR2 port map( A => FUNC_3_port, B => FUNC_2_port, Z => N23);
   C24 : GTECH_OR2 port map( A => N14, B => N15, Z => N24);
   C25 : GTECH_OR2 port map( A => N23, B => N24, Z => N25);
   C28 : GTECH_OR2 port map( A => FUNC_3_port, B => N13, Z => N27);
   C29 : GTECH_OR2 port map( A => FUNC_1_port, B => FUNC_0_port, Z => N28);
   C30 : GTECH_OR2 port map( A => N27, B => N28, Z => N29);
   C35 : GTECH_OR2 port map( A => FUNC_1_port, B => N15, Z => N31);
   C36 : GTECH_OR2 port map( A => N27, B => N31, Z => N32);
   C41 : GTECH_OR2 port map( A => N14, B => FUNC_0_port, Z => N34);
   C42 : GTECH_OR2 port map( A => N27, B => N34, Z => N35);
   C49 : GTECH_OR2 port map( A => N27, B => N24, Z => N37);
   C52 : GTECH_OR2 port map( A => N12, B => FUNC_2_port, Z => N39);
   C54 : GTECH_OR2 port map( A => N39, B => N28, Z => N40);
   C60 : GTECH_OR2 port map( A => N39, B => N31, Z => N42);
   OUTALU_reg_15_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N156, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_15_port, QN => n_1000);
   OUTALU_reg_14_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N155, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_14_port, QN => n_1001);
   OUTALU_reg_13_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N154, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_13_port, QN => n_1002);
   OUTALU_reg_12_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N153, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_12_port, QN => n_1003);
   OUTALU_reg_11_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N152, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_11_port, QN => n_1004);
   OUTALU_reg_10_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N151, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_10_port, QN => n_1005);
   OUTALU_reg_9_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N150, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_9_port, QN => n_1006);
   OUTALU_reg_8_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N149, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_8_port, QN => n_1007);
   OUTALU_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N148, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_7_port, QN => n_1008);
   OUTALU_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N147, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_6_port, QN => n_1009);
   OUTALU_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N146, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_5_port, QN => n_1010);
   OUTALU_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N145, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_4_port, QN => n_1011);
   OUTALU_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N144, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_3_port, QN => n_1012);
   OUTALU_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N143, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_2_port, QN => n_1013);
   OUTALU_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N142, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => OUTALU_1_port, QN => n_1014);
   OUTALU_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N140, data_in => N141, synch_clear => X_Logic0_port, 
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
      ( N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, 
            N45, N44 ) <= Z;
   end process;
   
   C168 : GTECH_OR5 port map( A => N18, B => N20, C => N22, D => N26, E => N30,
                           Z => N157);
   C169 : GTECH_OR5 port map( A => N33, B => N36, C => N38, D => N41, E => N43,
                           Z => N158);
   C170 : GTECH_OR2 port map( A => N157, B => N158, Z => N140);
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
      ( N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, 
            N61, N60 ) <= Z;
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
      ( N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, 
            N77, N76 ) <= Z;
   end process;
   
   C232 : GTECH_OR2 port map( A => N38, B => N43, Z => N159);
   C234 : GTECH_OR2 port map( A => N36, B => N41, Z => N160);
   C278_cell : SELECT_OP
      generic map ( num_inputs => 9, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N44, 
         -- Connections to port 'DATA2'
         DATA(1) => N60, 
         -- Connections to port 'DATA3'
         DATA(2) => N76, 
         -- Connections to port 'DATA4'
         DATA(3) => N107, 
         -- Connections to port 'DATA5'
         DATA(4) => N123, 
         -- Connections to port 'DATA6'
         DATA(5) => N139, 
         -- Connections to port 'DATA7'
         DATA(6) => X_Logic0_port, 
         -- Connections to port 'DATA8'
         DATA(7) => DATA1_1_port, 
         -- Connections to port 'DATA9'
         DATA(8) => DATA1_15_port, 
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
         -- Connections to port 'Z'
         Z(0) => N141 );
   B_0 : GTECH_BUF port map( A => N18, Z => N0);
   B_1 : GTECH_BUF port map( A => N20, Z => N1);
   B_2 : GTECH_BUF port map( A => N22, Z => N2);
   B_3 : GTECH_BUF port map( A => N26, Z => N3);
   B_4 : GTECH_BUF port map( A => N30, Z => N4);
   B_5 : GTECH_BUF port map( A => N33, Z => N5);
   B_6 : GTECH_BUF port map( A => N36, Z => N6);
   B_7 : GTECH_BUF port map( A => N159, Z => N7);
   B_8 : GTECH_BUF port map( A => N41, Z => N8);
   C279_cell : SELECT_OP
      generic map ( num_inputs => 8, input_width => 14 )
      port map(
         -- Connections to port 'DATA1'
         DATA(13) => N58, DATA(12) => N57, DATA(11) => N56, DATA(10) => N55, 
               DATA(9) => N54, DATA(8) => N53, DATA(7) => N52, DATA(6) => N51, 
               DATA(5) => N50, DATA(4) => N49, DATA(3) => N48, DATA(2) => N47, 
               DATA(1) => N46, DATA(0) => N45, 
         -- Connections to port 'DATA2'
         DATA(27) => N74, DATA(26) => N73, DATA(25) => N72, DATA(24) => N71, 
               DATA(23) => N70, DATA(22) => N69, DATA(21) => N68, DATA(20) => 
               N67, DATA(19) => N66, DATA(18) => N65, DATA(17) => N64, DATA(16)
               => N63, DATA(15) => N62, DATA(14) => N61, 
         -- Connections to port 'DATA3'
         DATA(41) => N90, DATA(40) => N89, DATA(39) => N88, DATA(38) => N87, 
               DATA(37) => N86, DATA(36) => N85, DATA(35) => N84, DATA(34) => 
               N83, DATA(33) => N82, DATA(32) => N81, DATA(31) => N80, DATA(30)
               => N79, DATA(29) => N78, DATA(28) => N77, 
         -- Connections to port 'DATA4'
         DATA(55) => N93, DATA(54) => N94, DATA(53) => N95, DATA(52) => N96, 
               DATA(51) => N97, DATA(50) => N98, DATA(49) => N99, DATA(48) => 
               N100, DATA(47) => N101, DATA(46) => N102, DATA(45) => N103, 
               DATA(44) => N104, DATA(43) => N105, DATA(42) => N106, 
         -- Connections to port 'DATA5'
         DATA(69) => N109, DATA(68) => N110, DATA(67) => N111, DATA(66) => N112
               , DATA(65) => N113, DATA(64) => N114, DATA(63) => N115, DATA(62)
               => N116, DATA(61) => N117, DATA(60) => N118, DATA(59) => N119, 
               DATA(58) => N120, DATA(57) => N121, DATA(56) => N122, 
         -- Connections to port 'DATA6'
         DATA(83) => N125, DATA(82) => N126, DATA(81) => N127, DATA(80) => N128
               , DATA(79) => N129, DATA(78) => N130, DATA(77) => N131, DATA(76)
               => N132, DATA(75) => N133, DATA(74) => N134, DATA(73) => N135, 
               DATA(72) => N136, DATA(71) => N137, DATA(70) => N138, 
         -- Connections to port 'DATA7'
         DATA(97) => DATA1_13_port, DATA(96) => DATA1_12_port, DATA(95) => 
               DATA1_11_port, DATA(94) => DATA1_10_port, DATA(93) => 
               DATA1_9_port, DATA(92) => DATA1_8_port, DATA(91) => DATA1_7_port
               , DATA(90) => DATA1_6_port, DATA(89) => DATA1_5_port, DATA(88) 
               => DATA1_4_port, DATA(87) => DATA1_3_port, DATA(86) => 
               DATA1_2_port, DATA(85) => DATA1_1_port, DATA(84) => DATA1_0_port
               , 
         -- Connections to port 'DATA8'
         DATA(111) => DATA1_15_port, DATA(110) => DATA1_14_port, DATA(109) => 
               DATA1_13_port, DATA(108) => DATA1_12_port, DATA(107) => 
               DATA1_11_port, DATA(106) => DATA1_10_port, DATA(105) => 
               DATA1_9_port, DATA(104) => DATA1_8_port, DATA(103) => 
               DATA1_7_port, DATA(102) => DATA1_6_port, DATA(101) => 
               DATA1_5_port, DATA(100) => DATA1_4_port, DATA(99) => 
               DATA1_3_port, DATA(98) => DATA1_2_port, 
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
         CONTROL(6) => N9, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N7, 
         -- Connections to port 'Z'
         Z(13) => N155, Z(12) => N154, Z(11) => N153, Z(10) => N152, Z(9) => 
               N151, Z(8) => N150, Z(7) => N149, Z(6) => N148, Z(5) => N147, 
               Z(4) => N146, Z(3) => N145, Z(2) => N144, Z(1) => N143, Z(0) => 
               N142 );
   B_9 : GTECH_BUF port map( A => N160, Z => N9);
   C280_cell : SELECT_OP
      generic map ( num_inputs => 9, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N59, 
         -- Connections to port 'DATA2'
         DATA(1) => N75, 
         -- Connections to port 'DATA3'
         DATA(2) => N91, 
         -- Connections to port 'DATA4'
         DATA(3) => N92, 
         -- Connections to port 'DATA5'
         DATA(4) => N108, 
         -- Connections to port 'DATA6'
         DATA(5) => N124, 
         -- Connections to port 'DATA7'
         DATA(6) => DATA1_14_port, 
         -- Connections to port 'DATA8'
         DATA(7) => X_Logic0_port, 
         -- Connections to port 'DATA9'
         DATA(8) => DATA1_0_port, 
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
         CONTROL(6) => N9, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N10, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N11, 
         -- Connections to port 'Z'
         Z(0) => N156 );
   B_10 : GTECH_BUF port map( A => N38, Z => N10);
   B_11 : GTECH_BUF port map( A => N43, Z => N11);
   X_Logic0_port <= '0';
   I_0 : GTECH_NOT port map( A => FUNC_3_port, Z => N12);
   I_1 : GTECH_NOT port map( A => FUNC_2_port, Z => N13);
   I_2 : GTECH_NOT port map( A => FUNC_1_port, Z => N14);
   I_3 : GTECH_NOT port map( A => FUNC_0_port, Z => N15);
   I_4 : GTECH_NOT port map( A => N19, Z => N20);
   I_5 : GTECH_NOT port map( A => N21, Z => N22);
   I_6 : GTECH_NOT port map( A => N25, Z => N26);
   I_7 : GTECH_NOT port map( A => N29, Z => N30);
   I_8 : GTECH_NOT port map( A => N32, Z => N33);
   I_9 : GTECH_NOT port map( A => N35, Z => N36);
   I_10 : GTECH_NOT port map( A => N37, Z => N38);
   I_11 : GTECH_NOT port map( A => N40, Z => N41);
   I_12 : GTECH_NOT port map( A => N42, Z => N43);
   B_12 : GTECH_BUF port map( A => N18, Z => net47);
   B_13 : GTECH_BUF port map( A => N20, Z => net49);
   B_14 : GTECH_BUF port map( A => N22, Z => net51);
   C309 : GTECH_AND2 port map( A => DATA1_15_port, B => DATA2_15_port, Z => N92
                           );
   C310 : GTECH_AND2 port map( A => DATA1_14_port, B => DATA2_14_port, Z => N93
                           );
   C311 : GTECH_AND2 port map( A => DATA1_13_port, B => DATA2_13_port, Z => N94
                           );
   C312 : GTECH_AND2 port map( A => DATA1_12_port, B => DATA2_12_port, Z => N95
                           );
   C313 : GTECH_AND2 port map( A => DATA1_11_port, B => DATA2_11_port, Z => N96
                           );
   C314 : GTECH_AND2 port map( A => DATA1_10_port, B => DATA2_10_port, Z => N97
                           );
   C315 : GTECH_AND2 port map( A => DATA1_9_port, B => DATA2_9_port, Z => N98);
   C316 : GTECH_AND2 port map( A => DATA1_8_port, B => DATA2_8_port, Z => N99);
   C317 : GTECH_AND2 port map( A => DATA1_7_port, B => DATA2_7_port, Z => N100)
                           ;
   C318 : GTECH_AND2 port map( A => DATA1_6_port, B => DATA2_6_port, Z => N101)
                           ;
   C319 : GTECH_AND2 port map( A => DATA1_5_port, B => DATA2_5_port, Z => N102)
                           ;
   C320 : GTECH_AND2 port map( A => DATA1_4_port, B => DATA2_4_port, Z => N103)
                           ;
   C321 : GTECH_AND2 port map( A => DATA1_3_port, B => DATA2_3_port, Z => N104)
                           ;
   C322 : GTECH_AND2 port map( A => DATA1_2_port, B => DATA2_2_port, Z => N105)
                           ;
   C323 : GTECH_AND2 port map( A => DATA1_1_port, B => DATA2_1_port, Z => N106)
                           ;
   C324 : GTECH_AND2 port map( A => DATA1_0_port, B => DATA2_0_port, Z => N107)
                           ;
   C325 : GTECH_OR2 port map( A => DATA1_15_port, B => DATA2_15_port, Z => N108
                           );
   C326 : GTECH_OR2 port map( A => DATA1_14_port, B => DATA2_14_port, Z => N109
                           );
   C327 : GTECH_OR2 port map( A => DATA1_13_port, B => DATA2_13_port, Z => N110
                           );
   C328 : GTECH_OR2 port map( A => DATA1_12_port, B => DATA2_12_port, Z => N111
                           );
   C329 : GTECH_OR2 port map( A => DATA1_11_port, B => DATA2_11_port, Z => N112
                           );
   C330 : GTECH_OR2 port map( A => DATA1_10_port, B => DATA2_10_port, Z => N113
                           );
   C331 : GTECH_OR2 port map( A => DATA1_9_port, B => DATA2_9_port, Z => N114);
   C332 : GTECH_OR2 port map( A => DATA1_8_port, B => DATA2_8_port, Z => N115);
   C333 : GTECH_OR2 port map( A => DATA1_7_port, B => DATA2_7_port, Z => N116);
   C334 : GTECH_OR2 port map( A => DATA1_6_port, B => DATA2_6_port, Z => N117);
   C335 : GTECH_OR2 port map( A => DATA1_5_port, B => DATA2_5_port, Z => N118);
   C336 : GTECH_OR2 port map( A => DATA1_4_port, B => DATA2_4_port, Z => N119);
   C337 : GTECH_OR2 port map( A => DATA1_3_port, B => DATA2_3_port, Z => N120);
   C338 : GTECH_OR2 port map( A => DATA1_2_port, B => DATA2_2_port, Z => N121);
   C339 : GTECH_OR2 port map( A => DATA1_1_port, B => DATA2_1_port, Z => N122);
   C340 : GTECH_OR2 port map( A => DATA1_0_port, B => DATA2_0_port, Z => N123);
   C341 : GTECH_XOR2 port map( A => DATA1_15_port, B => DATA2_15_port, Z => 
                           N124);
   C342 : GTECH_XOR2 port map( A => DATA1_14_port, B => DATA2_14_port, Z => 
                           N125);
   C343 : GTECH_XOR2 port map( A => DATA1_13_port, B => DATA2_13_port, Z => 
                           N126);
   C344 : GTECH_XOR2 port map( A => DATA1_12_port, B => DATA2_12_port, Z => 
                           N127);
   C345 : GTECH_XOR2 port map( A => DATA1_11_port, B => DATA2_11_port, Z => 
                           N128);
   C346 : GTECH_XOR2 port map( A => DATA1_10_port, B => DATA2_10_port, Z => 
                           N129);
   C347 : GTECH_XOR2 port map( A => DATA1_9_port, B => DATA2_9_port, Z => N130)
                           ;
   C348 : GTECH_XOR2 port map( A => DATA1_8_port, B => DATA2_8_port, Z => N131)
                           ;
   C349 : GTECH_XOR2 port map( A => DATA1_7_port, B => DATA2_7_port, Z => N132)
                           ;
   C350 : GTECH_XOR2 port map( A => DATA1_6_port, B => DATA2_6_port, Z => N133)
                           ;
   C351 : GTECH_XOR2 port map( A => DATA1_5_port, B => DATA2_5_port, Z => N134)
                           ;
   C352 : GTECH_XOR2 port map( A => DATA1_4_port, B => DATA2_4_port, Z => N135)
                           ;
   C353 : GTECH_XOR2 port map( A => DATA1_3_port, B => DATA2_3_port, Z => N136)
                           ;
   C354 : GTECH_XOR2 port map( A => DATA1_2_port, B => DATA2_2_port, Z => N137)
                           ;
   C355 : GTECH_XOR2 port map( A => DATA1_1_port, B => DATA2_1_port, Z => N138)
                           ;
   C356 : GTECH_XOR2 port map( A => DATA1_0_port, B => DATA2_0_port, Z => N139)
                           ;

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
