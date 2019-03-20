
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21.all;

entity ND2_2 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_2;

architecture SYN_ARCH2 of ND2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21.all;

entity ND2_1 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_1;

architecture SYN_ARCH2 of ND2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21.all;

entity ND2_0 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_0;

architecture SYN_ARCH2 of ND2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21.all;

entity IV is

   port( A : in std_logic;  Y : out std_logic);

end IV;

architecture SYN_BEHAVIORAL of IV is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21.all;

entity MUX21 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21;

architecture SYN_STRUCTURAL of MUX21 is

   component ND2_1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_0
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV port map( A => S, Y => SB);
   UND1 : ND2_0 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_2 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_1 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;
