
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_N64_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_N64_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64_1.all;

entity RCA_GENERIC_N64_DW01_add_0 is

   port( A, B : in std_logic_vector (64 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (64 downto 0);  CO : out std_logic);

end RCA_GENERIC_N64_DW01_add_0;

architecture SYN_rpl of RCA_GENERIC_N64_DW01_add_0 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_63_port, carry_62_port, carry_61_port, carry_60_port, 
      carry_59_port, carry_58_port, carry_57_port, carry_56_port, carry_55_port
      , carry_54_port, carry_53_port, carry_52_port, carry_51_port, 
      carry_50_port, carry_49_port, carry_48_port, carry_47_port, carry_46_port
      , carry_45_port, carry_44_port, carry_43_port, carry_42_port, 
      carry_41_port, carry_40_port, carry_39_port, carry_38_port, carry_37_port
      , carry_36_port, carry_35_port, carry_34_port, carry_33_port, 
      carry_32_port, carry_31_port, carry_30_port, carry_29_port, carry_28_port
      , carry_27_port, carry_26_port, carry_25_port, carry_24_port, 
      carry_23_port, carry_22_port, carry_21_port, carry_20_port, carry_19_port
      , carry_18_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, carry_1_port : std_logic;

begin
   
   U1_63 : FA_X1 port map( A => A(63), B => B(63), CI => carry_63_port, CO => 
                           SUM(64), S => SUM(63));
   U1_62 : FA_X1 port map( A => A(62), B => B(62), CI => carry_62_port, CO => 
                           carry_63_port, S => SUM(62));
   U1_61 : FA_X1 port map( A => A(61), B => B(61), CI => carry_61_port, CO => 
                           carry_62_port, S => SUM(61));
   U1_60 : FA_X1 port map( A => A(60), B => B(60), CI => carry_60_port, CO => 
                           carry_61_port, S => SUM(60));
   U1_59 : FA_X1 port map( A => A(59), B => B(59), CI => carry_59_port, CO => 
                           carry_60_port, S => SUM(59));
   U1_58 : FA_X1 port map( A => A(58), B => B(58), CI => carry_58_port, CO => 
                           carry_59_port, S => SUM(58));
   U1_57 : FA_X1 port map( A => A(57), B => B(57), CI => carry_57_port, CO => 
                           carry_58_port, S => SUM(57));
   U1_56 : FA_X1 port map( A => A(56), B => B(56), CI => carry_56_port, CO => 
                           carry_57_port, S => SUM(56));
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           carry_56_port, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => carry_1_port, CO => 
                           carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => CI, CO => carry_1_port, S
                           => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64_1.all;

entity AND21_GENERIC_N64_1 is

   port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector 
         (63 downto 0));

end AND21_GENERIC_N64_1;

architecture SYN_beh of AND21_GENERIC_N64_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => B(9), A2 => A(9), ZN => Y(9));
   U2 : AND2_X1 port map( A1 => B(8), A2 => A(8), ZN => Y(8));
   U3 : AND2_X1 port map( A1 => B(7), A2 => A(7), ZN => Y(7));
   U4 : AND2_X1 port map( A1 => B(6), A2 => A(6), ZN => Y(6));
   U5 : AND2_X1 port map( A1 => B(63), A2 => A(63), ZN => Y(63));
   U6 : AND2_X1 port map( A1 => B(62), A2 => A(62), ZN => Y(62));
   U7 : AND2_X1 port map( A1 => B(61), A2 => A(61), ZN => Y(61));
   U8 : AND2_X1 port map( A1 => B(60), A2 => A(60), ZN => Y(60));
   U9 : AND2_X1 port map( A1 => B(5), A2 => A(5), ZN => Y(5));
   U10 : AND2_X1 port map( A1 => B(59), A2 => A(59), ZN => Y(59));
   U11 : AND2_X1 port map( A1 => B(58), A2 => A(58), ZN => Y(58));
   U12 : AND2_X1 port map( A1 => B(57), A2 => A(57), ZN => Y(57));
   U13 : AND2_X1 port map( A1 => B(56), A2 => A(56), ZN => Y(56));
   U14 : AND2_X1 port map( A1 => B(55), A2 => A(55), ZN => Y(55));
   U15 : AND2_X1 port map( A1 => B(54), A2 => A(54), ZN => Y(54));
   U16 : AND2_X1 port map( A1 => B(53), A2 => A(53), ZN => Y(53));
   U17 : AND2_X1 port map( A1 => B(52), A2 => A(52), ZN => Y(52));
   U18 : AND2_X1 port map( A1 => B(51), A2 => A(51), ZN => Y(51));
   U19 : AND2_X1 port map( A1 => B(50), A2 => A(50), ZN => Y(50));
   U20 : AND2_X1 port map( A1 => B(4), A2 => A(4), ZN => Y(4));
   U21 : AND2_X1 port map( A1 => B(49), A2 => A(49), ZN => Y(49));
   U22 : AND2_X1 port map( A1 => B(48), A2 => A(48), ZN => Y(48));
   U23 : AND2_X1 port map( A1 => B(47), A2 => A(47), ZN => Y(47));
   U24 : AND2_X1 port map( A1 => B(46), A2 => A(46), ZN => Y(46));
   U25 : AND2_X1 port map( A1 => B(45), A2 => A(45), ZN => Y(45));
   U26 : AND2_X1 port map( A1 => B(44), A2 => A(44), ZN => Y(44));
   U27 : AND2_X1 port map( A1 => B(43), A2 => A(43), ZN => Y(43));
   U28 : AND2_X1 port map( A1 => B(42), A2 => A(42), ZN => Y(42));
   U29 : AND2_X1 port map( A1 => B(41), A2 => A(41), ZN => Y(41));
   U30 : AND2_X1 port map( A1 => B(40), A2 => A(40), ZN => Y(40));
   U31 : AND2_X1 port map( A1 => B(3), A2 => A(3), ZN => Y(3));
   U32 : AND2_X1 port map( A1 => B(39), A2 => A(39), ZN => Y(39));
   U33 : AND2_X1 port map( A1 => B(38), A2 => A(38), ZN => Y(38));
   U34 : AND2_X1 port map( A1 => B(37), A2 => A(37), ZN => Y(37));
   U35 : AND2_X1 port map( A1 => B(36), A2 => A(36), ZN => Y(36));
   U36 : AND2_X1 port map( A1 => B(35), A2 => A(35), ZN => Y(35));
   U37 : AND2_X1 port map( A1 => B(34), A2 => A(34), ZN => Y(34));
   U38 : AND2_X1 port map( A1 => B(33), A2 => A(33), ZN => Y(33));
   U39 : AND2_X1 port map( A1 => B(32), A2 => A(32), ZN => Y(32));
   U40 : AND2_X1 port map( A1 => B(31), A2 => A(31), ZN => Y(31));
   U41 : AND2_X1 port map( A1 => B(30), A2 => A(30), ZN => Y(30));
   U42 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => Y(2));
   U43 : AND2_X1 port map( A1 => B(29), A2 => A(29), ZN => Y(29));
   U44 : AND2_X1 port map( A1 => B(28), A2 => A(28), ZN => Y(28));
   U45 : AND2_X1 port map( A1 => B(27), A2 => A(27), ZN => Y(27));
   U46 : AND2_X1 port map( A1 => B(26), A2 => A(26), ZN => Y(26));
   U47 : AND2_X1 port map( A1 => B(25), A2 => A(25), ZN => Y(25));
   U48 : AND2_X1 port map( A1 => B(24), A2 => A(24), ZN => Y(24));
   U49 : AND2_X1 port map( A1 => B(23), A2 => A(23), ZN => Y(23));
   U50 : AND2_X1 port map( A1 => B(22), A2 => A(22), ZN => Y(22));
   U51 : AND2_X1 port map( A1 => B(21), A2 => A(21), ZN => Y(21));
   U52 : AND2_X1 port map( A1 => B(20), A2 => A(20), ZN => Y(20));
   U53 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => Y(1));
   U54 : AND2_X1 port map( A1 => B(19), A2 => A(19), ZN => Y(19));
   U55 : AND2_X1 port map( A1 => B(18), A2 => A(18), ZN => Y(18));
   U56 : AND2_X1 port map( A1 => B(17), A2 => A(17), ZN => Y(17));
   U57 : AND2_X1 port map( A1 => B(16), A2 => A(16), ZN => Y(16));
   U58 : AND2_X1 port map( A1 => B(15), A2 => A(15), ZN => Y(15));
   U59 : AND2_X1 port map( A1 => B(14), A2 => A(14), ZN => Y(14));
   U60 : AND2_X1 port map( A1 => B(13), A2 => A(13), ZN => Y(13));
   U61 : AND2_X1 port map( A1 => B(12), A2 => A(12), ZN => Y(12));
   U62 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => Y(11));
   U63 : AND2_X1 port map( A1 => B(10), A2 => A(10), ZN => Y(10));
   U64 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => Y(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64_1.all;

entity OR21_GENERIC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector 
         (63 downto 0));

end OR21_GENERIC_N64;

architecture SYN_beh of OR21_GENERIC_N64 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : OR2_X1 port map( A1 => A(9), A2 => B(9), ZN => Y(9));
   U2 : OR2_X1 port map( A1 => A(8), A2 => B(8), ZN => Y(8));
   U3 : OR2_X1 port map( A1 => A(7), A2 => B(7), ZN => Y(7));
   U4 : OR2_X1 port map( A1 => A(6), A2 => B(6), ZN => Y(6));
   U5 : OR2_X1 port map( A1 => A(63), A2 => B(63), ZN => Y(63));
   U6 : OR2_X1 port map( A1 => A(62), A2 => B(62), ZN => Y(62));
   U7 : OR2_X1 port map( A1 => A(61), A2 => B(61), ZN => Y(61));
   U8 : OR2_X1 port map( A1 => A(60), A2 => B(60), ZN => Y(60));
   U9 : OR2_X1 port map( A1 => A(5), A2 => B(5), ZN => Y(5));
   U10 : OR2_X1 port map( A1 => A(59), A2 => B(59), ZN => Y(59));
   U11 : OR2_X1 port map( A1 => A(58), A2 => B(58), ZN => Y(58));
   U12 : OR2_X1 port map( A1 => A(57), A2 => B(57), ZN => Y(57));
   U13 : OR2_X1 port map( A1 => A(56), A2 => B(56), ZN => Y(56));
   U14 : OR2_X1 port map( A1 => A(55), A2 => B(55), ZN => Y(55));
   U15 : OR2_X1 port map( A1 => A(54), A2 => B(54), ZN => Y(54));
   U16 : OR2_X1 port map( A1 => A(53), A2 => B(53), ZN => Y(53));
   U17 : OR2_X1 port map( A1 => A(52), A2 => B(52), ZN => Y(52));
   U18 : OR2_X1 port map( A1 => A(51), A2 => B(51), ZN => Y(51));
   U19 : OR2_X1 port map( A1 => A(50), A2 => B(50), ZN => Y(50));
   U20 : OR2_X1 port map( A1 => A(4), A2 => B(4), ZN => Y(4));
   U21 : OR2_X1 port map( A1 => A(49), A2 => B(49), ZN => Y(49));
   U22 : OR2_X1 port map( A1 => A(48), A2 => B(48), ZN => Y(48));
   U23 : OR2_X1 port map( A1 => A(47), A2 => B(47), ZN => Y(47));
   U24 : OR2_X1 port map( A1 => A(46), A2 => B(46), ZN => Y(46));
   U25 : OR2_X1 port map( A1 => A(45), A2 => B(45), ZN => Y(45));
   U26 : OR2_X1 port map( A1 => A(44), A2 => B(44), ZN => Y(44));
   U27 : OR2_X1 port map( A1 => A(43), A2 => B(43), ZN => Y(43));
   U28 : OR2_X1 port map( A1 => A(42), A2 => B(42), ZN => Y(42));
   U29 : OR2_X1 port map( A1 => A(41), A2 => B(41), ZN => Y(41));
   U30 : OR2_X1 port map( A1 => A(40), A2 => B(40), ZN => Y(40));
   U31 : OR2_X1 port map( A1 => A(3), A2 => B(3), ZN => Y(3));
   U32 : OR2_X1 port map( A1 => A(39), A2 => B(39), ZN => Y(39));
   U33 : OR2_X1 port map( A1 => A(38), A2 => B(38), ZN => Y(38));
   U34 : OR2_X1 port map( A1 => A(37), A2 => B(37), ZN => Y(37));
   U35 : OR2_X1 port map( A1 => A(36), A2 => B(36), ZN => Y(36));
   U36 : OR2_X1 port map( A1 => A(35), A2 => B(35), ZN => Y(35));
   U37 : OR2_X1 port map( A1 => A(34), A2 => B(34), ZN => Y(34));
   U38 : OR2_X1 port map( A1 => A(33), A2 => B(33), ZN => Y(33));
   U39 : OR2_X1 port map( A1 => A(32), A2 => B(32), ZN => Y(32));
   U40 : OR2_X1 port map( A1 => A(31), A2 => B(31), ZN => Y(31));
   U41 : OR2_X1 port map( A1 => A(30), A2 => B(30), ZN => Y(30));
   U42 : OR2_X1 port map( A1 => A(2), A2 => B(2), ZN => Y(2));
   U43 : OR2_X1 port map( A1 => A(29), A2 => B(29), ZN => Y(29));
   U44 : OR2_X1 port map( A1 => A(28), A2 => B(28), ZN => Y(28));
   U45 : OR2_X1 port map( A1 => A(27), A2 => B(27), ZN => Y(27));
   U46 : OR2_X1 port map( A1 => A(26), A2 => B(26), ZN => Y(26));
   U47 : OR2_X1 port map( A1 => A(25), A2 => B(25), ZN => Y(25));
   U48 : OR2_X1 port map( A1 => A(24), A2 => B(24), ZN => Y(24));
   U49 : OR2_X1 port map( A1 => A(23), A2 => B(23), ZN => Y(23));
   U50 : OR2_X1 port map( A1 => A(22), A2 => B(22), ZN => Y(22));
   U51 : OR2_X1 port map( A1 => A(21), A2 => B(21), ZN => Y(21));
   U52 : OR2_X1 port map( A1 => A(20), A2 => B(20), ZN => Y(20));
   U53 : OR2_X1 port map( A1 => A(1), A2 => B(1), ZN => Y(1));
   U54 : OR2_X1 port map( A1 => A(19), A2 => B(19), ZN => Y(19));
   U55 : OR2_X1 port map( A1 => A(18), A2 => B(18), ZN => Y(18));
   U56 : OR2_X1 port map( A1 => A(17), A2 => B(17), ZN => Y(17));
   U57 : OR2_X1 port map( A1 => A(16), A2 => B(16), ZN => Y(16));
   U58 : OR2_X1 port map( A1 => A(15), A2 => B(15), ZN => Y(15));
   U59 : OR2_X1 port map( A1 => A(14), A2 => B(14), ZN => Y(14));
   U60 : OR2_X1 port map( A1 => A(13), A2 => B(13), ZN => Y(13));
   U61 : OR2_X1 port map( A1 => A(12), A2 => B(12), ZN => Y(12));
   U62 : OR2_X1 port map( A1 => A(11), A2 => B(11), ZN => Y(11));
   U63 : OR2_X1 port map( A1 => A(10), A2 => B(10), ZN => Y(10));
   U64 : OR2_X1 port map( A1 => A(0), A2 => B(0), ZN => Y(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64_1.all;

entity NOT_GENERIC_N64 is

   port( A : in std_logic_vector (63 downto 0);  Y : out std_logic_vector (63 
         downto 0));

end NOT_GENERIC_N64;

architecture SYN_beh of NOT_GENERIC_N64 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A(0), ZN => Y(0));
   U2 : INV_X1 port map( A => A(1), ZN => Y(1));
   U3 : INV_X1 port map( A => A(2), ZN => Y(2));
   U4 : INV_X1 port map( A => A(3), ZN => Y(3));
   U5 : INV_X1 port map( A => A(4), ZN => Y(4));
   U6 : INV_X1 port map( A => A(5), ZN => Y(5));
   U7 : INV_X1 port map( A => A(6), ZN => Y(6));
   U8 : INV_X1 port map( A => A(7), ZN => Y(7));
   U9 : INV_X1 port map( A => A(8), ZN => Y(8));
   U10 : INV_X1 port map( A => A(9), ZN => Y(9));
   U11 : INV_X1 port map( A => A(10), ZN => Y(10));
   U12 : INV_X1 port map( A => A(11), ZN => Y(11));
   U13 : INV_X1 port map( A => A(12), ZN => Y(12));
   U14 : INV_X1 port map( A => A(13), ZN => Y(13));
   U15 : INV_X1 port map( A => A(14), ZN => Y(14));
   U16 : INV_X1 port map( A => A(15), ZN => Y(15));
   U17 : INV_X1 port map( A => A(16), ZN => Y(16));
   U18 : INV_X1 port map( A => A(17), ZN => Y(17));
   U19 : INV_X1 port map( A => A(18), ZN => Y(18));
   U20 : INV_X1 port map( A => A(19), ZN => Y(19));
   U21 : INV_X1 port map( A => A(20), ZN => Y(20));
   U22 : INV_X1 port map( A => A(21), ZN => Y(21));
   U23 : INV_X1 port map( A => A(22), ZN => Y(22));
   U24 : INV_X1 port map( A => A(23), ZN => Y(23));
   U25 : INV_X1 port map( A => A(24), ZN => Y(24));
   U26 : INV_X1 port map( A => A(25), ZN => Y(25));
   U27 : INV_X1 port map( A => A(26), ZN => Y(26));
   U28 : INV_X1 port map( A => A(27), ZN => Y(27));
   U29 : INV_X1 port map( A => A(28), ZN => Y(28));
   U30 : INV_X1 port map( A => A(29), ZN => Y(29));
   U31 : INV_X1 port map( A => A(30), ZN => Y(30));
   U32 : INV_X1 port map( A => A(31), ZN => Y(31));
   U33 : INV_X1 port map( A => A(32), ZN => Y(32));
   U34 : INV_X1 port map( A => A(33), ZN => Y(33));
   U35 : INV_X1 port map( A => A(34), ZN => Y(34));
   U36 : INV_X1 port map( A => A(35), ZN => Y(35));
   U37 : INV_X1 port map( A => A(36), ZN => Y(36));
   U38 : INV_X1 port map( A => A(37), ZN => Y(37));
   U39 : INV_X1 port map( A => A(38), ZN => Y(38));
   U40 : INV_X1 port map( A => A(39), ZN => Y(39));
   U41 : INV_X1 port map( A => A(40), ZN => Y(40));
   U42 : INV_X1 port map( A => A(41), ZN => Y(41));
   U43 : INV_X1 port map( A => A(42), ZN => Y(42));
   U44 : INV_X1 port map( A => A(43), ZN => Y(43));
   U45 : INV_X1 port map( A => A(44), ZN => Y(44));
   U46 : INV_X1 port map( A => A(45), ZN => Y(45));
   U47 : INV_X1 port map( A => A(46), ZN => Y(46));
   U48 : INV_X1 port map( A => A(47), ZN => Y(47));
   U49 : INV_X1 port map( A => A(48), ZN => Y(48));
   U50 : INV_X1 port map( A => A(49), ZN => Y(49));
   U51 : INV_X1 port map( A => A(50), ZN => Y(50));
   U52 : INV_X1 port map( A => A(51), ZN => Y(51));
   U53 : INV_X1 port map( A => A(52), ZN => Y(52));
   U54 : INV_X1 port map( A => A(53), ZN => Y(53));
   U55 : INV_X1 port map( A => A(54), ZN => Y(54));
   U56 : INV_X1 port map( A => A(55), ZN => Y(55));
   U57 : INV_X1 port map( A => A(56), ZN => Y(56));
   U58 : INV_X1 port map( A => A(57), ZN => Y(57));
   U59 : INV_X1 port map( A => A(58), ZN => Y(58));
   U60 : INV_X1 port map( A => A(59), ZN => Y(59));
   U61 : INV_X1 port map( A => A(60), ZN => Y(60));
   U62 : INV_X1 port map( A => A(61), ZN => Y(61));
   U63 : INV_X1 port map( A => A(62), ZN => Y(62));
   U64 : INV_X1 port map( A => A(63), ZN => Y(63));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64_1.all;

entity AND21_GENERIC_N64_0 is

   port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector 
         (63 downto 0));

end AND21_GENERIC_N64_0;

architecture SYN_beh of AND21_GENERIC_N64_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : AND2_X1 port map( A1 => B(9), A2 => A(9), ZN => Y(9));
   U2 : AND2_X1 port map( A1 => B(8), A2 => A(8), ZN => Y(8));
   U3 : AND2_X1 port map( A1 => B(7), A2 => A(7), ZN => Y(7));
   U4 : AND2_X1 port map( A1 => B(6), A2 => A(6), ZN => Y(6));
   U5 : AND2_X1 port map( A1 => B(63), A2 => A(63), ZN => Y(63));
   U6 : AND2_X1 port map( A1 => B(62), A2 => A(62), ZN => Y(62));
   U7 : AND2_X1 port map( A1 => B(61), A2 => A(61), ZN => Y(61));
   U8 : AND2_X1 port map( A1 => B(60), A2 => A(60), ZN => Y(60));
   U9 : AND2_X1 port map( A1 => B(5), A2 => A(5), ZN => Y(5));
   U10 : AND2_X1 port map( A1 => B(59), A2 => A(59), ZN => Y(59));
   U11 : AND2_X1 port map( A1 => B(58), A2 => A(58), ZN => Y(58));
   U12 : AND2_X1 port map( A1 => B(57), A2 => A(57), ZN => Y(57));
   U13 : AND2_X1 port map( A1 => B(56), A2 => A(56), ZN => Y(56));
   U14 : AND2_X1 port map( A1 => B(55), A2 => A(55), ZN => Y(55));
   U15 : AND2_X1 port map( A1 => B(54), A2 => A(54), ZN => Y(54));
   U16 : AND2_X1 port map( A1 => B(53), A2 => A(53), ZN => Y(53));
   U17 : AND2_X1 port map( A1 => B(52), A2 => A(52), ZN => Y(52));
   U18 : AND2_X1 port map( A1 => B(51), A2 => A(51), ZN => Y(51));
   U19 : AND2_X1 port map( A1 => B(50), A2 => A(50), ZN => Y(50));
   U20 : AND2_X1 port map( A1 => B(4), A2 => A(4), ZN => Y(4));
   U21 : AND2_X1 port map( A1 => B(49), A2 => A(49), ZN => Y(49));
   U22 : AND2_X1 port map( A1 => B(48), A2 => A(48), ZN => Y(48));
   U23 : AND2_X1 port map( A1 => B(47), A2 => A(47), ZN => Y(47));
   U24 : AND2_X1 port map( A1 => B(46), A2 => A(46), ZN => Y(46));
   U25 : AND2_X1 port map( A1 => B(45), A2 => A(45), ZN => Y(45));
   U26 : AND2_X1 port map( A1 => B(44), A2 => A(44), ZN => Y(44));
   U27 : AND2_X1 port map( A1 => B(43), A2 => A(43), ZN => Y(43));
   U28 : AND2_X1 port map( A1 => B(42), A2 => A(42), ZN => Y(42));
   U29 : AND2_X1 port map( A1 => B(41), A2 => A(41), ZN => Y(41));
   U30 : AND2_X1 port map( A1 => B(40), A2 => A(40), ZN => Y(40));
   U31 : AND2_X1 port map( A1 => B(3), A2 => A(3), ZN => Y(3));
   U32 : AND2_X1 port map( A1 => B(39), A2 => A(39), ZN => Y(39));
   U33 : AND2_X1 port map( A1 => B(38), A2 => A(38), ZN => Y(38));
   U34 : AND2_X1 port map( A1 => B(37), A2 => A(37), ZN => Y(37));
   U35 : AND2_X1 port map( A1 => B(36), A2 => A(36), ZN => Y(36));
   U36 : AND2_X1 port map( A1 => B(35), A2 => A(35), ZN => Y(35));
   U37 : AND2_X1 port map( A1 => B(34), A2 => A(34), ZN => Y(34));
   U38 : AND2_X1 port map( A1 => B(33), A2 => A(33), ZN => Y(33));
   U39 : AND2_X1 port map( A1 => B(32), A2 => A(32), ZN => Y(32));
   U40 : AND2_X1 port map( A1 => B(31), A2 => A(31), ZN => Y(31));
   U41 : AND2_X1 port map( A1 => B(30), A2 => A(30), ZN => Y(30));
   U42 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => Y(2));
   U43 : AND2_X1 port map( A1 => B(29), A2 => A(29), ZN => Y(29));
   U44 : AND2_X1 port map( A1 => B(28), A2 => A(28), ZN => Y(28));
   U45 : AND2_X1 port map( A1 => B(27), A2 => A(27), ZN => Y(27));
   U46 : AND2_X1 port map( A1 => B(26), A2 => A(26), ZN => Y(26));
   U47 : AND2_X1 port map( A1 => B(25), A2 => A(25), ZN => Y(25));
   U48 : AND2_X1 port map( A1 => B(24), A2 => A(24), ZN => Y(24));
   U49 : AND2_X1 port map( A1 => B(23), A2 => A(23), ZN => Y(23));
   U50 : AND2_X1 port map( A1 => B(22), A2 => A(22), ZN => Y(22));
   U51 : AND2_X1 port map( A1 => B(21), A2 => A(21), ZN => Y(21));
   U52 : AND2_X1 port map( A1 => B(20), A2 => A(20), ZN => Y(20));
   U53 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => Y(1));
   U54 : AND2_X1 port map( A1 => B(19), A2 => A(19), ZN => Y(19));
   U55 : AND2_X1 port map( A1 => B(18), A2 => A(18), ZN => Y(18));
   U56 : AND2_X1 port map( A1 => B(17), A2 => A(17), ZN => Y(17));
   U57 : AND2_X1 port map( A1 => B(16), A2 => A(16), ZN => Y(16));
   U58 : AND2_X1 port map( A1 => B(15), A2 => A(15), ZN => Y(15));
   U59 : AND2_X1 port map( A1 => B(14), A2 => A(14), ZN => Y(14));
   U60 : AND2_X1 port map( A1 => B(13), A2 => A(13), ZN => Y(13));
   U61 : AND2_X1 port map( A1 => B(12), A2 => A(12), ZN => Y(12));
   U62 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => Y(11));
   U63 : AND2_X1 port map( A1 => B(10), A2 => A(10), ZN => Y(10));
   U64 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => Y(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64_1.all;

entity RCA_GENERIC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (63 downto 0);  Co : out std_logic);

end RCA_GENERIC_N64;

architecture SYN_BEHAVIORAL of RCA_GENERIC_N64 is

   component RCA_GENERIC_N64_DW01_add_0
      port( A, B : in std_logic_vector (64 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (64 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1003 : std_logic;

begin
   
   n1 <= '0';
   add_1_root_add_52_2 : RCA_GENERIC_N64_DW01_add_0 port map( A(64) => n1, 
                           A(63) => A(63), A(62) => A(62), A(61) => A(61), 
                           A(60) => A(60), A(59) => A(59), A(58) => A(58), 
                           A(57) => A(57), A(56) => A(56), A(55) => A(55), 
                           A(54) => A(54), A(53) => A(53), A(52) => A(52), 
                           A(51) => A(51), A(50) => A(50), A(49) => A(49), 
                           A(48) => A(48), A(47) => A(47), A(46) => A(46), 
                           A(45) => A(45), A(44) => A(44), A(43) => A(43), 
                           A(42) => A(42), A(41) => A(41), A(40) => A(40), 
                           A(39) => A(39), A(38) => A(38), A(37) => A(37), 
                           A(36) => A(36), A(35) => A(35), A(34) => A(34), 
                           A(33) => A(33), A(32) => A(32), A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(64) => n1, B(63)
                           => B(63), B(62) => B(62), B(61) => B(61), B(60) => 
                           B(60), B(59) => B(59), B(58) => B(58), B(57) => 
                           B(57), B(56) => B(56), B(55) => B(55), B(54) => 
                           B(54), B(53) => B(53), B(52) => B(52), B(51) => 
                           B(51), B(50) => B(50), B(49) => B(49), B(48) => 
                           B(48), B(47) => B(47), B(46) => B(46), B(45) => 
                           B(45), B(44) => B(44), B(43) => B(43), B(42) => 
                           B(42), B(41) => B(41), B(40) => B(40), B(39) => 
                           B(39), B(38) => B(38), B(37) => B(37), B(36) => 
                           B(36), B(35) => B(35), B(34) => B(34), B(33) => 
                           B(33), B(32) => B(32), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), CI => Ci, SUM(64) => Co, 
                           SUM(63) => S(63), SUM(62) => S(62), SUM(61) => S(61)
                           , SUM(60) => S(60), SUM(59) => S(59), SUM(58) => 
                           S(58), SUM(57) => S(57), SUM(56) => S(56), SUM(55) 
                           => S(55), SUM(54) => S(54), SUM(53) => S(53), 
                           SUM(52) => S(52), SUM(51) => S(51), SUM(50) => S(50)
                           , SUM(49) => S(49), SUM(48) => S(48), SUM(47) => 
                           S(47), SUM(46) => S(46), SUM(45) => S(45), SUM(44) 
                           => S(44), SUM(43) => S(43), SUM(42) => S(42), 
                           SUM(41) => S(41), SUM(40) => S(40), SUM(39) => S(39)
                           , SUM(38) => S(38), SUM(37) => S(37), SUM(36) => 
                           S(36), SUM(35) => S(35), SUM(34) => S(34), SUM(33) 
                           => S(33), SUM(32) => S(32), SUM(31) => S(31), 
                           SUM(30) => S(30), SUM(29) => S(29), SUM(28) => S(28)
                           , SUM(27) => S(27), SUM(26) => S(26), SUM(25) => 
                           S(25), SUM(24) => S(24), SUM(23) => S(23), SUM(22) 
                           => S(22), SUM(21) => S(21), SUM(20) => S(20), 
                           SUM(19) => S(19), SUM(18) => S(18), SUM(17) => S(17)
                           , SUM(16) => S(16), SUM(15) => S(15), SUM(14) => 
                           S(14), SUM(13) => S(13), SUM(12) => S(12), SUM(11) 
                           => S(11), SUM(10) => S(10), SUM(9) => S(9), SUM(8) 
                           => S(8), SUM(7) => S(7), SUM(6) => S(6), SUM(5) => 
                           S(5), SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2)
                           , SUM(1) => S(1), SUM(0) => S(0), CO => n_1003);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64_1.all;

entity FD_GENERIC_N64 is

   port( D : in std_logic_vector (63 downto 0);  CK, RESET : in std_logic;  Q :
         out std_logic_vector (63 downto 0));

end FD_GENERIC_N64;

architecture SYN_ASYNCARCH of FD_GENERIC_N64 is

   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, 
      n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, 
      n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, 
      n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, 
      n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, 
      n_1048, n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, 
      n_1057, n_1058, n_1059, n_1060, n_1061, n_1062, n_1063, n_1064, n_1065, 
      n_1066, n_1067 : std_logic;

begin
   
   Q_reg_63_inst : DFFR_X1 port map( D => D(63), CK => CK, RN => n1, Q => Q(63)
                           , QN => n_1004);
   Q_reg_62_inst : DFFR_X1 port map( D => D(62), CK => CK, RN => n1, Q => Q(62)
                           , QN => n_1005);
   Q_reg_61_inst : DFFR_X1 port map( D => D(61), CK => CK, RN => n1, Q => Q(61)
                           , QN => n_1006);
   Q_reg_60_inst : DFFR_X1 port map( D => D(60), CK => CK, RN => n1, Q => Q(60)
                           , QN => n_1007);
   Q_reg_59_inst : DFFR_X1 port map( D => D(59), CK => CK, RN => n1, Q => Q(59)
                           , QN => n_1008);
   Q_reg_58_inst : DFFR_X1 port map( D => D(58), CK => CK, RN => n1, Q => Q(58)
                           , QN => n_1009);
   Q_reg_57_inst : DFFR_X1 port map( D => D(57), CK => CK, RN => n1, Q => Q(57)
                           , QN => n_1010);
   Q_reg_56_inst : DFFR_X1 port map( D => D(56), CK => CK, RN => n1, Q => Q(56)
                           , QN => n_1011);
   Q_reg_55_inst : DFFR_X1 port map( D => D(55), CK => CK, RN => n1, Q => Q(55)
                           , QN => n_1012);
   Q_reg_54_inst : DFFR_X1 port map( D => D(54), CK => CK, RN => n1, Q => Q(54)
                           , QN => n_1013);
   Q_reg_53_inst : DFFR_X1 port map( D => D(53), CK => CK, RN => n1, Q => Q(53)
                           , QN => n_1014);
   Q_reg_52_inst : DFFR_X1 port map( D => D(52), CK => CK, RN => n1, Q => Q(52)
                           , QN => n_1015);
   Q_reg_51_inst : DFFR_X1 port map( D => D(51), CK => CK, RN => n1, Q => Q(51)
                           , QN => n_1016);
   Q_reg_50_inst : DFFR_X1 port map( D => D(50), CK => CK, RN => n1, Q => Q(50)
                           , QN => n_1017);
   Q_reg_49_inst : DFFR_X1 port map( D => D(49), CK => CK, RN => n1, Q => Q(49)
                           , QN => n_1018);
   Q_reg_48_inst : DFFR_X1 port map( D => D(48), CK => CK, RN => n1, Q => Q(48)
                           , QN => n_1019);
   Q_reg_47_inst : DFFR_X1 port map( D => D(47), CK => CK, RN => n1, Q => Q(47)
                           , QN => n_1020);
   Q_reg_46_inst : DFFR_X1 port map( D => D(46), CK => CK, RN => n1, Q => Q(46)
                           , QN => n_1021);
   Q_reg_45_inst : DFFR_X1 port map( D => D(45), CK => CK, RN => n1, Q => Q(45)
                           , QN => n_1022);
   Q_reg_44_inst : DFFR_X1 port map( D => D(44), CK => CK, RN => n1, Q => Q(44)
                           , QN => n_1023);
   Q_reg_43_inst : DFFR_X1 port map( D => D(43), CK => CK, RN => n1, Q => Q(43)
                           , QN => n_1024);
   Q_reg_42_inst : DFFR_X1 port map( D => D(42), CK => CK, RN => n1, Q => Q(42)
                           , QN => n_1025);
   Q_reg_41_inst : DFFR_X1 port map( D => D(41), CK => CK, RN => n1, Q => Q(41)
                           , QN => n_1026);
   Q_reg_40_inst : DFFR_X1 port map( D => D(40), CK => CK, RN => n1, Q => Q(40)
                           , QN => n_1027);
   Q_reg_39_inst : DFFR_X1 port map( D => D(39), CK => CK, RN => n1, Q => Q(39)
                           , QN => n_1028);
   Q_reg_38_inst : DFFR_X1 port map( D => D(38), CK => CK, RN => n1, Q => Q(38)
                           , QN => n_1029);
   Q_reg_37_inst : DFFR_X1 port map( D => D(37), CK => CK, RN => n1, Q => Q(37)
                           , QN => n_1030);
   Q_reg_36_inst : DFFR_X1 port map( D => D(36), CK => CK, RN => n1, Q => Q(36)
                           , QN => n_1031);
   Q_reg_35_inst : DFFR_X1 port map( D => D(35), CK => CK, RN => n1, Q => Q(35)
                           , QN => n_1032);
   Q_reg_34_inst : DFFR_X1 port map( D => D(34), CK => CK, RN => n1, Q => Q(34)
                           , QN => n_1033);
   Q_reg_33_inst : DFFR_X1 port map( D => D(33), CK => CK, RN => n1, Q => Q(33)
                           , QN => n_1034);
   Q_reg_32_inst : DFFR_X1 port map( D => D(32), CK => CK, RN => n1, Q => Q(32)
                           , QN => n_1035);
   Q_reg_31_inst : DFFR_X1 port map( D => D(31), CK => CK, RN => n1, Q => Q(31)
                           , QN => n_1036);
   Q_reg_30_inst : DFFR_X1 port map( D => D(30), CK => CK, RN => n1, Q => Q(30)
                           , QN => n_1037);
   Q_reg_29_inst : DFFR_X1 port map( D => D(29), CK => CK, RN => n1, Q => Q(29)
                           , QN => n_1038);
   Q_reg_28_inst : DFFR_X1 port map( D => D(28), CK => CK, RN => n1, Q => Q(28)
                           , QN => n_1039);
   Q_reg_27_inst : DFFR_X1 port map( D => D(27), CK => CK, RN => n1, Q => Q(27)
                           , QN => n_1040);
   Q_reg_26_inst : DFFR_X1 port map( D => D(26), CK => CK, RN => n1, Q => Q(26)
                           , QN => n_1041);
   Q_reg_25_inst : DFFR_X1 port map( D => D(25), CK => CK, RN => n1, Q => Q(25)
                           , QN => n_1042);
   Q_reg_24_inst : DFFR_X1 port map( D => D(24), CK => CK, RN => n1, Q => Q(24)
                           , QN => n_1043);
   Q_reg_23_inst : DFFR_X1 port map( D => D(23), CK => CK, RN => n1, Q => Q(23)
                           , QN => n_1044);
   Q_reg_22_inst : DFFR_X1 port map( D => D(22), CK => CK, RN => n1, Q => Q(22)
                           , QN => n_1045);
   Q_reg_21_inst : DFFR_X1 port map( D => D(21), CK => CK, RN => n1, Q => Q(21)
                           , QN => n_1046);
   Q_reg_20_inst : DFFR_X1 port map( D => D(20), CK => CK, RN => n1, Q => Q(20)
                           , QN => n_1047);
   Q_reg_19_inst : DFFR_X1 port map( D => D(19), CK => CK, RN => n1, Q => Q(19)
                           , QN => n_1048);
   Q_reg_18_inst : DFFR_X1 port map( D => D(18), CK => CK, RN => n1, Q => Q(18)
                           , QN => n_1049);
   Q_reg_17_inst : DFFR_X1 port map( D => D(17), CK => CK, RN => n1, Q => Q(17)
                           , QN => n_1050);
   Q_reg_16_inst : DFFR_X1 port map( D => D(16), CK => CK, RN => n1, Q => Q(16)
                           , QN => n_1051);
   Q_reg_15_inst : DFFR_X1 port map( D => D(15), CK => CK, RN => n1, Q => Q(15)
                           , QN => n_1052);
   Q_reg_14_inst : DFFR_X1 port map( D => D(14), CK => CK, RN => n1, Q => Q(14)
                           , QN => n_1053);
   Q_reg_13_inst : DFFR_X1 port map( D => D(13), CK => CK, RN => n1, Q => Q(13)
                           , QN => n_1054);
   Q_reg_12_inst : DFFR_X1 port map( D => D(12), CK => CK, RN => n1, Q => Q(12)
                           , QN => n_1055);
   Q_reg_11_inst : DFFR_X1 port map( D => D(11), CK => CK, RN => n1, Q => Q(11)
                           , QN => n_1056);
   Q_reg_10_inst : DFFR_X1 port map( D => D(10), CK => CK, RN => n1, Q => Q(10)
                           , QN => n_1057);
   Q_reg_9_inst : DFFR_X1 port map( D => D(9), CK => CK, RN => n1, Q => Q(9), 
                           QN => n_1058);
   Q_reg_8_inst : DFFR_X1 port map( D => D(8), CK => CK, RN => n1, Q => Q(8), 
                           QN => n_1059);
   Q_reg_7_inst : DFFR_X1 port map( D => D(7), CK => CK, RN => n1, Q => Q(7), 
                           QN => n_1060);
   Q_reg_6_inst : DFFR_X1 port map( D => D(6), CK => CK, RN => n1, Q => Q(6), 
                           QN => n_1061);
   Q_reg_5_inst : DFFR_X1 port map( D => D(5), CK => CK, RN => n1, Q => Q(5), 
                           QN => n_1062);
   Q_reg_4_inst : DFFR_X1 port map( D => D(4), CK => CK, RN => n1, Q => Q(4), 
                           QN => n_1063);
   Q_reg_3_inst : DFFR_X1 port map( D => D(3), CK => CK, RN => n1, Q => Q(3), 
                           QN => n_1064);
   Q_reg_2_inst : DFFR_X1 port map( D => D(2), CK => CK, RN => n1, Q => Q(2), 
                           QN => n_1065);
   Q_reg_1_inst : DFFR_X1 port map( D => D(1), CK => CK, RN => n1, Q => Q(1), 
                           QN => n_1066);
   Q_reg_0_inst : DFFR_X1 port map( D => D(0), CK => CK, RN => n1, Q => Q(0), 
                           QN => n_1067);
   U3 : INV_X4 port map( A => RESET, ZN => n1);

end SYN_ASYNCARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64_1.all;

entity MUX21_GENERIC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (63 downto 0));

end MUX21_GENERIC_N64;

architecture SYN_struct of MUX21_GENERIC_N64 is

   component OR21_GENERIC_N64
      port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector
            (63 downto 0));
   end component;
   
   component AND21_GENERIC_N64_1
      port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector
            (63 downto 0));
   end component;
   
   component NOT_GENERIC_N64
      port( A : in std_logic_vector (63 downto 0);  Y : out std_logic_vector 
            (63 downto 0));
   end component;
   
   component AND21_GENERIC_N64_0
      port( A, B : in std_logic_vector (63 downto 0);  Y : out std_logic_vector
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
   
   And1 : AND21_GENERIC_N64_0 port map( A(63) => A(63), A(62) => A(62), A(61) 
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
   And2 : AND21_GENERIC_N64_1 port map( A(63) => B(63), A(62) => B(62), A(61) 
                           => B(61), A(60) => B(60), A(59) => B(59), A(58) => 
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

use work.CONV_PACK_ACC_N64_1.all;

entity ACC_N64_1 is

   port( A, B : in std_logic_vector (63 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (63 downto 0));

end ACC_N64_1;

architecture SYN_struct of ACC_N64_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
      Y_3_port, Y_2_port, Y_1_port, Y_0_port, MuxOutAdderIn_63_port, 
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
      out_add_3_port, out_add_2_port, out_add_1_port, out_add_0_port, n2, 
      n_1068 : std_logic;

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
   
   X_Logic0_port <= '0';
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
                           out_add_0_port, CK => CLK, RESET => n2, Q(63) => 
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
                           out_add_0_port, Co => n_1068);
   U3 : INV_X1 port map( A => RST_n, ZN => n2);

end SYN_struct;
