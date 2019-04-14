
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SparseTree_N64_RADIX4_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_SparseTree_N64_RADIX4_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SparseTree_N64_RADIX4_1.all;

entity triBlock is

   port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
         std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
         downto 0));

end triBlock;

architecture SYN_struct of triBlock is

   component GeneralPropagateGenerate
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, 
      PG_right_block_out_1_port, PG_right_block_out_0_port : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1), 
                           Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   PG_2 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => Gk_1Pk_1_right(1), 
                           Gk_1Pk_1(0) => Gk_1Pk_1_right(0), GikPik(1) => 
                           GikPik_right(1), GikPik(0) => GikPik_right(0), 
                           GijPij(1) => PG_right_block_out_1_port, GijPij(0) =>
                           PG_right_block_out_0_port);
   PG_3 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           PG_left_block_out_1_port, Gk_1Pk_1(0) => 
                           PG_left_block_out_0_port, GikPik(1) => 
                           PG_right_block_out_1_port, GikPik(0) => 
                           PG_right_block_out_0_port, GijPij(1) => GijPij(1), 
                           GijPij(0) => GijPij(0));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SparseTree_N64_RADIX4_1.all;

entity triBlockSpecial is

   port( Gk_1Pk_1_left, GikPik_left, GikPik_right : in std_logic_vector (1 
         downto 0);  Gk_1_right : in std_logic;  Gij : out std_logic);

end triBlockSpecial;

architecture SYN_struct of triBlockSpecial is

   component GeneralGenerate
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralPropagateGenerate
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, G_right_block_out
      : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1), 
                           Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   G_1 : GeneralGenerate port map( Gk_1 => Gk_1_right, GikPik(1) => 
                           GikPik_right(1), GikPik(0) => GikPik_right(0), Gij 
                           => G_right_block_out);
   G_2 : GeneralGenerate port map( Gk_1 => G_right_block_out, GikPik(1) => 
                           PG_left_block_out_1_port, GikPik(0) => 
                           PG_left_block_out_0_port, Gij => Gij);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SparseTree_N64_RADIX4_1.all;

entity PGNetBlock is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock;

architecture SYN_beh of PGNetBlock is

   component GTECH_XOR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   C8 : GTECH_AND2 port map( A => a, B => b, Z => gp(0));
   C9 : GTECH_XOR2 port map( A => a, B => b, Z => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SparseTree_N64_RADIX4_1.all;

entity SpecialPGBlock is

   port( a, b, Cin : in std_logic;  G1_0 : out std_logic);

end SpecialPGBlock;

architecture SYN_struct of SpecialPGBlock is

   component GeneralGenerate
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component PGNetBlock
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   signal g1p1_1_port, g1p1_0_port : std_logic;

begin
   
   PGBlock : PGNetBlock port map( a => a, b => b, gp(1) => g1p1_1_port, gp(0) 
                           => g1p1_0_port);
   GGBlock : GeneralGenerate port map( Gk_1 => Cin, GikPik(1) => g1p1_1_port, 
                           GikPik(0) => g1p1_0_port, Gij => G1_0);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SparseTree_N64_RADIX4_1.all;

entity GeneralPropagateGenerate is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate;

architecture SYN_beh of GeneralPropagateGenerate is

   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal N0 : std_logic;

begin
   
   C8 : GTECH_AND2 port map( A => N0, B => Gk_1Pk_1(1), Z => GijPij(1));
   C9 : GTECH_OR2 port map( A => GikPik(1), B => GikPik(0), Z => N0);
   C10 : GTECH_AND2 port map( A => GikPik(0), B => Gk_1Pk_1(0), Z => GijPij(0))
                           ;

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SparseTree_N64_RADIX4_1.all;

entity GeneralGenerate is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate;

architecture SYN_beh of GeneralGenerate is

   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal N0 : std_logic;

begin
   
   C7 : GTECH_AND2 port map( A => N0, B => Gk_1, Z => Gij);
   C8 : GTECH_OR2 port map( A => GikPik(1), B => GikPik(0), Z => N0);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SparseTree_N64_RADIX4_1.all;

entity ST_row1And2_N64 is

   port( input : in std_logic_vector (127 downto 0);  output : out 
         std_logic_vector (127 downto 0));

end ST_row1And2_N64;

architecture SYN_struct of ST_row1And2_N64 is

   component triBlock
      port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
            std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
            downto 0));
   end component;
   
   component triBlockSpecial
      port( Gk_1Pk_1_left, GikPik_left, GikPik_right : in std_logic_vector (1 
            downto 0);  Gk_1_right : in std_logic;  Gij : out std_logic);
   end component;

begin
   
   TBS_0 : triBlockSpecial port map( Gk_1Pk_1_left(1) => input(7), 
                           Gk_1Pk_1_left(0) => input(6), GikPik_left(1) => 
                           input(5), GikPik_left(0) => input(4), 
                           GikPik_right(1) => input(3), GikPik_right(0) => 
                           input(2), Gk_1_right => input(0), Gij => output(7));
   TB_1 : triBlock port map( Gk_1Pk_1_left(1) => input(15), Gk_1Pk_1_left(0) =>
                           input(14), GikPik_left(1) => input(13), 
                           GikPik_left(0) => input(12), Gk_1Pk_1_right(1) => 
                           input(11), Gk_1Pk_1_right(0) => input(10), 
                           GikPik_right(1) => input(9), GikPik_right(0) => 
                           input(8), GijPij(1) => output(15), GijPij(0) => 
                           output(14));
   TB_2 : triBlock port map( Gk_1Pk_1_left(1) => input(23), Gk_1Pk_1_left(0) =>
                           input(22), GikPik_left(1) => input(21), 
                           GikPik_left(0) => input(20), Gk_1Pk_1_right(1) => 
                           input(19), Gk_1Pk_1_right(0) => input(18), 
                           GikPik_right(1) => input(17), GikPik_right(0) => 
                           input(16), GijPij(1) => output(23), GijPij(0) => 
                           output(22));
   TB_3 : triBlock port map( Gk_1Pk_1_left(1) => input(31), Gk_1Pk_1_left(0) =>
                           input(30), GikPik_left(1) => input(29), 
                           GikPik_left(0) => input(28), Gk_1Pk_1_right(1) => 
                           input(27), Gk_1Pk_1_right(0) => input(26), 
                           GikPik_right(1) => input(25), GikPik_right(0) => 
                           input(24), GijPij(1) => output(31), GijPij(0) => 
                           output(30));
   TB_4 : triBlock port map( Gk_1Pk_1_left(1) => input(39), Gk_1Pk_1_left(0) =>
                           input(38), GikPik_left(1) => input(37), 
                           GikPik_left(0) => input(36), Gk_1Pk_1_right(1) => 
                           input(35), Gk_1Pk_1_right(0) => input(34), 
                           GikPik_right(1) => input(33), GikPik_right(0) => 
                           input(32), GijPij(1) => output(39), GijPij(0) => 
                           output(38));
   TB_5 : triBlock port map( Gk_1Pk_1_left(1) => input(47), Gk_1Pk_1_left(0) =>
                           input(46), GikPik_left(1) => input(45), 
                           GikPik_left(0) => input(44), Gk_1Pk_1_right(1) => 
                           input(43), Gk_1Pk_1_right(0) => input(42), 
                           GikPik_right(1) => input(41), GikPik_right(0) => 
                           input(40), GijPij(1) => output(47), GijPij(0) => 
                           output(46));
   TB_6 : triBlock port map( Gk_1Pk_1_left(1) => input(55), Gk_1Pk_1_left(0) =>
                           input(54), GikPik_left(1) => input(53), 
                           GikPik_left(0) => input(52), Gk_1Pk_1_right(1) => 
                           input(51), Gk_1Pk_1_right(0) => input(50), 
                           GikPik_right(1) => input(49), GikPik_right(0) => 
                           input(48), GijPij(1) => output(55), GijPij(0) => 
                           output(54));
   TB_7 : triBlock port map( Gk_1Pk_1_left(1) => input(63), Gk_1Pk_1_left(0) =>
                           input(62), GikPik_left(1) => input(61), 
                           GikPik_left(0) => input(60), Gk_1Pk_1_right(1) => 
                           input(59), Gk_1Pk_1_right(0) => input(58), 
                           GikPik_right(1) => input(57), GikPik_right(0) => 
                           input(56), GijPij(1) => output(63), GijPij(0) => 
                           output(62));
   TB_8 : triBlock port map( Gk_1Pk_1_left(1) => input(71), Gk_1Pk_1_left(0) =>
                           input(70), GikPik_left(1) => input(69), 
                           GikPik_left(0) => input(68), Gk_1Pk_1_right(1) => 
                           input(67), Gk_1Pk_1_right(0) => input(66), 
                           GikPik_right(1) => input(65), GikPik_right(0) => 
                           input(64), GijPij(1) => output(71), GijPij(0) => 
                           output(70));
   TB_9 : triBlock port map( Gk_1Pk_1_left(1) => input(79), Gk_1Pk_1_left(0) =>
                           input(78), GikPik_left(1) => input(77), 
                           GikPik_left(0) => input(76), Gk_1Pk_1_right(1) => 
                           input(75), Gk_1Pk_1_right(0) => input(74), 
                           GikPik_right(1) => input(73), GikPik_right(0) => 
                           input(72), GijPij(1) => output(79), GijPij(0) => 
                           output(78));
   TB_10 : triBlock port map( Gk_1Pk_1_left(1) => input(87), Gk_1Pk_1_left(0) 
                           => input(86), GikPik_left(1) => input(85), 
                           GikPik_left(0) => input(84), Gk_1Pk_1_right(1) => 
                           input(83), Gk_1Pk_1_right(0) => input(82), 
                           GikPik_right(1) => input(81), GikPik_right(0) => 
                           input(80), GijPij(1) => output(87), GijPij(0) => 
                           output(86));
   TB_11 : triBlock port map( Gk_1Pk_1_left(1) => input(95), Gk_1Pk_1_left(0) 
                           => input(94), GikPik_left(1) => input(93), 
                           GikPik_left(0) => input(92), Gk_1Pk_1_right(1) => 
                           input(91), Gk_1Pk_1_right(0) => input(90), 
                           GikPik_right(1) => input(89), GikPik_right(0) => 
                           input(88), GijPij(1) => output(95), GijPij(0) => 
                           output(94));
   TB_12 : triBlock port map( Gk_1Pk_1_left(1) => input(103), Gk_1Pk_1_left(0) 
                           => input(102), GikPik_left(1) => input(101), 
                           GikPik_left(0) => input(100), Gk_1Pk_1_right(1) => 
                           input(99), Gk_1Pk_1_right(0) => input(98), 
                           GikPik_right(1) => input(97), GikPik_right(0) => 
                           input(96), GijPij(1) => output(103), GijPij(0) => 
                           output(102));
   TB_13 : triBlock port map( Gk_1Pk_1_left(1) => input(111), Gk_1Pk_1_left(0) 
                           => input(110), GikPik_left(1) => input(109), 
                           GikPik_left(0) => input(108), Gk_1Pk_1_right(1) => 
                           input(107), Gk_1Pk_1_right(0) => input(106), 
                           GikPik_right(1) => input(105), GikPik_right(0) => 
                           input(104), GijPij(1) => output(111), GijPij(0) => 
                           output(110));
   TB_14 : triBlock port map( Gk_1Pk_1_left(1) => input(119), Gk_1Pk_1_left(0) 
                           => input(118), GikPik_left(1) => input(117), 
                           GikPik_left(0) => input(116), Gk_1Pk_1_right(1) => 
                           input(115), Gk_1Pk_1_right(0) => input(114), 
                           GikPik_right(1) => input(113), GikPik_right(0) => 
                           input(112), GijPij(1) => output(119), GijPij(0) => 
                           output(118));
   TB_15 : triBlock port map( Gk_1Pk_1_left(1) => input(127), Gk_1Pk_1_left(0) 
                           => input(126), GikPik_left(1) => input(125), 
                           GikPik_left(0) => input(124), Gk_1Pk_1_right(1) => 
                           input(123), Gk_1Pk_1_right(0) => input(122), 
                           GikPik_right(1) => input(121), GikPik_right(0) => 
                           input(120), GijPij(1) => output(127), GijPij(0) => 
                           output(126));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SparseTree_N64_RADIX4_1.all;

entity PGNetwork_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  Cin : in std_logic;  
         gpSignals : out std_logic_vector (127 downto 0));

end PGNetwork_N64;

architecture SYN_struct of PGNetwork_N64 is

   component PGNetBlock
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component SpecialPGBlock
      port( a, b, Cin : in std_logic;  G1_0 : out std_logic);
   end component;

begin
   
   SpecBlock_0 : SpecialPGBlock port map( a => A(0), b => B(0), Cin => Cin, 
                           G1_0 => gpSignals(0));
   PGBlock_1 : PGNetBlock port map( a => A(1), b => B(1), gp(1) => gpSignals(3)
                           , gp(0) => gpSignals(2));
   PGBlock_2 : PGNetBlock port map( a => A(2), b => B(2), gp(1) => gpSignals(5)
                           , gp(0) => gpSignals(4));
   PGBlock_3 : PGNetBlock port map( a => A(3), b => B(3), gp(1) => gpSignals(7)
                           , gp(0) => gpSignals(6));
   PGBlock_4 : PGNetBlock port map( a => A(4), b => B(4), gp(1) => gpSignals(9)
                           , gp(0) => gpSignals(8));
   PGBlock_5 : PGNetBlock port map( a => A(5), b => B(5), gp(1) => 
                           gpSignals(11), gp(0) => gpSignals(10));
   PGBlock_6 : PGNetBlock port map( a => A(6), b => B(6), gp(1) => 
                           gpSignals(13), gp(0) => gpSignals(12));
   PGBlock_7 : PGNetBlock port map( a => A(7), b => B(7), gp(1) => 
                           gpSignals(15), gp(0) => gpSignals(14));
   PGBlock_8 : PGNetBlock port map( a => A(8), b => B(8), gp(1) => 
                           gpSignals(17), gp(0) => gpSignals(16));
   PGBlock_9 : PGNetBlock port map( a => A(9), b => B(9), gp(1) => 
                           gpSignals(19), gp(0) => gpSignals(18));
   PGBlock_10 : PGNetBlock port map( a => A(10), b => B(10), gp(1) => 
                           gpSignals(21), gp(0) => gpSignals(20));
   PGBlock_11 : PGNetBlock port map( a => A(11), b => B(11), gp(1) => 
                           gpSignals(23), gp(0) => gpSignals(22));
   PGBlock_12 : PGNetBlock port map( a => A(12), b => B(12), gp(1) => 
                           gpSignals(25), gp(0) => gpSignals(24));
   PGBlock_13 : PGNetBlock port map( a => A(13), b => B(13), gp(1) => 
                           gpSignals(27), gp(0) => gpSignals(26));
   PGBlock_14 : PGNetBlock port map( a => A(14), b => B(14), gp(1) => 
                           gpSignals(29), gp(0) => gpSignals(28));
   PGBlock_15 : PGNetBlock port map( a => A(15), b => B(15), gp(1) => 
                           gpSignals(31), gp(0) => gpSignals(30));
   PGBlock_16 : PGNetBlock port map( a => A(16), b => B(16), gp(1) => 
                           gpSignals(33), gp(0) => gpSignals(32));
   PGBlock_17 : PGNetBlock port map( a => A(17), b => B(17), gp(1) => 
                           gpSignals(35), gp(0) => gpSignals(34));
   PGBlock_18 : PGNetBlock port map( a => A(18), b => B(18), gp(1) => 
                           gpSignals(37), gp(0) => gpSignals(36));
   PGBlock_19 : PGNetBlock port map( a => A(19), b => B(19), gp(1) => 
                           gpSignals(39), gp(0) => gpSignals(38));
   PGBlock_20 : PGNetBlock port map( a => A(20), b => B(20), gp(1) => 
                           gpSignals(41), gp(0) => gpSignals(40));
   PGBlock_21 : PGNetBlock port map( a => A(21), b => B(21), gp(1) => 
                           gpSignals(43), gp(0) => gpSignals(42));
   PGBlock_22 : PGNetBlock port map( a => A(22), b => B(22), gp(1) => 
                           gpSignals(45), gp(0) => gpSignals(44));
   PGBlock_23 : PGNetBlock port map( a => A(23), b => B(23), gp(1) => 
                           gpSignals(47), gp(0) => gpSignals(46));
   PGBlock_24 : PGNetBlock port map( a => A(24), b => B(24), gp(1) => 
                           gpSignals(49), gp(0) => gpSignals(48));
   PGBlock_25 : PGNetBlock port map( a => A(25), b => B(25), gp(1) => 
                           gpSignals(51), gp(0) => gpSignals(50));
   PGBlock_26 : PGNetBlock port map( a => A(26), b => B(26), gp(1) => 
                           gpSignals(53), gp(0) => gpSignals(52));
   PGBlock_27 : PGNetBlock port map( a => A(27), b => B(27), gp(1) => 
                           gpSignals(55), gp(0) => gpSignals(54));
   PGBlock_28 : PGNetBlock port map( a => A(28), b => B(28), gp(1) => 
                           gpSignals(57), gp(0) => gpSignals(56));
   PGBlock_29 : PGNetBlock port map( a => A(29), b => B(29), gp(1) => 
                           gpSignals(59), gp(0) => gpSignals(58));
   PGBlock_30 : PGNetBlock port map( a => A(30), b => B(30), gp(1) => 
                           gpSignals(61), gp(0) => gpSignals(60));
   PGBlock_31 : PGNetBlock port map( a => A(31), b => B(31), gp(1) => 
                           gpSignals(63), gp(0) => gpSignals(62));
   PGBlock_32 : PGNetBlock port map( a => A(32), b => B(32), gp(1) => 
                           gpSignals(65), gp(0) => gpSignals(64));
   PGBlock_33 : PGNetBlock port map( a => A(33), b => B(33), gp(1) => 
                           gpSignals(67), gp(0) => gpSignals(66));
   PGBlock_34 : PGNetBlock port map( a => A(34), b => B(34), gp(1) => 
                           gpSignals(69), gp(0) => gpSignals(68));
   PGBlock_35 : PGNetBlock port map( a => A(35), b => B(35), gp(1) => 
                           gpSignals(71), gp(0) => gpSignals(70));
   PGBlock_36 : PGNetBlock port map( a => A(36), b => B(36), gp(1) => 
                           gpSignals(73), gp(0) => gpSignals(72));
   PGBlock_37 : PGNetBlock port map( a => A(37), b => B(37), gp(1) => 
                           gpSignals(75), gp(0) => gpSignals(74));
   PGBlock_38 : PGNetBlock port map( a => A(38), b => B(38), gp(1) => 
                           gpSignals(77), gp(0) => gpSignals(76));
   PGBlock_39 : PGNetBlock port map( a => A(39), b => B(39), gp(1) => 
                           gpSignals(79), gp(0) => gpSignals(78));
   PGBlock_40 : PGNetBlock port map( a => A(40), b => B(40), gp(1) => 
                           gpSignals(81), gp(0) => gpSignals(80));
   PGBlock_41 : PGNetBlock port map( a => A(41), b => B(41), gp(1) => 
                           gpSignals(83), gp(0) => gpSignals(82));
   PGBlock_42 : PGNetBlock port map( a => A(42), b => B(42), gp(1) => 
                           gpSignals(85), gp(0) => gpSignals(84));
   PGBlock_43 : PGNetBlock port map( a => A(43), b => B(43), gp(1) => 
                           gpSignals(87), gp(0) => gpSignals(86));
   PGBlock_44 : PGNetBlock port map( a => A(44), b => B(44), gp(1) => 
                           gpSignals(89), gp(0) => gpSignals(88));
   PGBlock_45 : PGNetBlock port map( a => A(45), b => B(45), gp(1) => 
                           gpSignals(91), gp(0) => gpSignals(90));
   PGBlock_46 : PGNetBlock port map( a => A(46), b => B(46), gp(1) => 
                           gpSignals(93), gp(0) => gpSignals(92));
   PGBlock_47 : PGNetBlock port map( a => A(47), b => B(47), gp(1) => 
                           gpSignals(95), gp(0) => gpSignals(94));
   PGBlock_48 : PGNetBlock port map( a => A(48), b => B(48), gp(1) => 
                           gpSignals(97), gp(0) => gpSignals(96));
   PGBlock_49 : PGNetBlock port map( a => A(49), b => B(49), gp(1) => 
                           gpSignals(99), gp(0) => gpSignals(98));
   PGBlock_50 : PGNetBlock port map( a => A(50), b => B(50), gp(1) => 
                           gpSignals(101), gp(0) => gpSignals(100));
   PGBlock_51 : PGNetBlock port map( a => A(51), b => B(51), gp(1) => 
                           gpSignals(103), gp(0) => gpSignals(102));
   PGBlock_52 : PGNetBlock port map( a => A(52), b => B(52), gp(1) => 
                           gpSignals(105), gp(0) => gpSignals(104));
   PGBlock_53 : PGNetBlock port map( a => A(53), b => B(53), gp(1) => 
                           gpSignals(107), gp(0) => gpSignals(106));
   PGBlock_54 : PGNetBlock port map( a => A(54), b => B(54), gp(1) => 
                           gpSignals(109), gp(0) => gpSignals(108));
   PGBlock_55 : PGNetBlock port map( a => A(55), b => B(55), gp(1) => 
                           gpSignals(111), gp(0) => gpSignals(110));
   PGBlock_56 : PGNetBlock port map( a => A(56), b => B(56), gp(1) => 
                           gpSignals(113), gp(0) => gpSignals(112));
   PGBlock_57 : PGNetBlock port map( a => A(57), b => B(57), gp(1) => 
                           gpSignals(115), gp(0) => gpSignals(114));
   PGBlock_58 : PGNetBlock port map( a => A(58), b => B(58), gp(1) => 
                           gpSignals(117), gp(0) => gpSignals(116));
   PGBlock_59 : PGNetBlock port map( a => A(59), b => B(59), gp(1) => 
                           gpSignals(119), gp(0) => gpSignals(118));
   PGBlock_60 : PGNetBlock port map( a => A(60), b => B(60), gp(1) => 
                           gpSignals(121), gp(0) => gpSignals(120));
   PGBlock_61 : PGNetBlock port map( a => A(61), b => B(61), gp(1) => 
                           gpSignals(123), gp(0) => gpSignals(122));
   PGBlock_62 : PGNetBlock port map( a => A(62), b => B(62), gp(1) => 
                           gpSignals(125), gp(0) => gpSignals(124));
   PGBlock_63 : PGNetBlock port map( a => A(63), b => B(63), gp(1) => 
                           gpSignals(127), gp(0) => gpSignals(126));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SparseTree_N64_RADIX4_1.all;

entity SparseTree_N64_RADIX4_1 is

   port( A, B : in std_logic_vector (63 downto 0);  Cin : in std_logic;  
         carryVector : out std_logic_vector (15 downto 0));

end SparseTree_N64_RADIX4_1;

architecture SYN_struct of SparseTree_N64_RADIX4_1 is

   component GeneralGenerate
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralPropagateGenerate
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component ST_row1And2_N64
      port( input : in std_logic_vector (127 downto 0);  output : out 
            std_logic_vector (127 downto 0));
   end component;
   
   component PGNetwork_N64
      port( A, B : in std_logic_vector (63 downto 0);  Cin : in std_logic;  
            gpSignals : out std_logic_vector (127 downto 0));
   end component;
   
   signal carryVector_15_port, carryVector_14_port, carryVector_13_port, 
      carryVector_12_port, carryVector_11_port, carryVector_10_port, 
      carryVector_9_port, carryVector_8_port, carryVector_7_port, 
      carryVector_6_port, carryVector_5_port, carryVector_4_port, 
      carryVector_3_port, carryVector_2_port, carryVector_1_port, 
      carryVector_0_port, sigMatrix_0_127_port, sigMatrix_0_126_port, 
      sigMatrix_0_125_port, sigMatrix_0_124_port, sigMatrix_0_123_port, 
      sigMatrix_0_122_port, sigMatrix_0_121_port, sigMatrix_0_120_port, 
      sigMatrix_0_119_port, sigMatrix_0_118_port, sigMatrix_0_117_port, 
      sigMatrix_0_116_port, sigMatrix_0_115_port, sigMatrix_0_114_port, 
      sigMatrix_0_113_port, sigMatrix_0_112_port, sigMatrix_0_111_port, 
      sigMatrix_0_110_port, sigMatrix_0_109_port, sigMatrix_0_108_port, 
      sigMatrix_0_107_port, sigMatrix_0_106_port, sigMatrix_0_105_port, 
      sigMatrix_0_104_port, sigMatrix_0_103_port, sigMatrix_0_102_port, 
      sigMatrix_0_101_port, sigMatrix_0_100_port, sigMatrix_0_99_port, 
      sigMatrix_0_98_port, sigMatrix_0_97_port, sigMatrix_0_96_port, 
      sigMatrix_0_95_port, sigMatrix_0_94_port, sigMatrix_0_93_port, 
      sigMatrix_0_92_port, sigMatrix_0_91_port, sigMatrix_0_90_port, 
      sigMatrix_0_89_port, sigMatrix_0_88_port, sigMatrix_0_87_port, 
      sigMatrix_0_86_port, sigMatrix_0_85_port, sigMatrix_0_84_port, 
      sigMatrix_0_83_port, sigMatrix_0_82_port, sigMatrix_0_81_port, 
      sigMatrix_0_80_port, sigMatrix_0_79_port, sigMatrix_0_78_port, 
      sigMatrix_0_77_port, sigMatrix_0_76_port, sigMatrix_0_75_port, 
      sigMatrix_0_74_port, sigMatrix_0_73_port, sigMatrix_0_72_port, 
      sigMatrix_0_71_port, sigMatrix_0_70_port, sigMatrix_0_69_port, 
      sigMatrix_0_68_port, sigMatrix_0_67_port, sigMatrix_0_66_port, 
      sigMatrix_0_65_port, sigMatrix_0_64_port, sigMatrix_0_63_port, 
      sigMatrix_0_62_port, sigMatrix_0_61_port, sigMatrix_0_60_port, 
      sigMatrix_0_59_port, sigMatrix_0_58_port, sigMatrix_0_57_port, 
      sigMatrix_0_56_port, sigMatrix_0_55_port, sigMatrix_0_54_port, 
      sigMatrix_0_53_port, sigMatrix_0_52_port, sigMatrix_0_51_port, 
      sigMatrix_0_50_port, sigMatrix_0_49_port, sigMatrix_0_48_port, 
      sigMatrix_0_47_port, sigMatrix_0_46_port, sigMatrix_0_45_port, 
      sigMatrix_0_44_port, sigMatrix_0_43_port, sigMatrix_0_42_port, 
      sigMatrix_0_41_port, sigMatrix_0_40_port, sigMatrix_0_39_port, 
      sigMatrix_0_38_port, sigMatrix_0_37_port, sigMatrix_0_36_port, 
      sigMatrix_0_35_port, sigMatrix_0_34_port, sigMatrix_0_33_port, 
      sigMatrix_0_32_port, sigMatrix_0_31_port, sigMatrix_0_30_port, 
      sigMatrix_0_29_port, sigMatrix_0_28_port, sigMatrix_0_27_port, 
      sigMatrix_0_26_port, sigMatrix_0_25_port, sigMatrix_0_24_port, 
      sigMatrix_0_23_port, sigMatrix_0_22_port, sigMatrix_0_21_port, 
      sigMatrix_0_20_port, sigMatrix_0_19_port, sigMatrix_0_18_port, 
      sigMatrix_0_17_port, sigMatrix_0_16_port, sigMatrix_0_15_port, 
      sigMatrix_0_14_port, sigMatrix_0_13_port, sigMatrix_0_12_port, 
      sigMatrix_0_11_port, sigMatrix_0_10_port, sigMatrix_0_9_port, 
      sigMatrix_0_8_port, sigMatrix_0_7_port, sigMatrix_0_6_port, 
      sigMatrix_0_5_port, sigMatrix_0_4_port, sigMatrix_0_3_port, 
      sigMatrix_0_2_port, sigMatrix_0_1_port, sigMatrix_0_0_port, 
      sigMatrix_1_127_port, sigMatrix_1_126_port, sigMatrix_1_119_port, 
      sigMatrix_1_118_port, sigMatrix_1_111_port, sigMatrix_1_110_port, 
      sigMatrix_1_103_port, sigMatrix_1_102_port, sigMatrix_1_95_port, 
      sigMatrix_1_94_port, sigMatrix_1_87_port, sigMatrix_1_86_port, 
      sigMatrix_1_79_port, sigMatrix_1_78_port, sigMatrix_1_71_port, 
      sigMatrix_1_70_port, sigMatrix_1_63_port, sigMatrix_1_62_port, 
      sigMatrix_1_55_port, sigMatrix_1_54_port, sigMatrix_1_47_port, 
      sigMatrix_1_46_port, sigMatrix_1_39_port, sigMatrix_1_38_port, 
      sigMatrix_1_31_port, sigMatrix_1_30_port, sigMatrix_1_23_port, 
      sigMatrix_1_22_port, sigMatrix_1_15_port, sigMatrix_1_14_port, 
      sigMatrix_2_127_port, sigMatrix_2_126_port, sigMatrix_2_111_port, 
      sigMatrix_2_110_port, sigMatrix_2_95_port, sigMatrix_2_94_port, 
      sigMatrix_2_79_port, sigMatrix_2_78_port, sigMatrix_2_63_port, 
      sigMatrix_2_62_port, sigMatrix_2_47_port, sigMatrix_2_46_port, 
      sigMatrix_2_31_port, sigMatrix_2_30_port, sigMatrix_3_127_port, 
      sigMatrix_3_126_port, sigMatrix_3_119_port, sigMatrix_3_118_port, 
      sigMatrix_3_95_port, sigMatrix_3_94_port, sigMatrix_3_87_port, 
      sigMatrix_3_86_port, sigMatrix_3_63_port, sigMatrix_3_62_port, 
      sigMatrix_3_55_port, sigMatrix_3_54_port, sigMatrix_4_127_port, 
      sigMatrix_4_126_port, sigMatrix_4_119_port, sigMatrix_4_118_port, 
      sigMatrix_4_111_port, sigMatrix_4_110_port, sigMatrix_4_103_port, 
      sigMatrix_4_102_port, n_1098, n_1099, n_1100, n_1101, n_1102, n_1103, 
      n_1104, n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, n_1112, 
      n_1113, n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, n_1121, 
      n_1122, n_1123, n_1124, n_1125, n_1126, n_1127, n_1128, n_1129, n_1130, 
      n_1131, n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, n_1139, 
      n_1140, n_1141, n_1142, n_1143, n_1144, n_1145, n_1146, n_1147, n_1148, 
      n_1149, n_1150, n_1151, n_1152, n_1153, n_1154, n_1155, n_1156, n_1157, 
      n_1158, n_1159, n_1160, n_1161, n_1162, n_1163, n_1164, n_1165, n_1166, 
      n_1167, n_1168, n_1169, n_1170, n_1171, n_1172, n_1173, n_1174, n_1175, 
      n_1176, n_1177, n_1178, n_1179, n_1180, n_1181, n_1182, n_1183, n_1184, 
      n_1185, n_1186, n_1187, n_1188, n_1189, n_1190, n_1191, n_1192, n_1193, 
      n_1194 : std_logic;

begin
   carryVector <= ( carryVector_15_port, carryVector_14_port, 
      carryVector_13_port, carryVector_12_port, carryVector_11_port, 
      carryVector_10_port, carryVector_9_port, carryVector_8_port, 
      carryVector_7_port, carryVector_6_port, carryVector_5_port, 
      carryVector_4_port, carryVector_3_port, carryVector_2_port, 
      carryVector_1_port, carryVector_0_port );
   
   PGNetwork_1 : PGNetwork_N64 port map( A(63) => A(63), A(62) => A(62), A(61) 
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
                           B(63) => B(63), B(62) => B(62), B(61) => B(61), 
                           B(60) => B(60), B(59) => B(59), B(58) => B(58), 
                           B(57) => B(57), B(56) => B(56), B(55) => B(55), 
                           B(54) => B(54), B(53) => B(53), B(52) => B(52), 
                           B(51) => B(51), B(50) => B(50), B(49) => B(49), 
                           B(48) => B(48), B(47) => B(47), B(46) => B(46), 
                           B(45) => B(45), B(44) => B(44), B(43) => B(43), 
                           B(42) => B(42), B(41) => B(41), B(40) => B(40), 
                           B(39) => B(39), B(38) => B(38), B(37) => B(37), 
                           B(36) => B(36), B(35) => B(35), B(34) => B(34), 
                           B(33) => B(33), B(32) => B(32), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Cin => Cin, 
                           gpSignals(127) => sigMatrix_0_127_port, 
                           gpSignals(126) => sigMatrix_0_126_port, 
                           gpSignals(125) => sigMatrix_0_125_port, 
                           gpSignals(124) => sigMatrix_0_124_port, 
                           gpSignals(123) => sigMatrix_0_123_port, 
                           gpSignals(122) => sigMatrix_0_122_port, 
                           gpSignals(121) => sigMatrix_0_121_port, 
                           gpSignals(120) => sigMatrix_0_120_port, 
                           gpSignals(119) => sigMatrix_0_119_port, 
                           gpSignals(118) => sigMatrix_0_118_port, 
                           gpSignals(117) => sigMatrix_0_117_port, 
                           gpSignals(116) => sigMatrix_0_116_port, 
                           gpSignals(115) => sigMatrix_0_115_port, 
                           gpSignals(114) => sigMatrix_0_114_port, 
                           gpSignals(113) => sigMatrix_0_113_port, 
                           gpSignals(112) => sigMatrix_0_112_port, 
                           gpSignals(111) => sigMatrix_0_111_port, 
                           gpSignals(110) => sigMatrix_0_110_port, 
                           gpSignals(109) => sigMatrix_0_109_port, 
                           gpSignals(108) => sigMatrix_0_108_port, 
                           gpSignals(107) => sigMatrix_0_107_port, 
                           gpSignals(106) => sigMatrix_0_106_port, 
                           gpSignals(105) => sigMatrix_0_105_port, 
                           gpSignals(104) => sigMatrix_0_104_port, 
                           gpSignals(103) => sigMatrix_0_103_port, 
                           gpSignals(102) => sigMatrix_0_102_port, 
                           gpSignals(101) => sigMatrix_0_101_port, 
                           gpSignals(100) => sigMatrix_0_100_port, 
                           gpSignals(99) => sigMatrix_0_99_port, gpSignals(98) 
                           => sigMatrix_0_98_port, gpSignals(97) => 
                           sigMatrix_0_97_port, gpSignals(96) => 
                           sigMatrix_0_96_port, gpSignals(95) => 
                           sigMatrix_0_95_port, gpSignals(94) => 
                           sigMatrix_0_94_port, gpSignals(93) => 
                           sigMatrix_0_93_port, gpSignals(92) => 
                           sigMatrix_0_92_port, gpSignals(91) => 
                           sigMatrix_0_91_port, gpSignals(90) => 
                           sigMatrix_0_90_port, gpSignals(89) => 
                           sigMatrix_0_89_port, gpSignals(88) => 
                           sigMatrix_0_88_port, gpSignals(87) => 
                           sigMatrix_0_87_port, gpSignals(86) => 
                           sigMatrix_0_86_port, gpSignals(85) => 
                           sigMatrix_0_85_port, gpSignals(84) => 
                           sigMatrix_0_84_port, gpSignals(83) => 
                           sigMatrix_0_83_port, gpSignals(82) => 
                           sigMatrix_0_82_port, gpSignals(81) => 
                           sigMatrix_0_81_port, gpSignals(80) => 
                           sigMatrix_0_80_port, gpSignals(79) => 
                           sigMatrix_0_79_port, gpSignals(78) => 
                           sigMatrix_0_78_port, gpSignals(77) => 
                           sigMatrix_0_77_port, gpSignals(76) => 
                           sigMatrix_0_76_port, gpSignals(75) => 
                           sigMatrix_0_75_port, gpSignals(74) => 
                           sigMatrix_0_74_port, gpSignals(73) => 
                           sigMatrix_0_73_port, gpSignals(72) => 
                           sigMatrix_0_72_port, gpSignals(71) => 
                           sigMatrix_0_71_port, gpSignals(70) => 
                           sigMatrix_0_70_port, gpSignals(69) => 
                           sigMatrix_0_69_port, gpSignals(68) => 
                           sigMatrix_0_68_port, gpSignals(67) => 
                           sigMatrix_0_67_port, gpSignals(66) => 
                           sigMatrix_0_66_port, gpSignals(65) => 
                           sigMatrix_0_65_port, gpSignals(64) => 
                           sigMatrix_0_64_port, gpSignals(63) => 
                           sigMatrix_0_63_port, gpSignals(62) => 
                           sigMatrix_0_62_port, gpSignals(61) => 
                           sigMatrix_0_61_port, gpSignals(60) => 
                           sigMatrix_0_60_port, gpSignals(59) => 
                           sigMatrix_0_59_port, gpSignals(58) => 
                           sigMatrix_0_58_port, gpSignals(57) => 
                           sigMatrix_0_57_port, gpSignals(56) => 
                           sigMatrix_0_56_port, gpSignals(55) => 
                           sigMatrix_0_55_port, gpSignals(54) => 
                           sigMatrix_0_54_port, gpSignals(53) => 
                           sigMatrix_0_53_port, gpSignals(52) => 
                           sigMatrix_0_52_port, gpSignals(51) => 
                           sigMatrix_0_51_port, gpSignals(50) => 
                           sigMatrix_0_50_port, gpSignals(49) => 
                           sigMatrix_0_49_port, gpSignals(48) => 
                           sigMatrix_0_48_port, gpSignals(47) => 
                           sigMatrix_0_47_port, gpSignals(46) => 
                           sigMatrix_0_46_port, gpSignals(45) => 
                           sigMatrix_0_45_port, gpSignals(44) => 
                           sigMatrix_0_44_port, gpSignals(43) => 
                           sigMatrix_0_43_port, gpSignals(42) => 
                           sigMatrix_0_42_port, gpSignals(41) => 
                           sigMatrix_0_41_port, gpSignals(40) => 
                           sigMatrix_0_40_port, gpSignals(39) => 
                           sigMatrix_0_39_port, gpSignals(38) => 
                           sigMatrix_0_38_port, gpSignals(37) => 
                           sigMatrix_0_37_port, gpSignals(36) => 
                           sigMatrix_0_36_port, gpSignals(35) => 
                           sigMatrix_0_35_port, gpSignals(34) => 
                           sigMatrix_0_34_port, gpSignals(33) => 
                           sigMatrix_0_33_port, gpSignals(32) => 
                           sigMatrix_0_32_port, gpSignals(31) => 
                           sigMatrix_0_31_port, gpSignals(30) => 
                           sigMatrix_0_30_port, gpSignals(29) => 
                           sigMatrix_0_29_port, gpSignals(28) => 
                           sigMatrix_0_28_port, gpSignals(27) => 
                           sigMatrix_0_27_port, gpSignals(26) => 
                           sigMatrix_0_26_port, gpSignals(25) => 
                           sigMatrix_0_25_port, gpSignals(24) => 
                           sigMatrix_0_24_port, gpSignals(23) => 
                           sigMatrix_0_23_port, gpSignals(22) => 
                           sigMatrix_0_22_port, gpSignals(21) => 
                           sigMatrix_0_21_port, gpSignals(20) => 
                           sigMatrix_0_20_port, gpSignals(19) => 
                           sigMatrix_0_19_port, gpSignals(18) => 
                           sigMatrix_0_18_port, gpSignals(17) => 
                           sigMatrix_0_17_port, gpSignals(16) => 
                           sigMatrix_0_16_port, gpSignals(15) => 
                           sigMatrix_0_15_port, gpSignals(14) => 
                           sigMatrix_0_14_port, gpSignals(13) => 
                           sigMatrix_0_13_port, gpSignals(12) => 
                           sigMatrix_0_12_port, gpSignals(11) => 
                           sigMatrix_0_11_port, gpSignals(10) => 
                           sigMatrix_0_10_port, gpSignals(9) => 
                           sigMatrix_0_9_port, gpSignals(8) => 
                           sigMatrix_0_8_port, gpSignals(7) => 
                           sigMatrix_0_7_port, gpSignals(6) => 
                           sigMatrix_0_6_port, gpSignals(5) => 
                           sigMatrix_0_5_port, gpSignals(4) => 
                           sigMatrix_0_4_port, gpSignals(3) => 
                           sigMatrix_0_3_port, gpSignals(2) => 
                           sigMatrix_0_2_port, gpSignals(1) => 
                           sigMatrix_0_1_port, gpSignals(0) => 
                           sigMatrix_0_0_port);
   ST_row1And2_1 : ST_row1And2_N64 port map( input(127) => sigMatrix_0_127_port
                           , input(126) => sigMatrix_0_126_port, input(125) => 
                           sigMatrix_0_125_port, input(124) => 
                           sigMatrix_0_124_port, input(123) => 
                           sigMatrix_0_123_port, input(122) => 
                           sigMatrix_0_122_port, input(121) => 
                           sigMatrix_0_121_port, input(120) => 
                           sigMatrix_0_120_port, input(119) => 
                           sigMatrix_0_119_port, input(118) => 
                           sigMatrix_0_118_port, input(117) => 
                           sigMatrix_0_117_port, input(116) => 
                           sigMatrix_0_116_port, input(115) => 
                           sigMatrix_0_115_port, input(114) => 
                           sigMatrix_0_114_port, input(113) => 
                           sigMatrix_0_113_port, input(112) => 
                           sigMatrix_0_112_port, input(111) => 
                           sigMatrix_0_111_port, input(110) => 
                           sigMatrix_0_110_port, input(109) => 
                           sigMatrix_0_109_port, input(108) => 
                           sigMatrix_0_108_port, input(107) => 
                           sigMatrix_0_107_port, input(106) => 
                           sigMatrix_0_106_port, input(105) => 
                           sigMatrix_0_105_port, input(104) => 
                           sigMatrix_0_104_port, input(103) => 
                           sigMatrix_0_103_port, input(102) => 
                           sigMatrix_0_102_port, input(101) => 
                           sigMatrix_0_101_port, input(100) => 
                           sigMatrix_0_100_port, input(99) => 
                           sigMatrix_0_99_port, input(98) => 
                           sigMatrix_0_98_port, input(97) => 
                           sigMatrix_0_97_port, input(96) => 
                           sigMatrix_0_96_port, input(95) => 
                           sigMatrix_0_95_port, input(94) => 
                           sigMatrix_0_94_port, input(93) => 
                           sigMatrix_0_93_port, input(92) => 
                           sigMatrix_0_92_port, input(91) => 
                           sigMatrix_0_91_port, input(90) => 
                           sigMatrix_0_90_port, input(89) => 
                           sigMatrix_0_89_port, input(88) => 
                           sigMatrix_0_88_port, input(87) => 
                           sigMatrix_0_87_port, input(86) => 
                           sigMatrix_0_86_port, input(85) => 
                           sigMatrix_0_85_port, input(84) => 
                           sigMatrix_0_84_port, input(83) => 
                           sigMatrix_0_83_port, input(82) => 
                           sigMatrix_0_82_port, input(81) => 
                           sigMatrix_0_81_port, input(80) => 
                           sigMatrix_0_80_port, input(79) => 
                           sigMatrix_0_79_port, input(78) => 
                           sigMatrix_0_78_port, input(77) => 
                           sigMatrix_0_77_port, input(76) => 
                           sigMatrix_0_76_port, input(75) => 
                           sigMatrix_0_75_port, input(74) => 
                           sigMatrix_0_74_port, input(73) => 
                           sigMatrix_0_73_port, input(72) => 
                           sigMatrix_0_72_port, input(71) => 
                           sigMatrix_0_71_port, input(70) => 
                           sigMatrix_0_70_port, input(69) => 
                           sigMatrix_0_69_port, input(68) => 
                           sigMatrix_0_68_port, input(67) => 
                           sigMatrix_0_67_port, input(66) => 
                           sigMatrix_0_66_port, input(65) => 
                           sigMatrix_0_65_port, input(64) => 
                           sigMatrix_0_64_port, input(63) => 
                           sigMatrix_0_63_port, input(62) => 
                           sigMatrix_0_62_port, input(61) => 
                           sigMatrix_0_61_port, input(60) => 
                           sigMatrix_0_60_port, input(59) => 
                           sigMatrix_0_59_port, input(58) => 
                           sigMatrix_0_58_port, input(57) => 
                           sigMatrix_0_57_port, input(56) => 
                           sigMatrix_0_56_port, input(55) => 
                           sigMatrix_0_55_port, input(54) => 
                           sigMatrix_0_54_port, input(53) => 
                           sigMatrix_0_53_port, input(52) => 
                           sigMatrix_0_52_port, input(51) => 
                           sigMatrix_0_51_port, input(50) => 
                           sigMatrix_0_50_port, input(49) => 
                           sigMatrix_0_49_port, input(48) => 
                           sigMatrix_0_48_port, input(47) => 
                           sigMatrix_0_47_port, input(46) => 
                           sigMatrix_0_46_port, input(45) => 
                           sigMatrix_0_45_port, input(44) => 
                           sigMatrix_0_44_port, input(43) => 
                           sigMatrix_0_43_port, input(42) => 
                           sigMatrix_0_42_port, input(41) => 
                           sigMatrix_0_41_port, input(40) => 
                           sigMatrix_0_40_port, input(39) => 
                           sigMatrix_0_39_port, input(38) => 
                           sigMatrix_0_38_port, input(37) => 
                           sigMatrix_0_37_port, input(36) => 
                           sigMatrix_0_36_port, input(35) => 
                           sigMatrix_0_35_port, input(34) => 
                           sigMatrix_0_34_port, input(33) => 
                           sigMatrix_0_33_port, input(32) => 
                           sigMatrix_0_32_port, input(31) => 
                           sigMatrix_0_31_port, input(30) => 
                           sigMatrix_0_30_port, input(29) => 
                           sigMatrix_0_29_port, input(28) => 
                           sigMatrix_0_28_port, input(27) => 
                           sigMatrix_0_27_port, input(26) => 
                           sigMatrix_0_26_port, input(25) => 
                           sigMatrix_0_25_port, input(24) => 
                           sigMatrix_0_24_port, input(23) => 
                           sigMatrix_0_23_port, input(22) => 
                           sigMatrix_0_22_port, input(21) => 
                           sigMatrix_0_21_port, input(20) => 
                           sigMatrix_0_20_port, input(19) => 
                           sigMatrix_0_19_port, input(18) => 
                           sigMatrix_0_18_port, input(17) => 
                           sigMatrix_0_17_port, input(16) => 
                           sigMatrix_0_16_port, input(15) => 
                           sigMatrix_0_15_port, input(14) => 
                           sigMatrix_0_14_port, input(13) => 
                           sigMatrix_0_13_port, input(12) => 
                           sigMatrix_0_12_port, input(11) => 
                           sigMatrix_0_11_port, input(10) => 
                           sigMatrix_0_10_port, input(9) => sigMatrix_0_9_port,
                           input(8) => sigMatrix_0_8_port, input(7) => 
                           sigMatrix_0_7_port, input(6) => sigMatrix_0_6_port, 
                           input(5) => sigMatrix_0_5_port, input(4) => 
                           sigMatrix_0_4_port, input(3) => sigMatrix_0_3_port, 
                           input(2) => sigMatrix_0_2_port, input(1) => 
                           sigMatrix_0_1_port, input(0) => sigMatrix_0_0_port, 
                           output(127) => sigMatrix_1_127_port, output(126) => 
                           sigMatrix_1_126_port, output(125) => n_1098, 
                           output(124) => n_1099, output(123) => n_1100, 
                           output(122) => n_1101, output(121) => n_1102, 
                           output(120) => n_1103, output(119) => 
                           sigMatrix_1_119_port, output(118) => 
                           sigMatrix_1_118_port, output(117) => n_1104, 
                           output(116) => n_1105, output(115) => n_1106, 
                           output(114) => n_1107, output(113) => n_1108, 
                           output(112) => n_1109, output(111) => 
                           sigMatrix_1_111_port, output(110) => 
                           sigMatrix_1_110_port, output(109) => n_1110, 
                           output(108) => n_1111, output(107) => n_1112, 
                           output(106) => n_1113, output(105) => n_1114, 
                           output(104) => n_1115, output(103) => 
                           sigMatrix_1_103_port, output(102) => 
                           sigMatrix_1_102_port, output(101) => n_1116, 
                           output(100) => n_1117, output(99) => n_1118, 
                           output(98) => n_1119, output(97) => n_1120, 
                           output(96) => n_1121, output(95) => 
                           sigMatrix_1_95_port, output(94) => 
                           sigMatrix_1_94_port, output(93) => n_1122, 
                           output(92) => n_1123, output(91) => n_1124, 
                           output(90) => n_1125, output(89) => n_1126, 
                           output(88) => n_1127, output(87) => 
                           sigMatrix_1_87_port, output(86) => 
                           sigMatrix_1_86_port, output(85) => n_1128, 
                           output(84) => n_1129, output(83) => n_1130, 
                           output(82) => n_1131, output(81) => n_1132, 
                           output(80) => n_1133, output(79) => 
                           sigMatrix_1_79_port, output(78) => 
                           sigMatrix_1_78_port, output(77) => n_1134, 
                           output(76) => n_1135, output(75) => n_1136, 
                           output(74) => n_1137, output(73) => n_1138, 
                           output(72) => n_1139, output(71) => 
                           sigMatrix_1_71_port, output(70) => 
                           sigMatrix_1_70_port, output(69) => n_1140, 
                           output(68) => n_1141, output(67) => n_1142, 
                           output(66) => n_1143, output(65) => n_1144, 
                           output(64) => n_1145, output(63) => 
                           sigMatrix_1_63_port, output(62) => 
                           sigMatrix_1_62_port, output(61) => n_1146, 
                           output(60) => n_1147, output(59) => n_1148, 
                           output(58) => n_1149, output(57) => n_1150, 
                           output(56) => n_1151, output(55) => 
                           sigMatrix_1_55_port, output(54) => 
                           sigMatrix_1_54_port, output(53) => n_1152, 
                           output(52) => n_1153, output(51) => n_1154, 
                           output(50) => n_1155, output(49) => n_1156, 
                           output(48) => n_1157, output(47) => 
                           sigMatrix_1_47_port, output(46) => 
                           sigMatrix_1_46_port, output(45) => n_1158, 
                           output(44) => n_1159, output(43) => n_1160, 
                           output(42) => n_1161, output(41) => n_1162, 
                           output(40) => n_1163, output(39) => 
                           sigMatrix_1_39_port, output(38) => 
                           sigMatrix_1_38_port, output(37) => n_1164, 
                           output(36) => n_1165, output(35) => n_1166, 
                           output(34) => n_1167, output(33) => n_1168, 
                           output(32) => n_1169, output(31) => 
                           sigMatrix_1_31_port, output(30) => 
                           sigMatrix_1_30_port, output(29) => n_1170, 
                           output(28) => n_1171, output(27) => n_1172, 
                           output(26) => n_1173, output(25) => n_1174, 
                           output(24) => n_1175, output(23) => 
                           sigMatrix_1_23_port, output(22) => 
                           sigMatrix_1_22_port, output(21) => n_1176, 
                           output(20) => n_1177, output(19) => n_1178, 
                           output(18) => n_1179, output(17) => n_1180, 
                           output(16) => n_1181, output(15) => 
                           sigMatrix_1_15_port, output(14) => 
                           sigMatrix_1_14_port, output(13) => n_1182, 
                           output(12) => n_1183, output(11) => n_1184, 
                           output(10) => n_1185, output(9) => n_1186, output(8)
                           => n_1187, output(7) => carryVector_0_port, 
                           output(6) => n_1188, output(5) => n_1189, output(4) 
                           => n_1190, output(3) => n_1191, output(2) => n_1192,
                           output(1) => n_1193, output(0) => n_1194);
   G_1_0_0_0 : GeneralGenerate port map( Gk_1 => carryVector_0_port, GikPik(1) 
                           => sigMatrix_1_15_port, GikPik(0) => 
                           sigMatrix_1_14_port, Gij => carryVector_1_port);
   PG_1_0_1_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_23_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_22_port, GikPik(1) => 
                           sigMatrix_1_31_port, GikPik(0) => 
                           sigMatrix_1_30_port, GijPij(1) => 
                           sigMatrix_2_31_port, GijPij(0) => 
                           sigMatrix_2_30_port);
   PG_1_0_2_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_39_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_38_port, GikPik(1) => 
                           sigMatrix_1_47_port, GikPik(0) => 
                           sigMatrix_1_46_port, GijPij(1) => 
                           sigMatrix_2_47_port, GijPij(0) => 
                           sigMatrix_2_46_port);
   PG_1_0_3_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_55_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_54_port, GikPik(1) => 
                           sigMatrix_1_63_port, GikPik(0) => 
                           sigMatrix_1_62_port, GijPij(1) => 
                           sigMatrix_2_63_port, GijPij(0) => 
                           sigMatrix_2_62_port);
   PG_1_0_4_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_71_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_70_port, GikPik(1) => 
                           sigMatrix_1_79_port, GikPik(0) => 
                           sigMatrix_1_78_port, GijPij(1) => 
                           sigMatrix_2_79_port, GijPij(0) => 
                           sigMatrix_2_78_port);
   PG_1_0_5_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_87_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_86_port, GikPik(1) => 
                           sigMatrix_1_95_port, GikPik(0) => 
                           sigMatrix_1_94_port, GijPij(1) => 
                           sigMatrix_2_95_port, GijPij(0) => 
                           sigMatrix_2_94_port);
   PG_1_0_6_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_103_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_102_port, GikPik(1) => 
                           sigMatrix_1_111_port, GikPik(0) => 
                           sigMatrix_1_110_port, GijPij(1) => 
                           sigMatrix_2_111_port, GijPij(0) => 
                           sigMatrix_2_110_port);
   PG_1_0_7_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_119_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_118_port, GikPik(1) => 
                           sigMatrix_1_127_port, GikPik(0) => 
                           sigMatrix_1_126_port, GijPij(1) => 
                           sigMatrix_2_127_port, GijPij(0) => 
                           sigMatrix_2_126_port);
   G_1_1_0_0 : GeneralGenerate port map( Gk_1 => carryVector_1_port, GikPik(1) 
                           => sigMatrix_1_23_port, GikPik(0) => 
                           sigMatrix_1_22_port, Gij => carryVector_2_port);
   G_1_1_0_1 : GeneralGenerate port map( Gk_1 => carryVector_1_port, GikPik(1) 
                           => sigMatrix_2_31_port, GikPik(0) => 
                           sigMatrix_2_30_port, Gij => carryVector_3_port);
   PG_1_1_1_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_2_47_port, Gk_1Pk_1(0) => 
                           sigMatrix_2_46_port, GikPik(1) => 
                           sigMatrix_1_55_port, GikPik(0) => 
                           sigMatrix_1_54_port, GijPij(1) => 
                           sigMatrix_3_55_port, GijPij(0) => 
                           sigMatrix_3_54_port);
   PG_1_1_1_1 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_2_47_port, Gk_1Pk_1(0) => 
                           sigMatrix_2_46_port, GikPik(1) => 
                           sigMatrix_2_63_port, GikPik(0) => 
                           sigMatrix_2_62_port, GijPij(1) => 
                           sigMatrix_3_63_port, GijPij(0) => 
                           sigMatrix_3_62_port);
   PG_1_1_2_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_2_79_port, Gk_1Pk_1(0) => 
                           sigMatrix_2_78_port, GikPik(1) => 
                           sigMatrix_1_87_port, GikPik(0) => 
                           sigMatrix_1_86_port, GijPij(1) => 
                           sigMatrix_3_87_port, GijPij(0) => 
                           sigMatrix_3_86_port);
   PG_1_1_2_1 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_2_79_port, Gk_1Pk_1(0) => 
                           sigMatrix_2_78_port, GikPik(1) => 
                           sigMatrix_2_95_port, GikPik(0) => 
                           sigMatrix_2_94_port, GijPij(1) => 
                           sigMatrix_3_95_port, GijPij(0) => 
                           sigMatrix_3_94_port);
   PG_1_1_3_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_2_111_port, Gk_1Pk_1(0) => 
                           sigMatrix_2_110_port, GikPik(1) => 
                           sigMatrix_1_119_port, GikPik(0) => 
                           sigMatrix_1_118_port, GijPij(1) => 
                           sigMatrix_3_119_port, GijPij(0) => 
                           sigMatrix_3_118_port);
   PG_1_1_3_1 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_2_111_port, Gk_1Pk_1(0) => 
                           sigMatrix_2_110_port, GikPik(1) => 
                           sigMatrix_2_127_port, GikPik(0) => 
                           sigMatrix_2_126_port, GijPij(1) => 
                           sigMatrix_3_127_port, GijPij(0) => 
                           sigMatrix_3_126_port);
   G_1_2_0_0 : GeneralGenerate port map( Gk_1 => carryVector_2_port, GikPik(1) 
                           => sigMatrix_1_39_port, GikPik(0) => 
                           sigMatrix_1_38_port, Gij => carryVector_4_port);
   G_1_2_0_1 : GeneralGenerate port map( Gk_1 => carryVector_2_port, GikPik(1) 
                           => sigMatrix_2_47_port, GikPik(0) => 
                           sigMatrix_2_46_port, Gij => carryVector_5_port);
   G_1_2_0_2 : GeneralGenerate port map( Gk_1 => carryVector_2_port, GikPik(1) 
                           => sigMatrix_3_55_port, GikPik(0) => 
                           sigMatrix_3_54_port, Gij => carryVector_6_port);
   G_1_2_0_3 : GeneralGenerate port map( Gk_1 => carryVector_2_port, GikPik(1) 
                           => sigMatrix_3_63_port, GikPik(0) => 
                           sigMatrix_3_62_port, Gij => carryVector_7_port);
   PG_1_2_1_0 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_3_95_port, Gk_1Pk_1(0) => 
                           sigMatrix_3_94_port, GikPik(1) => 
                           sigMatrix_1_103_port, GikPik(0) => 
                           sigMatrix_1_102_port, GijPij(1) => 
                           sigMatrix_4_103_port, GijPij(0) => 
                           sigMatrix_4_102_port);
   PG_1_2_1_1 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_3_95_port, Gk_1Pk_1(0) => 
                           sigMatrix_3_94_port, GikPik(1) => 
                           sigMatrix_2_111_port, GikPik(0) => 
                           sigMatrix_2_110_port, GijPij(1) => 
                           sigMatrix_4_111_port, GijPij(0) => 
                           sigMatrix_4_110_port);
   PG_1_2_1_2 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_3_95_port, Gk_1Pk_1(0) => 
                           sigMatrix_3_94_port, GikPik(1) => 
                           sigMatrix_3_119_port, GikPik(0) => 
                           sigMatrix_3_118_port, GijPij(1) => 
                           sigMatrix_4_119_port, GijPij(0) => 
                           sigMatrix_4_118_port);
   PG_1_2_1_3 : GeneralPropagateGenerate port map( Gk_1Pk_1(1) => 
                           sigMatrix_3_95_port, Gk_1Pk_1(0) => 
                           sigMatrix_3_94_port, GikPik(1) => 
                           sigMatrix_3_127_port, GikPik(0) => 
                           sigMatrix_3_126_port, GijPij(1) => 
                           sigMatrix_4_127_port, GijPij(0) => 
                           sigMatrix_4_126_port);
   G_1_3_0_0 : GeneralGenerate port map( Gk_1 => carryVector_4_port, GikPik(1) 
                           => sigMatrix_1_71_port, GikPik(0) => 
                           sigMatrix_1_70_port, Gij => carryVector_8_port);
   G_1_3_0_1 : GeneralGenerate port map( Gk_1 => carryVector_4_port, GikPik(1) 
                           => sigMatrix_2_79_port, GikPik(0) => 
                           sigMatrix_2_78_port, Gij => carryVector_9_port);
   G_1_3_0_2 : GeneralGenerate port map( Gk_1 => carryVector_4_port, GikPik(1) 
                           => sigMatrix_3_87_port, GikPik(0) => 
                           sigMatrix_3_86_port, Gij => carryVector_10_port);
   G_1_3_0_3 : GeneralGenerate port map( Gk_1 => carryVector_4_port, GikPik(1) 
                           => sigMatrix_3_95_port, GikPik(0) => 
                           sigMatrix_3_94_port, Gij => carryVector_11_port);
   G_1_3_0_4 : GeneralGenerate port map( Gk_1 => carryVector_4_port, GikPik(1) 
                           => sigMatrix_4_103_port, GikPik(0) => 
                           sigMatrix_4_102_port, Gij => carryVector_12_port);
   G_1_3_0_5 : GeneralGenerate port map( Gk_1 => carryVector_4_port, GikPik(1) 
                           => sigMatrix_4_111_port, GikPik(0) => 
                           sigMatrix_4_110_port, Gij => carryVector_13_port);
   G_1_3_0_6 : GeneralGenerate port map( Gk_1 => carryVector_4_port, GikPik(1) 
                           => sigMatrix_4_119_port, GikPik(0) => 
                           sigMatrix_4_118_port, Gij => carryVector_14_port);
   G_1_3_0_7 : GeneralGenerate port map( Gk_1 => carryVector_4_port, GikPik(1) 
                           => sigMatrix_4_127_port, GikPik(0) => 
                           sigMatrix_4_126_port, Gij => carryVector_15_port);

end SYN_struct;
