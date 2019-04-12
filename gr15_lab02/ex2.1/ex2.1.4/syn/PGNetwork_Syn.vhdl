
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_PGNetwork is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_PGNetwork;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_PGNetwork.all;

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

use work.CONV_PACK_PGNetwork.all;

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

use work.CONV_PACK_PGNetwork.all;

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

use work.CONV_PACK_PGNetwork.all;

entity PGNetwork is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  
         gpSignals : out std_logic_vector (63 downto 0));

end PGNetwork;

architecture SYN_struct of PGNetwork is

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

end SYN_struct;
