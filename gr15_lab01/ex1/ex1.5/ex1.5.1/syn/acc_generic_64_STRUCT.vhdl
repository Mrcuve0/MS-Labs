
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_N64 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_N64;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity OR21_GENERIC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector 
         (63 downto 0));

end OR21_GENERIC_N64;

architecture SYN_beh of OR21_GENERIC_N64 is

   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   C70 : GTECH_OR2 port map( A => A(63), B => B(63), Z => Y(63));
   C71 : GTECH_OR2 port map( A => A(62), B => B(62), Z => Y(62));
   C72 : GTECH_OR2 port map( A => A(61), B => B(61), Z => Y(61));
   C73 : GTECH_OR2 port map( A => A(60), B => B(60), Z => Y(60));
   C74 : GTECH_OR2 port map( A => A(59), B => B(59), Z => Y(59));
   C75 : GTECH_OR2 port map( A => A(58), B => B(58), Z => Y(58));
   C76 : GTECH_OR2 port map( A => A(57), B => B(57), Z => Y(57));
   C77 : GTECH_OR2 port map( A => A(56), B => B(56), Z => Y(56));
   C78 : GTECH_OR2 port map( A => A(55), B => B(55), Z => Y(55));
   C79 : GTECH_OR2 port map( A => A(54), B => B(54), Z => Y(54));
   C80 : GTECH_OR2 port map( A => A(53), B => B(53), Z => Y(53));
   C81 : GTECH_OR2 port map( A => A(52), B => B(52), Z => Y(52));
   C82 : GTECH_OR2 port map( A => A(51), B => B(51), Z => Y(51));
   C83 : GTECH_OR2 port map( A => A(50), B => B(50), Z => Y(50));
   C84 : GTECH_OR2 port map( A => A(49), B => B(49), Z => Y(49));
   C85 : GTECH_OR2 port map( A => A(48), B => B(48), Z => Y(48));
   C86 : GTECH_OR2 port map( A => A(47), B => B(47), Z => Y(47));
   C87 : GTECH_OR2 port map( A => A(46), B => B(46), Z => Y(46));
   C88 : GTECH_OR2 port map( A => A(45), B => B(45), Z => Y(45));
   C89 : GTECH_OR2 port map( A => A(44), B => B(44), Z => Y(44));
   C90 : GTECH_OR2 port map( A => A(43), B => B(43), Z => Y(43));
   C91 : GTECH_OR2 port map( A => A(42), B => B(42), Z => Y(42));
   C92 : GTECH_OR2 port map( A => A(41), B => B(41), Z => Y(41));
   C93 : GTECH_OR2 port map( A => A(40), B => B(40), Z => Y(40));
   C94 : GTECH_OR2 port map( A => A(39), B => B(39), Z => Y(39));
   C95 : GTECH_OR2 port map( A => A(38), B => B(38), Z => Y(38));
   C96 : GTECH_OR2 port map( A => A(37), B => B(37), Z => Y(37));
   C97 : GTECH_OR2 port map( A => A(36), B => B(36), Z => Y(36));
   C98 : GTECH_OR2 port map( A => A(35), B => B(35), Z => Y(35));
   C99 : GTECH_OR2 port map( A => A(34), B => B(34), Z => Y(34));
   C100 : GTECH_OR2 port map( A => A(33), B => B(33), Z => Y(33));
   C101 : GTECH_OR2 port map( A => A(32), B => B(32), Z => Y(32));
   C102 : GTECH_OR2 port map( A => A(31), B => B(31), Z => Y(31));
   C103 : GTECH_OR2 port map( A => A(30), B => B(30), Z => Y(30));
   C104 : GTECH_OR2 port map( A => A(29), B => B(29), Z => Y(29));
   C105 : GTECH_OR2 port map( A => A(28), B => B(28), Z => Y(28));
   C106 : GTECH_OR2 port map( A => A(27), B => B(27), Z => Y(27));
   C107 : GTECH_OR2 port map( A => A(26), B => B(26), Z => Y(26));
   C108 : GTECH_OR2 port map( A => A(25), B => B(25), Z => Y(25));
   C109 : GTECH_OR2 port map( A => A(24), B => B(24), Z => Y(24));
   C110 : GTECH_OR2 port map( A => A(23), B => B(23), Z => Y(23));
   C111 : GTECH_OR2 port map( A => A(22), B => B(22), Z => Y(22));
   C112 : GTECH_OR2 port map( A => A(21), B => B(21), Z => Y(21));
   C113 : GTECH_OR2 port map( A => A(20), B => B(20), Z => Y(20));
   C114 : GTECH_OR2 port map( A => A(19), B => B(19), Z => Y(19));
   C115 : GTECH_OR2 port map( A => A(18), B => B(18), Z => Y(18));
   C116 : GTECH_OR2 port map( A => A(17), B => B(17), Z => Y(17));
   C117 : GTECH_OR2 port map( A => A(16), B => B(16), Z => Y(16));
   C118 : GTECH_OR2 port map( A => A(15), B => B(15), Z => Y(15));
   C119 : GTECH_OR2 port map( A => A(14), B => B(14), Z => Y(14));
   C120 : GTECH_OR2 port map( A => A(13), B => B(13), Z => Y(13));
   C121 : GTECH_OR2 port map( A => A(12), B => B(12), Z => Y(12));
   C122 : GTECH_OR2 port map( A => A(11), B => B(11), Z => Y(11));
   C123 : GTECH_OR2 port map( A => A(10), B => B(10), Z => Y(10));
   C124 : GTECH_OR2 port map( A => A(9), B => B(9), Z => Y(9));
   C125 : GTECH_OR2 port map( A => A(8), B => B(8), Z => Y(8));
   C126 : GTECH_OR2 port map( A => A(7), B => B(7), Z => Y(7));
   C127 : GTECH_OR2 port map( A => A(6), B => B(6), Z => Y(6));
   C128 : GTECH_OR2 port map( A => A(5), B => B(5), Z => Y(5));
   C129 : GTECH_OR2 port map( A => A(4), B => B(4), Z => Y(4));
   C130 : GTECH_OR2 port map( A => A(3), B => B(3), Z => Y(3));
   C131 : GTECH_OR2 port map( A => A(2), B => B(2), Z => Y(2));
   C132 : GTECH_OR2 port map( A => A(1), B => B(1), Z => Y(1));
   C133 : GTECH_OR2 port map( A => A(0), B => B(0), Z => Y(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity NOT_GENERIC_N64 is

   port( A : in std_logic_vector (63 downto 0);  Y : out std_logic_vector (63 
         downto 0));

end NOT_GENERIC_N64;

architecture SYN_beh of NOT_GENERIC_N64 is

   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;

begin
   
   I_0 : GTECH_NOT port map( A => A(63), Z => Y(63));
   I_1 : GTECH_NOT port map( A => A(62), Z => Y(62));
   I_2 : GTECH_NOT port map( A => A(61), Z => Y(61));
   I_3 : GTECH_NOT port map( A => A(60), Z => Y(60));
   I_4 : GTECH_NOT port map( A => A(59), Z => Y(59));
   I_5 : GTECH_NOT port map( A => A(58), Z => Y(58));
   I_6 : GTECH_NOT port map( A => A(57), Z => Y(57));
   I_7 : GTECH_NOT port map( A => A(56), Z => Y(56));
   I_8 : GTECH_NOT port map( A => A(55), Z => Y(55));
   I_9 : GTECH_NOT port map( A => A(54), Z => Y(54));
   I_10 : GTECH_NOT port map( A => A(53), Z => Y(53));
   I_11 : GTECH_NOT port map( A => A(52), Z => Y(52));
   I_12 : GTECH_NOT port map( A => A(51), Z => Y(51));
   I_13 : GTECH_NOT port map( A => A(50), Z => Y(50));
   I_14 : GTECH_NOT port map( A => A(49), Z => Y(49));
   I_15 : GTECH_NOT port map( A => A(48), Z => Y(48));
   I_16 : GTECH_NOT port map( A => A(47), Z => Y(47));
   I_17 : GTECH_NOT port map( A => A(46), Z => Y(46));
   I_18 : GTECH_NOT port map( A => A(45), Z => Y(45));
   I_19 : GTECH_NOT port map( A => A(44), Z => Y(44));
   I_20 : GTECH_NOT port map( A => A(43), Z => Y(43));
   I_21 : GTECH_NOT port map( A => A(42), Z => Y(42));
   I_22 : GTECH_NOT port map( A => A(41), Z => Y(41));
   I_23 : GTECH_NOT port map( A => A(40), Z => Y(40));
   I_24 : GTECH_NOT port map( A => A(39), Z => Y(39));
   I_25 : GTECH_NOT port map( A => A(38), Z => Y(38));
   I_26 : GTECH_NOT port map( A => A(37), Z => Y(37));
   I_27 : GTECH_NOT port map( A => A(36), Z => Y(36));
   I_28 : GTECH_NOT port map( A => A(35), Z => Y(35));
   I_29 : GTECH_NOT port map( A => A(34), Z => Y(34));
   I_30 : GTECH_NOT port map( A => A(33), Z => Y(33));
   I_31 : GTECH_NOT port map( A => A(32), Z => Y(32));
   I_32 : GTECH_NOT port map( A => A(31), Z => Y(31));
   I_33 : GTECH_NOT port map( A => A(30), Z => Y(30));
   I_34 : GTECH_NOT port map( A => A(29), Z => Y(29));
   I_35 : GTECH_NOT port map( A => A(28), Z => Y(28));
   I_36 : GTECH_NOT port map( A => A(27), Z => Y(27));
   I_37 : GTECH_NOT port map( A => A(26), Z => Y(26));
   I_38 : GTECH_NOT port map( A => A(25), Z => Y(25));
   I_39 : GTECH_NOT port map( A => A(24), Z => Y(24));
   I_40 : GTECH_NOT port map( A => A(23), Z => Y(23));
   I_41 : GTECH_NOT port map( A => A(22), Z => Y(22));
   I_42 : GTECH_NOT port map( A => A(21), Z => Y(21));
   I_43 : GTECH_NOT port map( A => A(20), Z => Y(20));
   I_44 : GTECH_NOT port map( A => A(19), Z => Y(19));
   I_45 : GTECH_NOT port map( A => A(18), Z => Y(18));
   I_46 : GTECH_NOT port map( A => A(17), Z => Y(17));
   I_47 : GTECH_NOT port map( A => A(16), Z => Y(16));
   I_48 : GTECH_NOT port map( A => A(15), Z => Y(15));
   I_49 : GTECH_NOT port map( A => A(14), Z => Y(14));
   I_50 : GTECH_NOT port map( A => A(13), Z => Y(13));
   I_51 : GTECH_NOT port map( A => A(12), Z => Y(12));
   I_52 : GTECH_NOT port map( A => A(11), Z => Y(11));
   I_53 : GTECH_NOT port map( A => A(10), Z => Y(10));
   I_54 : GTECH_NOT port map( A => A(9), Z => Y(9));
   I_55 : GTECH_NOT port map( A => A(8), Z => Y(8));
   I_56 : GTECH_NOT port map( A => A(7), Z => Y(7));
   I_57 : GTECH_NOT port map( A => A(6), Z => Y(6));
   I_58 : GTECH_NOT port map( A => A(5), Z => Y(5));
   I_59 : GTECH_NOT port map( A => A(4), Z => Y(4));
   I_60 : GTECH_NOT port map( A => A(3), Z => Y(3));
   I_61 : GTECH_NOT port map( A => A(2), Z => Y(2));
   I_62 : GTECH_NOT port map( A => A(1), Z => Y(1));
   I_63 : GTECH_NOT port map( A => A(0), Z => Y(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity AND21_GENERIC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector 
         (63 downto 0));

end AND21_GENERIC_N64;

architecture SYN_beh of AND21_GENERIC_N64 is

   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   C70 : GTECH_AND2 port map( A => A(63), B => B(63), Z => Y(63));
   C71 : GTECH_AND2 port map( A => A(62), B => B(62), Z => Y(62));
   C72 : GTECH_AND2 port map( A => A(61), B => B(61), Z => Y(61));
   C73 : GTECH_AND2 port map( A => A(60), B => B(60), Z => Y(60));
   C74 : GTECH_AND2 port map( A => A(59), B => B(59), Z => Y(59));
   C75 : GTECH_AND2 port map( A => A(58), B => B(58), Z => Y(58));
   C76 : GTECH_AND2 port map( A => A(57), B => B(57), Z => Y(57));
   C77 : GTECH_AND2 port map( A => A(56), B => B(56), Z => Y(56));
   C78 : GTECH_AND2 port map( A => A(55), B => B(55), Z => Y(55));
   C79 : GTECH_AND2 port map( A => A(54), B => B(54), Z => Y(54));
   C80 : GTECH_AND2 port map( A => A(53), B => B(53), Z => Y(53));
   C81 : GTECH_AND2 port map( A => A(52), B => B(52), Z => Y(52));
   C82 : GTECH_AND2 port map( A => A(51), B => B(51), Z => Y(51));
   C83 : GTECH_AND2 port map( A => A(50), B => B(50), Z => Y(50));
   C84 : GTECH_AND2 port map( A => A(49), B => B(49), Z => Y(49));
   C85 : GTECH_AND2 port map( A => A(48), B => B(48), Z => Y(48));
   C86 : GTECH_AND2 port map( A => A(47), B => B(47), Z => Y(47));
   C87 : GTECH_AND2 port map( A => A(46), B => B(46), Z => Y(46));
   C88 : GTECH_AND2 port map( A => A(45), B => B(45), Z => Y(45));
   C89 : GTECH_AND2 port map( A => A(44), B => B(44), Z => Y(44));
   C90 : GTECH_AND2 port map( A => A(43), B => B(43), Z => Y(43));
   C91 : GTECH_AND2 port map( A => A(42), B => B(42), Z => Y(42));
   C92 : GTECH_AND2 port map( A => A(41), B => B(41), Z => Y(41));
   C93 : GTECH_AND2 port map( A => A(40), B => B(40), Z => Y(40));
   C94 : GTECH_AND2 port map( A => A(39), B => B(39), Z => Y(39));
   C95 : GTECH_AND2 port map( A => A(38), B => B(38), Z => Y(38));
   C96 : GTECH_AND2 port map( A => A(37), B => B(37), Z => Y(37));
   C97 : GTECH_AND2 port map( A => A(36), B => B(36), Z => Y(36));
   C98 : GTECH_AND2 port map( A => A(35), B => B(35), Z => Y(35));
   C99 : GTECH_AND2 port map( A => A(34), B => B(34), Z => Y(34));
   C100 : GTECH_AND2 port map( A => A(33), B => B(33), Z => Y(33));
   C101 : GTECH_AND2 port map( A => A(32), B => B(32), Z => Y(32));
   C102 : GTECH_AND2 port map( A => A(31), B => B(31), Z => Y(31));
   C103 : GTECH_AND2 port map( A => A(30), B => B(30), Z => Y(30));
   C104 : GTECH_AND2 port map( A => A(29), B => B(29), Z => Y(29));
   C105 : GTECH_AND2 port map( A => A(28), B => B(28), Z => Y(28));
   C106 : GTECH_AND2 port map( A => A(27), B => B(27), Z => Y(27));
   C107 : GTECH_AND2 port map( A => A(26), B => B(26), Z => Y(26));
   C108 : GTECH_AND2 port map( A => A(25), B => B(25), Z => Y(25));
   C109 : GTECH_AND2 port map( A => A(24), B => B(24), Z => Y(24));
   C110 : GTECH_AND2 port map( A => A(23), B => B(23), Z => Y(23));
   C111 : GTECH_AND2 port map( A => A(22), B => B(22), Z => Y(22));
   C112 : GTECH_AND2 port map( A => A(21), B => B(21), Z => Y(21));
   C113 : GTECH_AND2 port map( A => A(20), B => B(20), Z => Y(20));
   C114 : GTECH_AND2 port map( A => A(19), B => B(19), Z => Y(19));
   C115 : GTECH_AND2 port map( A => A(18), B => B(18), Z => Y(18));
   C116 : GTECH_AND2 port map( A => A(17), B => B(17), Z => Y(17));
   C117 : GTECH_AND2 port map( A => A(16), B => B(16), Z => Y(16));
   C118 : GTECH_AND2 port map( A => A(15), B => B(15), Z => Y(15));
   C119 : GTECH_AND2 port map( A => A(14), B => B(14), Z => Y(14));
   C120 : GTECH_AND2 port map( A => A(13), B => B(13), Z => Y(13));
   C121 : GTECH_AND2 port map( A => A(12), B => B(12), Z => Y(12));
   C122 : GTECH_AND2 port map( A => A(11), B => B(11), Z => Y(11));
   C123 : GTECH_AND2 port map( A => A(10), B => B(10), Z => Y(10));
   C124 : GTECH_AND2 port map( A => A(9), B => B(9), Z => Y(9));
   C125 : GTECH_AND2 port map( A => A(8), B => B(8), Z => Y(8));
   C126 : GTECH_AND2 port map( A => A(7), B => B(7), Z => Y(7));
   C127 : GTECH_AND2 port map( A => A(6), B => B(6), Z => Y(6));
   C128 : GTECH_AND2 port map( A => A(5), B => B(5), Z => Y(5));
   C129 : GTECH_AND2 port map( A => A(4), B => B(4), Z => Y(4));
   C130 : GTECH_AND2 port map( A => A(3), B => B(3), Z => Y(3));
   C131 : GTECH_AND2 port map( A => A(2), B => B(2), Z => Y(2));
   C132 : GTECH_AND2 port map( A => A(1), B => B(1), Z => Y(1));
   C133 : GTECH_AND2 port map( A => A(0), B => B(0), Z => Y(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity RCA_GENERIC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (63 downto 0);  Co : out std_logic);

end RCA_GENERIC_N64;

architecture SYN_BEHAVIORAL of RCA_GENERIC_N64 is

signal A_63_port, A_62_port, A_61_port, A_60_port, A_59_port, A_58_port, 
   A_57_port, A_56_port, A_55_port, A_54_port, A_53_port, A_52_port, A_51_port,
   A_50_port, A_49_port, A_48_port, A_47_port, A_46_port, A_45_port, A_44_port,
   A_43_port, A_42_port, A_41_port, A_40_port, A_39_port, A_38_port, A_37_port,
   A_36_port, A_35_port, A_34_port, A_33_port, A_32_port, A_31_port, A_30_port,
   A_29_port, A_28_port, A_27_port, A_26_port, A_25_port, A_24_port, A_23_port,
   A_22_port, A_21_port, A_20_port, A_19_port, A_18_port, A_17_port, A_16_port,
   A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, A_10_port, A_9_port, 
   A_8_port, A_7_port, A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, 
   A_1_port, A_0_port, B_63_port, B_62_port, B_61_port, B_60_port, B_59_port, 
   B_58_port, B_57_port, B_56_port, B_55_port, B_54_port, B_53_port, B_52_port,
   B_51_port, B_50_port, B_49_port, B_48_port, B_47_port, B_46_port, B_45_port,
   B_44_port, B_43_port, B_42_port, B_41_port, B_40_port, B_39_port, B_38_port,
   B_37_port, B_36_port, B_35_port, B_34_port, B_33_port, B_32_port, B_31_port,
   B_30_port, B_29_port, B_28_port, B_27_port, B_26_port, B_25_port, B_24_port,
   B_23_port, B_22_port, B_21_port, B_20_port, B_19_port, B_18_port, B_17_port,
   B_16_port, B_15_port, B_14_port, B_13_port, B_12_port, B_11_port, B_10_port,
   B_9_port, B_8_port, B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, 
   B_2_port, B_1_port, B_0_port, Ci_port, S_63_port, S_62_port, S_61_port, 
   S_60_port, S_59_port, S_58_port, S_57_port, S_56_port, S_55_port, S_54_port,
   S_53_port, S_52_port, S_51_port, S_50_port, S_49_port, S_48_port, S_47_port,
   S_46_port, S_45_port, S_44_port, S_43_port, S_42_port, S_41_port, S_40_port,
   S_39_port, S_38_port, S_37_port, S_36_port, S_35_port, S_34_port, S_33_port,
   S_32_port, S_31_port, S_30_port, S_29_port, S_28_port, S_27_port, S_26_port,
   S_25_port, S_24_port, S_23_port, S_22_port, S_21_port, S_20_port, S_19_port,
   S_18_port, S_17_port, S_16_port, S_15_port, S_14_port, S_13_port, S_12_port,
   S_11_port, S_10_port, S_9_port, S_8_port, S_7_port, S_6_port, S_5_port, 
   S_4_port, S_3_port, S_2_port, S_1_port, S_0_port, Co_port, N0, N1, N2, N3, 
   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, 
   N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, 
   N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, 
   N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64 : 
   std_logic;

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
   Ci_port <= Ci;
   S <= ( S_63_port, S_62_port, S_61_port, S_60_port, S_59_port, S_58_port, 
      S_57_port, S_56_port, S_55_port, S_54_port, S_53_port, S_52_port, 
      S_51_port, S_50_port, S_49_port, S_48_port, S_47_port, S_46_port, 
      S_45_port, S_44_port, S_43_port, S_42_port, S_41_port, S_40_port, 
      S_39_port, S_38_port, S_37_port, S_36_port, S_35_port, S_34_port, 
      S_33_port, S_32_port, S_31_port, S_30_port, S_29_port, S_28_port, 
      S_27_port, S_26_port, S_25_port, S_24_port, S_23_port, S_22_port, 
      S_21_port, S_20_port, S_19_port, S_18_port, S_17_port, S_16_port, 
      S_15_port, S_14_port, S_13_port, S_12_port, S_11_port, S_10_port, 
      S_9_port, S_8_port, S_7_port, S_6_port, S_5_port, S_4_port, S_3_port, 
      S_2_port, S_1_port, S_0_port );
   Co <= Co_port;
   
   add_52 : process ( A_63_port, A_62_port, A_61_port, A_60_port, A_59_port, 
         A_58_port, A_57_port, A_56_port, A_55_port, A_54_port, A_53_port, 
         A_52_port, A_51_port, A_50_port, A_49_port, A_48_port, A_47_port, 
         A_46_port, A_45_port, A_44_port, A_43_port, A_42_port, A_41_port, 
         A_40_port, A_39_port, A_38_port, A_37_port, A_36_port, A_35_port, 
         A_34_port, A_33_port, A_32_port, A_31_port, A_30_port, A_29_port, 
         A_28_port, A_27_port, A_26_port, A_25_port, A_24_port, A_23_port, 
         A_22_port, A_21_port, A_20_port, A_19_port, A_18_port, A_17_port, 
         A_16_port, A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, 
         A_10_port, A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, A_4_port,
         A_3_port, A_2_port, A_1_port, A_0_port, B_63_port, B_62_port, 
         B_61_port, B_60_port, B_59_port, B_58_port, B_57_port, B_56_port, 
         B_55_port, B_54_port, B_53_port, B_52_port, B_51_port, B_50_port, 
         B_49_port, B_48_port, B_47_port, B_46_port, B_45_port, B_44_port, 
         B_43_port, B_42_port, B_41_port, B_40_port, B_39_port, B_38_port, 
         B_37_port, B_36_port, B_35_port, B_34_port, B_33_port, B_32_port, 
         B_31_port, B_30_port, B_29_port, B_28_port, B_27_port, B_26_port, 
         B_25_port, B_24_port, B_23_port, B_22_port, B_21_port, B_20_port, 
         B_19_port, B_18_port, B_17_port, B_16_port, B_15_port, B_14_port, 
         B_13_port, B_12_port, B_11_port, B_10_port, B_9_port, B_8_port, 
         B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, B_1_port, 
         B_0_port )
      variable A : UNSIGNED( 64 downto 0 );
      variable B : UNSIGNED( 64 downto 0 );
      variable Z : UNSIGNED( 64 downto 0 );
   begin
      A := ( '0', A_63_port, A_62_port, A_61_port, A_60_port, A_59_port, 
            A_58_port, A_57_port, A_56_port, A_55_port, A_54_port, A_53_port, 
            A_52_port, A_51_port, A_50_port, A_49_port, A_48_port, A_47_port, 
            A_46_port, A_45_port, A_44_port, A_43_port, A_42_port, A_41_port, 
            A_40_port, A_39_port, A_38_port, A_37_port, A_36_port, A_35_port, 
            A_34_port, A_33_port, A_32_port, A_31_port, A_30_port, A_29_port, 
            A_28_port, A_27_port, A_26_port, A_25_port, A_24_port, A_23_port, 
            A_22_port, A_21_port, A_20_port, A_19_port, A_18_port, A_17_port, 
            A_16_port, A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, 
            A_10_port, A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, 
            A_4_port, A_3_port, A_2_port, A_1_port, A_0_port );
      B := ( '0', B_63_port, B_62_port, B_61_port, B_60_port, B_59_port, 
            B_58_port, B_57_port, B_56_port, B_55_port, B_54_port, B_53_port, 
            B_52_port, B_51_port, B_50_port, B_49_port, B_48_port, B_47_port, 
            B_46_port, B_45_port, B_44_port, B_43_port, B_42_port, B_41_port, 
            B_40_port, B_39_port, B_38_port, B_37_port, B_36_port, B_35_port, 
            B_34_port, B_33_port, B_32_port, B_31_port, B_30_port, B_29_port, 
            B_28_port, B_27_port, B_26_port, B_25_port, B_24_port, B_23_port, 
            B_22_port, B_21_port, B_20_port, B_19_port, B_18_port, B_17_port, 
            B_16_port, B_15_port, B_14_port, B_13_port, B_12_port, B_11_port, 
            B_10_port, B_9_port, B_8_port, B_7_port, B_6_port, B_5_port, 
            B_4_port, B_3_port, B_2_port, B_1_port, B_0_port );
      Z := A + B;
      ( N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, 
            N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, 
            N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, 
            N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, 
            N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0 ) <= Z;
   end process;
   
   add_52_2 : process ( N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, 
         N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, 
         N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, 
         N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, 
         N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0, Ci_port )
      variable A : UNSIGNED( 64 downto 0 );
      variable B : UNSIGNED( 64 downto 0 );
      variable Z : UNSIGNED( 64 downto 0 );
   begin
      A := ( N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, 
            N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, 
            N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, 
            N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, 
            N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0 );
      B := ( '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 
            '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 
            '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 
            '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 
            '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', Ci_port
            );
      Z := A + B;
      ( Co_port, S_63_port, S_62_port, S_61_port, S_60_port, S_59_port, 
            S_58_port, S_57_port, S_56_port, S_55_port, S_54_port, S_53_port, 
            S_52_port, S_51_port, S_50_port, S_49_port, S_48_port, S_47_port, 
            S_46_port, S_45_port, S_44_port, S_43_port, S_42_port, S_41_port, 
            S_40_port, S_39_port, S_38_port, S_37_port, S_36_port, S_35_port, 
            S_34_port, S_33_port, S_32_port, S_31_port, S_30_port, S_29_port, 
            S_28_port, S_27_port, S_26_port, S_25_port, S_24_port, S_23_port, 
            S_22_port, S_21_port, S_20_port, S_19_port, S_18_port, S_17_port, 
            S_16_port, S_15_port, S_14_port, S_13_port, S_12_port, S_11_port, 
            S_10_port, S_9_port, S_8_port, S_7_port, S_6_port, S_5_port, 
            S_4_port, S_3_port, S_2_port, S_1_port, S_0_port ) <= Z;
   end process;
   

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity FD_GENERIC_N64 is

   port( D : in std_logic_vector (63 downto 0);  CK, RESET : in std_logic;  Q :
         out std_logic_vector (63 downto 0));

end FD_GENERIC_N64;

architecture SYN_ASYNCARCH of FD_GENERIC_N64 is
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   signal X_Logic1_port, X_Logic0_port, D_63_port, D_62_port, D_61_port, 
      D_60_port, D_59_port, D_58_port, D_57_port, D_56_port, D_55_port, 
      D_54_port, D_53_port, D_52_port, D_51_port, D_50_port, D_49_port, 
      D_48_port, D_47_port, D_46_port, D_45_port, D_44_port, D_43_port, 
      D_42_port, D_41_port, D_40_port, D_39_port, D_38_port, D_37_port, 
      D_36_port, D_35_port, D_34_port, D_33_port, D_32_port, D_31_port, 
      D_30_port, D_29_port, D_28_port, D_27_port, D_26_port, D_25_port, 
      D_24_port, D_23_port, D_22_port, D_21_port, D_20_port, D_19_port, 
      D_18_port, D_17_port, D_16_port, D_15_port, D_14_port, D_13_port, 
      D_12_port, D_11_port, D_10_port, D_9_port, D_8_port, D_7_port, D_6_port, 
      D_5_port, D_4_port, D_3_port, D_2_port, D_1_port, D_0_port, CK_port, 
      RESET_port, Q_63_port, Q_62_port, Q_61_port, Q_60_port, Q_59_port, 
      Q_58_port, Q_57_port, Q_56_port, Q_55_port, Q_54_port, Q_53_port, 
      Q_52_port, Q_51_port, Q_50_port, Q_49_port, Q_48_port, Q_47_port, 
      Q_46_port, Q_45_port, Q_44_port, Q_43_port, Q_42_port, Q_41_port, 
      Q_40_port, Q_39_port, Q_38_port, Q_37_port, Q_36_port, Q_35_port, 
      Q_34_port, Q_33_port, Q_32_port, Q_31_port, Q_30_port, Q_29_port, 
      Q_28_port, Q_27_port, Q_26_port, Q_25_port, Q_24_port, Q_23_port, 
      Q_22_port, Q_21_port, Q_20_port, Q_19_port, Q_18_port, Q_17_port, 
      Q_16_port, Q_15_port, Q_14_port, Q_13_port, Q_12_port, Q_11_port, 
      Q_10_port, Q_9_port, Q_8_port, Q_7_port, Q_6_port, Q_5_port, Q_4_port, 
      Q_3_port, Q_2_port, Q_1_port, Q_0_port, n_1000, n_1001, n_1002, n_1003, 
      n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, 
      n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, 
      n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, 
      n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, n_1039, 
      n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, 
      n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, n_1057, 
      n_1058, n_1059, n_1060, n_1061, n_1062, n_1063 : std_logic;

begin
   ( D_63_port, D_62_port, D_61_port, D_60_port, D_59_port, D_58_port, 
      D_57_port, D_56_port, D_55_port, D_54_port, D_53_port, D_52_port, 
      D_51_port, D_50_port, D_49_port, D_48_port, D_47_port, D_46_port, 
      D_45_port, D_44_port, D_43_port, D_42_port, D_41_port, D_40_port, 
      D_39_port, D_38_port, D_37_port, D_36_port, D_35_port, D_34_port, 
      D_33_port, D_32_port, D_31_port, D_30_port, D_29_port, D_28_port, 
      D_27_port, D_26_port, D_25_port, D_24_port, D_23_port, D_22_port, 
      D_21_port, D_20_port, D_19_port, D_18_port, D_17_port, D_16_port, 
      D_15_port, D_14_port, D_13_port, D_12_port, D_11_port, D_10_port, 
      D_9_port, D_8_port, D_7_port, D_6_port, D_5_port, D_4_port, D_3_port, 
      D_2_port, D_1_port, D_0_port ) <= D;
   CK_port <= CK;
   RESET_port <= RESET;
   Q <= ( Q_63_port, Q_62_port, Q_61_port, Q_60_port, Q_59_port, Q_58_port, 
      Q_57_port, Q_56_port, Q_55_port, Q_54_port, Q_53_port, Q_52_port, 
      Q_51_port, Q_50_port, Q_49_port, Q_48_port, Q_47_port, Q_46_port, 
      Q_45_port, Q_44_port, Q_43_port, Q_42_port, Q_41_port, Q_40_port, 
      Q_39_port, Q_38_port, Q_37_port, Q_36_port, Q_35_port, Q_34_port, 
      Q_33_port, Q_32_port, Q_31_port, Q_30_port, Q_29_port, Q_28_port, 
      Q_27_port, Q_26_port, Q_25_port, Q_24_port, Q_23_port, Q_22_port, 
      Q_21_port, Q_20_port, Q_19_port, Q_18_port, Q_17_port, Q_16_port, 
      Q_15_port, Q_14_port, Q_13_port, Q_12_port, Q_11_port, Q_10_port, 
      Q_9_port, Q_8_port, Q_7_port, Q_6_port, Q_5_port, Q_4_port, Q_3_port, 
      Q_2_port, Q_1_port, Q_0_port );
   
   Q_reg_63_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_63_port, clocked_on => CK_port, Q => Q_63_port, QN => n_1000);
   Q_reg_62_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_62_port, clocked_on => CK_port, Q => Q_62_port, QN => n_1001);
   Q_reg_61_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_61_port, clocked_on => CK_port, Q => Q_61_port, QN => n_1002);
   Q_reg_60_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_60_port, clocked_on => CK_port, Q => Q_60_port, QN => n_1003);
   Q_reg_59_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_59_port, clocked_on => CK_port, Q => Q_59_port, QN => n_1004);
   Q_reg_58_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_58_port, clocked_on => CK_port, Q => Q_58_port, QN => n_1005);
   Q_reg_57_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_57_port, clocked_on => CK_port, Q => Q_57_port, QN => n_1006);
   Q_reg_56_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_56_port, clocked_on => CK_port, Q => Q_56_port, QN => n_1007);
   Q_reg_55_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_55_port, clocked_on => CK_port, Q => Q_55_port, QN => n_1008);
   Q_reg_54_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_54_port, clocked_on => CK_port, Q => Q_54_port, QN => n_1009);
   Q_reg_53_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_53_port, clocked_on => CK_port, Q => Q_53_port, QN => n_1010);
   Q_reg_52_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_52_port, clocked_on => CK_port, Q => Q_52_port, QN => n_1011);
   Q_reg_51_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_51_port, clocked_on => CK_port, Q => Q_51_port, QN => n_1012);
   Q_reg_50_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_50_port, clocked_on => CK_port, Q => Q_50_port, QN => n_1013);
   Q_reg_49_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_49_port, clocked_on => CK_port, Q => Q_49_port, QN => n_1014);
   Q_reg_48_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_48_port, clocked_on => CK_port, Q => Q_48_port, QN => n_1015);
   Q_reg_47_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_47_port, clocked_on => CK_port, Q => Q_47_port, QN => n_1016);
   Q_reg_46_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_46_port, clocked_on => CK_port, Q => Q_46_port, QN => n_1017);
   Q_reg_45_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_45_port, clocked_on => CK_port, Q => Q_45_port, QN => n_1018);
   Q_reg_44_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_44_port, clocked_on => CK_port, Q => Q_44_port, QN => n_1019);
   Q_reg_43_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_43_port, clocked_on => CK_port, Q => Q_43_port, QN => n_1020);
   Q_reg_42_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_42_port, clocked_on => CK_port, Q => Q_42_port, QN => n_1021);
   Q_reg_41_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_41_port, clocked_on => CK_port, Q => Q_41_port, QN => n_1022);
   Q_reg_40_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_40_port, clocked_on => CK_port, Q => Q_40_port, QN => n_1023);
   Q_reg_39_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_39_port, clocked_on => CK_port, Q => Q_39_port, QN => n_1024);
   Q_reg_38_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_38_port, clocked_on => CK_port, Q => Q_38_port, QN => n_1025);
   Q_reg_37_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_37_port, clocked_on => CK_port, Q => Q_37_port, QN => n_1026);
   Q_reg_36_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_36_port, clocked_on => CK_port, Q => Q_36_port, QN => n_1027);
   Q_reg_35_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_35_port, clocked_on => CK_port, Q => Q_35_port, QN => n_1028);
   Q_reg_34_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_34_port, clocked_on => CK_port, Q => Q_34_port, QN => n_1029);
   Q_reg_33_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_33_port, clocked_on => CK_port, Q => Q_33_port, QN => n_1030);
   Q_reg_32_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_32_port, clocked_on => CK_port, Q => Q_32_port, QN => n_1031);
   Q_reg_31_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_31_port, clocked_on => CK_port, Q => Q_31_port, QN => n_1032);
   Q_reg_30_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_30_port, clocked_on => CK_port, Q => Q_30_port, QN => n_1033);
   Q_reg_29_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_29_port, clocked_on => CK_port, Q => Q_29_port, QN => n_1034);
   Q_reg_28_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_28_port, clocked_on => CK_port, Q => Q_28_port, QN => n_1035);
   Q_reg_27_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_27_port, clocked_on => CK_port, Q => Q_27_port, QN => n_1036);
   Q_reg_26_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_26_port, clocked_on => CK_port, Q => Q_26_port, QN => n_1037);
   Q_reg_25_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_25_port, clocked_on => CK_port, Q => Q_25_port, QN => n_1038);
   Q_reg_24_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_24_port, clocked_on => CK_port, Q => Q_24_port, QN => n_1039);
   Q_reg_23_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_23_port, clocked_on => CK_port, Q => Q_23_port, QN => n_1040);
   Q_reg_22_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_22_port, clocked_on => CK_port, Q => Q_22_port, QN => n_1041);
   Q_reg_21_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_21_port, clocked_on => CK_port, Q => Q_21_port, QN => n_1042);
   Q_reg_20_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_20_port, clocked_on => CK_port, Q => Q_20_port, QN => n_1043);
   Q_reg_19_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_19_port, clocked_on => CK_port, Q => Q_19_port, QN => n_1044);
   Q_reg_18_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_18_port, clocked_on => CK_port, Q => Q_18_port, QN => n_1045);
   Q_reg_17_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_17_port, clocked_on => CK_port, Q => Q_17_port, QN => n_1046);
   Q_reg_16_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_16_port, clocked_on => CK_port, Q => Q_16_port, QN => n_1047);
   Q_reg_15_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_15_port, clocked_on => CK_port, Q => Q_15_port, QN => n_1048);
   Q_reg_14_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_14_port, clocked_on => CK_port, Q => Q_14_port, QN => n_1049);
   Q_reg_13_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_13_port, clocked_on => CK_port, Q => Q_13_port, QN => n_1050);
   Q_reg_12_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_12_port, clocked_on => CK_port, Q => Q_12_port, QN => n_1051);
   Q_reg_11_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_11_port, clocked_on => CK_port, Q => Q_11_port, QN => n_1052);
   Q_reg_10_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_10_port, clocked_on => CK_port, Q => Q_10_port, QN => n_1053);
   Q_reg_9_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_9_port, clocked_on => CK_port, Q => Q_9_port, QN => n_1054);
   Q_reg_8_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_8_port, clocked_on => CK_port, Q => Q_8_port, QN => n_1055);
   Q_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_7_port, clocked_on => CK_port, Q => Q_7_port, QN => n_1056);
   Q_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_6_port, clocked_on => CK_port, Q => Q_6_port, QN => n_1057);
   Q_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_5_port, clocked_on => CK_port, Q => Q_5_port, QN => n_1058);
   Q_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_4_port, clocked_on => CK_port, Q => Q_4_port, QN => n_1059);
   Q_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_3_port, clocked_on => CK_port, Q => Q_3_port, QN => n_1060);
   Q_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_2_port, clocked_on => CK_port, Q => Q_2_port, QN => n_1061);
   Q_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_1_port, clocked_on => CK_port, Q => Q_1_port, QN => n_1062);
   Q_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_0_port, clocked_on => CK_port, Q => Q_0_port, QN => n_1063);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_ASYNCARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity MUX21_GENERIC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (63 downto 0));

end MUX21_GENERIC_N64;

architecture SYN_struct of MUX21_GENERIC_N64 is

   component OR21_GENERIC_N64
      port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector
            (63 downto 0));
   end component;
   
   component AND21_GENERIC_N64
      port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector
            (63 downto 0));
   end component;
   
   component NOT_GENERIC_N64
      port( A : in std_logic_vector (63 downto 0);  Y : out std_logic_vector 
            (63 downto 0));
   end component;
   
   signal NotAnd1_s_63_port, NotAnd1_s_62_port, NotAnd1_s_61_port, 
      NotAnd1_s_60_port, NotAnd1_s_59_port, NotAnd1_s_58_port, 
      NotAnd1_s_57_port, NotAnd1_s_56_port, NotAnd1_s_55_port, 
      NotAnd1_s_54_port, NotAnd1_s_53_port, NotAnd1_s_52_port, 
      NotAnd1_s_51_port, NotAnd1_s_50_port, NotAnd1_s_49_port, 
      NotAnd1_s_48_port, NotAnd1_s_47_port, NotAnd1_s_46_port, 
      NotAnd1_s_45_port, NotAnd1_s_44_port, NotAnd1_s_43_port, 
      NotAnd1_s_42_port, NotAnd1_s_41_port, NotAnd1_s_40_port, 
      NotAnd1_s_39_port, NotAnd1_s_38_port, NotAnd1_s_37_port, 
      NotAnd1_s_36_port, NotAnd1_s_35_port, NotAnd1_s_34_port, 
      NotAnd1_s_33_port, NotAnd1_s_32_port, NotAnd1_s_31_port, 
      NotAnd1_s_30_port, NotAnd1_s_29_port, NotAnd1_s_28_port, 
      NotAnd1_s_27_port, NotAnd1_s_26_port, NotAnd1_s_25_port, 
      NotAnd1_s_24_port, NotAnd1_s_23_port, NotAnd1_s_22_port, 
      NotAnd1_s_21_port, NotAnd1_s_20_port, NotAnd1_s_19_port, 
      NotAnd1_s_18_port, NotAnd1_s_17_port, NotAnd1_s_16_port, 
      NotAnd1_s_15_port, NotAnd1_s_14_port, NotAnd1_s_13_port, 
      NotAnd1_s_12_port, NotAnd1_s_11_port, NotAnd1_s_10_port, NotAnd1_s_9_port
      , NotAnd1_s_8_port, NotAnd1_s_7_port, NotAnd1_s_6_port, NotAnd1_s_5_port,
      NotAnd1_s_4_port, NotAnd1_s_3_port, NotAnd1_s_2_port, NotAnd1_s_1_port, 
      NotAnd1_s_0_port, AndOr1_s_63_port, AndOr1_s_62_port, AndOr1_s_61_port, 
      AndOr1_s_60_port, AndOr1_s_59_port, AndOr1_s_58_port, AndOr1_s_57_port, 
      AndOr1_s_56_port, AndOr1_s_55_port, AndOr1_s_54_port, AndOr1_s_53_port, 
      AndOr1_s_52_port, AndOr1_s_51_port, AndOr1_s_50_port, AndOr1_s_49_port, 
      AndOr1_s_48_port, AndOr1_s_47_port, AndOr1_s_46_port, AndOr1_s_45_port, 
      AndOr1_s_44_port, AndOr1_s_43_port, AndOr1_s_42_port, AndOr1_s_41_port, 
      AndOr1_s_40_port, AndOr1_s_39_port, AndOr1_s_38_port, AndOr1_s_37_port, 
      AndOr1_s_36_port, AndOr1_s_35_port, AndOr1_s_34_port, AndOr1_s_33_port, 
      AndOr1_s_32_port, AndOr1_s_31_port, AndOr1_s_30_port, AndOr1_s_29_port, 
      AndOr1_s_28_port, AndOr1_s_27_port, AndOr1_s_26_port, AndOr1_s_25_port, 
      AndOr1_s_24_port, AndOr1_s_23_port, AndOr1_s_22_port, AndOr1_s_21_port, 
      AndOr1_s_20_port, AndOr1_s_19_port, AndOr1_s_18_port, AndOr1_s_17_port, 
      AndOr1_s_16_port, AndOr1_s_15_port, AndOr1_s_14_port, AndOr1_s_13_port, 
      AndOr1_s_12_port, AndOr1_s_11_port, AndOr1_s_10_port, AndOr1_s_9_port, 
      AndOr1_s_8_port, AndOr1_s_7_port, AndOr1_s_6_port, AndOr1_s_5_port, 
      AndOr1_s_4_port, AndOr1_s_3_port, AndOr1_s_2_port, AndOr1_s_1_port, 
      AndOr1_s_0_port, AndOr2_s_63_port, AndOr2_s_62_port, AndOr2_s_61_port, 
      AndOr2_s_60_port, AndOr2_s_59_port, AndOr2_s_58_port, AndOr2_s_57_port, 
      AndOr2_s_56_port, AndOr2_s_55_port, AndOr2_s_54_port, AndOr2_s_53_port, 
      AndOr2_s_52_port, AndOr2_s_51_port, AndOr2_s_50_port, AndOr2_s_49_port, 
      AndOr2_s_48_port, AndOr2_s_47_port, AndOr2_s_46_port, AndOr2_s_45_port, 
      AndOr2_s_44_port, AndOr2_s_43_port, AndOr2_s_42_port, AndOr2_s_41_port, 
      AndOr2_s_40_port, AndOr2_s_39_port, AndOr2_s_38_port, AndOr2_s_37_port, 
      AndOr2_s_36_port, AndOr2_s_35_port, AndOr2_s_34_port, AndOr2_s_33_port, 
      AndOr2_s_32_port, AndOr2_s_31_port, AndOr2_s_30_port, AndOr2_s_29_port, 
      AndOr2_s_28_port, AndOr2_s_27_port, AndOr2_s_26_port, AndOr2_s_25_port, 
      AndOr2_s_24_port, AndOr2_s_23_port, AndOr2_s_22_port, AndOr2_s_21_port, 
      AndOr2_s_20_port, AndOr2_s_19_port, AndOr2_s_18_port, AndOr2_s_17_port, 
      AndOr2_s_16_port, AndOr2_s_15_port, AndOr2_s_14_port, AndOr2_s_13_port, 
      AndOr2_s_12_port, AndOr2_s_11_port, AndOr2_s_10_port, AndOr2_s_9_port, 
      AndOr2_s_8_port, AndOr2_s_7_port, AndOr2_s_6_port, AndOr2_s_5_port, 
      AndOr2_s_4_port, AndOr2_s_3_port, AndOr2_s_2_port, AndOr2_s_1_port, 
      AndOr2_s_0_port : std_logic;

begin
   
   And1 : AND21_GENERIC_N64 port map( A(63) => A(63), A(62) => A(62), A(61) => 
                           A(61), A(60) => A(60), A(59) => A(59), A(58) => 
                           A(58), A(57) => A(57), A(56) => A(56), A(55) => 
                           A(55), A(54) => A(54), A(53) => A(53), A(52) => 
                           A(52), A(51) => A(51), A(50) => A(50), A(49) => 
                           A(49), A(48) => A(48), A(47) => A(47), A(46) => 
                           A(46), A(45) => A(45), A(44) => A(44), A(43) => 
                           A(43), A(42) => A(42), A(41) => A(41), A(40) => 
                           A(40), A(39) => A(39), A(38) => A(38), A(37) => 
                           A(37), A(36) => A(36), A(35) => A(35), A(34) => 
                           A(34), A(33) => A(33), A(32) => A(32), A(31) => 
                           A(31), A(30) => A(30), A(29) => A(29), A(28) => 
                           A(28), A(27) => A(27), A(26) => A(26), A(25) => 
                           A(25), A(24) => A(24), A(23) => A(23), A(22) => 
                           A(22), A(21) => A(21), A(20) => A(20), A(19) => 
                           A(19), A(18) => A(18), A(17) => A(17), A(16) => 
                           A(16), A(15) => A(15), A(14) => A(14), A(13) => 
                           A(13), A(12) => A(12), A(11) => A(11), A(10) => 
                           A(10), A(9) => A(9), A(8) => A(8), A(7) => A(7), 
                           A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3) => 
                           A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(63) => NotAnd1_s_63_port, B(62) => 
                           NotAnd1_s_62_port, B(61) => NotAnd1_s_61_port, B(60)
                           => NotAnd1_s_60_port, B(59) => NotAnd1_s_59_port, 
                           B(58) => NotAnd1_s_58_port, B(57) => 
                           NotAnd1_s_57_port, B(56) => NotAnd1_s_56_port, B(55)
                           => NotAnd1_s_55_port, B(54) => NotAnd1_s_54_port, 
                           B(53) => NotAnd1_s_53_port, B(52) => 
                           NotAnd1_s_52_port, B(51) => NotAnd1_s_51_port, B(50)
                           => NotAnd1_s_50_port, B(49) => NotAnd1_s_49_port, 
                           B(48) => NotAnd1_s_48_port, B(47) => 
                           NotAnd1_s_47_port, B(46) => NotAnd1_s_46_port, B(45)
                           => NotAnd1_s_45_port, B(44) => NotAnd1_s_44_port, 
                           B(43) => NotAnd1_s_43_port, B(42) => 
                           NotAnd1_s_42_port, B(41) => NotAnd1_s_41_port, B(40)
                           => NotAnd1_s_40_port, B(39) => NotAnd1_s_39_port, 
                           B(38) => NotAnd1_s_38_port, B(37) => 
                           NotAnd1_s_37_port, B(36) => NotAnd1_s_36_port, B(35)
                           => NotAnd1_s_35_port, B(34) => NotAnd1_s_34_port, 
                           B(33) => NotAnd1_s_33_port, B(32) => 
                           NotAnd1_s_32_port, B(31) => NotAnd1_s_31_port, B(30)
                           => NotAnd1_s_30_port, B(29) => NotAnd1_s_29_port, 
                           B(28) => NotAnd1_s_28_port, B(27) => 
                           NotAnd1_s_27_port, B(26) => NotAnd1_s_26_port, B(25)
                           => NotAnd1_s_25_port, B(24) => NotAnd1_s_24_port, 
                           B(23) => NotAnd1_s_23_port, B(22) => 
                           NotAnd1_s_22_port, B(21) => NotAnd1_s_21_port, B(20)
                           => NotAnd1_s_20_port, B(19) => NotAnd1_s_19_port, 
                           B(18) => NotAnd1_s_18_port, B(17) => 
                           NotAnd1_s_17_port, B(16) => NotAnd1_s_16_port, B(15)
                           => NotAnd1_s_15_port, B(14) => NotAnd1_s_14_port, 
                           B(13) => NotAnd1_s_13_port, B(12) => 
                           NotAnd1_s_12_port, B(11) => NotAnd1_s_11_port, B(10)
                           => NotAnd1_s_10_port, B(9) => NotAnd1_s_9_port, B(8)
                           => NotAnd1_s_8_port, B(7) => NotAnd1_s_7_port, B(6) 
                           => NotAnd1_s_6_port, B(5) => NotAnd1_s_5_port, B(4) 
                           => NotAnd1_s_4_port, B(3) => NotAnd1_s_3_port, B(2) 
                           => NotAnd1_s_2_port, B(1) => NotAnd1_s_1_port, B(0) 
                           => NotAnd1_s_0_port, Y(63) => AndOr1_s_63_port, 
                           Y(62) => AndOr1_s_62_port, Y(61) => AndOr1_s_61_port
                           , Y(60) => AndOr1_s_60_port, Y(59) => 
                           AndOr1_s_59_port, Y(58) => AndOr1_s_58_port, Y(57) 
                           => AndOr1_s_57_port, Y(56) => AndOr1_s_56_port, 
                           Y(55) => AndOr1_s_55_port, Y(54) => AndOr1_s_54_port
                           , Y(53) => AndOr1_s_53_port, Y(52) => 
                           AndOr1_s_52_port, Y(51) => AndOr1_s_51_port, Y(50) 
                           => AndOr1_s_50_port, Y(49) => AndOr1_s_49_port, 
                           Y(48) => AndOr1_s_48_port, Y(47) => AndOr1_s_47_port
                           , Y(46) => AndOr1_s_46_port, Y(45) => 
                           AndOr1_s_45_port, Y(44) => AndOr1_s_44_port, Y(43) 
                           => AndOr1_s_43_port, Y(42) => AndOr1_s_42_port, 
                           Y(41) => AndOr1_s_41_port, Y(40) => AndOr1_s_40_port
                           , Y(39) => AndOr1_s_39_port, Y(38) => 
                           AndOr1_s_38_port, Y(37) => AndOr1_s_37_port, Y(36) 
                           => AndOr1_s_36_port, Y(35) => AndOr1_s_35_port, 
                           Y(34) => AndOr1_s_34_port, Y(33) => AndOr1_s_33_port
                           , Y(32) => AndOr1_s_32_port, Y(31) => 
                           AndOr1_s_31_port, Y(30) => AndOr1_s_30_port, Y(29) 
                           => AndOr1_s_29_port, Y(28) => AndOr1_s_28_port, 
                           Y(27) => AndOr1_s_27_port, Y(26) => AndOr1_s_26_port
                           , Y(25) => AndOr1_s_25_port, Y(24) => 
                           AndOr1_s_24_port, Y(23) => AndOr1_s_23_port, Y(22) 
                           => AndOr1_s_22_port, Y(21) => AndOr1_s_21_port, 
                           Y(20) => AndOr1_s_20_port, Y(19) => AndOr1_s_19_port
                           , Y(18) => AndOr1_s_18_port, Y(17) => 
                           AndOr1_s_17_port, Y(16) => AndOr1_s_16_port, Y(15) 
                           => AndOr1_s_15_port, Y(14) => AndOr1_s_14_port, 
                           Y(13) => AndOr1_s_13_port, Y(12) => AndOr1_s_12_port
                           , Y(11) => AndOr1_s_11_port, Y(10) => 
                           AndOr1_s_10_port, Y(9) => AndOr1_s_9_port, Y(8) => 
                           AndOr1_s_8_port, Y(7) => AndOr1_s_7_port, Y(6) => 
                           AndOr1_s_6_port, Y(5) => AndOr1_s_5_port, Y(4) => 
                           AndOr1_s_4_port, Y(3) => AndOr1_s_3_port, Y(2) => 
                           AndOr1_s_2_port, Y(1) => AndOr1_s_1_port, Y(0) => 
                           AndOr1_s_0_port);
   Not1 : NOT_GENERIC_N64 port map( A(63) => SEL, A(62) => SEL, A(61) => SEL, 
                           A(60) => SEL, A(59) => SEL, A(58) => SEL, A(57) => 
                           SEL, A(56) => SEL, A(55) => SEL, A(54) => SEL, A(53)
                           => SEL, A(52) => SEL, A(51) => SEL, A(50) => SEL, 
                           A(49) => SEL, A(48) => SEL, A(47) => SEL, A(46) => 
                           SEL, A(45) => SEL, A(44) => SEL, A(43) => SEL, A(42)
                           => SEL, A(41) => SEL, A(40) => SEL, A(39) => SEL, 
                           A(38) => SEL, A(37) => SEL, A(36) => SEL, A(35) => 
                           SEL, A(34) => SEL, A(33) => SEL, A(32) => SEL, A(31)
                           => SEL, A(30) => SEL, A(29) => SEL, A(28) => SEL, 
                           A(27) => SEL, A(26) => SEL, A(25) => SEL, A(24) => 
                           SEL, A(23) => SEL, A(22) => SEL, A(21) => SEL, A(20)
                           => SEL, A(19) => SEL, A(18) => SEL, A(17) => SEL, 
                           A(16) => SEL, A(15) => SEL, A(14) => SEL, A(13) => 
                           SEL, A(12) => SEL, A(11) => SEL, A(10) => SEL, A(9) 
                           => SEL, A(8) => SEL, A(7) => SEL, A(6) => SEL, A(5) 
                           => SEL, A(4) => SEL, A(3) => SEL, A(2) => SEL, A(1) 
                           => SEL, A(0) => SEL, Y(63) => NotAnd1_s_63_port, 
                           Y(62) => NotAnd1_s_62_port, Y(61) => 
                           NotAnd1_s_61_port, Y(60) => NotAnd1_s_60_port, Y(59)
                           => NotAnd1_s_59_port, Y(58) => NotAnd1_s_58_port, 
                           Y(57) => NotAnd1_s_57_port, Y(56) => 
                           NotAnd1_s_56_port, Y(55) => NotAnd1_s_55_port, Y(54)
                           => NotAnd1_s_54_port, Y(53) => NotAnd1_s_53_port, 
                           Y(52) => NotAnd1_s_52_port, Y(51) => 
                           NotAnd1_s_51_port, Y(50) => NotAnd1_s_50_port, Y(49)
                           => NotAnd1_s_49_port, Y(48) => NotAnd1_s_48_port, 
                           Y(47) => NotAnd1_s_47_port, Y(46) => 
                           NotAnd1_s_46_port, Y(45) => NotAnd1_s_45_port, Y(44)
                           => NotAnd1_s_44_port, Y(43) => NotAnd1_s_43_port, 
                           Y(42) => NotAnd1_s_42_port, Y(41) => 
                           NotAnd1_s_41_port, Y(40) => NotAnd1_s_40_port, Y(39)
                           => NotAnd1_s_39_port, Y(38) => NotAnd1_s_38_port, 
                           Y(37) => NotAnd1_s_37_port, Y(36) => 
                           NotAnd1_s_36_port, Y(35) => NotAnd1_s_35_port, Y(34)
                           => NotAnd1_s_34_port, Y(33) => NotAnd1_s_33_port, 
                           Y(32) => NotAnd1_s_32_port, Y(31) => 
                           NotAnd1_s_31_port, Y(30) => NotAnd1_s_30_port, Y(29)
                           => NotAnd1_s_29_port, Y(28) => NotAnd1_s_28_port, 
                           Y(27) => NotAnd1_s_27_port, Y(26) => 
                           NotAnd1_s_26_port, Y(25) => NotAnd1_s_25_port, Y(24)
                           => NotAnd1_s_24_port, Y(23) => NotAnd1_s_23_port, 
                           Y(22) => NotAnd1_s_22_port, Y(21) => 
                           NotAnd1_s_21_port, Y(20) => NotAnd1_s_20_port, Y(19)
                           => NotAnd1_s_19_port, Y(18) => NotAnd1_s_18_port, 
                           Y(17) => NotAnd1_s_17_port, Y(16) => 
                           NotAnd1_s_16_port, Y(15) => NotAnd1_s_15_port, Y(14)
                           => NotAnd1_s_14_port, Y(13) => NotAnd1_s_13_port, 
                           Y(12) => NotAnd1_s_12_port, Y(11) => 
                           NotAnd1_s_11_port, Y(10) => NotAnd1_s_10_port, Y(9) 
                           => NotAnd1_s_9_port, Y(8) => NotAnd1_s_8_port, Y(7) 
                           => NotAnd1_s_7_port, Y(6) => NotAnd1_s_6_port, Y(5) 
                           => NotAnd1_s_5_port, Y(4) => NotAnd1_s_4_port, Y(3) 
                           => NotAnd1_s_3_port, Y(2) => NotAnd1_s_2_port, Y(1) 
                           => NotAnd1_s_1_port, Y(0) => NotAnd1_s_0_port);
   And2 : AND21_GENERIC_N64 port map( A(63) => B(63), A(62) => B(62), A(61) => 
                           B(61), A(60) => B(60), A(59) => B(59), A(58) => 
                           B(58), A(57) => B(57), A(56) => B(56), A(55) => 
                           B(55), A(54) => B(54), A(53) => B(53), A(52) => 
                           B(52), A(51) => B(51), A(50) => B(50), A(49) => 
                           B(49), A(48) => B(48), A(47) => B(47), A(46) => 
                           B(46), A(45) => B(45), A(44) => B(44), A(43) => 
                           B(43), A(42) => B(42), A(41) => B(41), A(40) => 
                           B(40), A(39) => B(39), A(38) => B(38), A(37) => 
                           B(37), A(36) => B(36), A(35) => B(35), A(34) => 
                           B(34), A(33) => B(33), A(32) => B(32), A(31) => 
                           B(31), A(30) => B(30), A(29) => B(29), A(28) => 
                           B(28), A(27) => B(27), A(26) => B(26), A(25) => 
                           B(25), A(24) => B(24), A(23) => B(23), A(22) => 
                           B(22), A(21) => B(21), A(20) => B(20), A(19) => 
                           B(19), A(18) => B(18), A(17) => B(17), A(16) => 
                           B(16), A(15) => B(15), A(14) => B(14), A(13) => 
                           B(13), A(12) => B(12), A(11) => B(11), A(10) => 
                           B(10), A(9) => B(9), A(8) => B(8), A(7) => B(7), 
                           A(6) => B(6), A(5) => B(5), A(4) => B(4), A(3) => 
                           B(3), A(2) => B(2), A(1) => B(1), A(0) => B(0), 
                           B(63) => SEL, B(62) => SEL, B(61) => SEL, B(60) => 
                           SEL, B(59) => SEL, B(58) => SEL, B(57) => SEL, B(56)
                           => SEL, B(55) => SEL, B(54) => SEL, B(53) => SEL, 
                           B(52) => SEL, B(51) => SEL, B(50) => SEL, B(49) => 
                           SEL, B(48) => SEL, B(47) => SEL, B(46) => SEL, B(45)
                           => SEL, B(44) => SEL, B(43) => SEL, B(42) => SEL, 
                           B(41) => SEL, B(40) => SEL, B(39) => SEL, B(38) => 
                           SEL, B(37) => SEL, B(36) => SEL, B(35) => SEL, B(34)
                           => SEL, B(33) => SEL, B(32) => SEL, B(31) => SEL, 
                           B(30) => SEL, B(29) => SEL, B(28) => SEL, B(27) => 
                           SEL, B(26) => SEL, B(25) => SEL, B(24) => SEL, B(23)
                           => SEL, B(22) => SEL, B(21) => SEL, B(20) => SEL, 
                           B(19) => SEL, B(18) => SEL, B(17) => SEL, B(16) => 
                           SEL, B(15) => SEL, B(14) => SEL, B(13) => SEL, B(12)
                           => SEL, B(11) => SEL, B(10) => SEL, B(9) => SEL, 
                           B(8) => SEL, B(7) => SEL, B(6) => SEL, B(5) => SEL, 
                           B(4) => SEL, B(3) => SEL, B(2) => SEL, B(1) => SEL, 
                           B(0) => SEL, Y(63) => AndOr2_s_63_port, Y(62) => 
                           AndOr2_s_62_port, Y(61) => AndOr2_s_61_port, Y(60) 
                           => AndOr2_s_60_port, Y(59) => AndOr2_s_59_port, 
                           Y(58) => AndOr2_s_58_port, Y(57) => AndOr2_s_57_port
                           , Y(56) => AndOr2_s_56_port, Y(55) => 
                           AndOr2_s_55_port, Y(54) => AndOr2_s_54_port, Y(53) 
                           => AndOr2_s_53_port, Y(52) => AndOr2_s_52_port, 
                           Y(51) => AndOr2_s_51_port, Y(50) => AndOr2_s_50_port
                           , Y(49) => AndOr2_s_49_port, Y(48) => 
                           AndOr2_s_48_port, Y(47) => AndOr2_s_47_port, Y(46) 
                           => AndOr2_s_46_port, Y(45) => AndOr2_s_45_port, 
                           Y(44) => AndOr2_s_44_port, Y(43) => AndOr2_s_43_port
                           , Y(42) => AndOr2_s_42_port, Y(41) => 
                           AndOr2_s_41_port, Y(40) => AndOr2_s_40_port, Y(39) 
                           => AndOr2_s_39_port, Y(38) => AndOr2_s_38_port, 
                           Y(37) => AndOr2_s_37_port, Y(36) => AndOr2_s_36_port
                           , Y(35) => AndOr2_s_35_port, Y(34) => 
                           AndOr2_s_34_port, Y(33) => AndOr2_s_33_port, Y(32) 
                           => AndOr2_s_32_port, Y(31) => AndOr2_s_31_port, 
                           Y(30) => AndOr2_s_30_port, Y(29) => AndOr2_s_29_port
                           , Y(28) => AndOr2_s_28_port, Y(27) => 
                           AndOr2_s_27_port, Y(26) => AndOr2_s_26_port, Y(25) 
                           => AndOr2_s_25_port, Y(24) => AndOr2_s_24_port, 
                           Y(23) => AndOr2_s_23_port, Y(22) => AndOr2_s_22_port
                           , Y(21) => AndOr2_s_21_port, Y(20) => 
                           AndOr2_s_20_port, Y(19) => AndOr2_s_19_port, Y(18) 
                           => AndOr2_s_18_port, Y(17) => AndOr2_s_17_port, 
                           Y(16) => AndOr2_s_16_port, Y(15) => AndOr2_s_15_port
                           , Y(14) => AndOr2_s_14_port, Y(13) => 
                           AndOr2_s_13_port, Y(12) => AndOr2_s_12_port, Y(11) 
                           => AndOr2_s_11_port, Y(10) => AndOr2_s_10_port, Y(9)
                           => AndOr2_s_9_port, Y(8) => AndOr2_s_8_port, Y(7) =>
                           AndOr2_s_7_port, Y(6) => AndOr2_s_6_port, Y(5) => 
                           AndOr2_s_5_port, Y(4) => AndOr2_s_4_port, Y(3) => 
                           AndOr2_s_3_port, Y(2) => AndOr2_s_2_port, Y(1) => 
                           AndOr2_s_1_port, Y(0) => AndOr2_s_0_port);
   Or2 : OR21_GENERIC_N64 port map( A(63) => AndOr1_s_63_port, A(62) => 
                           AndOr1_s_62_port, A(61) => AndOr1_s_61_port, A(60) 
                           => AndOr1_s_60_port, A(59) => AndOr1_s_59_port, 
                           A(58) => AndOr1_s_58_port, A(57) => AndOr1_s_57_port
                           , A(56) => AndOr1_s_56_port, A(55) => 
                           AndOr1_s_55_port, A(54) => AndOr1_s_54_port, A(53) 
                           => AndOr1_s_53_port, A(52) => AndOr1_s_52_port, 
                           A(51) => AndOr1_s_51_port, A(50) => AndOr1_s_50_port
                           , A(49) => AndOr1_s_49_port, A(48) => 
                           AndOr1_s_48_port, A(47) => AndOr1_s_47_port, A(46) 
                           => AndOr1_s_46_port, A(45) => AndOr1_s_45_port, 
                           A(44) => AndOr1_s_44_port, A(43) => AndOr1_s_43_port
                           , A(42) => AndOr1_s_42_port, A(41) => 
                           AndOr1_s_41_port, A(40) => AndOr1_s_40_port, A(39) 
                           => AndOr1_s_39_port, A(38) => AndOr1_s_38_port, 
                           A(37) => AndOr1_s_37_port, A(36) => AndOr1_s_36_port
                           , A(35) => AndOr1_s_35_port, A(34) => 
                           AndOr1_s_34_port, A(33) => AndOr1_s_33_port, A(32) 
                           => AndOr1_s_32_port, A(31) => AndOr1_s_31_port, 
                           A(30) => AndOr1_s_30_port, A(29) => AndOr1_s_29_port
                           , A(28) => AndOr1_s_28_port, A(27) => 
                           AndOr1_s_27_port, A(26) => AndOr1_s_26_port, A(25) 
                           => AndOr1_s_25_port, A(24) => AndOr1_s_24_port, 
                           A(23) => AndOr1_s_23_port, A(22) => AndOr1_s_22_port
                           , A(21) => AndOr1_s_21_port, A(20) => 
                           AndOr1_s_20_port, A(19) => AndOr1_s_19_port, A(18) 
                           => AndOr1_s_18_port, A(17) => AndOr1_s_17_port, 
                           A(16) => AndOr1_s_16_port, A(15) => AndOr1_s_15_port
                           , A(14) => AndOr1_s_14_port, A(13) => 
                           AndOr1_s_13_port, A(12) => AndOr1_s_12_port, A(11) 
                           => AndOr1_s_11_port, A(10) => AndOr1_s_10_port, A(9)
                           => AndOr1_s_9_port, A(8) => AndOr1_s_8_port, A(7) =>
                           AndOr1_s_7_port, A(6) => AndOr1_s_6_port, A(5) => 
                           AndOr1_s_5_port, A(4) => AndOr1_s_4_port, A(3) => 
                           AndOr1_s_3_port, A(2) => AndOr1_s_2_port, A(1) => 
                           AndOr1_s_1_port, A(0) => AndOr1_s_0_port, B(63) => 
                           AndOr2_s_63_port, B(62) => AndOr2_s_62_port, B(61) 
                           => AndOr2_s_61_port, B(60) => AndOr2_s_60_port, 
                           B(59) => AndOr2_s_59_port, B(58) => AndOr2_s_58_port
                           , B(57) => AndOr2_s_57_port, B(56) => 
                           AndOr2_s_56_port, B(55) => AndOr2_s_55_port, B(54) 
                           => AndOr2_s_54_port, B(53) => AndOr2_s_53_port, 
                           B(52) => AndOr2_s_52_port, B(51) => AndOr2_s_51_port
                           , B(50) => AndOr2_s_50_port, B(49) => 
                           AndOr2_s_49_port, B(48) => AndOr2_s_48_port, B(47) 
                           => AndOr2_s_47_port, B(46) => AndOr2_s_46_port, 
                           B(45) => AndOr2_s_45_port, B(44) => AndOr2_s_44_port
                           , B(43) => AndOr2_s_43_port, B(42) => 
                           AndOr2_s_42_port, B(41) => AndOr2_s_41_port, B(40) 
                           => AndOr2_s_40_port, B(39) => AndOr2_s_39_port, 
                           B(38) => AndOr2_s_38_port, B(37) => AndOr2_s_37_port
                           , B(36) => AndOr2_s_36_port, B(35) => 
                           AndOr2_s_35_port, B(34) => AndOr2_s_34_port, B(33) 
                           => AndOr2_s_33_port, B(32) => AndOr2_s_32_port, 
                           B(31) => AndOr2_s_31_port, B(30) => AndOr2_s_30_port
                           , B(29) => AndOr2_s_29_port, B(28) => 
                           AndOr2_s_28_port, B(27) => AndOr2_s_27_port, B(26) 
                           => AndOr2_s_26_port, B(25) => AndOr2_s_25_port, 
                           B(24) => AndOr2_s_24_port, B(23) => AndOr2_s_23_port
                           , B(22) => AndOr2_s_22_port, B(21) => 
                           AndOr2_s_21_port, B(20) => AndOr2_s_20_port, B(19) 
                           => AndOr2_s_19_port, B(18) => AndOr2_s_18_port, 
                           B(17) => AndOr2_s_17_port, B(16) => AndOr2_s_16_port
                           , B(15) => AndOr2_s_15_port, B(14) => 
                           AndOr2_s_14_port, B(13) => AndOr2_s_13_port, B(12) 
                           => AndOr2_s_12_port, B(11) => AndOr2_s_11_port, 
                           B(10) => AndOr2_s_10_port, B(9) => AndOr2_s_9_port, 
                           B(8) => AndOr2_s_8_port, B(7) => AndOr2_s_7_port, 
                           B(6) => AndOr2_s_6_port, B(5) => AndOr2_s_5_port, 
                           B(4) => AndOr2_s_4_port, B(3) => AndOr2_s_3_port, 
                           B(2) => AndOr2_s_2_port, B(1) => AndOr2_s_1_port, 
                           B(0) => AndOr2_s_0_port, Y(63) => Y(63), Y(62) => 
                           Y(62), Y(61) => Y(61), Y(60) => Y(60), Y(59) => 
                           Y(59), Y(58) => Y(58), Y(57) => Y(57), Y(56) => 
                           Y(56), Y(55) => Y(55), Y(54) => Y(54), Y(53) => 
                           Y(53), Y(52) => Y(52), Y(51) => Y(51), Y(50) => 
                           Y(50), Y(49) => Y(49), Y(48) => Y(48), Y(47) => 
                           Y(47), Y(46) => Y(46), Y(45) => Y(45), Y(44) => 
                           Y(44), Y(43) => Y(43), Y(42) => Y(42), Y(41) => 
                           Y(41), Y(40) => Y(40), Y(39) => Y(39), Y(38) => 
                           Y(38), Y(37) => Y(37), Y(36) => Y(36), Y(35) => 
                           Y(35), Y(34) => Y(34), Y(33) => Y(33), Y(32) => 
                           Y(32), Y(31) => Y(31), Y(30) => Y(30), Y(29) => 
                           Y(29), Y(28) => Y(28), Y(27) => Y(27), Y(26) => 
                           Y(26), Y(25) => Y(25), Y(24) => Y(24), Y(23) => 
                           Y(23), Y(22) => Y(22), Y(21) => Y(21), Y(20) => 
                           Y(20), Y(19) => Y(19), Y(18) => Y(18), Y(17) => 
                           Y(17), Y(16) => Y(16), Y(15) => Y(15), Y(14) => 
                           Y(14), Y(13) => Y(13), Y(12) => Y(12), Y(11) => 
                           Y(11), Y(10) => Y(10), Y(9) => Y(9), Y(8) => Y(8), 
                           Y(7) => Y(7), Y(6) => Y(6), Y(5) => Y(5), Y(4) => 
                           Y(4), Y(3) => Y(3), Y(2) => Y(2), Y(1) => Y(1), Y(0)
                           => Y(0));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity ACC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (63 downto 0));

end ACC_N64;

architecture SYN_struct of ACC_N64 is

   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_GENERIC_N64
      port( A, B : in std_logic_vector (63 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (63 downto 0);  Co : out std_logic);
   end component;
   
   component FD_GENERIC_N64
      port( D : in std_logic_vector (63 downto 0);  CK, RESET : in std_logic;  
            Q : out std_logic_vector (63 downto 0));
   end component;
   
   component MUX21_GENERIC_N64
      port( A, B : in std_logic_vector (63 downto 0);  SEL : in std_logic;  Y :
            out std_logic_vector (63 downto 0));
   end component;
   
   signal X_Logic0_port, Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port,
      Y_58_port, Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, 
      Y_52_port, Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, 
      Y_46_port, Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, 
      Y_40_port, Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, 
      Y_34_port, Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, 
      Y_28_port, Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, 
      Y_22_port, Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, 
      Y_16_port, Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, 
      Y_10_port, Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, 
      Y_3_port, Y_2_port, Y_1_port, Y_0_port, rst, MuxOutAdderIn_63_port, 
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
      MuxOutAdderIn_2_port, MuxOutAdderIn_1_port, MuxOutAdderIn_0_port, 
      out_add_63_port, out_add_62_port, out_add_61_port, out_add_60_port, 
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
      out_add_3_port, out_add_2_port, out_add_1_port, out_add_0_port, n_1064 : 
      std_logic;

begin
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
   
   MUX_GEN_1 : MUX21_GENERIC_N64 port map( A(63) => B(63), A(62) => B(62), 
                           A(61) => B(61), A(60) => B(60), A(59) => B(59), 
                           A(58) => B(58), A(57) => B(57), A(56) => B(56), 
                           A(55) => B(55), A(54) => B(54), A(53) => B(53), 
                           A(52) => B(52), A(51) => B(51), A(50) => B(50), 
                           A(49) => B(49), A(48) => B(48), A(47) => B(47), 
                           A(46) => B(46), A(45) => B(45), A(44) => B(44), 
                           A(43) => B(43), A(42) => B(42), A(41) => B(41), 
                           A(40) => B(40), A(39) => B(39), A(38) => B(38), 
                           A(37) => B(37), A(36) => B(36), A(35) => B(35), 
                           A(34) => B(34), A(33) => B(33), A(32) => B(32), 
                           A(31) => B(31), A(30) => B(30), A(29) => B(29), 
                           A(28) => B(28), A(27) => B(27), A(26) => B(26), 
                           A(25) => B(25), A(24) => B(24), A(23) => B(23), 
                           A(22) => B(22), A(21) => B(21), A(20) => B(20), 
                           A(19) => B(19), A(18) => B(18), A(17) => B(17), 
                           A(16) => B(16), A(15) => B(15), A(14) => B(14), 
                           A(13) => B(13), A(12) => B(12), A(11) => B(11), 
                           A(10) => B(10), A(9) => B(9), A(8) => B(8), A(7) => 
                           B(7), A(6) => B(6), A(5) => B(5), A(4) => B(4), A(3)
                           => B(3), A(2) => B(2), A(1) => B(1), A(0) => B(0), 
                           B(63) => Y_63_port, B(62) => Y_62_port, B(61) => 
                           Y_61_port, B(60) => Y_60_port, B(59) => Y_59_port, 
                           B(58) => Y_58_port, B(57) => Y_57_port, B(56) => 
                           Y_56_port, B(55) => Y_55_port, B(54) => Y_54_port, 
                           B(53) => Y_53_port, B(52) => Y_52_port, B(51) => 
                           Y_51_port, B(50) => Y_50_port, B(49) => Y_49_port, 
                           B(48) => Y_48_port, B(47) => Y_47_port, B(46) => 
                           Y_46_port, B(45) => Y_45_port, B(44) => Y_44_port, 
                           B(43) => Y_43_port, B(42) => Y_42_port, B(41) => 
                           Y_41_port, B(40) => Y_40_port, B(39) => Y_39_port, 
                           B(38) => Y_38_port, B(37) => Y_37_port, B(36) => 
                           Y_36_port, B(35) => Y_35_port, B(34) => Y_34_port, 
                           B(33) => Y_33_port, B(32) => Y_32_port, B(31) => 
                           Y_31_port, B(30) => Y_30_port, B(29) => Y_29_port, 
                           B(28) => Y_28_port, B(27) => Y_27_port, B(26) => 
                           Y_26_port, B(25) => Y_25_port, B(24) => Y_24_port, 
                           B(23) => Y_23_port, B(22) => Y_22_port, B(21) => 
                           Y_21_port, B(20) => Y_20_port, B(19) => Y_19_port, 
                           B(18) => Y_18_port, B(17) => Y_17_port, B(16) => 
                           Y_16_port, B(15) => Y_15_port, B(14) => Y_14_port, 
                           B(13) => Y_13_port, B(12) => Y_12_port, B(11) => 
                           Y_11_port, B(10) => Y_10_port, B(9) => Y_9_port, 
                           B(8) => Y_8_port, B(7) => Y_7_port, B(6) => Y_6_port
                           , B(5) => Y_5_port, B(4) => Y_4_port, B(3) => 
                           Y_3_port, B(2) => Y_2_port, B(1) => Y_1_port, B(0) 
                           => Y_0_port, SEL => ACCUMULATE, Y(63) => 
                           MuxOutAdderIn_63_port, Y(62) => 
                           MuxOutAdderIn_62_port, Y(61) => 
                           MuxOutAdderIn_61_port, Y(60) => 
                           MuxOutAdderIn_60_port, Y(59) => 
                           MuxOutAdderIn_59_port, Y(58) => 
                           MuxOutAdderIn_58_port, Y(57) => 
                           MuxOutAdderIn_57_port, Y(56) => 
                           MuxOutAdderIn_56_port, Y(55) => 
                           MuxOutAdderIn_55_port, Y(54) => 
                           MuxOutAdderIn_54_port, Y(53) => 
                           MuxOutAdderIn_53_port, Y(52) => 
                           MuxOutAdderIn_52_port, Y(51) => 
                           MuxOutAdderIn_51_port, Y(50) => 
                           MuxOutAdderIn_50_port, Y(49) => 
                           MuxOutAdderIn_49_port, Y(48) => 
                           MuxOutAdderIn_48_port, Y(47) => 
                           MuxOutAdderIn_47_port, Y(46) => 
                           MuxOutAdderIn_46_port, Y(45) => 
                           MuxOutAdderIn_45_port, Y(44) => 
                           MuxOutAdderIn_44_port, Y(43) => 
                           MuxOutAdderIn_43_port, Y(42) => 
                           MuxOutAdderIn_42_port, Y(41) => 
                           MuxOutAdderIn_41_port, Y(40) => 
                           MuxOutAdderIn_40_port, Y(39) => 
                           MuxOutAdderIn_39_port, Y(38) => 
                           MuxOutAdderIn_38_port, Y(37) => 
                           MuxOutAdderIn_37_port, Y(36) => 
                           MuxOutAdderIn_36_port, Y(35) => 
                           MuxOutAdderIn_35_port, Y(34) => 
                           MuxOutAdderIn_34_port, Y(33) => 
                           MuxOutAdderIn_33_port, Y(32) => 
                           MuxOutAdderIn_32_port, Y(31) => 
                           MuxOutAdderIn_31_port, Y(30) => 
                           MuxOutAdderIn_30_port, Y(29) => 
                           MuxOutAdderIn_29_port, Y(28) => 
                           MuxOutAdderIn_28_port, Y(27) => 
                           MuxOutAdderIn_27_port, Y(26) => 
                           MuxOutAdderIn_26_port, Y(25) => 
                           MuxOutAdderIn_25_port, Y(24) => 
                           MuxOutAdderIn_24_port, Y(23) => 
                           MuxOutAdderIn_23_port, Y(22) => 
                           MuxOutAdderIn_22_port, Y(21) => 
                           MuxOutAdderIn_21_port, Y(20) => 
                           MuxOutAdderIn_20_port, Y(19) => 
                           MuxOutAdderIn_19_port, Y(18) => 
                           MuxOutAdderIn_18_port, Y(17) => 
                           MuxOutAdderIn_17_port, Y(16) => 
                           MuxOutAdderIn_16_port, Y(15) => 
                           MuxOutAdderIn_15_port, Y(14) => 
                           MuxOutAdderIn_14_port, Y(13) => 
                           MuxOutAdderIn_13_port, Y(12) => 
                           MuxOutAdderIn_12_port, Y(11) => 
                           MuxOutAdderIn_11_port, Y(10) => 
                           MuxOutAdderIn_10_port, Y(9) => MuxOutAdderIn_9_port,
                           Y(8) => MuxOutAdderIn_8_port, Y(7) => 
                           MuxOutAdderIn_7_port, Y(6) => MuxOutAdderIn_6_port, 
                           Y(5) => MuxOutAdderIn_5_port, Y(4) => 
                           MuxOutAdderIn_4_port, Y(3) => MuxOutAdderIn_3_port, 
                           Y(2) => MuxOutAdderIn_2_port, Y(1) => 
                           MuxOutAdderIn_1_port, Y(0) => MuxOutAdderIn_0_port);
   FD_GEN_1 : FD_GENERIC_N64 port map( D(63) => out_add_63_port, D(62) => 
                           out_add_62_port, D(61) => out_add_61_port, D(60) => 
                           out_add_60_port, D(59) => out_add_59_port, D(58) => 
                           out_add_58_port, D(57) => out_add_57_port, D(56) => 
                           out_add_56_port, D(55) => out_add_55_port, D(54) => 
                           out_add_54_port, D(53) => out_add_53_port, D(52) => 
                           out_add_52_port, D(51) => out_add_51_port, D(50) => 
                           out_add_50_port, D(49) => out_add_49_port, D(48) => 
                           out_add_48_port, D(47) => out_add_47_port, D(46) => 
                           out_add_46_port, D(45) => out_add_45_port, D(44) => 
                           out_add_44_port, D(43) => out_add_43_port, D(42) => 
                           out_add_42_port, D(41) => out_add_41_port, D(40) => 
                           out_add_40_port, D(39) => out_add_39_port, D(38) => 
                           out_add_38_port, D(37) => out_add_37_port, D(36) => 
                           out_add_36_port, D(35) => out_add_35_port, D(34) => 
                           out_add_34_port, D(33) => out_add_33_port, D(32) => 
                           out_add_32_port, D(31) => out_add_31_port, D(30) => 
                           out_add_30_port, D(29) => out_add_29_port, D(28) => 
                           out_add_28_port, D(27) => out_add_27_port, D(26) => 
                           out_add_26_port, D(25) => out_add_25_port, D(24) => 
                           out_add_24_port, D(23) => out_add_23_port, D(22) => 
                           out_add_22_port, D(21) => out_add_21_port, D(20) => 
                           out_add_20_port, D(19) => out_add_19_port, D(18) => 
                           out_add_18_port, D(17) => out_add_17_port, D(16) => 
                           out_add_16_port, D(15) => out_add_15_port, D(14) => 
                           out_add_14_port, D(13) => out_add_13_port, D(12) => 
                           out_add_12_port, D(11) => out_add_11_port, D(10) => 
                           out_add_10_port, D(9) => out_add_9_port, D(8) => 
                           out_add_8_port, D(7) => out_add_7_port, D(6) => 
                           out_add_6_port, D(5) => out_add_5_port, D(4) => 
                           out_add_4_port, D(3) => out_add_3_port, D(2) => 
                           out_add_2_port, D(1) => out_add_1_port, D(0) => 
                           out_add_0_port, CK => CLK, RESET => rst, Q(63) => 
                           Y_63_port, Q(62) => Y_62_port, Q(61) => Y_61_port, 
                           Q(60) => Y_60_port, Q(59) => Y_59_port, Q(58) => 
                           Y_58_port, Q(57) => Y_57_port, Q(56) => Y_56_port, 
                           Q(55) => Y_55_port, Q(54) => Y_54_port, Q(53) => 
                           Y_53_port, Q(52) => Y_52_port, Q(51) => Y_51_port, 
                           Q(50) => Y_50_port, Q(49) => Y_49_port, Q(48) => 
                           Y_48_port, Q(47) => Y_47_port, Q(46) => Y_46_port, 
                           Q(45) => Y_45_port, Q(44) => Y_44_port, Q(43) => 
                           Y_43_port, Q(42) => Y_42_port, Q(41) => Y_41_port, 
                           Q(40) => Y_40_port, Q(39) => Y_39_port, Q(38) => 
                           Y_38_port, Q(37) => Y_37_port, Q(36) => Y_36_port, 
                           Q(35) => Y_35_port, Q(34) => Y_34_port, Q(33) => 
                           Y_33_port, Q(32) => Y_32_port, Q(31) => Y_31_port, 
                           Q(30) => Y_30_port, Q(29) => Y_29_port, Q(28) => 
                           Y_28_port, Q(27) => Y_27_port, Q(26) => Y_26_port, 
                           Q(25) => Y_25_port, Q(24) => Y_24_port, Q(23) => 
                           Y_23_port, Q(22) => Y_22_port, Q(21) => Y_21_port, 
                           Q(20) => Y_20_port, Q(19) => Y_19_port, Q(18) => 
                           Y_18_port, Q(17) => Y_17_port, Q(16) => Y_16_port, 
                           Q(15) => Y_15_port, Q(14) => Y_14_port, Q(13) => 
                           Y_13_port, Q(12) => Y_12_port, Q(11) => Y_11_port, 
                           Q(10) => Y_10_port, Q(9) => Y_9_port, Q(8) => 
                           Y_8_port, Q(7) => Y_7_port, Q(6) => Y_6_port, Q(5) 
                           => Y_5_port, Q(4) => Y_4_port, Q(3) => Y_3_port, 
                           Q(2) => Y_2_port, Q(1) => Y_1_port, Q(0) => Y_0_port
                           );
   RCA_GEN_1 : RCA_GENERIC_N64 port map( A(63) => A(63), A(62) => A(62), A(61) 
                           => A(61), A(60) => A(60), A(59) => A(59), A(58) => 
                           A(58), A(57) => A(57), A(56) => A(56), A(55) => 
                           A(55), A(54) => A(54), A(53) => A(53), A(52) => 
                           A(52), A(51) => A(51), A(50) => A(50), A(49) => 
                           A(49), A(48) => A(48), A(47) => A(47), A(46) => 
                           A(46), A(45) => A(45), A(44) => A(44), A(43) => 
                           A(43), A(42) => A(42), A(41) => A(41), A(40) => 
                           A(40), A(39) => A(39), A(38) => A(38), A(37) => 
                           A(37), A(36) => A(36), A(35) => A(35), A(34) => 
                           A(34), A(33) => A(33), A(32) => A(32), A(31) => 
                           A(31), A(30) => A(30), A(29) => A(29), A(28) => 
                           A(28), A(27) => A(27), A(26) => A(26), A(25) => 
                           A(25), A(24) => A(24), A(23) => A(23), A(22) => 
                           A(22), A(21) => A(21), A(20) => A(20), A(19) => 
                           A(19), A(18) => A(18), A(17) => A(17), A(16) => 
                           A(16), A(15) => A(15), A(14) => A(14), A(13) => 
                           A(13), A(12) => A(12), A(11) => A(11), A(10) => 
                           A(10), A(9) => A(9), A(8) => A(8), A(7) => A(7), 
                           A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3) => 
                           A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(63) => MuxOutAdderIn_63_port, B(62) => 
                           MuxOutAdderIn_62_port, B(61) => 
                           MuxOutAdderIn_61_port, B(60) => 
                           MuxOutAdderIn_60_port, B(59) => 
                           MuxOutAdderIn_59_port, B(58) => 
                           MuxOutAdderIn_58_port, B(57) => 
                           MuxOutAdderIn_57_port, B(56) => 
                           MuxOutAdderIn_56_port, B(55) => 
                           MuxOutAdderIn_55_port, B(54) => 
                           MuxOutAdderIn_54_port, B(53) => 
                           MuxOutAdderIn_53_port, B(52) => 
                           MuxOutAdderIn_52_port, B(51) => 
                           MuxOutAdderIn_51_port, B(50) => 
                           MuxOutAdderIn_50_port, B(49) => 
                           MuxOutAdderIn_49_port, B(48) => 
                           MuxOutAdderIn_48_port, B(47) => 
                           MuxOutAdderIn_47_port, B(46) => 
                           MuxOutAdderIn_46_port, B(45) => 
                           MuxOutAdderIn_45_port, B(44) => 
                           MuxOutAdderIn_44_port, B(43) => 
                           MuxOutAdderIn_43_port, B(42) => 
                           MuxOutAdderIn_42_port, B(41) => 
                           MuxOutAdderIn_41_port, B(40) => 
                           MuxOutAdderIn_40_port, B(39) => 
                           MuxOutAdderIn_39_port, B(38) => 
                           MuxOutAdderIn_38_port, B(37) => 
                           MuxOutAdderIn_37_port, B(36) => 
                           MuxOutAdderIn_36_port, B(35) => 
                           MuxOutAdderIn_35_port, B(34) => 
                           MuxOutAdderIn_34_port, B(33) => 
                           MuxOutAdderIn_33_port, B(32) => 
                           MuxOutAdderIn_32_port, B(31) => 
                           MuxOutAdderIn_31_port, B(30) => 
                           MuxOutAdderIn_30_port, B(29) => 
                           MuxOutAdderIn_29_port, B(28) => 
                           MuxOutAdderIn_28_port, B(27) => 
                           MuxOutAdderIn_27_port, B(26) => 
                           MuxOutAdderIn_26_port, B(25) => 
                           MuxOutAdderIn_25_port, B(24) => 
                           MuxOutAdderIn_24_port, B(23) => 
                           MuxOutAdderIn_23_port, B(22) => 
                           MuxOutAdderIn_22_port, B(21) => 
                           MuxOutAdderIn_21_port, B(20) => 
                           MuxOutAdderIn_20_port, B(19) => 
                           MuxOutAdderIn_19_port, B(18) => 
                           MuxOutAdderIn_18_port, B(17) => 
                           MuxOutAdderIn_17_port, B(16) => 
                           MuxOutAdderIn_16_port, B(15) => 
                           MuxOutAdderIn_15_port, B(14) => 
                           MuxOutAdderIn_14_port, B(13) => 
                           MuxOutAdderIn_13_port, B(12) => 
                           MuxOutAdderIn_12_port, B(11) => 
                           MuxOutAdderIn_11_port, B(10) => 
                           MuxOutAdderIn_10_port, B(9) => MuxOutAdderIn_9_port,
                           B(8) => MuxOutAdderIn_8_port, B(7) => 
                           MuxOutAdderIn_7_port, B(6) => MuxOutAdderIn_6_port, 
                           B(5) => MuxOutAdderIn_5_port, B(4) => 
                           MuxOutAdderIn_4_port, B(3) => MuxOutAdderIn_3_port, 
                           B(2) => MuxOutAdderIn_2_port, B(1) => 
                           MuxOutAdderIn_1_port, B(0) => MuxOutAdderIn_0_port, 
                           Ci => X_Logic0_port, S(63) => out_add_63_port, S(62)
                           => out_add_62_port, S(61) => out_add_61_port, S(60) 
                           => out_add_60_port, S(59) => out_add_59_port, S(58) 
                           => out_add_58_port, S(57) => out_add_57_port, S(56) 
                           => out_add_56_port, S(55) => out_add_55_port, S(54) 
                           => out_add_54_port, S(53) => out_add_53_port, S(52) 
                           => out_add_52_port, S(51) => out_add_51_port, S(50) 
                           => out_add_50_port, S(49) => out_add_49_port, S(48) 
                           => out_add_48_port, S(47) => out_add_47_port, S(46) 
                           => out_add_46_port, S(45) => out_add_45_port, S(44) 
                           => out_add_44_port, S(43) => out_add_43_port, S(42) 
                           => out_add_42_port, S(41) => out_add_41_port, S(40) 
                           => out_add_40_port, S(39) => out_add_39_port, S(38) 
                           => out_add_38_port, S(37) => out_add_37_port, S(36) 
                           => out_add_36_port, S(35) => out_add_35_port, S(34) 
                           => out_add_34_port, S(33) => out_add_33_port, S(32) 
                           => out_add_32_port, S(31) => out_add_31_port, S(30) 
                           => out_add_30_port, S(29) => out_add_29_port, S(28) 
                           => out_add_28_port, S(27) => out_add_27_port, S(26) 
                           => out_add_26_port, S(25) => out_add_25_port, S(24) 
                           => out_add_24_port, S(23) => out_add_23_port, S(22) 
                           => out_add_22_port, S(21) => out_add_21_port, S(20) 
                           => out_add_20_port, S(19) => out_add_19_port, S(18) 
                           => out_add_18_port, S(17) => out_add_17_port, S(16) 
                           => out_add_16_port, S(15) => out_add_15_port, S(14) 
                           => out_add_14_port, S(13) => out_add_13_port, S(12) 
                           => out_add_12_port, S(11) => out_add_11_port, S(10) 
                           => out_add_10_port, S(9) => out_add_9_port, S(8) => 
                           out_add_8_port, S(7) => out_add_7_port, S(6) => 
                           out_add_6_port, S(5) => out_add_5_port, S(4) => 
                           out_add_4_port, S(3) => out_add_3_port, S(2) => 
                           out_add_2_port, S(1) => out_add_1_port, S(0) => 
                           out_add_0_port, Co => n_1064);
   X_Logic0_port <= '0';
   I_0 : GTECH_NOT port map( A => RST_n, Z => rst);

end SYN_struct;

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
