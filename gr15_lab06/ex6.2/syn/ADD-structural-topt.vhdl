
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_completeAdder is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_completeAdder;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n4, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n4, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity MUX21_GENERIC_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_7;

architecture SYN_beh of MUX21_GENERIC_N4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => Y(1));
   U2 : INV_X1 port map( A => n12, ZN => Y(2));
   U3 : INV_X1 port map( A => n13, ZN => Y(3));
   U4 : INV_X1 port map( A => n10, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => A(3), A2 => n14, B1 => SEL, B2 => B(3), ZN => 
                           n13);
   U6 : AOI22_X1 port map( A1 => A(2), A2 => n14, B1 => B(2), B2 => SEL, ZN => 
                           n12);
   U7 : AOI22_X1 port map( A1 => A(1), A2 => n14, B1 => B(1), B2 => SEL, ZN => 
                           n11);
   U8 : AOI22_X1 port map( A1 => A(0), A2 => n14, B1 => B(0), B2 => SEL, ZN => 
                           n10);
   U9 : INV_X1 port map( A => SEL, ZN => n14);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity MUX21_GENERIC_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_6;

architecture SYN_beh of MUX21_GENERIC_N4_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => Y(1));
   U2 : INV_X1 port map( A => n12, ZN => Y(2));
   U3 : INV_X1 port map( A => n13, ZN => Y(3));
   U4 : INV_X1 port map( A => n10, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => A(3), A2 => n14, B1 => SEL, B2 => B(3), ZN => 
                           n13);
   U6 : AOI22_X1 port map( A1 => A(2), A2 => n14, B1 => B(2), B2 => SEL, ZN => 
                           n12);
   U7 : AOI22_X1 port map( A1 => A(1), A2 => n14, B1 => B(1), B2 => SEL, ZN => 
                           n11);
   U8 : AOI22_X1 port map( A1 => A(0), A2 => n14, B1 => B(0), B2 => SEL, ZN => 
                           n10);
   U9 : INV_X1 port map( A => SEL, ZN => n14);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity MUX21_GENERIC_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_5;

architecture SYN_beh of MUX21_GENERIC_N4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14, n15 : std_logic;

begin
   
   U1 : INV_X1 port map( A => SEL, ZN => n10);
   U2 : INV_X1 port map( A => SEL, ZN => n15);
   U3 : INV_X1 port map( A => n12, ZN => Y(1));
   U4 : AOI22_X1 port map( A1 => A(1), A2 => n10, B1 => B(1), B2 => SEL, ZN => 
                           n12);
   U5 : INV_X1 port map( A => n13, ZN => Y(2));
   U6 : AOI22_X1 port map( A1 => A(2), A2 => n15, B1 => B(2), B2 => SEL, ZN => 
                           n13);
   U7 : INV_X1 port map( A => n14, ZN => Y(3));
   U8 : AOI22_X1 port map( A1 => A(3), A2 => n15, B1 => B(3), B2 => SEL, ZN => 
                           n14);
   U9 : INV_X1 port map( A => n11, ZN => Y(0));
   U10 : AOI22_X1 port map( A1 => A(0), A2 => n15, B1 => B(0), B2 => SEL, ZN =>
                           n11);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity MUX21_GENERIC_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_4;

architecture SYN_beh of MUX21_GENERIC_N4_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, net2872, n5, n9, n10, n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => A(1), ZN => n5);
   U2 : INV_X1 port map( A => B(1), ZN => n9);
   U3 : MUX2_X1 port map( A => n5, B => n9, S => SEL, Z => n8);
   U4 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U5 : INV_X1 port map( A => SEL, ZN => net2872);
   U6 : INV_X1 port map( A => n11, ZN => Y(3));
   U7 : INV_X1 port map( A => n8, ZN => Y(1));
   U8 : INV_X1 port map( A => n10, ZN => Y(2));
   U9 : AOI22_X1 port map( A1 => net2872, A2 => A(3), B1 => SEL, B2 => B(3), ZN
                           => n11);
   U10 : AOI22_X1 port map( A1 => net2872, A2 => A(2), B1 => SEL, B2 => B(2), 
                           ZN => n10);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity MUX21_GENERIC_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_3;

architecture SYN_beh of MUX21_GENERIC_N4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity MUX21_GENERIC_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_2;

architecture SYN_beh of MUX21_GENERIC_N4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity MUX21_GENERIC_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_1;

architecture SYN_beh of MUX21_GENERIC_N4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));
   U3 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   U4 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_15;

architecture SYN_STRUCTURAL of RCA_N4_15 is

   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_60 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_59 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_58 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_57 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_14;

architecture SYN_STRUCTURAL of RCA_N4_14 is

   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_56 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_55 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_54 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_53 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_13;

architecture SYN_STRUCTURAL of RCA_N4_13 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_52 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_51 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_50 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_49 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_12;

architecture SYN_STRUCTURAL of RCA_N4_12 is

   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_11;

architecture SYN_STRUCTURAL of RCA_N4_11 is

   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_44 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_43 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_42 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_41 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_10;

architecture SYN_STRUCTURAL of RCA_N4_10 is

   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_40 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_39 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_38 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_37 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_9;

architecture SYN_STRUCTURAL of RCA_N4_9 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_36 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_35 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_34 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_33 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_8;

architecture SYN_STRUCTURAL of RCA_N4_8 is

   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_7;

architecture SYN_STRUCTURAL of RCA_N4_7 is

   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_28 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_27 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_26 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_25 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_6;

architecture SYN_STRUCTURAL of RCA_N4_6 is

   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_24 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_23 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_22 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_21 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_5;

architecture SYN_STRUCTURAL of RCA_N4_5 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_20 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_19 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_18 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_17 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_4;

architecture SYN_STRUCTURAL of RCA_N4_4 is

   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_3;

architecture SYN_STRUCTURAL of RCA_N4_3 is

   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_11 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_10 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_9 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_2;

architecture SYN_STRUCTURAL of RCA_N4_2 is

   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_1;

architecture SYN_STRUCTURAL of RCA_N4_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity triBlock_6 is

   port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
         std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
         downto 0));

end triBlock_6;

architecture SYN_struct of triBlock_6 is

   component GeneralPropagateGenerate_16
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_17
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_18
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, 
      PG_right_block_out_1_port, PG_right_block_out_0_port : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate_18 port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1)
                           , Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   PG_2 : GeneralPropagateGenerate_17 port map( Gk_1Pk_1(1) => 
                           Gk_1Pk_1_right(1), Gk_1Pk_1(0) => Gk_1Pk_1_right(0),
                           GikPik(1) => GikPik_right(1), GikPik(0) => 
                           GikPik_right(0), GijPij(1) => 
                           PG_right_block_out_1_port, GijPij(0) => 
                           PG_right_block_out_0_port);
   PG_3 : GeneralPropagateGenerate_16 port map( Gk_1Pk_1(1) => 
                           PG_right_block_out_1_port, Gk_1Pk_1(0) => 
                           PG_right_block_out_0_port, GikPik(1) => 
                           PG_left_block_out_1_port, GikPik(0) => 
                           PG_left_block_out_0_port, GijPij(1) => GijPij(1), 
                           GijPij(0) => GijPij(0));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity triBlock_5 is

   port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
         std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
         downto 0));

end triBlock_5;

architecture SYN_struct of triBlock_5 is

   component GeneralPropagateGenerate_13
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_14
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_15
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, 
      PG_right_block_out_1_port, PG_right_block_out_0_port : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate_15 port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1)
                           , Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   PG_2 : GeneralPropagateGenerate_14 port map( Gk_1Pk_1(1) => 
                           Gk_1Pk_1_right(1), Gk_1Pk_1(0) => Gk_1Pk_1_right(0),
                           GikPik(1) => GikPik_right(1), GikPik(0) => 
                           GikPik_right(0), GijPij(1) => 
                           PG_right_block_out_1_port, GijPij(0) => 
                           PG_right_block_out_0_port);
   PG_3 : GeneralPropagateGenerate_13 port map( Gk_1Pk_1(1) => 
                           PG_right_block_out_1_port, Gk_1Pk_1(0) => 
                           PG_right_block_out_0_port, GikPik(1) => 
                           PG_left_block_out_1_port, GikPik(0) => 
                           PG_left_block_out_0_port, GijPij(1) => GijPij(1), 
                           GijPij(0) => GijPij(0));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity triBlock_4 is

   port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
         std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
         downto 0));

end triBlock_4;

architecture SYN_struct of triBlock_4 is

   component GeneralPropagateGenerate_10
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_11
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_12
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, 
      PG_right_block_out_1_port, PG_right_block_out_0_port : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate_12 port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1)
                           , Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   PG_2 : GeneralPropagateGenerate_11 port map( Gk_1Pk_1(1) => 
                           Gk_1Pk_1_right(1), Gk_1Pk_1(0) => Gk_1Pk_1_right(0),
                           GikPik(1) => GikPik_right(1), GikPik(0) => 
                           GikPik_right(0), GijPij(1) => 
                           PG_right_block_out_1_port, GijPij(0) => 
                           PG_right_block_out_0_port);
   PG_3 : GeneralPropagateGenerate_10 port map( Gk_1Pk_1(1) => 
                           PG_right_block_out_1_port, Gk_1Pk_1(0) => 
                           PG_right_block_out_0_port, GikPik(1) => 
                           PG_left_block_out_1_port, GikPik(0) => 
                           PG_left_block_out_0_port, GijPij(1) => GijPij(1), 
                           GijPij(0) => GijPij(0));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity triBlock_3 is

   port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
         std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
         downto 0));

end triBlock_3;

architecture SYN_struct of triBlock_3 is

   component GeneralPropagateGenerate_7
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_8
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_9
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, 
      PG_right_block_out_1_port, PG_right_block_out_0_port : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate_9 port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1),
                           Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   PG_2 : GeneralPropagateGenerate_8 port map( Gk_1Pk_1(1) => Gk_1Pk_1_right(1)
                           , Gk_1Pk_1(0) => Gk_1Pk_1_right(0), GikPik(1) => 
                           GikPik_right(1), GikPik(0) => GikPik_right(0), 
                           GijPij(1) => PG_right_block_out_1_port, GijPij(0) =>
                           PG_right_block_out_0_port);
   PG_3 : GeneralPropagateGenerate_7 port map( Gk_1Pk_1(1) => 
                           PG_right_block_out_1_port, Gk_1Pk_1(0) => 
                           PG_right_block_out_0_port, GikPik(1) => 
                           PG_left_block_out_1_port, GikPik(0) => 
                           PG_left_block_out_0_port, GijPij(1) => GijPij(1), 
                           GijPij(0) => GijPij(0));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity triBlock_2 is

   port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
         std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
         downto 0));

end triBlock_2;

architecture SYN_struct of triBlock_2 is

   component GeneralPropagateGenerate_4
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_5
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_6
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, 
      PG_right_block_out_1_port, PG_right_block_out_0_port : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate_6 port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1),
                           Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   PG_2 : GeneralPropagateGenerate_5 port map( Gk_1Pk_1(1) => Gk_1Pk_1_right(1)
                           , Gk_1Pk_1(0) => Gk_1Pk_1_right(0), GikPik(1) => 
                           GikPik_right(1), GikPik(0) => GikPik_right(0), 
                           GijPij(1) => PG_right_block_out_1_port, GijPij(0) =>
                           PG_right_block_out_0_port);
   PG_3 : GeneralPropagateGenerate_4 port map( Gk_1Pk_1(1) => 
                           PG_right_block_out_1_port, Gk_1Pk_1(0) => 
                           PG_right_block_out_0_port, GikPik(1) => 
                           PG_left_block_out_1_port, GikPik(0) => 
                           PG_left_block_out_0_port, GijPij(1) => GijPij(1), 
                           GijPij(0) => GijPij(0));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity triBlock_1 is

   port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
         std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
         downto 0));

end triBlock_1;

architecture SYN_struct of triBlock_1 is

   component GeneralPropagateGenerate_1
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_2
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_3
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, 
      PG_right_block_out_1_port, PG_right_block_out_0_port : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate_3 port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1),
                           Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   PG_2 : GeneralPropagateGenerate_2 port map( Gk_1Pk_1(1) => Gk_1Pk_1_right(1)
                           , Gk_1Pk_1(0) => Gk_1Pk_1_right(0), GikPik(1) => 
                           GikPik_right(1), GikPik(0) => GikPik_right(0), 
                           GijPij(1) => PG_right_block_out_1_port, GijPij(0) =>
                           PG_right_block_out_0_port);
   PG_3 : GeneralPropagateGenerate_1 port map( Gk_1Pk_1(1) => 
                           PG_right_block_out_1_port, Gk_1Pk_1(0) => 
                           PG_right_block_out_0_port, GikPik(1) => 
                           PG_left_block_out_1_port, GikPik(0) => 
                           PG_left_block_out_0_port, GijPij(1) => GijPij(1), 
                           GijPij(0) => GijPij(0));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_31 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_31;

architecture SYN_beh of PGNetBlock_31 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_30 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_30;

architecture SYN_beh of PGNetBlock_30 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => a, ZN => n1);
   U2 : XNOR2_X1 port map( A => b, B => n1, ZN => gp(0));
   U3 : AND2_X1 port map( A1 => b, A2 => a, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_29 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_29;

architecture SYN_beh of PGNetBlock_29 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_28 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_28;

architecture SYN_beh of PGNetBlock_28 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_27 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_27;

architecture SYN_beh of PGNetBlock_27 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_26 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_26;

architecture SYN_beh of PGNetBlock_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_25 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_25;

architecture SYN_beh of PGNetBlock_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_24 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_24;

architecture SYN_beh of PGNetBlock_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : CLKBUF_X1 port map( A => b, Z => n1);
   U3 : AND2_X1 port map( A1 => n1, A2 => a, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_23 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_23;

architecture SYN_beh of PGNetBlock_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_22 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_22;

architecture SYN_beh of PGNetBlock_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_21 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_21;

architecture SYN_beh of PGNetBlock_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_20 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_20;

architecture SYN_beh of PGNetBlock_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_19 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_19;

architecture SYN_beh of PGNetBlock_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_18 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_18;

architecture SYN_beh of PGNetBlock_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_17 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_17;

architecture SYN_beh of PGNetBlock_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_16 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_16;

architecture SYN_beh of PGNetBlock_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_15 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_15;

architecture SYN_beh of PGNetBlock_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_14 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_14;

architecture SYN_beh of PGNetBlock_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_13 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_13;

architecture SYN_beh of PGNetBlock_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_12 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_12;

architecture SYN_beh of PGNetBlock_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_11 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_11;

architecture SYN_beh of PGNetBlock_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_10 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_10;

architecture SYN_beh of PGNetBlock_10 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => a, ZN => n2);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => gp(1));
   U3 : XNOR2_X1 port map( A => b, B => n2, ZN => gp(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_9 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_9;

architecture SYN_beh of PGNetBlock_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_8 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_8;

architecture SYN_beh of PGNetBlock_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_7 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_7;

architecture SYN_beh of PGNetBlock_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_6 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_6;

architecture SYN_beh of PGNetBlock_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_5 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_5;

architecture SYN_beh of PGNetBlock_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_4 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_4;

architecture SYN_beh of PGNetBlock_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_3 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_3;

architecture SYN_beh of PGNetBlock_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_2 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_2;

architecture SYN_beh of PGNetBlock_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => a, A2 => b, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_1 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_1;

architecture SYN_beh of PGNetBlock_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity CSB_generic_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end CSB_generic_N4_6;

architecture SYN_struct of CSB_generic_N4_6 is

   component MUX21_GENERIC_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA1toMux_3_port, RCA1toMux_2_port, 
      RCA1toMux_1_port, RCA1toMux_0_port, RCA2toMux_3_port, RCA2toMux_2_port, 
      RCA2toMux_1_port, RCA2toMux_0_port, n_1000, n_1001 : std_logic;

begin
   
   RCA_1 : RCA_N4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA1toMux_3_port, S(2) => RCA1toMux_2_port, S(1) => 
                           RCA1toMux_1_port, S(0) => RCA1toMux_0_port, Co => 
                           n_1000);
   RCA_2 : RCA_N4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA2toMux_3_port, S(2) => RCA2toMux_2_port, S(1) => 
                           RCA2toMux_1_port, S(0) => RCA2toMux_0_port, Co => 
                           n_1001);
   MUX21_1 : MUX21_GENERIC_N4_6 port map( A(3) => RCA1toMux_3_port, A(2) => 
                           RCA1toMux_2_port, A(1) => RCA1toMux_1_port, A(0) => 
                           RCA1toMux_0_port, B(3) => RCA2toMux_3_port, B(2) => 
                           RCA2toMux_2_port, B(1) => RCA2toMux_1_port, B(0) => 
                           RCA2toMux_0_port, SEL => Cin, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity CSB_generic_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end CSB_generic_N4_5;

architecture SYN_struct of CSB_generic_N4_5 is

   component MUX21_GENERIC_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA1toMux_3_port, RCA1toMux_2_port, 
      RCA1toMux_1_port, RCA1toMux_0_port, RCA2toMux_3_port, RCA2toMux_2_port, 
      RCA2toMux_1_port, RCA2toMux_0_port, n_1002, n_1003 : std_logic;

begin
   
   RCA_1 : RCA_N4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA1toMux_3_port, S(2) => RCA1toMux_2_port, S(1) => 
                           RCA1toMux_1_port, S(0) => RCA1toMux_0_port, Co => 
                           n_1002);
   RCA_2 : RCA_N4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA2toMux_3_port, S(2) => RCA2toMux_2_port, S(1) => 
                           RCA2toMux_1_port, S(0) => RCA2toMux_0_port, Co => 
                           n_1003);
   MUX21_1 : MUX21_GENERIC_N4_5 port map( A(3) => RCA1toMux_3_port, A(2) => 
                           RCA1toMux_2_port, A(1) => RCA1toMux_1_port, A(0) => 
                           RCA1toMux_0_port, B(3) => RCA2toMux_3_port, B(2) => 
                           RCA2toMux_2_port, B(1) => RCA2toMux_1_port, B(0) => 
                           RCA2toMux_0_port, SEL => Cin, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity CSB_generic_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end CSB_generic_N4_4;

architecture SYN_struct of CSB_generic_N4_4 is

   component MUX21_GENERIC_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA1toMux_3_port, RCA1toMux_2_port, 
      RCA1toMux_1_port, RCA1toMux_0_port, RCA2toMux_3_port, RCA2toMux_2_port, 
      RCA2toMux_1_port, RCA2toMux_0_port, n_1004, n_1005 : std_logic;

begin
   
   RCA_1 : RCA_N4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA1toMux_3_port, S(2) => RCA1toMux_2_port, S(1) => 
                           RCA1toMux_1_port, S(0) => RCA1toMux_0_port, Co => 
                           n_1004);
   RCA_2 : RCA_N4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA2toMux_3_port, S(2) => RCA2toMux_2_port, S(1) => 
                           RCA2toMux_1_port, S(0) => RCA2toMux_0_port, Co => 
                           n_1005);
   MUX21_1 : MUX21_GENERIC_N4_4 port map( A(3) => RCA1toMux_3_port, A(2) => 
                           RCA1toMux_2_port, A(1) => RCA1toMux_1_port, A(0) => 
                           RCA1toMux_0_port, B(3) => RCA2toMux_3_port, B(2) => 
                           RCA2toMux_2_port, B(1) => RCA2toMux_1_port, B(0) => 
                           RCA2toMux_0_port, SEL => Cin, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity CSB_generic_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end CSB_generic_N4_3;

architecture SYN_struct of CSB_generic_N4_3 is

   component MUX21_GENERIC_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA1toMux_3_port, RCA1toMux_2_port, 
      RCA1toMux_1_port, RCA1toMux_0_port, RCA2toMux_3_port, RCA2toMux_2_port, 
      RCA2toMux_1_port, RCA2toMux_0_port, n_1006, n_1007 : std_logic;

begin
   
   RCA_1 : RCA_N4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA1toMux_3_port, S(2) => RCA1toMux_2_port, S(1) => 
                           RCA1toMux_1_port, S(0) => RCA1toMux_0_port, Co => 
                           n_1006);
   RCA_2 : RCA_N4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA2toMux_3_port, S(2) => RCA2toMux_2_port, S(1) => 
                           RCA2toMux_1_port, S(0) => RCA2toMux_0_port, Co => 
                           n_1007);
   MUX21_1 : MUX21_GENERIC_N4_3 port map( A(3) => RCA1toMux_3_port, A(2) => 
                           RCA1toMux_2_port, A(1) => RCA1toMux_1_port, A(0) => 
                           RCA1toMux_0_port, B(3) => RCA2toMux_3_port, B(2) => 
                           RCA2toMux_2_port, B(1) => RCA2toMux_1_port, B(0) => 
                           RCA2toMux_0_port, SEL => Cin, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity CSB_generic_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end CSB_generic_N4_2;

architecture SYN_struct of CSB_generic_N4_2 is

   component MUX21_GENERIC_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA1toMux_3_port, RCA1toMux_2_port, 
      RCA1toMux_1_port, RCA1toMux_0_port, RCA2toMux_3_port, RCA2toMux_2_port, 
      RCA2toMux_1_port, RCA2toMux_0_port, n_1008, n_1009 : std_logic;

begin
   
   RCA_1 : RCA_N4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA1toMux_3_port, S(2) => RCA1toMux_2_port, S(1) => 
                           RCA1toMux_1_port, S(0) => RCA1toMux_0_port, Co => 
                           n_1008);
   RCA_2 : RCA_N4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA2toMux_3_port, S(2) => RCA2toMux_2_port, S(1) => 
                           RCA2toMux_1_port, S(0) => RCA2toMux_0_port, Co => 
                           n_1009);
   MUX21_1 : MUX21_GENERIC_N4_2 port map( A(3) => RCA1toMux_3_port, A(2) => 
                           RCA1toMux_2_port, A(1) => RCA1toMux_1_port, A(0) => 
                           RCA1toMux_0_port, B(3) => RCA2toMux_3_port, B(2) => 
                           RCA2toMux_2_port, B(1) => RCA2toMux_1_port, B(0) => 
                           RCA2toMux_0_port, SEL => Cin, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity CSB_generic_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end CSB_generic_N4_1;

architecture SYN_struct of CSB_generic_N4_1 is

   component MUX21_GENERIC_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA1toMux_3_port, RCA1toMux_2_port, 
      RCA1toMux_1_port, RCA1toMux_0_port, RCA2toMux_3_port, RCA2toMux_2_port, 
      RCA2toMux_1_port, RCA2toMux_0_port, n_1010, n_1011 : std_logic;

begin
   
   RCA_1 : RCA_N4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA1toMux_3_port, S(2) => RCA1toMux_2_port, S(1) => 
                           RCA1toMux_1_port, S(0) => RCA1toMux_0_port, Co => 
                           n_1010);
   RCA_2 : RCA_N4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA2toMux_3_port, S(2) => RCA2toMux_2_port, S(1) => 
                           RCA2toMux_1_port, S(0) => RCA2toMux_0_port, Co => 
                           n_1011);
   MUX21_1 : MUX21_GENERIC_N4_1 port map( A(3) => RCA1toMux_3_port, A(2) => 
                           RCA1toMux_2_port, A(1) => RCA1toMux_1_port, A(0) => 
                           RCA1toMux_0_port, B(3) => RCA2toMux_3_port, B(2) => 
                           RCA2toMux_2_port, B(1) => RCA2toMux_1_port, B(0) => 
                           RCA2toMux_0_port, SEL => Cin, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_26 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_26;

architecture SYN_beh of GeneralPropagateGenerate_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_25 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_25;

architecture SYN_beh of GeneralPropagateGenerate_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_24 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_24;

architecture SYN_beh of GeneralPropagateGenerate_24 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => GijPij(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_23 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_23;

architecture SYN_beh of GeneralPropagateGenerate_23 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));
   U2 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U3 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_22 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_22;

architecture SYN_beh of GeneralPropagateGenerate_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => GikPik(0), B2 => Gk_1Pk_1(1), A => GikPik(1), 
                           ZN => n3);
   U2 : AND2_X1 port map( A1 => GikPik(0), A2 => Gk_1Pk_1(0), ZN => GijPij(0));
   U3 : INV_X1 port map( A => n3, ZN => GijPij(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_21 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_21;

architecture SYN_beh of GeneralPropagateGenerate_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => GijPij(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_20 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_20;

architecture SYN_beh of GeneralPropagateGenerate_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_19 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_19;

architecture SYN_beh of GeneralPropagateGenerate_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => GijPij(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_18 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_18;

architecture SYN_beh of GeneralPropagateGenerate_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_17 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_17;

architecture SYN_beh_architecture of GeneralPropagateGenerate_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => GikPik(0), Z => n3);
   U2 : INV_X1 port map( A => n4, ZN => GijPij(1));
   U3 : AOI21_X1 port map( B1 => GikPik(0), B2 => Gk_1Pk_1(1), A => GikPik(1), 
                           ZN => n4);
   U4 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => n3, ZN => GijPij(0));

end SYN_beh_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_16 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_16;

architecture SYN_beh_architecture2 of GeneralPropagateGenerate_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh_architecture2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_15 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_15;

architecture SYN_beh of GeneralPropagateGenerate_15 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));
   U2 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U3 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_14 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_14;

architecture SYN_beh_architecture of GeneralPropagateGenerate_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_13 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_13;

architecture SYN_beh_architecture2 of GeneralPropagateGenerate_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => GikPik(0), A2 => Gk_1Pk_1(0), ZN => GijPij(0));

end SYN_beh_architecture2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_12 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_12;

architecture SYN_beh of GeneralPropagateGenerate_12 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));
   U2 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U3 : AOI21_X1 port map( B1 => GikPik(0), B2 => Gk_1Pk_1(1), A => GikPik(1), 
                           ZN => n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_11 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_11;

architecture SYN_beh_architecture of GeneralPropagateGenerate_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => GikPik(0), B2 => Gk_1Pk_1(1), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => GikPik(0), A2 => Gk_1Pk_1(0), ZN => GijPij(0));

end SYN_beh_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_10 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_10;

architecture SYN_beh_architecture2 of GeneralPropagateGenerate_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh_architecture2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_9 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_9;

architecture SYN_beh of GeneralPropagateGenerate_9 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));
   U2 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U3 : AOI21_X1 port map( B1 => GikPik(0), B2 => Gk_1Pk_1(1), A => GikPik(1), 
                           ZN => n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_8 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_8;

architecture SYN_beh_architecture of GeneralPropagateGenerate_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => GikPik(0), A2 => Gk_1Pk_1(0), ZN => GijPij(0));
   U2 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U3 : AOI21_X1 port map( B1 => GikPik(0), B2 => Gk_1Pk_1(1), A => GikPik(1), 
                           ZN => n3);

end SYN_beh_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_7 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_7;

architecture SYN_beh_architecture2 of GeneralPropagateGenerate_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => GikPik(0), A2 => Gk_1Pk_1(0), ZN => GijPij(0));

end SYN_beh_architecture2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_6 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_6;

architecture SYN_beh of GeneralPropagateGenerate_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_5 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_5;

architecture SYN_beh_architecture of GeneralPropagateGenerate_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_4 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_4;

architecture SYN_beh_architecture2 of GeneralPropagateGenerate_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));
   U2 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U3 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);

end SYN_beh_architecture2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_3 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_3;

architecture SYN_beh of GeneralPropagateGenerate_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_2 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_2;

architecture SYN_beh_architecture of GeneralPropagateGenerate_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh_architecture;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_1 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_1;

architecture SYN_beh_architecture2 of GeneralPropagateGenerate_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => GijPij(1));
   U3 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));

end SYN_beh_architecture2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_9 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_9;

architecture SYN_beh of GeneralGenerate_9 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gk_1, B2 => GikPik(0), A => GikPik(1), ZN => 
                           n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_8 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_8;

architecture SYN_beh of GeneralGenerate_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gk_1, B2 => GikPik(0), A => GikPik(1), ZN => 
                           n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_7 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_7;

architecture SYN_beh of GeneralGenerate_7 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gk_1, B2 => GikPik(0), A => GikPik(1), ZN => 
                           n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_6 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_6;

architecture SYN_beh of GeneralGenerate_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gk_1, B2 => GikPik(0), A => GikPik(1), ZN => 
                           n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_5 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_5;

architecture SYN_beh of GeneralGenerate_5 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gk_1, B2 => GikPik(0), A => GikPik(1), ZN => 
                           n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_4 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_4;

architecture SYN_beh of GeneralGenerate_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gk_1, B2 => GikPik(0), A => GikPik(1), ZN => 
                           n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_3 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_3;

architecture SYN_beh of GeneralGenerate_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => GikPik(0), B2 => Gk_1, A => GikPik(1), ZN => 
                           n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_2 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_2;

architecture SYN_beh of GeneralGenerate_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gk_1, B2 => GikPik(0), A => GikPik(1), ZN => 
                           n3);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_1 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_1;

architecture SYN_beh of GeneralGenerate_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gk_1, B2 => GikPik(0), A => GikPik(1), ZN => 
                           n3);
   U2 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : INV_X1 port map( A => n2, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity MUX21_GENERIC_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_0;

architecture SYN_beh of MUX21_GENERIC_N4_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6, n7, n8, n9, n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n6, ZN => Y(3));
   U2 : AOI22_X1 port map( A1 => A(3), A2 => n5, B1 => B(3), B2 => SEL, ZN => 
                           n6);
   U3 : INV_X1 port map( A => n8, ZN => Y(1));
   U4 : AOI22_X1 port map( A1 => A(1), A2 => n5, B1 => B(1), B2 => SEL, ZN => 
                           n8);
   U5 : INV_X1 port map( A => n7, ZN => Y(2));
   U6 : AOI22_X1 port map( A1 => A(2), A2 => n5, B1 => B(2), B2 => SEL, ZN => 
                           n7);
   U7 : INV_X1 port map( A => n9, ZN => Y(0));
   U8 : AOI22_X1 port map( A1 => A(0), A2 => n5, B1 => B(0), B2 => SEL, ZN => 
                           n9);
   U9 : INV_X1 port map( A => SEL, ZN => n5);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity RCA_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_0;

architecture SYN_STRUCTURAL of RCA_N4_0 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity triBlock_0 is

   port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
         std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
         downto 0));

end triBlock_0;

architecture SYN_struct of triBlock_0 is

   component GeneralPropagateGenerate_19
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_20
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_21
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, 
      PG_right_block_out_1_port, PG_right_block_out_0_port : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate_21 port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1)
                           , Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   PG_2 : GeneralPropagateGenerate_20 port map( Gk_1Pk_1(1) => 
                           Gk_1Pk_1_right(1), Gk_1Pk_1(0) => Gk_1Pk_1_right(0),
                           GikPik(1) => GikPik_right(1), GikPik(0) => 
                           GikPik_right(0), GijPij(1) => 
                           PG_right_block_out_1_port, GijPij(0) => 
                           PG_right_block_out_0_port);
   PG_3 : GeneralPropagateGenerate_19 port map( Gk_1Pk_1(1) => 
                           PG_right_block_out_1_port, Gk_1Pk_1(0) => 
                           PG_right_block_out_0_port, GikPik(1) => 
                           PG_left_block_out_1_port, GikPik(0) => 
                           PG_left_block_out_0_port, GijPij(1) => GijPij(1), 
                           GijPij(0) => GijPij(0));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity triBlockSpecial is

   port( GikPik_left, Gk_1Pk_1_left, GikPik_right : in std_logic_vector (1 
         downto 0);  Gk_1_right : in std_logic;  Gij : out std_logic);

end triBlockSpecial;

architecture SYN_struct of triBlockSpecial is

   component GeneralGenerate_1
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralGenerate_2
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralPropagateGenerate_22
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   signal PG_left_block_out_1_port, PG_left_block_out_0_port, G_right_block_out
      : std_logic;

begin
   
   PG_1 : GeneralPropagateGenerate_22 port map( Gk_1Pk_1(1) => Gk_1Pk_1_left(1)
                           , Gk_1Pk_1(0) => Gk_1Pk_1_left(0), GikPik(1) => 
                           GikPik_left(1), GikPik(0) => GikPik_left(0), 
                           GijPij(1) => PG_left_block_out_1_port, GijPij(0) => 
                           PG_left_block_out_0_port);
   G_1 : GeneralGenerate_2 port map( Gk_1 => Gk_1_right, GikPik(1) => 
                           GikPik_right(1), GikPik(0) => GikPik_right(0), Gij 
                           => G_right_block_out);
   G_2 : GeneralGenerate_1 port map( Gk_1 => G_right_block_out, GikPik(1) => 
                           PG_left_block_out_1_port, GikPik(0) => 
                           PG_left_block_out_0_port, Gij => Gij);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetBlock_0 is

   port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));

end PGNetBlock_0;

architecture SYN_beh of PGNetBlock_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => gp(0));
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => gp(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity SpecialPGBlock is

   port( a, b, Cin : in std_logic;  G1_0 : out std_logic);

end SpecialPGBlock;

architecture SYN_struct of SpecialPGBlock is

   component GeneralGenerate_3
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component PGNetBlock_1
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   signal g1p1_1_port, g1p1_0_port : std_logic;

begin
   
   PGBlock : PGNetBlock_1 port map( a => a, b => b, gp(1) => g1p1_1_port, gp(0)
                           => g1p1_0_port);
   GGBlock : GeneralGenerate_3 port map( Gk_1 => Cin, GikPik(1) => g1p1_1_port,
                           GikPik(0) => g1p1_0_port, Gij => G1_0);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity CSB_generic_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end CSB_generic_N4_7;

architecture SYN_struct of CSB_generic_N4_7 is

   component MUX21_GENERIC_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA1toMux_3_port, RCA1toMux_2_port, 
      RCA1toMux_1_port, RCA1toMux_0_port, RCA2toMux_3_port, RCA2toMux_2_port, 
      RCA2toMux_1_port, RCA2toMux_0_port, n_1012, n_1013 : std_logic;

begin
   
   RCA_1 : RCA_N4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA1toMux_3_port, S(2) => RCA1toMux_2_port, S(1) => 
                           RCA1toMux_1_port, S(0) => RCA1toMux_0_port, Co => 
                           n_1012);
   RCA_2 : RCA_N4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA2toMux_3_port, S(2) => RCA2toMux_2_port, S(1) => 
                           RCA2toMux_1_port, S(0) => RCA2toMux_0_port, Co => 
                           n_1013);
   MUX21_1 : MUX21_GENERIC_N4_7 port map( A(3) => RCA1toMux_3_port, A(2) => 
                           RCA1toMux_2_port, A(1) => RCA1toMux_1_port, A(0) => 
                           RCA1toMux_0_port, B(3) => RCA2toMux_3_port, B(2) => 
                           RCA2toMux_2_port, B(1) => RCA2toMux_1_port, B(0) => 
                           RCA2toMux_0_port, SEL => Cin, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity CSB_generic_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end CSB_generic_N4_0;

architecture SYN_struct of CSB_generic_N4_0 is

   component MUX21_GENERIC_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA1toMux_3_port, RCA1toMux_2_port, 
      RCA1toMux_1_port, RCA1toMux_0_port, RCA2toMux_3_port, RCA2toMux_2_port, 
      RCA2toMux_1_port, RCA2toMux_0_port, n_1014, n_1015 : std_logic;

begin
   
   RCA_1 : RCA_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA1toMux_3_port, S(2) => RCA1toMux_2_port, S(1) => 
                           RCA1toMux_1_port, S(0) => RCA1toMux_0_port, Co => 
                           n_1014);
   RCA_2 : RCA_N4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA2toMux_3_port, S(2) => RCA2toMux_2_port, S(1) => 
                           RCA2toMux_1_port, S(0) => RCA2toMux_0_port, Co => 
                           n_1015);
   MUX21_1 : MUX21_GENERIC_N4_0 port map( A(3) => RCA1toMux_3_port, A(2) => 
                           RCA1toMux_2_port, A(1) => RCA1toMux_1_port, A(0) => 
                           RCA1toMux_0_port, B(3) => RCA2toMux_3_port, B(2) => 
                           RCA2toMux_2_port, B(1) => RCA2toMux_1_port, B(0) => 
                           RCA2toMux_0_port, SEL => Cin, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralPropagateGenerate_0 is

   port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
         std_logic_vector (1 downto 0));

end GeneralPropagateGenerate_0;

architecture SYN_beh of GeneralPropagateGenerate_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Gk_1Pk_1(0), A2 => GikPik(0), ZN => GijPij(0));
   U2 : AOI21_X1 port map( B1 => Gk_1Pk_1(1), B2 => GikPik(0), A => GikPik(1), 
                           ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => GijPij(1));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity GeneralGenerate_0 is

   port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  Gij 
         : out std_logic);

end GeneralGenerate_0;

architecture SYN_beh of GeneralGenerate_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gk_1, B2 => GikPik(0), A => GikPik(1), ZN => 
                           n2);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity ST_row1And2_N32 is

   port( input : in std_logic_vector (63 downto 0);  output : out 
         std_logic_vector (63 downto 0));

end ST_row1And2_N32;

architecture SYN_struct of ST_row1And2_N32 is

   component triBlock_1
      port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
            std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
            downto 0));
   end component;
   
   component triBlock_2
      port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
            std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
            downto 0));
   end component;
   
   component triBlock_3
      port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
            std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
            downto 0));
   end component;
   
   component triBlock_4
      port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
            std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
            downto 0));
   end component;
   
   component triBlock_5
      port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
            std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
            downto 0));
   end component;
   
   component triBlock_6
      port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
            std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
            downto 0));
   end component;
   
   component triBlock_0
      port( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right : in 
            std_logic_vector (1 downto 0);  GijPij : out std_logic_vector (1 
            downto 0));
   end component;
   
   component triBlockSpecial
      port( GikPik_left, Gk_1Pk_1_left, GikPik_right : in std_logic_vector (1 
            downto 0);  Gk_1_right : in std_logic;  Gij : out std_logic);
   end component;

begin
   
   TBS_0 : triBlockSpecial port map( GikPik_left(1) => input(7), GikPik_left(0)
                           => input(6), Gk_1Pk_1_left(1) => input(5), 
                           Gk_1Pk_1_left(0) => input(4), GikPik_right(1) => 
                           input(3), GikPik_right(0) => input(2), Gk_1_right =>
                           input(0), Gij => output(7));
   TB_1 : triBlock_0 port map( Gk_1Pk_1_left(1) => input(13), Gk_1Pk_1_left(0) 
                           => input(12), GikPik_left(1) => input(15), 
                           GikPik_left(0) => input(14), Gk_1Pk_1_right(1) => 
                           input(9), Gk_1Pk_1_right(0) => input(8), 
                           GikPik_right(1) => input(11), GikPik_right(0) => 
                           input(10), GijPij(1) => output(15), GijPij(0) => 
                           output(14));
   TB_2 : triBlock_6 port map( Gk_1Pk_1_left(1) => input(21), Gk_1Pk_1_left(0) 
                           => input(20), GikPik_left(1) => input(23), 
                           GikPik_left(0) => input(22), Gk_1Pk_1_right(1) => 
                           input(17), Gk_1Pk_1_right(0) => input(16), 
                           GikPik_right(1) => input(19), GikPik_right(0) => 
                           input(18), GijPij(1) => output(23), GijPij(0) => 
                           output(22));
   TB_3 : triBlock_5 port map( Gk_1Pk_1_left(1) => input(29), Gk_1Pk_1_left(0) 
                           => input(28), GikPik_left(1) => input(31), 
                           GikPik_left(0) => input(30), Gk_1Pk_1_right(1) => 
                           input(25), Gk_1Pk_1_right(0) => input(24), 
                           GikPik_right(1) => input(27), GikPik_right(0) => 
                           input(26), GijPij(1) => output(31), GijPij(0) => 
                           output(30));
   TB_4 : triBlock_4 port map( Gk_1Pk_1_left(1) => input(37), Gk_1Pk_1_left(0) 
                           => input(36), GikPik_left(1) => input(39), 
                           GikPik_left(0) => input(38), Gk_1Pk_1_right(1) => 
                           input(33), Gk_1Pk_1_right(0) => input(32), 
                           GikPik_right(1) => input(35), GikPik_right(0) => 
                           input(34), GijPij(1) => output(39), GijPij(0) => 
                           output(38));
   TB_5 : triBlock_3 port map( Gk_1Pk_1_left(1) => input(45), Gk_1Pk_1_left(0) 
                           => input(44), GikPik_left(1) => input(47), 
                           GikPik_left(0) => input(46), Gk_1Pk_1_right(1) => 
                           input(41), Gk_1Pk_1_right(0) => input(40), 
                           GikPik_right(1) => input(43), GikPik_right(0) => 
                           input(42), GijPij(1) => output(47), GijPij(0) => 
                           output(46));
   TB_6 : triBlock_2 port map( Gk_1Pk_1_left(1) => input(53), Gk_1Pk_1_left(0) 
                           => input(52), GikPik_left(1) => input(55), 
                           GikPik_left(0) => input(54), Gk_1Pk_1_right(1) => 
                           input(49), Gk_1Pk_1_right(0) => input(48), 
                           GikPik_right(1) => input(51), GikPik_right(0) => 
                           input(50), GijPij(1) => output(55), GijPij(0) => 
                           output(54));
   TB_7 : triBlock_1 port map( Gk_1Pk_1_left(1) => input(61), Gk_1Pk_1_left(0) 
                           => input(60), GikPik_left(1) => input(63), 
                           GikPik_left(0) => input(62), Gk_1Pk_1_right(1) => 
                           input(57), Gk_1Pk_1_right(0) => input(56), 
                           GikPik_right(1) => input(59), GikPik_right(0) => 
                           input(58), GijPij(1) => output(63), GijPij(0) => 
                           output(62));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity PGNetwork_N32 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  
         gpSignals : out std_logic_vector (63 downto 0));

end PGNetwork_N32;

architecture SYN_struct of PGNetwork_N32 is

   component PGNetBlock_2
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_3
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_4
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_5
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_6
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_7
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_8
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_9
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_10
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_11
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_12
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_13
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_14
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_15
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_16
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_17
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_18
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_19
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_20
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_21
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_22
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_23
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_24
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_25
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_26
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_27
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_28
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_29
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_30
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_31
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component PGNetBlock_0
      port( a, b : in std_logic;  gp : out std_logic_vector (1 downto 0));
   end component;
   
   component SpecialPGBlock
      port( a, b, Cin : in std_logic;  G1_0 : out std_logic);
   end component;

begin
   
   SpecBlock_0 : SpecialPGBlock port map( a => A(0), b => B(0), Cin => Cin, 
                           G1_0 => gpSignals(0));
   PGBlock_1 : PGNetBlock_0 port map( a => A(1), b => B(1), gp(1) => 
                           gpSignals(3), gp(0) => gpSignals(2));
   PGBlock_2 : PGNetBlock_31 port map( a => A(2), b => B(2), gp(1) => 
                           gpSignals(5), gp(0) => gpSignals(4));
   PGBlock_3 : PGNetBlock_30 port map( a => A(3), b => B(3), gp(1) => 
                           gpSignals(7), gp(0) => gpSignals(6));
   PGBlock_4 : PGNetBlock_29 port map( a => A(4), b => B(4), gp(1) => 
                           gpSignals(9), gp(0) => gpSignals(8));
   PGBlock_5 : PGNetBlock_28 port map( a => A(5), b => B(5), gp(1) => 
                           gpSignals(11), gp(0) => gpSignals(10));
   PGBlock_6 : PGNetBlock_27 port map( a => A(6), b => B(6), gp(1) => 
                           gpSignals(13), gp(0) => gpSignals(12));
   PGBlock_7 : PGNetBlock_26 port map( a => A(7), b => B(7), gp(1) => 
                           gpSignals(15), gp(0) => gpSignals(14));
   PGBlock_8 : PGNetBlock_25 port map( a => A(8), b => B(8), gp(1) => 
                           gpSignals(17), gp(0) => gpSignals(16));
   PGBlock_9 : PGNetBlock_24 port map( a => A(9), b => B(9), gp(1) => 
                           gpSignals(19), gp(0) => gpSignals(18));
   PGBlock_10 : PGNetBlock_23 port map( a => A(10), b => B(10), gp(1) => 
                           gpSignals(21), gp(0) => gpSignals(20));
   PGBlock_11 : PGNetBlock_22 port map( a => A(11), b => B(11), gp(1) => 
                           gpSignals(23), gp(0) => gpSignals(22));
   PGBlock_12 : PGNetBlock_21 port map( a => A(12), b => B(12), gp(1) => 
                           gpSignals(25), gp(0) => gpSignals(24));
   PGBlock_13 : PGNetBlock_20 port map( a => A(13), b => B(13), gp(1) => 
                           gpSignals(27), gp(0) => gpSignals(26));
   PGBlock_14 : PGNetBlock_19 port map( a => A(14), b => B(14), gp(1) => 
                           gpSignals(29), gp(0) => gpSignals(28));
   PGBlock_15 : PGNetBlock_18 port map( a => A(15), b => B(15), gp(1) => 
                           gpSignals(31), gp(0) => gpSignals(30));
   PGBlock_16 : PGNetBlock_17 port map( a => A(16), b => B(16), gp(1) => 
                           gpSignals(33), gp(0) => gpSignals(32));
   PGBlock_17 : PGNetBlock_16 port map( a => A(17), b => B(17), gp(1) => 
                           gpSignals(35), gp(0) => gpSignals(34));
   PGBlock_18 : PGNetBlock_15 port map( a => A(18), b => B(18), gp(1) => 
                           gpSignals(37), gp(0) => gpSignals(36));
   PGBlock_19 : PGNetBlock_14 port map( a => A(19), b => B(19), gp(1) => 
                           gpSignals(39), gp(0) => gpSignals(38));
   PGBlock_20 : PGNetBlock_13 port map( a => A(20), b => B(20), gp(1) => 
                           gpSignals(41), gp(0) => gpSignals(40));
   PGBlock_21 : PGNetBlock_12 port map( a => A(21), b => B(21), gp(1) => 
                           gpSignals(43), gp(0) => gpSignals(42));
   PGBlock_22 : PGNetBlock_11 port map( a => A(22), b => B(22), gp(1) => 
                           gpSignals(45), gp(0) => gpSignals(44));
   PGBlock_23 : PGNetBlock_10 port map( a => A(23), b => B(23), gp(1) => 
                           gpSignals(47), gp(0) => gpSignals(46));
   PGBlock_24 : PGNetBlock_9 port map( a => A(24), b => B(24), gp(1) => 
                           gpSignals(49), gp(0) => gpSignals(48));
   PGBlock_25 : PGNetBlock_8 port map( a => A(25), b => B(25), gp(1) => 
                           gpSignals(51), gp(0) => gpSignals(50));
   PGBlock_26 : PGNetBlock_7 port map( a => A(26), b => B(26), gp(1) => 
                           gpSignals(53), gp(0) => gpSignals(52));
   PGBlock_27 : PGNetBlock_6 port map( a => A(27), b => B(27), gp(1) => 
                           gpSignals(55), gp(0) => gpSignals(54));
   PGBlock_28 : PGNetBlock_5 port map( a => A(28), b => B(28), gp(1) => 
                           gpSignals(57), gp(0) => gpSignals(56));
   PGBlock_29 : PGNetBlock_4 port map( a => A(29), b => B(29), gp(1) => 
                           gpSignals(59), gp(0) => gpSignals(58));
   PGBlock_30 : PGNetBlock_3 port map( a => A(30), b => B(30), gp(1) => 
                           gpSignals(61), gp(0) => gpSignals(60));
   PGBlock_31 : PGNetBlock_2 port map( a => A(31), b => B(31), gp(1) => 
                           gpSignals(63), gp(0) => gpSignals(62));
   gpSignals(1) <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity CSSG_generic_N32_RADIX4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  
         carry_vector : in std_logic_vector (7 downto 0);  Cout : out std_logic
         ;  S : out std_logic_vector (31 downto 0));

end CSSG_generic_N32_RADIX4;

architecture SYN_struct of CSSG_generic_N32_RADIX4 is

   component CSB_generic_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CSB_generic_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CSB_generic_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CSB_generic_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CSB_generic_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CSB_generic_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CSB_generic_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CSB_generic_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   Cout <= carry_vector(7);
   
   CSB_0 : CSB_generic_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1),
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Cin => Cin, S(3) => S(3), S(2) 
                           => S(2), S(1) => S(1), S(0) => S(0));
   CSB_1 : CSB_generic_N4_7 port map( A(3) => A(7), A(2) => A(6), A(1) => A(5),
                           A(0) => A(4), B(3) => B(7), B(2) => B(6), B(1) => 
                           B(5), B(0) => B(4), Cin => carry_vector(0), S(3) => 
                           S(7), S(2) => S(6), S(1) => S(5), S(0) => S(4));
   CSB_2 : CSB_generic_N4_6 port map( A(3) => A(11), A(2) => A(10), A(1) => 
                           A(9), A(0) => A(8), B(3) => B(11), B(2) => B(10), 
                           B(1) => B(9), B(0) => B(8), Cin => carry_vector(1), 
                           S(3) => S(11), S(2) => S(10), S(1) => S(9), S(0) => 
                           S(8));
   CSB_3 : CSB_generic_N4_5 port map( A(3) => A(15), A(2) => A(14), A(1) => 
                           A(13), A(0) => A(12), B(3) => B(15), B(2) => B(14), 
                           B(1) => B(13), B(0) => B(12), Cin => carry_vector(2)
                           , S(3) => S(15), S(2) => S(14), S(1) => S(13), S(0) 
                           => S(12));
   CSB_4 : CSB_generic_N4_4 port map( A(3) => A(19), A(2) => A(18), A(1) => 
                           A(17), A(0) => A(16), B(3) => B(19), B(2) => B(18), 
                           B(1) => B(17), B(0) => B(16), Cin => carry_vector(3)
                           , S(3) => S(19), S(2) => S(18), S(1) => S(17), S(0) 
                           => S(16));
   CSB_5 : CSB_generic_N4_3 port map( A(3) => A(23), A(2) => A(22), A(1) => 
                           A(21), A(0) => A(20), B(3) => B(23), B(2) => B(22), 
                           B(1) => B(21), B(0) => B(20), Cin => carry_vector(4)
                           , S(3) => S(23), S(2) => S(22), S(1) => S(21), S(0) 
                           => S(20));
   CSB_6 : CSB_generic_N4_2 port map( A(3) => A(27), A(2) => A(26), A(1) => 
                           A(25), A(0) => A(24), B(3) => B(27), B(2) => B(26), 
                           B(1) => B(25), B(0) => B(24), Cin => carry_vector(5)
                           , S(3) => S(27), S(2) => S(26), S(1) => S(25), S(0) 
                           => S(24));
   CSB_7 : CSB_generic_N4_1 port map( A(3) => A(31), A(2) => A(30), A(1) => 
                           A(29), A(0) => A(28), B(3) => B(31), B(2) => B(30), 
                           B(1) => B(29), B(0) => B(28), Cin => carry_vector(6)
                           , S(3) => S(31), S(2) => S(30), S(1) => S(29), S(0) 
                           => S(28));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity SparseTree_N32_RADIX4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  
         carryVector : out std_logic_vector (7 downto 0));

end SparseTree_N32_RADIX4;

architecture SYN_struct of SparseTree_N32_RADIX4 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GeneralGenerate_4
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralGenerate_5
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralGenerate_6
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralGenerate_7
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralPropagateGenerate_23
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_24
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralGenerate_8
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralGenerate_9
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component GeneralPropagateGenerate_25
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_26
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralPropagateGenerate_0
      port( Gk_1Pk_1, GikPik : in std_logic_vector (1 downto 0);  GijPij : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component GeneralGenerate_0
      port( Gk_1 : in std_logic;  GikPik : in std_logic_vector (1 downto 0);  
            Gij : out std_logic);
   end component;
   
   component ST_row1And2_N32
      port( input : in std_logic_vector (63 downto 0);  output : out 
            std_logic_vector (63 downto 0));
   end component;
   
   component PGNetwork_N32
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  
            gpSignals : out std_logic_vector (63 downto 0));
   end component;
   
   signal carryVector_7_port, carryVector_6_port, carryVector_5_port, 
      carryVector_4_port, n7, carryVector_2_port, n8, n9, sigMatrix_0_63_port, 
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
      sigMatrix_0_2_port, sigMatrix_0_0_port, sigMatrix_1_63_port, 
      sigMatrix_1_62_port, sigMatrix_1_55_port, sigMatrix_1_54_port, 
      sigMatrix_1_47_port, sigMatrix_1_46_port, sigMatrix_1_39_port, 
      sigMatrix_1_38_port, sigMatrix_1_31_port, sigMatrix_1_30_port, 
      sigMatrix_1_23_port, sigMatrix_1_22_port, sigMatrix_1_15_port, 
      sigMatrix_1_14_port, sigMatrix_2_63_port, sigMatrix_2_62_port, 
      sigMatrix_2_47_port, sigMatrix_2_46_port, sigMatrix_2_31_port, 
      sigMatrix_2_30_port, sigMatrix_3_63_port, sigMatrix_3_62_port, 
      sigMatrix_3_55_port, sigMatrix_3_54_port, n1, carryVector_3_port, n3, 
      carryVector_0_port, n5, carryVector_1_port, n_1065, n_1066, n_1067, 
      n_1068, n_1069, n_1070, n_1071, n_1072, n_1073, n_1074, n_1075, n_1076, 
      n_1077, n_1078, n_1079, n_1080, n_1081, n_1082, n_1083, n_1084, n_1085, 
      n_1086, n_1087, n_1088, n_1089, n_1090, n_1091, n_1092, n_1093, n_1094, 
      n_1095, n_1096, n_1097, n_1098, n_1099, n_1100, n_1101, n_1102, n_1103, 
      n_1104, n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, n_1112, 
      n_1113, n_1114 : std_logic;

begin
   carryVector <= ( carryVector_7_port, carryVector_6_port, carryVector_5_port,
      carryVector_4_port, carryVector_3_port, carryVector_2_port, 
      carryVector_1_port, carryVector_0_port );
   
   PGNetwork_1 : PGNetwork_N32 port map( A(31) => A(31), A(30) => A(30), A(29) 
                           => A(29), A(28) => A(28), A(27) => A(27), A(26) => 
                           A(26), A(25) => A(25), A(24) => A(24), A(23) => 
                           A(23), A(22) => A(22), A(21) => A(21), A(20) => 
                           A(20), A(19) => A(19), A(18) => A(18), A(17) => 
                           A(17), A(16) => A(16), A(15) => A(15), A(14) => 
                           A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(31) => B(31), B(30) => B(30), B(29) => 
                           B(29), B(28) => B(28), B(27) => B(27), B(26) => 
                           B(26), B(25) => B(25), B(24) => B(24), B(23) => 
                           B(23), B(22) => B(22), B(21) => B(21), B(20) => 
                           B(20), B(19) => B(19), B(18) => B(18), B(17) => 
                           B(17), B(16) => B(16), B(15) => B(15), B(14) => 
                           B(14), B(13) => B(13), B(12) => B(12), B(11) => 
                           B(11), B(10) => B(10), B(9) => B(9), B(8) => B(8), 
                           B(7) => B(7), B(6) => B(6), B(5) => B(5), B(4) => 
                           B(4), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Cin => Cin, gpSignals(63) => 
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
                           sigMatrix_0_2_port, gpSignals(1) => n_1065, 
                           gpSignals(0) => sigMatrix_0_0_port);
   ST_row1And2_1 : ST_row1And2_N32 port map( input(63) => sigMatrix_0_63_port, 
                           input(62) => sigMatrix_0_62_port, input(61) => 
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
                           input(2) => sigMatrix_0_2_port, input(1) => n1, 
                           input(0) => sigMatrix_0_0_port, output(63) => 
                           sigMatrix_1_63_port, output(62) => 
                           sigMatrix_1_62_port, output(61) => n_1066, 
                           output(60) => n_1067, output(59) => n_1068, 
                           output(58) => n_1069, output(57) => n_1070, 
                           output(56) => n_1071, output(55) => 
                           sigMatrix_1_55_port, output(54) => 
                           sigMatrix_1_54_port, output(53) => n_1072, 
                           output(52) => n_1073, output(51) => n_1074, 
                           output(50) => n_1075, output(49) => n_1076, 
                           output(48) => n_1077, output(47) => 
                           sigMatrix_1_47_port, output(46) => 
                           sigMatrix_1_46_port, output(45) => n_1078, 
                           output(44) => n_1079, output(43) => n_1080, 
                           output(42) => n_1081, output(41) => n_1082, 
                           output(40) => n_1083, output(39) => 
                           sigMatrix_1_39_port, output(38) => 
                           sigMatrix_1_38_port, output(37) => n_1084, 
                           output(36) => n_1085, output(35) => n_1086, 
                           output(34) => n_1087, output(33) => n_1088, 
                           output(32) => n_1089, output(31) => 
                           sigMatrix_1_31_port, output(30) => 
                           sigMatrix_1_30_port, output(29) => n_1090, 
                           output(28) => n_1091, output(27) => n_1092, 
                           output(26) => n_1093, output(25) => n_1094, 
                           output(24) => n_1095, output(23) => 
                           sigMatrix_1_23_port, output(22) => 
                           sigMatrix_1_22_port, output(21) => n_1096, 
                           output(20) => n_1097, output(19) => n_1098, 
                           output(18) => n_1099, output(17) => n_1100, 
                           output(16) => n_1101, output(15) => 
                           sigMatrix_1_15_port, output(14) => 
                           sigMatrix_1_14_port, output(13) => n_1102, 
                           output(12) => n_1103, output(11) => n_1104, 
                           output(10) => n_1105, output(9) => n_1106, output(8)
                           => n_1107, output(7) => n9, output(6) => n_1108, 
                           output(5) => n_1109, output(4) => n_1110, output(3) 
                           => n_1111, output(2) => n_1112, output(1) => n_1113,
                           output(0) => n_1114);
   G_1_0_0_0 : GeneralGenerate_0 port map( Gk_1 => n9, GikPik(1) => 
                           sigMatrix_1_15_port, GikPik(0) => 
                           sigMatrix_1_14_port, Gij => n8);
   PG_1_0_1_0 : GeneralPropagateGenerate_0 port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_23_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_22_port, GikPik(1) => 
                           sigMatrix_1_31_port, GikPik(0) => 
                           sigMatrix_1_30_port, GijPij(1) => 
                           sigMatrix_2_31_port, GijPij(0) => 
                           sigMatrix_2_30_port);
   PG_1_0_2_0 : GeneralPropagateGenerate_26 port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_39_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_38_port, GikPik(1) => 
                           sigMatrix_1_47_port, GikPik(0) => 
                           sigMatrix_1_46_port, GijPij(1) => 
                           sigMatrix_2_47_port, GijPij(0) => 
                           sigMatrix_2_46_port);
   PG_1_0_3_0 : GeneralPropagateGenerate_25 port map( Gk_1Pk_1(1) => 
                           sigMatrix_1_55_port, Gk_1Pk_1(0) => 
                           sigMatrix_1_54_port, GikPik(1) => 
                           sigMatrix_1_63_port, GikPik(0) => 
                           sigMatrix_1_62_port, GijPij(1) => 
                           sigMatrix_2_63_port, GijPij(0) => 
                           sigMatrix_2_62_port);
   G_1_1_0_0 : GeneralGenerate_9 port map( Gk_1 => n3, GikPik(1) => 
                           sigMatrix_1_23_port, GikPik(0) => 
                           sigMatrix_1_22_port, Gij => carryVector_2_port);
   G_1_1_0_1 : GeneralGenerate_8 port map( Gk_1 => n8, GikPik(1) => 
                           sigMatrix_2_31_port, GikPik(0) => 
                           sigMatrix_2_30_port, Gij => n7);
   PG_1_1_1_0 : GeneralPropagateGenerate_24 port map( Gk_1Pk_1(1) => 
                           sigMatrix_2_47_port, Gk_1Pk_1(0) => 
                           sigMatrix_2_46_port, GikPik(1) => 
                           sigMatrix_1_55_port, GikPik(0) => 
                           sigMatrix_1_54_port, GijPij(1) => 
                           sigMatrix_3_55_port, GijPij(0) => 
                           sigMatrix_3_54_port);
   PG_1_1_1_1 : GeneralPropagateGenerate_23 port map( Gk_1Pk_1(1) => n5, 
                           Gk_1Pk_1(0) => sigMatrix_2_46_port, GikPik(1) => 
                           sigMatrix_2_63_port, GikPik(0) => 
                           sigMatrix_2_62_port, GijPij(1) => 
                           sigMatrix_3_63_port, GijPij(0) => 
                           sigMatrix_3_62_port);
   G_1_2_0_0 : GeneralGenerate_7 port map( Gk_1 => n7, GikPik(1) => 
                           sigMatrix_1_39_port, GikPik(0) => 
                           sigMatrix_1_38_port, Gij => carryVector_4_port);
   G_1_2_0_1 : GeneralGenerate_6 port map( Gk_1 => n7, GikPik(1) => n5, 
                           GikPik(0) => sigMatrix_2_46_port, Gij => 
                           carryVector_5_port);
   G_1_2_0_2 : GeneralGenerate_5 port map( Gk_1 => n7, GikPik(1) => 
                           sigMatrix_3_55_port, GikPik(0) => 
                           sigMatrix_3_54_port, Gij => carryVector_6_port);
   G_1_2_0_3 : GeneralGenerate_4 port map( Gk_1 => carryVector_3_port, 
                           GikPik(1) => sigMatrix_3_63_port, GikPik(0) => 
                           sigMatrix_3_62_port, Gij => carryVector_7_port);
   n1 <= '0';
   U2 : BUF_X2 port map( A => n7, Z => carryVector_3_port);
   U3 : BUF_X1 port map( A => n8, Z => n3);
   U4 : CLKBUF_X1 port map( A => n9, Z => carryVector_0_port);
   U5 : CLKBUF_X1 port map( A => sigMatrix_2_47_port, Z => n5);
   U6 : CLKBUF_X1 port map( A => n3, Z => carryVector_1_port);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_completeAdder.all;

entity completeAdder is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Cout :
         out std_logic;  Sum : out std_logic_vector (31 downto 0));

end completeAdder;

architecture SYN_struct of completeAdder is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CSSG_generic_N32_RADIX4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  
            carry_vector : in std_logic_vector (7 downto 0);  Cout : out 
            std_logic;  S : out std_logic_vector (31 downto 0));
   end component;
   
   component SparseTree_N32_RADIX4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  
            carryVector : out std_logic_vector (7 downto 0));
   end component;
   
   signal B_XORed_31_port, B_XORed_30_port, B_XORed_29_port, B_XORed_28_port, 
      B_XORed_27_port, B_XORed_26_port, B_XORed_25_port, B_XORed_24_port, 
      B_XORed_23_port, B_XORed_22_port, B_XORed_21_port, B_XORed_20_port, 
      B_XORed_19_port, B_XORed_18_port, B_XORed_17_port, B_XORed_16_port, 
      B_XORed_15_port, B_XORed_14_port, B_XORed_13_port, B_XORed_12_port, 
      B_XORed_11_port, B_XORed_10_port, B_XORed_9_port, B_XORed_8_port, 
      B_XORed_7_port, B_XORed_6_port, B_XORed_5_port, B_XORed_4_port, 
      B_XORed_3_port, B_XORed_2_port, B_XORed_1_port, B_XORed_0_port, 
      carryConnect_7_port, carryConnect_6_port, carryConnect_5_port, 
      carryConnect_4_port, carryConnect_3_port, carryConnect_2_port, 
      carryConnect_1_port, carryConnect_0_port, net1655, net1657, net1659, 
      net1671, net1794, net1834, net1856, net1869, net1948, net1875, net2185, 
      net2200, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15
      , n16, n17, n18, n19 : std_logic;

begin
   
   ST : SparseTree_N32_RADIX4 port map( A(31) => A(31), A(30) => A(30), A(29) 
                           => A(29), A(28) => A(28), A(27) => A(27), A(26) => 
                           A(26), A(25) => A(25), A(24) => A(24), A(23) => 
                           A(23), A(22) => A(22), A(21) => A(21), A(20) => 
                           A(20), A(19) => A(19), A(18) => A(18), A(17) => 
                           A(17), A(16) => A(16), A(15) => A(15), A(14) => 
                           A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(31) => B_XORed_31_port, B(30) => 
                           B_XORed_30_port, B(29) => B_XORed_29_port, B(28) => 
                           n4, B(27) => B_XORed_27_port, B(26) => 
                           B_XORed_26_port, B(25) => B_XORed_25_port, B(24) => 
                           n5, B(23) => B_XORed_23_port, B(22) => 
                           B_XORed_22_port, B(21) => B_XORed_21_port, B(20) => 
                           B_XORed_20_port, B(19) => B_XORed_19_port, B(18) => 
                           B_XORed_18_port, B(17) => B_XORed_17_port, B(16) => 
                           B_XORed_16_port, B(15) => B_XORed_15_port, B(14) => 
                           B_XORed_14_port, B(13) => B_XORed_13_port, B(12) => 
                           B_XORed_12_port, B(11) => B_XORed_11_port, B(10) => 
                           B_XORed_10_port, B(9) => B_XORed_9_port, B(8) => 
                           B_XORed_8_port, B(7) => B_XORed_7_port, B(6) => 
                           B_XORed_6_port, B(5) => B_XORed_5_port, B(4) => 
                           B_XORed_4_port, B(3) => B_XORed_3_port, B(2) => 
                           B_XORed_2_port, B(1) => B_XORed_1_port, B(0) => 
                           B_XORed_0_port, Cin => net2200, carryVector(7) => 
                           carryConnect_7_port, carryVector(6) => 
                           carryConnect_6_port, carryVector(5) => 
                           carryConnect_5_port, carryVector(4) => 
                           carryConnect_4_port, carryVector(3) => 
                           carryConnect_3_port, carryVector(2) => 
                           carryConnect_2_port, carryVector(1) => 
                           carryConnect_1_port, carryVector(0) => 
                           carryConnect_0_port);
   CSSG : CSSG_generic_N32_RADIX4 port map( A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(31) => B_XORed_31_port, B(30) 
                           => B_XORed_30_port, B(29) => B_XORed_29_port, B(28) 
                           => B_XORed_28_port, B(27) => n6, B(26) => 
                           B_XORed_26_port, B(25) => B_XORed_25_port, B(24) => 
                           B_XORed_24_port, B(23) => net1869, B(22) => n9, 
                           B(21) => net1834, B(20) => B_XORed_20_port, B(19) =>
                           B_XORed_19_port, B(18) => n11, B(17) => n10, B(16) 
                           => B_XORed_16_port, B(15) => n16, B(14) => n15, 
                           B(13) => n12, B(12) => n3, B(11) => n14, B(10) => 
                           n17, B(9) => n1, B(8) => B_XORed_8_port, B(7) => n13
                           , B(6) => n19, B(5) => n7, B(4) => B_XORed_4_port, 
                           B(3) => net1671, B(2) => n18, B(1) => n8, B(0) => 
                           net1794, Cin => net2200, carry_vector(7) => 
                           carryConnect_7_port, carry_vector(6) => 
                           carryConnect_6_port, carry_vector(5) => 
                           carryConnect_5_port, carry_vector(4) => 
                           carryConnect_4_port, carry_vector(3) => 
                           carryConnect_3_port, carry_vector(2) => 
                           carryConnect_2_port, carry_vector(1) => 
                           carryConnect_1_port, carry_vector(0) => 
                           carryConnect_0_port, Cout => Cout, S(31) => Sum(31),
                           S(30) => Sum(30), S(29) => Sum(29), S(28) => Sum(28)
                           , S(27) => Sum(27), S(26) => Sum(26), S(25) => 
                           Sum(25), S(24) => Sum(24), S(23) => Sum(23), S(22) 
                           => Sum(22), S(21) => Sum(21), S(20) => Sum(20), 
                           S(19) => Sum(19), S(18) => Sum(18), S(17) => Sum(17)
                           , S(16) => Sum(16), S(15) => Sum(15), S(14) => 
                           Sum(14), S(13) => Sum(13), S(12) => Sum(12), S(11) 
                           => Sum(11), S(10) => Sum(10), S(9) => Sum(9), S(8) 
                           => Sum(8), S(7) => Sum(7), S(6) => Sum(6), S(5) => 
                           Sum(5), S(4) => Sum(4), S(3) => Sum(3), S(2) => 
                           Sum(2), S(1) => Sum(1), S(0) => Sum(0));
   U34 : XOR2_X1 port map( A => Cin, B => B(8), Z => B_XORed_8_port);
   U35 : XOR2_X1 port map( A => Cin, B => B(7), Z => B_XORed_7_port);
   U36 : XOR2_X1 port map( A => net1655, B => B(6), Z => B_XORed_6_port);
   U37 : XOR2_X1 port map( A => Cin, B => B(5), Z => B_XORed_5_port);
   U38 : XOR2_X1 port map( A => Cin, B => B(4), Z => B_XORed_4_port);
   U40 : XOR2_X1 port map( A => net1655, B => B(31), Z => B_XORed_31_port);
   U41 : XOR2_X1 port map( A => net2185, B => B(30), Z => B_XORed_30_port);
   U43 : XOR2_X1 port map( A => net1659, B => B(29), Z => B_XORed_29_port);
   U44 : XOR2_X1 port map( A => net1856, B => B(28), Z => B_XORed_28_port);
   U45 : XOR2_X1 port map( A => net1655, B => B(27), Z => B_XORed_27_port);
   U46 : XOR2_X1 port map( A => net1659, B => B(26), Z => B_XORed_26_port);
   U47 : XOR2_X1 port map( A => net1655, B => B(25), Z => B_XORed_25_port);
   U48 : XOR2_X1 port map( A => net1856, B => B(24), Z => B_XORed_24_port);
   U50 : XOR2_X1 port map( A => net1655, B => B(22), Z => B_XORed_22_port);
   U52 : XOR2_X1 port map( A => Cin, B => B(20), Z => B_XORed_20_port);
   U53 : XOR2_X1 port map( A => net1657, B => B(1), Z => B_XORed_1_port);
   U54 : XOR2_X1 port map( A => Cin, B => B(19), Z => B_XORed_19_port);
   U55 : XOR2_X1 port map( A => net1856, B => B(18), Z => B_XORed_18_port);
   U56 : XOR2_X1 port map( A => net1856, B => B(17), Z => B_XORed_17_port);
   U57 : XOR2_X1 port map( A => Cin, B => B(16), Z => B_XORed_16_port);
   U58 : XOR2_X1 port map( A => Cin, B => B(15), Z => B_XORed_15_port);
   U59 : XOR2_X1 port map( A => net1657, B => B(14), Z => B_XORed_14_port);
   U60 : XOR2_X1 port map( A => Cin, B => B(13), Z => B_XORed_13_port);
   U62 : XOR2_X1 port map( A => Cin, B => B(11), Z => B_XORed_11_port);
   U63 : XOR2_X1 port map( A => net1659, B => B(10), Z => B_XORed_10_port);
   U33 : XOR2_X1 port map( A => Cin, B => B(9), Z => B_XORed_9_port);
   U49 : XOR2_X1 port map( A => net1875, B => B(23), Z => B_XORed_23_port);
   U39 : XOR2_X1 port map( A => net1875, B => B(3), Z => B_XORed_3_port);
   U65 : CLKBUF_X1 port map( A => B_XORed_9_port, Z => n1);
   U66 : BUF_X1 port map( A => net1659, Z => net2200);
   U67 : XNOR2_X1 port map( A => Cin, B => n2, ZN => B_XORed_0_port);
   U68 : INV_X1 port map( A => B(0), ZN => n2);
   U69 : INV_X1 port map( A => B(0), ZN => net1948);
   U70 : CLKBUF_X1 port map( A => net1659, Z => net2185);
   U71 : BUF_X1 port map( A => Cin, Z => net1657);
   U72 : BUF_X2 port map( A => Cin, Z => net1659);
   U73 : CLKBUF_X1 port map( A => B_XORed_24_port, Z => n5);
   U74 : XOR2_X1 port map( A => net1659, B => B(12), Z => n3);
   U75 : XOR2_X1 port map( A => net1856, B => B(12), Z => B_XORed_12_port);
   U76 : CLKBUF_X1 port map( A => B_XORed_28_port, Z => n4);
   U77 : BUF_X2 port map( A => Cin, Z => net1655);
   U78 : CLKBUF_X1 port map( A => B_XORed_27_port, Z => n6);
   U79 : CLKBUF_X1 port map( A => B_XORed_5_port, Z => n7);
   U80 : CLKBUF_X1 port map( A => B_XORed_3_port, Z => net1671);
   U81 : XOR2_X1 port map( A => net1875, B => B(21), Z => B_XORed_21_port);
   U82 : XOR2_X1 port map( A => net2185, B => B(1), Z => n8);
   U83 : CLKBUF_X1 port map( A => B_XORed_22_port, Z => n9);
   U84 : XOR2_X1 port map( A => net1856, B => B(17), Z => n10);
   U85 : CLKBUF_X1 port map( A => B_XORed_23_port, Z => net1869);
   U86 : BUF_X1 port map( A => Cin, Z => net1875);
   U87 : XNOR2_X1 port map( A => net1655, B => net1948, ZN => net1794);
   U88 : CLKBUF_X1 port map( A => B_XORed_18_port, Z => n11);
   U89 : CLKBUF_X1 port map( A => B_XORed_13_port, Z => n12);
   U90 : CLKBUF_X1 port map( A => B_XORed_7_port, Z => n13);
   U91 : CLKBUF_X1 port map( A => B_XORed_11_port, Z => n14);
   U92 : BUF_X2 port map( A => Cin, Z => net1856);
   U93 : CLKBUF_X1 port map( A => B_XORed_14_port, Z => n15);
   U94 : CLKBUF_X1 port map( A => B_XORed_15_port, Z => n16);
   U95 : CLKBUF_X1 port map( A => B_XORed_21_port, Z => net1834);
   U96 : CLKBUF_X1 port map( A => B_XORed_10_port, Z => n17);
   U97 : CLKBUF_X1 port map( A => B_XORed_2_port, Z => n18);
   U98 : XOR2_X1 port map( A => net1657, B => B(2), Z => B_XORed_2_port);
   U99 : BUF_X1 port map( A => B_XORed_6_port, Z => n19);

end SYN_struct;
