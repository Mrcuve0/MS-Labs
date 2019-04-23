
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_Booth_N8_RADIX3 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_Booth_N8_RADIX3;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity complementer_N16_7 is

   port( input : in std_logic_vector (15 downto 0);  complement2 : out 
         std_logic_vector (15 downto 0));

end complementer_N16_7;

architecture SYN_beh of complementer_N16_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal complement2_14_port, complement2_15_port, complement2_1_port, 
      complement2_2_port, complement2_3_port, complement2_4_port, 
      complement2_5_port, complement2_6_port, complement2_7_port, 
      complement2_8_port, complement2_9_port, complement2_10_port, 
      complement2_11_port, complement2_12_port, complement2_13_port, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32
      , n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44 : std_logic;

begin
   complement2 <= ( complement2_15_port, complement2_14_port, 
      complement2_13_port, complement2_12_port, complement2_11_port, 
      complement2_10_port, complement2_9_port, complement2_8_port, 
      complement2_7_port, complement2_6_port, complement2_5_port, 
      complement2_4_port, complement2_3_port, complement2_2_port, 
      complement2_1_port, input(0) );
   
   U2 : XOR2_X1 port map( A => n37, B => n28, Z => complement2_14_port);
   U3 : XOR2_X1 port map( A => input(15), B => n29, Z => complement2_15_port);
   U4 : XOR2_X1 port map( A => n30, B => n44, Z => complement2_1_port);
   U5 : XOR2_X1 port map( A => n31, B => n16, Z => complement2_2_port);
   U6 : XOR2_X1 port map( A => n32, B => n17, Z => complement2_3_port);
   U7 : XOR2_X1 port map( A => n33, B => n18, Z => complement2_4_port);
   U8 : XOR2_X1 port map( A => n34, B => n19, Z => complement2_5_port);
   U9 : XOR2_X1 port map( A => n35, B => n20, Z => complement2_6_port);
   U10 : XOR2_X1 port map( A => n36, B => n21, Z => complement2_7_port);
   U11 : XOR2_X1 port map( A => n43, B => n22, Z => complement2_8_port);
   U12 : XOR2_X1 port map( A => n42, B => n23, Z => complement2_9_port);
   U13 : XOR2_X1 port map( A => n41, B => n24, Z => complement2_10_port);
   U14 : XOR2_X1 port map( A => n40, B => n25, Z => complement2_11_port);
   U15 : XOR2_X1 port map( A => n39, B => n26, Z => complement2_12_port);
   U16 : XOR2_X1 port map( A => n38, B => n27, Z => complement2_13_port);
   U17 : AND2_X1 port map( A1 => n30, A2 => n44, ZN => n16);
   U18 : AND2_X1 port map( A1 => n31, A2 => n16, ZN => n17);
   U19 : AND2_X1 port map( A1 => n32, A2 => n17, ZN => n18);
   U20 : AND2_X1 port map( A1 => n33, A2 => n18, ZN => n19);
   U21 : AND2_X1 port map( A1 => n34, A2 => n19, ZN => n20);
   U22 : AND2_X1 port map( A1 => n35, A2 => n20, ZN => n21);
   U23 : AND2_X1 port map( A1 => n36, A2 => n21, ZN => n22);
   U24 : AND2_X1 port map( A1 => n43, A2 => n22, ZN => n23);
   U25 : AND2_X1 port map( A1 => n42, A2 => n23, ZN => n24);
   U26 : AND2_X1 port map( A1 => n41, A2 => n24, ZN => n25);
   U27 : AND2_X1 port map( A1 => n40, A2 => n25, ZN => n26);
   U28 : AND2_X1 port map( A1 => n39, A2 => n26, ZN => n27);
   U29 : AND2_X1 port map( A1 => n38, A2 => n27, ZN => n28);
   U30 : NAND2_X1 port map( A1 => n37, A2 => n28, ZN => n29);
   U31 : INV_X1 port map( A => input(0), ZN => n44);
   U32 : INV_X1 port map( A => input(8), ZN => n43);
   U33 : INV_X1 port map( A => input(9), ZN => n42);
   U34 : INV_X1 port map( A => input(10), ZN => n41);
   U35 : INV_X1 port map( A => input(11), ZN => n40);
   U36 : INV_X1 port map( A => input(12), ZN => n39);
   U37 : INV_X1 port map( A => input(13), ZN => n38);
   U38 : INV_X1 port map( A => input(14), ZN => n37);
   U39 : INV_X1 port map( A => input(7), ZN => n36);
   U40 : INV_X1 port map( A => input(6), ZN => n35);
   U41 : INV_X1 port map( A => input(5), ZN => n34);
   U42 : INV_X1 port map( A => input(4), ZN => n33);
   U43 : INV_X1 port map( A => input(3), ZN => n32);
   U44 : INV_X1 port map( A => input(2), ZN => n31);
   U45 : INV_X1 port map( A => input(1), ZN => n30);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity complementer_N16_6 is

   port( input : in std_logic_vector (15 downto 0);  complement2 : out 
         std_logic_vector (15 downto 0));

end complementer_N16_6;

architecture SYN_beh of complementer_N16_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, 
      complement2_14_port, complement2_13_port, complement2_12_port, 
      complement2_11_port, complement2_10_port, complement2_9_port, 
      complement2_8_port, complement2_7_port, complement2_6_port, 
      complement2_5_port, complement2_4_port, complement2_3_port, 
      complement2_2_port, complement2_1_port, complement2_15_port, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44 : 
      std_logic;

begin
   complement2 <= ( complement2_15_port, complement2_14_port, 
      complement2_13_port, complement2_12_port, complement2_11_port, 
      complement2_10_port, complement2_9_port, complement2_8_port, 
      complement2_7_port, complement2_6_port, complement2_5_port, 
      complement2_4_port, complement2_3_port, complement2_2_port, 
      complement2_1_port, input(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n13, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n42, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n41, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n40, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n39, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n38, A2 => n11, ZN => n12);
   U14 : AND2_X1 port map( A1 => n43, A2 => n44, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n12, ZN => n29);
   U16 : XOR2_X1 port map( A => n37, B => n12, Z => complement2_14_port);
   U17 : XOR2_X1 port map( A => n38, B => n11, Z => complement2_13_port);
   U18 : XOR2_X1 port map( A => n39, B => n10, Z => complement2_12_port);
   U19 : XOR2_X1 port map( A => n40, B => n9, Z => complement2_11_port);
   U20 : XOR2_X1 port map( A => n41, B => n8, Z => complement2_10_port);
   U21 : XOR2_X1 port map( A => n42, B => n7, Z => complement2_9_port);
   U22 : XOR2_X1 port map( A => n36, B => n6, Z => complement2_8_port);
   U23 : XOR2_X1 port map( A => n35, B => n5, Z => complement2_7_port);
   U24 : XOR2_X1 port map( A => n34, B => n4, Z => complement2_6_port);
   U25 : XOR2_X1 port map( A => n33, B => n3, Z => complement2_5_port);
   U26 : XOR2_X1 port map( A => n32, B => n2, Z => complement2_4_port);
   U27 : XOR2_X1 port map( A => n31, B => n1, Z => complement2_3_port);
   U28 : XOR2_X1 port map( A => n30, B => n13, Z => complement2_2_port);
   U29 : XOR2_X1 port map( A => n43, B => n44, Z => complement2_1_port);
   U30 : XOR2_X1 port map( A => input(15), B => n29, Z => complement2_15_port);
   U31 : INV_X1 port map( A => input(0), ZN => n44);
   U32 : INV_X1 port map( A => input(1), ZN => n43);
   U33 : INV_X1 port map( A => input(9), ZN => n42);
   U34 : INV_X1 port map( A => input(10), ZN => n41);
   U35 : INV_X1 port map( A => input(11), ZN => n40);
   U36 : INV_X1 port map( A => input(12), ZN => n39);
   U37 : INV_X1 port map( A => input(13), ZN => n38);
   U38 : INV_X1 port map( A => input(14), ZN => n37);
   U39 : INV_X1 port map( A => input(8), ZN => n36);
   U40 : INV_X1 port map( A => input(7), ZN => n35);
   U41 : INV_X1 port map( A => input(6), ZN => n34);
   U42 : INV_X1 port map( A => input(5), ZN => n33);
   U43 : INV_X1 port map( A => input(4), ZN => n32);
   U44 : INV_X1 port map( A => input(3), ZN => n31);
   U45 : INV_X1 port map( A => input(2), ZN => n30);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity complementer_N16_5 is

   port( input : in std_logic_vector (15 downto 0);  complement2 : out 
         std_logic_vector (15 downto 0));

end complementer_N16_5;

architecture SYN_beh of complementer_N16_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal complement2_14_port, complement2_15_port, complement2_3_port, 
      complement2_4_port, complement2_5_port, complement2_6_port, 
      complement2_7_port, complement2_8_port, complement2_9_port, 
      complement2_10_port, complement2_11_port, complement2_12_port, 
      complement2_13_port, complement2_2_port, complement2_1_port, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32
      , n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44 : std_logic;

begin
   complement2 <= ( complement2_15_port, complement2_14_port, 
      complement2_13_port, complement2_12_port, complement2_11_port, 
      complement2_10_port, complement2_9_port, complement2_8_port, 
      complement2_7_port, complement2_6_port, complement2_5_port, 
      complement2_4_port, complement2_3_port, complement2_2_port, 
      complement2_1_port, input(0) );
   
   U2 : XOR2_X1 port map( A => n37, B => n26, Z => complement2_14_port);
   U3 : XOR2_X1 port map( A => input(15), B => n29, Z => complement2_15_port);
   U4 : XOR2_X1 port map( A => n30, B => n27, Z => complement2_3_port);
   U5 : XOR2_X1 port map( A => n31, B => n16, Z => complement2_4_port);
   U6 : XOR2_X1 port map( A => n32, B => n17, Z => complement2_5_port);
   U7 : XOR2_X1 port map( A => n33, B => n18, Z => complement2_6_port);
   U8 : XOR2_X1 port map( A => n34, B => n19, Z => complement2_7_port);
   U9 : XOR2_X1 port map( A => n35, B => n20, Z => complement2_8_port);
   U10 : XOR2_X1 port map( A => n36, B => n21, Z => complement2_9_port);
   U11 : XOR2_X1 port map( A => n41, B => n22, Z => complement2_10_port);
   U12 : XOR2_X1 port map( A => n40, B => n23, Z => complement2_11_port);
   U13 : XOR2_X1 port map( A => n39, B => n24, Z => complement2_12_port);
   U14 : XOR2_X1 port map( A => n38, B => n25, Z => complement2_13_port);
   U15 : XOR2_X1 port map( A => n42, B => n28, Z => complement2_2_port);
   U16 : XOR2_X1 port map( A => n44, B => n43, Z => complement2_1_port);
   U17 : AND2_X1 port map( A1 => n30, A2 => n27, ZN => n16);
   U18 : AND2_X1 port map( A1 => n31, A2 => n16, ZN => n17);
   U19 : AND2_X1 port map( A1 => n32, A2 => n17, ZN => n18);
   U20 : AND2_X1 port map( A1 => n33, A2 => n18, ZN => n19);
   U21 : AND2_X1 port map( A1 => n34, A2 => n19, ZN => n20);
   U22 : AND2_X1 port map( A1 => n35, A2 => n20, ZN => n21);
   U23 : AND2_X1 port map( A1 => n36, A2 => n21, ZN => n22);
   U24 : AND2_X1 port map( A1 => n41, A2 => n22, ZN => n23);
   U25 : AND2_X1 port map( A1 => n40, A2 => n23, ZN => n24);
   U26 : AND2_X1 port map( A1 => n39, A2 => n24, ZN => n25);
   U27 : AND2_X1 port map( A1 => n38, A2 => n25, ZN => n26);
   U28 : AND2_X1 port map( A1 => n42, A2 => n28, ZN => n27);
   U29 : AND2_X1 port map( A1 => n44, A2 => n43, ZN => n28);
   U30 : NAND2_X1 port map( A1 => n37, A2 => n26, ZN => n29);
   U31 : INV_X1 port map( A => input(1), ZN => n44);
   U32 : INV_X1 port map( A => input(0), ZN => n43);
   U33 : INV_X1 port map( A => input(2), ZN => n42);
   U34 : INV_X1 port map( A => input(10), ZN => n41);
   U35 : INV_X1 port map( A => input(11), ZN => n40);
   U36 : INV_X1 port map( A => input(12), ZN => n39);
   U37 : INV_X1 port map( A => input(13), ZN => n38);
   U38 : INV_X1 port map( A => input(14), ZN => n37);
   U39 : INV_X1 port map( A => input(9), ZN => n36);
   U40 : INV_X1 port map( A => input(8), ZN => n35);
   U41 : INV_X1 port map( A => input(7), ZN => n34);
   U42 : INV_X1 port map( A => input(6), ZN => n33);
   U43 : INV_X1 port map( A => input(5), ZN => n32);
   U44 : INV_X1 port map( A => input(4), ZN => n31);
   U45 : INV_X1 port map( A => input(3), ZN => n30);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity complementer_N16_4 is

   port( input : in std_logic_vector (15 downto 0);  complement2 : out 
         std_logic_vector (15 downto 0));

end complementer_N16_4;

architecture SYN_beh of complementer_N16_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, 
      complement2_14_port, complement2_13_port, complement2_12_port, 
      complement2_11_port, complement2_10_port, complement2_9_port, 
      complement2_8_port, complement2_7_port, complement2_6_port, 
      complement2_5_port, complement2_4_port, complement2_3_port, 
      complement2_2_port, complement2_1_port, complement2_15_port, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44 : 
      std_logic;

begin
   complement2 <= ( complement2_15_port, complement2_14_port, 
      complement2_13_port, complement2_12_port, complement2_11_port, 
      complement2_10_port, complement2_9_port, complement2_8_port, 
      complement2_7_port, complement2_6_port, complement2_5_port, 
      complement2_4_port, complement2_3_port, complement2_2_port, 
      complement2_1_port, input(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n11, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n40, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n39, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n38, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n41, A2 => n12, ZN => n11);
   U13 : AND2_X1 port map( A1 => n44, A2 => n13, ZN => n12);
   U14 : AND2_X1 port map( A1 => n43, A2 => n42, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n10, ZN => n29);
   U16 : XOR2_X1 port map( A => n37, B => n10, Z => complement2_14_port);
   U17 : XOR2_X1 port map( A => n38, B => n9, Z => complement2_13_port);
   U18 : XOR2_X1 port map( A => n39, B => n8, Z => complement2_12_port);
   U19 : XOR2_X1 port map( A => n40, B => n7, Z => complement2_11_port);
   U20 : XOR2_X1 port map( A => n36, B => n6, Z => complement2_10_port);
   U21 : XOR2_X1 port map( A => n35, B => n5, Z => complement2_9_port);
   U22 : XOR2_X1 port map( A => n34, B => n4, Z => complement2_8_port);
   U23 : XOR2_X1 port map( A => n33, B => n3, Z => complement2_7_port);
   U24 : XOR2_X1 port map( A => n32, B => n2, Z => complement2_6_port);
   U25 : XOR2_X1 port map( A => n31, B => n1, Z => complement2_5_port);
   U26 : XOR2_X1 port map( A => n30, B => n11, Z => complement2_4_port);
   U27 : XOR2_X1 port map( A => n41, B => n12, Z => complement2_3_port);
   U28 : XOR2_X1 port map( A => n44, B => n13, Z => complement2_2_port);
   U29 : XOR2_X1 port map( A => n43, B => n42, Z => complement2_1_port);
   U30 : XOR2_X1 port map( A => input(15), B => n29, Z => complement2_15_port);
   U31 : INV_X1 port map( A => input(2), ZN => n44);
   U32 : INV_X1 port map( A => input(1), ZN => n43);
   U33 : INV_X1 port map( A => input(0), ZN => n42);
   U34 : INV_X1 port map( A => input(3), ZN => n41);
   U35 : INV_X1 port map( A => input(11), ZN => n40);
   U36 : INV_X1 port map( A => input(12), ZN => n39);
   U37 : INV_X1 port map( A => input(13), ZN => n38);
   U38 : INV_X1 port map( A => input(14), ZN => n37);
   U39 : INV_X1 port map( A => input(10), ZN => n36);
   U40 : INV_X1 port map( A => input(9), ZN => n35);
   U41 : INV_X1 port map( A => input(8), ZN => n34);
   U42 : INV_X1 port map( A => input(7), ZN => n33);
   U43 : INV_X1 port map( A => input(6), ZN => n32);
   U44 : INV_X1 port map( A => input(5), ZN => n31);
   U45 : INV_X1 port map( A => input(4), ZN => n30);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity complementer_N16_3 is

   port( input : in std_logic_vector (15 downto 0);  complement2 : out 
         std_logic_vector (15 downto 0));

end complementer_N16_3;

architecture SYN_beh of complementer_N16_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal complement2_14_port, complement2_15_port, complement2_5_port, 
      complement2_6_port, complement2_7_port, complement2_8_port, 
      complement2_9_port, complement2_10_port, complement2_11_port, 
      complement2_12_port, complement2_13_port, complement2_3_port, 
      complement2_4_port, complement2_2_port, complement2_1_port, n16, n17, n18
      , n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, 
      n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44 : std_logic;

begin
   complement2 <= ( complement2_15_port, complement2_14_port, 
      complement2_13_port, complement2_12_port, complement2_11_port, 
      complement2_10_port, complement2_9_port, complement2_8_port, 
      complement2_7_port, complement2_6_port, complement2_5_port, 
      complement2_4_port, complement2_3_port, complement2_2_port, 
      complement2_1_port, input(0) );
   
   U2 : XOR2_X1 port map( A => n37, B => n24, Z => complement2_14_port);
   U3 : XOR2_X1 port map( A => input(15), B => n29, Z => complement2_15_port);
   U4 : XOR2_X1 port map( A => n30, B => n26, Z => complement2_5_port);
   U5 : XOR2_X1 port map( A => n31, B => n16, Z => complement2_6_port);
   U6 : XOR2_X1 port map( A => n32, B => n17, Z => complement2_7_port);
   U7 : XOR2_X1 port map( A => n33, B => n18, Z => complement2_8_port);
   U8 : XOR2_X1 port map( A => n34, B => n19, Z => complement2_9_port);
   U9 : XOR2_X1 port map( A => n35, B => n20, Z => complement2_10_port);
   U10 : XOR2_X1 port map( A => n36, B => n21, Z => complement2_11_port);
   U11 : XOR2_X1 port map( A => n39, B => n22, Z => complement2_12_port);
   U12 : XOR2_X1 port map( A => n38, B => n23, Z => complement2_13_port);
   U13 : XOR2_X1 port map( A => n44, B => n27, Z => complement2_3_port);
   U14 : XOR2_X1 port map( A => n40, B => n25, Z => complement2_4_port);
   U15 : XOR2_X1 port map( A => n43, B => n28, Z => complement2_2_port);
   U16 : XOR2_X1 port map( A => n42, B => n41, Z => complement2_1_port);
   U17 : AND2_X1 port map( A1 => n30, A2 => n26, ZN => n16);
   U18 : AND2_X1 port map( A1 => n31, A2 => n16, ZN => n17);
   U19 : AND2_X1 port map( A1 => n32, A2 => n17, ZN => n18);
   U20 : AND2_X1 port map( A1 => n33, A2 => n18, ZN => n19);
   U21 : AND2_X1 port map( A1 => n34, A2 => n19, ZN => n20);
   U22 : AND2_X1 port map( A1 => n35, A2 => n20, ZN => n21);
   U23 : AND2_X1 port map( A1 => n36, A2 => n21, ZN => n22);
   U24 : AND2_X1 port map( A1 => n39, A2 => n22, ZN => n23);
   U25 : AND2_X1 port map( A1 => n38, A2 => n23, ZN => n24);
   U26 : AND2_X1 port map( A1 => n44, A2 => n27, ZN => n25);
   U27 : AND2_X1 port map( A1 => n40, A2 => n25, ZN => n26);
   U28 : AND2_X1 port map( A1 => n43, A2 => n28, ZN => n27);
   U29 : AND2_X1 port map( A1 => n42, A2 => n41, ZN => n28);
   U30 : NAND2_X1 port map( A1 => n37, A2 => n24, ZN => n29);
   U31 : INV_X1 port map( A => input(3), ZN => n44);
   U32 : INV_X1 port map( A => input(2), ZN => n43);
   U33 : INV_X1 port map( A => input(1), ZN => n42);
   U34 : INV_X1 port map( A => input(0), ZN => n41);
   U35 : INV_X1 port map( A => input(4), ZN => n40);
   U36 : INV_X1 port map( A => input(12), ZN => n39);
   U37 : INV_X1 port map( A => input(13), ZN => n38);
   U38 : INV_X1 port map( A => input(14), ZN => n37);
   U39 : INV_X1 port map( A => input(11), ZN => n36);
   U40 : INV_X1 port map( A => input(10), ZN => n35);
   U41 : INV_X1 port map( A => input(9), ZN => n34);
   U42 : INV_X1 port map( A => input(8), ZN => n33);
   U43 : INV_X1 port map( A => input(7), ZN => n32);
   U44 : INV_X1 port map( A => input(6), ZN => n31);
   U45 : INV_X1 port map( A => input(5), ZN => n30);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity complementer_N16_2 is

   port( input : in std_logic_vector (15 downto 0);  complement2 : out 
         std_logic_vector (15 downto 0));

end complementer_N16_2;

architecture SYN_beh of complementer_N16_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, 
      complement2_14_port, complement2_13_port, complement2_12_port, 
      complement2_11_port, complement2_10_port, complement2_9_port, 
      complement2_8_port, complement2_7_port, complement2_6_port, 
      complement2_5_port, complement2_4_port, complement2_3_port, 
      complement2_2_port, complement2_1_port, complement2_15_port, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44 : 
      std_logic;

begin
   complement2 <= ( complement2_15_port, complement2_14_port, 
      complement2_13_port, complement2_12_port, complement2_11_port, 
      complement2_10_port, complement2_9_port, complement2_8_port, 
      complement2_7_port, complement2_6_port, complement2_5_port, 
      complement2_4_port, complement2_3_port, complement2_2_port, 
      complement2_1_port, input(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n11, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n38, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n43, A2 => n12, ZN => n9);
   U11 : AND2_X1 port map( A1 => n44, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n39, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n42, A2 => n13, ZN => n12);
   U14 : AND2_X1 port map( A1 => n41, A2 => n40, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n8, ZN => n29);
   U16 : XOR2_X1 port map( A => n37, B => n8, Z => complement2_14_port);
   U17 : XOR2_X1 port map( A => n38, B => n7, Z => complement2_13_port);
   U18 : XOR2_X1 port map( A => n36, B => n6, Z => complement2_12_port);
   U19 : XOR2_X1 port map( A => n35, B => n5, Z => complement2_11_port);
   U20 : XOR2_X1 port map( A => n34, B => n4, Z => complement2_10_port);
   U21 : XOR2_X1 port map( A => n33, B => n3, Z => complement2_9_port);
   U22 : XOR2_X1 port map( A => n32, B => n2, Z => complement2_8_port);
   U23 : XOR2_X1 port map( A => n31, B => n1, Z => complement2_7_port);
   U24 : XOR2_X1 port map( A => n30, B => n11, Z => complement2_6_port);
   U25 : XOR2_X1 port map( A => n39, B => n10, Z => complement2_5_port);
   U26 : XOR2_X1 port map( A => n44, B => n9, Z => complement2_4_port);
   U27 : XOR2_X1 port map( A => n43, B => n12, Z => complement2_3_port);
   U28 : XOR2_X1 port map( A => n42, B => n13, Z => complement2_2_port);
   U29 : XOR2_X1 port map( A => n41, B => n40, Z => complement2_1_port);
   U30 : XOR2_X1 port map( A => input(15), B => n29, Z => complement2_15_port);
   U31 : INV_X1 port map( A => input(4), ZN => n44);
   U32 : INV_X1 port map( A => input(3), ZN => n43);
   U33 : INV_X1 port map( A => input(2), ZN => n42);
   U34 : INV_X1 port map( A => input(1), ZN => n41);
   U35 : INV_X1 port map( A => input(0), ZN => n40);
   U36 : INV_X1 port map( A => input(5), ZN => n39);
   U37 : INV_X1 port map( A => input(13), ZN => n38);
   U38 : INV_X1 port map( A => input(14), ZN => n37);
   U39 : INV_X1 port map( A => input(12), ZN => n36);
   U40 : INV_X1 port map( A => input(11), ZN => n35);
   U41 : INV_X1 port map( A => input(10), ZN => n34);
   U42 : INV_X1 port map( A => input(9), ZN => n33);
   U43 : INV_X1 port map( A => input(8), ZN => n32);
   U44 : INV_X1 port map( A => input(7), ZN => n31);
   U45 : INV_X1 port map( A => input(6), ZN => n30);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity complementer_N16_1 is

   port( input : in std_logic_vector (15 downto 0);  complement2 : out 
         std_logic_vector (15 downto 0));

end complementer_N16_1;

architecture SYN_beh of complementer_N16_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal complement2_14_port, complement2_15_port, complement2_7_port, 
      complement2_8_port, complement2_9_port, complement2_10_port, 
      complement2_11_port, complement2_12_port, complement2_13_port, 
      complement2_3_port, complement2_4_port, complement2_5_port, 
      complement2_6_port, complement2_2_port, complement2_1_port, n16, n17, n18
      , n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, 
      n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44 : std_logic;

begin
   complement2 <= ( complement2_15_port, complement2_14_port, 
      complement2_13_port, complement2_12_port, complement2_11_port, 
      complement2_10_port, complement2_9_port, complement2_8_port, 
      complement2_7_port, complement2_6_port, complement2_5_port, 
      complement2_4_port, complement2_3_port, complement2_2_port, 
      complement2_1_port, input(0) );
   
   U2 : XOR2_X1 port map( A => n37, B => n22, Z => complement2_14_port);
   U3 : XOR2_X1 port map( A => input(15), B => n29, Z => complement2_15_port);
   U4 : XOR2_X1 port map( A => n30, B => n26, Z => complement2_7_port);
   U5 : XOR2_X1 port map( A => n31, B => n16, Z => complement2_8_port);
   U6 : XOR2_X1 port map( A => n32, B => n17, Z => complement2_9_port);
   U7 : XOR2_X1 port map( A => n33, B => n18, Z => complement2_10_port);
   U8 : XOR2_X1 port map( A => n34, B => n19, Z => complement2_11_port);
   U9 : XOR2_X1 port map( A => n35, B => n20, Z => complement2_12_port);
   U10 : XOR2_X1 port map( A => n36, B => n21, Z => complement2_13_port);
   U11 : XOR2_X1 port map( A => n42, B => n27, Z => complement2_3_port);
   U12 : XOR2_X1 port map( A => n43, B => n23, Z => complement2_4_port);
   U13 : XOR2_X1 port map( A => n44, B => n24, Z => complement2_5_port);
   U14 : XOR2_X1 port map( A => n38, B => n25, Z => complement2_6_port);
   U15 : XOR2_X1 port map( A => n41, B => n28, Z => complement2_2_port);
   U16 : XOR2_X1 port map( A => n40, B => n39, Z => complement2_1_port);
   U17 : AND2_X1 port map( A1 => n30, A2 => n26, ZN => n16);
   U18 : AND2_X1 port map( A1 => n31, A2 => n16, ZN => n17);
   U19 : AND2_X1 port map( A1 => n32, A2 => n17, ZN => n18);
   U20 : AND2_X1 port map( A1 => n33, A2 => n18, ZN => n19);
   U21 : AND2_X1 port map( A1 => n34, A2 => n19, ZN => n20);
   U22 : AND2_X1 port map( A1 => n35, A2 => n20, ZN => n21);
   U23 : AND2_X1 port map( A1 => n36, A2 => n21, ZN => n22);
   U24 : AND2_X1 port map( A1 => n42, A2 => n27, ZN => n23);
   U25 : AND2_X1 port map( A1 => n43, A2 => n23, ZN => n24);
   U26 : AND2_X1 port map( A1 => n44, A2 => n24, ZN => n25);
   U27 : AND2_X1 port map( A1 => n38, A2 => n25, ZN => n26);
   U28 : AND2_X1 port map( A1 => n41, A2 => n28, ZN => n27);
   U29 : AND2_X1 port map( A1 => n40, A2 => n39, ZN => n28);
   U30 : NAND2_X1 port map( A1 => n37, A2 => n22, ZN => n29);
   U31 : INV_X1 port map( A => input(5), ZN => n44);
   U32 : INV_X1 port map( A => input(4), ZN => n43);
   U33 : INV_X1 port map( A => input(3), ZN => n42);
   U34 : INV_X1 port map( A => input(2), ZN => n41);
   U35 : INV_X1 port map( A => input(1), ZN => n40);
   U36 : INV_X1 port map( A => input(0), ZN => n39);
   U37 : INV_X1 port map( A => input(6), ZN => n38);
   U38 : INV_X1 port map( A => input(14), ZN => n37);
   U39 : INV_X1 port map( A => input(13), ZN => n36);
   U40 : INV_X1 port map( A => input(12), ZN => n35);
   U41 : INV_X1 port map( A => input(11), ZN => n34);
   U42 : INV_X1 port map( A => input(10), ZN => n33);
   U43 : INV_X1 port map( A => input(9), ZN => n32);
   U44 : INV_X1 port map( A => input(8), ZN => n31);
   U45 : INV_X1 port map( A => input(7), ZN => n30);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity shifter_N16_6 is

   port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
         std_logic_vector (15 downto 0));

end shifter_N16_6;

architecture SYN_beh of shifter_N16_6 is

signal X_Logic0_port : std_logic;

begin
   shiftLeftOnePos <= ( input(14), input(13), input(12), input(11), input(10), 
      input(9), input(8), input(7), input(6), input(5), input(4), input(3), 
      input(2), input(1), input(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity shifter_N16_5 is

   port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
         std_logic_vector (15 downto 0));

end shifter_N16_5;

architecture SYN_beh of shifter_N16_5 is

signal X_Logic0_port : std_logic;

begin
   shiftLeftOnePos <= ( input(14), input(13), input(12), input(11), input(10), 
      input(9), input(8), input(7), input(6), input(5), input(4), input(3), 
      input(2), input(1), input(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity shifter_N16_4 is

   port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
         std_logic_vector (15 downto 0));

end shifter_N16_4;

architecture SYN_beh of shifter_N16_4 is

signal X_Logic0_port : std_logic;

begin
   shiftLeftOnePos <= ( input(14), input(13), input(12), input(11), input(10), 
      input(9), input(8), input(7), input(6), input(5), input(4), input(3), 
      input(2), input(1), input(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity shifter_N16_3 is

   port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
         std_logic_vector (15 downto 0));

end shifter_N16_3;

architecture SYN_beh of shifter_N16_3 is

signal X_Logic0_port : std_logic;

begin
   shiftLeftOnePos <= ( input(14), input(13), input(12), input(11), input(10), 
      input(9), input(8), input(7), input(6), input(5), input(4), input(3), 
      input(2), input(1), input(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity shifter_N16_2 is

   port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
         std_logic_vector (15 downto 0));

end shifter_N16_2;

architecture SYN_beh of shifter_N16_2 is

signal X_Logic0_port : std_logic;

begin
   shiftLeftOnePos <= ( input(14), input(13), input(12), input(11), input(10), 
      input(9), input(8), input(7), input(6), input(5), input(4), input(3), 
      input(2), input(1), input(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity shifter_N16_1 is

   port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
         std_logic_vector (15 downto 0));

end shifter_N16_1;

architecture SYN_beh of shifter_N16_1 is

signal X_Logic0_port : std_logic;

begin
   shiftLeftOnePos <= ( input(14), input(13), input(12), input(11), input(10), 
      input(9), input(8), input(7), input(6), input(5), input(4), input(3), 
      input(2), input(1), input(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity RCA_N16_2 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_N16_2;

architecture SYN_STRUCTURAL of RCA_N16_2 is

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
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_28 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_27 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_26 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_25 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_24 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_23 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_22 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_21 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_20 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_19 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_18 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_17 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity RCA_N16_1 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_N16_1;

architecture SYN_STRUCTURAL of RCA_N16_1 is

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
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_12 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_11 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_10 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_9 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_8 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_7 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9), 
                           Co => CTMP_10_port);
   FAI_11 : FA_6 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_5 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_4 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_3 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_2 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_1 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity ShiftnCompl_N16_2 is

   port( plusA : in std_logic_vector (15 downto 0);  plus2A_out, minus2A_out, 
         plus4A_out, minus4A_out : out std_logic_vector (15 downto 0));

end ShiftnCompl_N16_2;

architecture SYN_struct of ShiftnCompl_N16_2 is

   component complementer_N16_3
      port( input : in std_logic_vector (15 downto 0);  complement2 : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component complementer_N16_4
      port( input : in std_logic_vector (15 downto 0);  complement2 : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component shifter_N16_3
      port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component shifter_N16_4
      port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
            std_logic_vector (15 downto 0));
   end component;
   
   signal plus2A_out_15_port, plus2A_out_14_port, plus2A_out_13_port, 
      plus2A_out_12_port, plus2A_out_11_port, plus2A_out_10_port, 
      plus2A_out_9_port, plus2A_out_8_port, plus2A_out_7_port, 
      plus2A_out_6_port, plus2A_out_5_port, plus2A_out_4_port, 
      plus2A_out_3_port, plus2A_out_2_port, plus2A_out_1_port, 
      plus2A_out_0_port, plus4A_out_15_port, plus4A_out_14_port, 
      plus4A_out_13_port, plus4A_out_12_port, plus4A_out_11_port, 
      plus4A_out_10_port, plus4A_out_9_port, plus4A_out_8_port, 
      plus4A_out_7_port, plus4A_out_6_port, plus4A_out_5_port, 
      plus4A_out_4_port, plus4A_out_3_port, plus4A_out_2_port, 
      plus4A_out_1_port, plus4A_out_0_port, n_1000, n_1001 : std_logic;

begin
   plus2A_out <= ( plus2A_out_15_port, plus2A_out_14_port, plus2A_out_13_port, 
      plus2A_out_12_port, plus2A_out_11_port, plus2A_out_10_port, 
      plus2A_out_9_port, plus2A_out_8_port, plus2A_out_7_port, 
      plus2A_out_6_port, plus2A_out_5_port, plus2A_out_4_port, 
      plus2A_out_3_port, plus2A_out_2_port, plus2A_out_1_port, 
      plus2A_out_0_port );
   plus4A_out <= ( plus4A_out_15_port, plus4A_out_14_port, plus4A_out_13_port, 
      plus4A_out_12_port, plus4A_out_11_port, plus4A_out_10_port, 
      plus4A_out_9_port, plus4A_out_8_port, plus4A_out_7_port, 
      plus4A_out_6_port, plus4A_out_5_port, plus4A_out_4_port, 
      plus4A_out_3_port, plus4A_out_2_port, plus4A_out_1_port, 
      plus4A_out_0_port );
   
   shifter_1 : shifter_N16_4 port map( input(15) => plusA(15), input(14) => 
                           plusA(14), input(13) => plusA(13), input(12) => 
                           plusA(12), input(11) => plusA(11), input(10) => 
                           plusA(10), input(9) => plusA(9), input(8) => 
                           plusA(8), input(7) => plusA(7), input(6) => plusA(6)
                           , input(5) => plusA(5), input(4) => plusA(4), 
                           input(3) => plusA(3), input(2) => plusA(2), input(1)
                           => plusA(1), input(0) => plusA(0), 
                           shiftLeftOnePos(15) => plus2A_out_15_port, 
                           shiftLeftOnePos(14) => plus2A_out_14_port, 
                           shiftLeftOnePos(13) => plus2A_out_13_port, 
                           shiftLeftOnePos(12) => plus2A_out_12_port, 
                           shiftLeftOnePos(11) => plus2A_out_11_port, 
                           shiftLeftOnePos(10) => plus2A_out_10_port, 
                           shiftLeftOnePos(9) => plus2A_out_9_port, 
                           shiftLeftOnePos(8) => plus2A_out_8_port, 
                           shiftLeftOnePos(7) => plus2A_out_7_port, 
                           shiftLeftOnePos(6) => plus2A_out_6_port, 
                           shiftLeftOnePos(5) => plus2A_out_5_port, 
                           shiftLeftOnePos(4) => plus2A_out_4_port, 
                           shiftLeftOnePos(3) => plus2A_out_3_port, 
                           shiftLeftOnePos(2) => plus2A_out_2_port, 
                           shiftLeftOnePos(1) => plus2A_out_1_port, 
                           shiftLeftOnePos(0) => n_1000);
   shifter_2 : shifter_N16_3 port map( input(15) => plus2A_out_15_port, 
                           input(14) => plus2A_out_14_port, input(13) => 
                           plus2A_out_13_port, input(12) => plus2A_out_12_port,
                           input(11) => plus2A_out_11_port, input(10) => 
                           plus2A_out_10_port, input(9) => plus2A_out_9_port, 
                           input(8) => plus2A_out_8_port, input(7) => 
                           plus2A_out_7_port, input(6) => plus2A_out_6_port, 
                           input(5) => plus2A_out_5_port, input(4) => 
                           plus2A_out_4_port, input(3) => plus2A_out_3_port, 
                           input(2) => plus2A_out_2_port, input(1) => 
                           plus2A_out_1_port, input(0) => plus2A_out_0_port, 
                           shiftLeftOnePos(15) => plus4A_out_15_port, 
                           shiftLeftOnePos(14) => plus4A_out_14_port, 
                           shiftLeftOnePos(13) => plus4A_out_13_port, 
                           shiftLeftOnePos(12) => plus4A_out_12_port, 
                           shiftLeftOnePos(11) => plus4A_out_11_port, 
                           shiftLeftOnePos(10) => plus4A_out_10_port, 
                           shiftLeftOnePos(9) => plus4A_out_9_port, 
                           shiftLeftOnePos(8) => plus4A_out_8_port, 
                           shiftLeftOnePos(7) => plus4A_out_7_port, 
                           shiftLeftOnePos(6) => plus4A_out_6_port, 
                           shiftLeftOnePos(5) => plus4A_out_5_port, 
                           shiftLeftOnePos(4) => plus4A_out_4_port, 
                           shiftLeftOnePos(3) => plus4A_out_3_port, 
                           shiftLeftOnePos(2) => plus4A_out_2_port, 
                           shiftLeftOnePos(1) => plus4A_out_1_port, 
                           shiftLeftOnePos(0) => n_1001);
   complementer_1 : complementer_N16_4 port map( input(15) => 
                           plus2A_out_15_port, input(14) => plus2A_out_14_port,
                           input(13) => plus2A_out_13_port, input(12) => 
                           plus2A_out_12_port, input(11) => plus2A_out_11_port,
                           input(10) => plus2A_out_10_port, input(9) => 
                           plus2A_out_9_port, input(8) => plus2A_out_8_port, 
                           input(7) => plus2A_out_7_port, input(6) => 
                           plus2A_out_6_port, input(5) => plus2A_out_5_port, 
                           input(4) => plus2A_out_4_port, input(3) => 
                           plus2A_out_3_port, input(2) => plus2A_out_2_port, 
                           input(1) => plus2A_out_1_port, input(0) => 
                           plus2A_out_0_port, complement2(15) => 
                           minus2A_out(15), complement2(14) => minus2A_out(14),
                           complement2(13) => minus2A_out(13), complement2(12) 
                           => minus2A_out(12), complement2(11) => 
                           minus2A_out(11), complement2(10) => minus2A_out(10),
                           complement2(9) => minus2A_out(9), complement2(8) => 
                           minus2A_out(8), complement2(7) => minus2A_out(7), 
                           complement2(6) => minus2A_out(6), complement2(5) => 
                           minus2A_out(5), complement2(4) => minus2A_out(4), 
                           complement2(3) => minus2A_out(3), complement2(2) => 
                           minus2A_out(2), complement2(1) => minus2A_out(1), 
                           complement2(0) => minus2A_out(0));
   complementer_2 : complementer_N16_3 port map( input(15) => 
                           plus4A_out_15_port, input(14) => plus4A_out_14_port,
                           input(13) => plus4A_out_13_port, input(12) => 
                           plus4A_out_12_port, input(11) => plus4A_out_11_port,
                           input(10) => plus4A_out_10_port, input(9) => 
                           plus4A_out_9_port, input(8) => plus4A_out_8_port, 
                           input(7) => plus4A_out_7_port, input(6) => 
                           plus4A_out_6_port, input(5) => plus4A_out_5_port, 
                           input(4) => plus4A_out_4_port, input(3) => 
                           plus4A_out_3_port, input(2) => plus4A_out_2_port, 
                           input(1) => plus4A_out_1_port, input(0) => 
                           plus4A_out_0_port, complement2(15) => 
                           minus4A_out(15), complement2(14) => minus4A_out(14),
                           complement2(13) => minus4A_out(13), complement2(12) 
                           => minus4A_out(12), complement2(11) => 
                           minus4A_out(11), complement2(10) => minus4A_out(10),
                           complement2(9) => minus4A_out(9), complement2(8) => 
                           minus4A_out(8), complement2(7) => minus4A_out(7), 
                           complement2(6) => minus4A_out(6), complement2(5) => 
                           minus4A_out(5), complement2(4) => minus4A_out(4), 
                           complement2(3) => minus4A_out(3), complement2(2) => 
                           minus4A_out(2), complement2(1) => minus4A_out(1), 
                           complement2(0) => minus4A_out(0));
   plus2A_out_0_port <= '0';
   plus4A_out_0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity ShiftnCompl_N16_1 is

   port( plusA : in std_logic_vector (15 downto 0);  plus2A_out, minus2A_out, 
         plus4A_out, minus4A_out : out std_logic_vector (15 downto 0));

end ShiftnCompl_N16_1;

architecture SYN_struct of ShiftnCompl_N16_1 is

   component complementer_N16_1
      port( input : in std_logic_vector (15 downto 0);  complement2 : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component complementer_N16_2
      port( input : in std_logic_vector (15 downto 0);  complement2 : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component shifter_N16_1
      port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component shifter_N16_2
      port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
            std_logic_vector (15 downto 0));
   end component;
   
   signal plus2A_out_15_port, plus2A_out_14_port, plus2A_out_13_port, 
      plus2A_out_12_port, plus2A_out_11_port, plus2A_out_10_port, 
      plus2A_out_9_port, plus2A_out_8_port, plus2A_out_7_port, 
      plus2A_out_6_port, plus2A_out_5_port, plus2A_out_4_port, 
      plus2A_out_3_port, plus2A_out_2_port, plus2A_out_1_port, 
      plus2A_out_0_port, plus4A_out_15_port, plus4A_out_14_port, 
      plus4A_out_13_port, plus4A_out_12_port, plus4A_out_11_port, 
      plus4A_out_10_port, plus4A_out_9_port, plus4A_out_8_port, 
      plus4A_out_7_port, plus4A_out_6_port, plus4A_out_5_port, 
      plus4A_out_4_port, plus4A_out_3_port, plus4A_out_2_port, 
      plus4A_out_1_port, plus4A_out_0_port, n_1002, n_1003 : std_logic;

begin
   plus2A_out <= ( plus2A_out_15_port, plus2A_out_14_port, plus2A_out_13_port, 
      plus2A_out_12_port, plus2A_out_11_port, plus2A_out_10_port, 
      plus2A_out_9_port, plus2A_out_8_port, plus2A_out_7_port, 
      plus2A_out_6_port, plus2A_out_5_port, plus2A_out_4_port, 
      plus2A_out_3_port, plus2A_out_2_port, plus2A_out_1_port, 
      plus2A_out_0_port );
   plus4A_out <= ( plus4A_out_15_port, plus4A_out_14_port, plus4A_out_13_port, 
      plus4A_out_12_port, plus4A_out_11_port, plus4A_out_10_port, 
      plus4A_out_9_port, plus4A_out_8_port, plus4A_out_7_port, 
      plus4A_out_6_port, plus4A_out_5_port, plus4A_out_4_port, 
      plus4A_out_3_port, plus4A_out_2_port, plus4A_out_1_port, 
      plus4A_out_0_port );
   
   shifter_1 : shifter_N16_2 port map( input(15) => plusA(15), input(14) => 
                           plusA(14), input(13) => plusA(13), input(12) => 
                           plusA(12), input(11) => plusA(11), input(10) => 
                           plusA(10), input(9) => plusA(9), input(8) => 
                           plusA(8), input(7) => plusA(7), input(6) => plusA(6)
                           , input(5) => plusA(5), input(4) => plusA(4), 
                           input(3) => plusA(3), input(2) => plusA(2), input(1)
                           => plusA(1), input(0) => plusA(0), 
                           shiftLeftOnePos(15) => plus2A_out_15_port, 
                           shiftLeftOnePos(14) => plus2A_out_14_port, 
                           shiftLeftOnePos(13) => plus2A_out_13_port, 
                           shiftLeftOnePos(12) => plus2A_out_12_port, 
                           shiftLeftOnePos(11) => plus2A_out_11_port, 
                           shiftLeftOnePos(10) => plus2A_out_10_port, 
                           shiftLeftOnePos(9) => plus2A_out_9_port, 
                           shiftLeftOnePos(8) => plus2A_out_8_port, 
                           shiftLeftOnePos(7) => plus2A_out_7_port, 
                           shiftLeftOnePos(6) => plus2A_out_6_port, 
                           shiftLeftOnePos(5) => plus2A_out_5_port, 
                           shiftLeftOnePos(4) => plus2A_out_4_port, 
                           shiftLeftOnePos(3) => plus2A_out_3_port, 
                           shiftLeftOnePos(2) => plus2A_out_2_port, 
                           shiftLeftOnePos(1) => plus2A_out_1_port, 
                           shiftLeftOnePos(0) => n_1002);
   shifter_2 : shifter_N16_1 port map( input(15) => plus2A_out_15_port, 
                           input(14) => plus2A_out_14_port, input(13) => 
                           plus2A_out_13_port, input(12) => plus2A_out_12_port,
                           input(11) => plus2A_out_11_port, input(10) => 
                           plus2A_out_10_port, input(9) => plus2A_out_9_port, 
                           input(8) => plus2A_out_8_port, input(7) => 
                           plus2A_out_7_port, input(6) => plus2A_out_6_port, 
                           input(5) => plus2A_out_5_port, input(4) => 
                           plus2A_out_4_port, input(3) => plus2A_out_3_port, 
                           input(2) => plus2A_out_2_port, input(1) => 
                           plus2A_out_1_port, input(0) => plus2A_out_0_port, 
                           shiftLeftOnePos(15) => plus4A_out_15_port, 
                           shiftLeftOnePos(14) => plus4A_out_14_port, 
                           shiftLeftOnePos(13) => plus4A_out_13_port, 
                           shiftLeftOnePos(12) => plus4A_out_12_port, 
                           shiftLeftOnePos(11) => plus4A_out_11_port, 
                           shiftLeftOnePos(10) => plus4A_out_10_port, 
                           shiftLeftOnePos(9) => plus4A_out_9_port, 
                           shiftLeftOnePos(8) => plus4A_out_8_port, 
                           shiftLeftOnePos(7) => plus4A_out_7_port, 
                           shiftLeftOnePos(6) => plus4A_out_6_port, 
                           shiftLeftOnePos(5) => plus4A_out_5_port, 
                           shiftLeftOnePos(4) => plus4A_out_4_port, 
                           shiftLeftOnePos(3) => plus4A_out_3_port, 
                           shiftLeftOnePos(2) => plus4A_out_2_port, 
                           shiftLeftOnePos(1) => plus4A_out_1_port, 
                           shiftLeftOnePos(0) => n_1003);
   complementer_1 : complementer_N16_2 port map( input(15) => 
                           plus2A_out_15_port, input(14) => plus2A_out_14_port,
                           input(13) => plus2A_out_13_port, input(12) => 
                           plus2A_out_12_port, input(11) => plus2A_out_11_port,
                           input(10) => plus2A_out_10_port, input(9) => 
                           plus2A_out_9_port, input(8) => plus2A_out_8_port, 
                           input(7) => plus2A_out_7_port, input(6) => 
                           plus2A_out_6_port, input(5) => plus2A_out_5_port, 
                           input(4) => plus2A_out_4_port, input(3) => 
                           plus2A_out_3_port, input(2) => plus2A_out_2_port, 
                           input(1) => plus2A_out_1_port, input(0) => 
                           plus2A_out_0_port, complement2(15) => 
                           minus2A_out(15), complement2(14) => minus2A_out(14),
                           complement2(13) => minus2A_out(13), complement2(12) 
                           => minus2A_out(12), complement2(11) => 
                           minus2A_out(11), complement2(10) => minus2A_out(10),
                           complement2(9) => minus2A_out(9), complement2(8) => 
                           minus2A_out(8), complement2(7) => minus2A_out(7), 
                           complement2(6) => minus2A_out(6), complement2(5) => 
                           minus2A_out(5), complement2(4) => minus2A_out(4), 
                           complement2(3) => minus2A_out(3), complement2(2) => 
                           minus2A_out(2), complement2(1) => minus2A_out(1), 
                           complement2(0) => minus2A_out(0));
   complementer_2 : complementer_N16_1 port map( input(15) => 
                           plus4A_out_15_port, input(14) => plus4A_out_14_port,
                           input(13) => plus4A_out_13_port, input(12) => 
                           plus4A_out_12_port, input(11) => plus4A_out_11_port,
                           input(10) => plus4A_out_10_port, input(9) => 
                           plus4A_out_9_port, input(8) => plus4A_out_8_port, 
                           input(7) => plus4A_out_7_port, input(6) => 
                           plus4A_out_6_port, input(5) => plus4A_out_5_port, 
                           input(4) => plus4A_out_4_port, input(3) => 
                           plus4A_out_3_port, input(2) => plus4A_out_2_port, 
                           input(1) => plus4A_out_1_port, input(0) => 
                           plus4A_out_0_port, complement2(15) => 
                           minus4A_out(15), complement2(14) => minus4A_out(14),
                           complement2(13) => minus4A_out(13), complement2(12) 
                           => minus4A_out(12), complement2(11) => 
                           minus4A_out(11), complement2(10) => minus4A_out(10),
                           complement2(9) => minus4A_out(9), complement2(8) => 
                           minus4A_out(8), complement2(7) => minus4A_out(7), 
                           complement2(6) => minus4A_out(6), complement2(5) => 
                           minus4A_out(5), complement2(4) => minus4A_out(4), 
                           complement2(3) => minus4A_out(3), complement2(2) => 
                           minus4A_out(2), complement2(1) => minus4A_out(1), 
                           complement2(0) => minus4A_out(0));
   plus2A_out_0_port <= '0';
   plus4A_out_0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity MUX_GENERIC_N16_RADIX3_3 is

   port( plusA, minusA, plus2A, minus2A : in std_logic_vector (15 downto 0);  
         SEL : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end MUX_GENERIC_N16_RADIX3_3;

architecture SYN_beh of MUX_GENERIC_N16_RADIX3_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component TBUF_X1
      port( A, EN : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n56, n57, n58, n59, n60, n61, n62
      , n63, n64, n65, n66, n67, n68, n69, n70, n71, n72 : std_logic;

begin
   
   Y_tri_0_inst : TBUF_X1 port map( A => n56, EN => n65, Z => Y(0));
   Y_tri_1_inst : TBUF_X1 port map( A => n57, EN => n65, Z => Y(1));
   Y_tri_2_inst : TBUF_X1 port map( A => n58, EN => n65, Z => Y(2));
   Y_tri_3_inst : TBUF_X1 port map( A => n59, EN => n65, Z => Y(3));
   Y_tri_4_inst : TBUF_X1 port map( A => n60, EN => n65, Z => Y(4));
   Y_tri_5_inst : TBUF_X1 port map( A => n61, EN => n65, Z => Y(5));
   Y_tri_6_inst : TBUF_X1 port map( A => n62, EN => n65, Z => Y(6));
   Y_tri_7_inst : TBUF_X1 port map( A => n63, EN => n65, Z => Y(7));
   Y_tri_8_inst : TBUF_X1 port map( A => n64, EN => n65, Z => Y(8));
   Y_tri_9_inst : TBUF_X1 port map( A => n66, EN => n65, Z => Y(9));
   Y_tri_10_inst : TBUF_X1 port map( A => n67, EN => n65, Z => Y(10));
   Y_tri_11_inst : TBUF_X1 port map( A => n68, EN => n65, Z => Y(11));
   Y_tri_12_inst : TBUF_X1 port map( A => n69, EN => n65, Z => Y(12));
   Y_tri_13_inst : TBUF_X1 port map( A => n70, EN => n65, Z => Y(13));
   Y_tri_14_inst : TBUF_X1 port map( A => n71, EN => n65, Z => Y(14));
   Y_tri_15_inst : TBUF_X1 port map( A => n72, EN => n65, Z => Y(15));
   U2 : NOR2_X2 port map( A1 => n37, A2 => SEL(1), ZN => n4);
   U3 : NOR2_X2 port map( A1 => n37, A2 => n38, ZN => n5);
   U4 : NOR2_X2 port map( A1 => n38, A2 => SEL(0), ZN => n3);
   U5 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => n56);
   U6 : AOI22_X1 port map( A1 => minusA(0), A2 => n3, B1 => plusA(0), B2 => n4,
                           ZN => n2);
   U7 : AOI22_X1 port map( A1 => plus2A(0), A2 => n5, B1 => minus2A(0), B2 => 
                           SEL(2), ZN => n1);
   U8 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => n57);
   U9 : AOI22_X1 port map( A1 => minusA(1), A2 => n3, B1 => plusA(1), B2 => n4,
                           ZN => n7);
   U10 : AOI22_X1 port map( A1 => plus2A(1), A2 => n5, B1 => minus2A(1), B2 => 
                           SEL(2), ZN => n6);
   U11 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n58);
   U12 : AOI22_X1 port map( A1 => minusA(2), A2 => n3, B1 => plusA(2), B2 => n4
                           , ZN => n9);
   U13 : AOI22_X1 port map( A1 => plus2A(2), A2 => n5, B1 => minus2A(2), B2 => 
                           SEL(2), ZN => n8);
   U14 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => n59);
   U15 : AOI22_X1 port map( A1 => minusA(3), A2 => n3, B1 => plusA(3), B2 => n4
                           , ZN => n11);
   U16 : AOI22_X1 port map( A1 => plus2A(3), A2 => n5, B1 => minus2A(3), B2 => 
                           SEL(2), ZN => n10);
   U17 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => n60);
   U18 : AOI22_X1 port map( A1 => minusA(4), A2 => n3, B1 => plusA(4), B2 => n4
                           , ZN => n13);
   U19 : AOI22_X1 port map( A1 => plus2A(4), A2 => n5, B1 => minus2A(4), B2 => 
                           SEL(2), ZN => n12);
   U20 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => n61);
   U21 : AOI22_X1 port map( A1 => minusA(5), A2 => n3, B1 => plusA(5), B2 => n4
                           , ZN => n15);
   U22 : AOI22_X1 port map( A1 => plus2A(5), A2 => n5, B1 => minus2A(5), B2 => 
                           SEL(2), ZN => n14);
   U23 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => n62);
   U24 : AOI22_X1 port map( A1 => minusA(6), A2 => n3, B1 => plusA(6), B2 => n4
                           , ZN => n17);
   U25 : AOI22_X1 port map( A1 => plus2A(6), A2 => n5, B1 => minus2A(6), B2 => 
                           SEL(2), ZN => n16);
   U26 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => n63);
   U27 : AOI22_X1 port map( A1 => minusA(7), A2 => n3, B1 => plusA(7), B2 => n4
                           , ZN => n19);
   U28 : AOI22_X1 port map( A1 => plus2A(7), A2 => n5, B1 => minus2A(7), B2 => 
                           SEL(2), ZN => n18);
   U29 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => n64);
   U30 : AOI22_X1 port map( A1 => minusA(8), A2 => n3, B1 => plusA(8), B2 => n4
                           , ZN => n21);
   U31 : AOI22_X1 port map( A1 => plus2A(8), A2 => n5, B1 => minus2A(8), B2 => 
                           SEL(2), ZN => n20);
   U32 : INV_X1 port map( A => n22, ZN => n65);
   U33 : OAI21_X1 port map( B1 => SEL(1), B2 => SEL(0), A => SEL(2), ZN => n22)
                           ;
   U34 : NAND2_X1 port map( A1 => n23, A2 => n24, ZN => n66);
   U35 : AOI22_X1 port map( A1 => minusA(9), A2 => n3, B1 => plusA(9), B2 => n4
                           , ZN => n24);
   U36 : AOI22_X1 port map( A1 => plus2A(9), A2 => n5, B1 => minus2A(9), B2 => 
                           SEL(2), ZN => n23);
   U37 : NAND2_X1 port map( A1 => n25, A2 => n26, ZN => n67);
   U38 : AOI22_X1 port map( A1 => minusA(10), A2 => n3, B1 => plusA(10), B2 => 
                           n4, ZN => n26);
   U39 : AOI22_X1 port map( A1 => plus2A(10), A2 => n5, B1 => minus2A(10), B2 
                           => SEL(2), ZN => n25);
   U40 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => n68);
   U41 : AOI22_X1 port map( A1 => minusA(11), A2 => n3, B1 => plusA(11), B2 => 
                           n4, ZN => n28);
   U42 : AOI22_X1 port map( A1 => plus2A(11), A2 => n5, B1 => minus2A(11), B2 
                           => SEL(2), ZN => n27);
   U43 : NAND2_X1 port map( A1 => n29, A2 => n30, ZN => n69);
   U44 : AOI22_X1 port map( A1 => minusA(12), A2 => n3, B1 => plusA(12), B2 => 
                           n4, ZN => n30);
   U45 : AOI22_X1 port map( A1 => plus2A(12), A2 => n5, B1 => minus2A(12), B2 
                           => SEL(2), ZN => n29);
   U46 : NAND2_X1 port map( A1 => n31, A2 => n32, ZN => n70);
   U47 : AOI22_X1 port map( A1 => minusA(13), A2 => n3, B1 => plusA(13), B2 => 
                           n4, ZN => n32);
   U48 : AOI22_X1 port map( A1 => plus2A(13), A2 => n5, B1 => minus2A(13), B2 
                           => SEL(2), ZN => n31);
   U49 : NAND2_X1 port map( A1 => n33, A2 => n34, ZN => n71);
   U50 : AOI22_X1 port map( A1 => minusA(14), A2 => n3, B1 => plusA(14), B2 => 
                           n4, ZN => n34);
   U51 : AOI22_X1 port map( A1 => plus2A(14), A2 => n5, B1 => minus2A(14), B2 
                           => SEL(2), ZN => n33);
   U52 : NAND2_X1 port map( A1 => n35, A2 => n36, ZN => n72);
   U53 : AOI22_X1 port map( A1 => minusA(15), A2 => n3, B1 => plusA(15), B2 => 
                           n4, ZN => n36);
   U54 : AOI22_X1 port map( A1 => plus2A(15), A2 => n5, B1 => minus2A(15), B2 
                           => SEL(2), ZN => n35);
   U55 : INV_X1 port map( A => SEL(1), ZN => n38);
   U56 : INV_X1 port map( A => SEL(0), ZN => n37);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity MUX_GENERIC_N16_RADIX3_2 is

   port( plusA, minusA, plus2A, minus2A : in std_logic_vector (15 downto 0);  
         SEL : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end MUX_GENERIC_N16_RADIX3_2;

architecture SYN_beh of MUX_GENERIC_N16_RADIX3_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component TBUF_X1
      port( A, EN : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n56, n57, n58, n59, n60, n61, n62
      , n63, n64, n65, n66, n67, n68, n69, n70, n71, n72 : std_logic;

begin
   
   Y_tri_0_inst : TBUF_X1 port map( A => n56, EN => n65, Z => Y(0));
   Y_tri_1_inst : TBUF_X1 port map( A => n57, EN => n65, Z => Y(1));
   Y_tri_2_inst : TBUF_X1 port map( A => n58, EN => n65, Z => Y(2));
   Y_tri_3_inst : TBUF_X1 port map( A => n59, EN => n65, Z => Y(3));
   Y_tri_4_inst : TBUF_X1 port map( A => n60, EN => n65, Z => Y(4));
   Y_tri_5_inst : TBUF_X1 port map( A => n61, EN => n65, Z => Y(5));
   Y_tri_6_inst : TBUF_X1 port map( A => n62, EN => n65, Z => Y(6));
   Y_tri_7_inst : TBUF_X1 port map( A => n63, EN => n65, Z => Y(7));
   Y_tri_8_inst : TBUF_X1 port map( A => n64, EN => n65, Z => Y(8));
   Y_tri_9_inst : TBUF_X1 port map( A => n66, EN => n65, Z => Y(9));
   Y_tri_10_inst : TBUF_X1 port map( A => n67, EN => n65, Z => Y(10));
   Y_tri_11_inst : TBUF_X1 port map( A => n68, EN => n65, Z => Y(11));
   Y_tri_12_inst : TBUF_X1 port map( A => n69, EN => n65, Z => Y(12));
   Y_tri_13_inst : TBUF_X1 port map( A => n70, EN => n65, Z => Y(13));
   Y_tri_14_inst : TBUF_X1 port map( A => n71, EN => n65, Z => Y(14));
   Y_tri_15_inst : TBUF_X1 port map( A => n72, EN => n65, Z => Y(15));
   U2 : NOR2_X2 port map( A1 => n37, A2 => SEL(1), ZN => n4);
   U3 : NOR2_X2 port map( A1 => n37, A2 => n38, ZN => n5);
   U4 : NOR2_X2 port map( A1 => n38, A2 => SEL(0), ZN => n3);
   U5 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => n56);
   U6 : AOI22_X1 port map( A1 => minusA(0), A2 => n3, B1 => plusA(0), B2 => n4,
                           ZN => n2);
   U7 : AOI22_X1 port map( A1 => plus2A(0), A2 => n5, B1 => minus2A(0), B2 => 
                           SEL(2), ZN => n1);
   U8 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => n57);
   U9 : AOI22_X1 port map( A1 => minusA(1), A2 => n3, B1 => plusA(1), B2 => n4,
                           ZN => n7);
   U10 : AOI22_X1 port map( A1 => plus2A(1), A2 => n5, B1 => minus2A(1), B2 => 
                           SEL(2), ZN => n6);
   U11 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n58);
   U12 : AOI22_X1 port map( A1 => minusA(2), A2 => n3, B1 => plusA(2), B2 => n4
                           , ZN => n9);
   U13 : AOI22_X1 port map( A1 => plus2A(2), A2 => n5, B1 => minus2A(2), B2 => 
                           SEL(2), ZN => n8);
   U14 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => n59);
   U15 : AOI22_X1 port map( A1 => minusA(3), A2 => n3, B1 => plusA(3), B2 => n4
                           , ZN => n11);
   U16 : AOI22_X1 port map( A1 => plus2A(3), A2 => n5, B1 => minus2A(3), B2 => 
                           SEL(2), ZN => n10);
   U17 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => n60);
   U18 : AOI22_X1 port map( A1 => minusA(4), A2 => n3, B1 => plusA(4), B2 => n4
                           , ZN => n13);
   U19 : AOI22_X1 port map( A1 => plus2A(4), A2 => n5, B1 => minus2A(4), B2 => 
                           SEL(2), ZN => n12);
   U20 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => n61);
   U21 : AOI22_X1 port map( A1 => minusA(5), A2 => n3, B1 => plusA(5), B2 => n4
                           , ZN => n15);
   U22 : AOI22_X1 port map( A1 => plus2A(5), A2 => n5, B1 => minus2A(5), B2 => 
                           SEL(2), ZN => n14);
   U23 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => n62);
   U24 : AOI22_X1 port map( A1 => minusA(6), A2 => n3, B1 => plusA(6), B2 => n4
                           , ZN => n17);
   U25 : AOI22_X1 port map( A1 => plus2A(6), A2 => n5, B1 => minus2A(6), B2 => 
                           SEL(2), ZN => n16);
   U26 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => n63);
   U27 : AOI22_X1 port map( A1 => minusA(7), A2 => n3, B1 => plusA(7), B2 => n4
                           , ZN => n19);
   U28 : AOI22_X1 port map( A1 => plus2A(7), A2 => n5, B1 => minus2A(7), B2 => 
                           SEL(2), ZN => n18);
   U29 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => n64);
   U30 : AOI22_X1 port map( A1 => minusA(8), A2 => n3, B1 => plusA(8), B2 => n4
                           , ZN => n21);
   U31 : AOI22_X1 port map( A1 => plus2A(8), A2 => n5, B1 => minus2A(8), B2 => 
                           SEL(2), ZN => n20);
   U32 : INV_X1 port map( A => n22, ZN => n65);
   U33 : OAI21_X1 port map( B1 => SEL(1), B2 => SEL(0), A => SEL(2), ZN => n22)
                           ;
   U34 : NAND2_X1 port map( A1 => n23, A2 => n24, ZN => n66);
   U35 : AOI22_X1 port map( A1 => minusA(9), A2 => n3, B1 => plusA(9), B2 => n4
                           , ZN => n24);
   U36 : AOI22_X1 port map( A1 => plus2A(9), A2 => n5, B1 => minus2A(9), B2 => 
                           SEL(2), ZN => n23);
   U37 : NAND2_X1 port map( A1 => n25, A2 => n26, ZN => n67);
   U38 : AOI22_X1 port map( A1 => minusA(10), A2 => n3, B1 => plusA(10), B2 => 
                           n4, ZN => n26);
   U39 : AOI22_X1 port map( A1 => plus2A(10), A2 => n5, B1 => minus2A(10), B2 
                           => SEL(2), ZN => n25);
   U40 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => n68);
   U41 : AOI22_X1 port map( A1 => minusA(11), A2 => n3, B1 => plusA(11), B2 => 
                           n4, ZN => n28);
   U42 : AOI22_X1 port map( A1 => plus2A(11), A2 => n5, B1 => minus2A(11), B2 
                           => SEL(2), ZN => n27);
   U43 : NAND2_X1 port map( A1 => n29, A2 => n30, ZN => n69);
   U44 : AOI22_X1 port map( A1 => minusA(12), A2 => n3, B1 => plusA(12), B2 => 
                           n4, ZN => n30);
   U45 : AOI22_X1 port map( A1 => plus2A(12), A2 => n5, B1 => minus2A(12), B2 
                           => SEL(2), ZN => n29);
   U46 : NAND2_X1 port map( A1 => n31, A2 => n32, ZN => n70);
   U47 : AOI22_X1 port map( A1 => minusA(13), A2 => n3, B1 => plusA(13), B2 => 
                           n4, ZN => n32);
   U48 : AOI22_X1 port map( A1 => plus2A(13), A2 => n5, B1 => minus2A(13), B2 
                           => SEL(2), ZN => n31);
   U49 : NAND2_X1 port map( A1 => n33, A2 => n34, ZN => n71);
   U50 : AOI22_X1 port map( A1 => minusA(14), A2 => n3, B1 => plusA(14), B2 => 
                           n4, ZN => n34);
   U51 : AOI22_X1 port map( A1 => plus2A(14), A2 => n5, B1 => minus2A(14), B2 
                           => SEL(2), ZN => n33);
   U52 : NAND2_X1 port map( A1 => n35, A2 => n36, ZN => n72);
   U53 : AOI22_X1 port map( A1 => minusA(15), A2 => n3, B1 => plusA(15), B2 => 
                           n4, ZN => n36);
   U54 : AOI22_X1 port map( A1 => plus2A(15), A2 => n5, B1 => minus2A(15), B2 
                           => SEL(2), ZN => n35);
   U55 : INV_X1 port map( A => SEL(1), ZN => n38);
   U56 : INV_X1 port map( A => SEL(0), ZN => n37);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity MUX_GENERIC_N16_RADIX3_1 is

   port( plusA, minusA, plus2A, minus2A : in std_logic_vector (15 downto 0);  
         SEL : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end MUX_GENERIC_N16_RADIX3_1;

architecture SYN_beh of MUX_GENERIC_N16_RADIX3_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component TBUF_X1
      port( A, EN : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n56, n57, n58, n59, n60, n61, n62
      , n63, n64, n65, n66, n67, n68, n69, n70, n71, n72 : std_logic;

begin
   
   Y_tri_0_inst : TBUF_X1 port map( A => n56, EN => n65, Z => Y(0));
   Y_tri_1_inst : TBUF_X1 port map( A => n57, EN => n65, Z => Y(1));
   Y_tri_2_inst : TBUF_X1 port map( A => n58, EN => n65, Z => Y(2));
   Y_tri_3_inst : TBUF_X1 port map( A => n59, EN => n65, Z => Y(3));
   Y_tri_4_inst : TBUF_X1 port map( A => n60, EN => n65, Z => Y(4));
   Y_tri_5_inst : TBUF_X1 port map( A => n61, EN => n65, Z => Y(5));
   Y_tri_6_inst : TBUF_X1 port map( A => n62, EN => n65, Z => Y(6));
   Y_tri_7_inst : TBUF_X1 port map( A => n63, EN => n65, Z => Y(7));
   Y_tri_8_inst : TBUF_X1 port map( A => n64, EN => n65, Z => Y(8));
   Y_tri_9_inst : TBUF_X1 port map( A => n66, EN => n65, Z => Y(9));
   Y_tri_10_inst : TBUF_X1 port map( A => n67, EN => n65, Z => Y(10));
   Y_tri_11_inst : TBUF_X1 port map( A => n68, EN => n65, Z => Y(11));
   Y_tri_12_inst : TBUF_X1 port map( A => n69, EN => n65, Z => Y(12));
   Y_tri_13_inst : TBUF_X1 port map( A => n70, EN => n65, Z => Y(13));
   Y_tri_14_inst : TBUF_X1 port map( A => n71, EN => n65, Z => Y(14));
   Y_tri_15_inst : TBUF_X1 port map( A => n72, EN => n65, Z => Y(15));
   U2 : NOR2_X2 port map( A1 => n37, A2 => SEL(1), ZN => n4);
   U3 : NOR2_X2 port map( A1 => n37, A2 => n38, ZN => n5);
   U4 : NOR2_X2 port map( A1 => n38, A2 => SEL(0), ZN => n3);
   U5 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => n56);
   U6 : AOI22_X1 port map( A1 => minusA(0), A2 => n3, B1 => plusA(0), B2 => n4,
                           ZN => n2);
   U7 : AOI22_X1 port map( A1 => plus2A(0), A2 => n5, B1 => minus2A(0), B2 => 
                           SEL(2), ZN => n1);
   U8 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => n57);
   U9 : AOI22_X1 port map( A1 => minusA(1), A2 => n3, B1 => plusA(1), B2 => n4,
                           ZN => n7);
   U10 : AOI22_X1 port map( A1 => plus2A(1), A2 => n5, B1 => minus2A(1), B2 => 
                           SEL(2), ZN => n6);
   U11 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n58);
   U12 : AOI22_X1 port map( A1 => minusA(2), A2 => n3, B1 => plusA(2), B2 => n4
                           , ZN => n9);
   U13 : AOI22_X1 port map( A1 => plus2A(2), A2 => n5, B1 => minus2A(2), B2 => 
                           SEL(2), ZN => n8);
   U14 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => n59);
   U15 : AOI22_X1 port map( A1 => minusA(3), A2 => n3, B1 => plusA(3), B2 => n4
                           , ZN => n11);
   U16 : AOI22_X1 port map( A1 => plus2A(3), A2 => n5, B1 => minus2A(3), B2 => 
                           SEL(2), ZN => n10);
   U17 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => n60);
   U18 : AOI22_X1 port map( A1 => minusA(4), A2 => n3, B1 => plusA(4), B2 => n4
                           , ZN => n13);
   U19 : AOI22_X1 port map( A1 => plus2A(4), A2 => n5, B1 => minus2A(4), B2 => 
                           SEL(2), ZN => n12);
   U20 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => n61);
   U21 : AOI22_X1 port map( A1 => minusA(5), A2 => n3, B1 => plusA(5), B2 => n4
                           , ZN => n15);
   U22 : AOI22_X1 port map( A1 => plus2A(5), A2 => n5, B1 => minus2A(5), B2 => 
                           SEL(2), ZN => n14);
   U23 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => n62);
   U24 : AOI22_X1 port map( A1 => minusA(6), A2 => n3, B1 => plusA(6), B2 => n4
                           , ZN => n17);
   U25 : AOI22_X1 port map( A1 => plus2A(6), A2 => n5, B1 => minus2A(6), B2 => 
                           SEL(2), ZN => n16);
   U26 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => n63);
   U27 : AOI22_X1 port map( A1 => minusA(7), A2 => n3, B1 => plusA(7), B2 => n4
                           , ZN => n19);
   U28 : AOI22_X1 port map( A1 => plus2A(7), A2 => n5, B1 => minus2A(7), B2 => 
                           SEL(2), ZN => n18);
   U29 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => n64);
   U30 : AOI22_X1 port map( A1 => minusA(8), A2 => n3, B1 => plusA(8), B2 => n4
                           , ZN => n21);
   U31 : AOI22_X1 port map( A1 => plus2A(8), A2 => n5, B1 => minus2A(8), B2 => 
                           SEL(2), ZN => n20);
   U32 : INV_X1 port map( A => n22, ZN => n65);
   U33 : OAI21_X1 port map( B1 => SEL(1), B2 => SEL(0), A => SEL(2), ZN => n22)
                           ;
   U34 : NAND2_X1 port map( A1 => n23, A2 => n24, ZN => n66);
   U35 : AOI22_X1 port map( A1 => minusA(9), A2 => n3, B1 => plusA(9), B2 => n4
                           , ZN => n24);
   U36 : AOI22_X1 port map( A1 => plus2A(9), A2 => n5, B1 => minus2A(9), B2 => 
                           SEL(2), ZN => n23);
   U37 : NAND2_X1 port map( A1 => n25, A2 => n26, ZN => n67);
   U38 : AOI22_X1 port map( A1 => minusA(10), A2 => n3, B1 => plusA(10), B2 => 
                           n4, ZN => n26);
   U39 : AOI22_X1 port map( A1 => plus2A(10), A2 => n5, B1 => minus2A(10), B2 
                           => SEL(2), ZN => n25);
   U40 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => n68);
   U41 : AOI22_X1 port map( A1 => minusA(11), A2 => n3, B1 => plusA(11), B2 => 
                           n4, ZN => n28);
   U42 : AOI22_X1 port map( A1 => plus2A(11), A2 => n5, B1 => minus2A(11), B2 
                           => SEL(2), ZN => n27);
   U43 : NAND2_X1 port map( A1 => n29, A2 => n30, ZN => n69);
   U44 : AOI22_X1 port map( A1 => minusA(12), A2 => n3, B1 => plusA(12), B2 => 
                           n4, ZN => n30);
   U45 : AOI22_X1 port map( A1 => plus2A(12), A2 => n5, B1 => minus2A(12), B2 
                           => SEL(2), ZN => n29);
   U46 : NAND2_X1 port map( A1 => n31, A2 => n32, ZN => n70);
   U47 : AOI22_X1 port map( A1 => minusA(13), A2 => n3, B1 => plusA(13), B2 => 
                           n4, ZN => n32);
   U48 : AOI22_X1 port map( A1 => plus2A(13), A2 => n5, B1 => minus2A(13), B2 
                           => SEL(2), ZN => n31);
   U49 : NAND2_X1 port map( A1 => n33, A2 => n34, ZN => n71);
   U50 : AOI22_X1 port map( A1 => minusA(14), A2 => n3, B1 => plusA(14), B2 => 
                           n4, ZN => n34);
   U51 : AOI22_X1 port map( A1 => plus2A(14), A2 => n5, B1 => minus2A(14), B2 
                           => SEL(2), ZN => n33);
   U52 : NAND2_X1 port map( A1 => n35, A2 => n36, ZN => n72);
   U53 : AOI22_X1 port map( A1 => minusA(15), A2 => n3, B1 => plusA(15), B2 => 
                           n4, ZN => n36);
   U54 : AOI22_X1 port map( A1 => plus2A(15), A2 => n5, B1 => minus2A(15), B2 
                           => SEL(2), ZN => n35);
   U55 : INV_X1 port map( A => SEL(1), ZN => n38);
   U56 : INV_X1 port map( A => SEL(0), ZN => n37);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity encoder_N16_RADIX3_3 is

   port( X : in std_logic_vector (2 downto 0);  Z : out std_logic_vector (2 
         downto 0));

end encoder_N16_RADIX3_3;

architecture SYN_beh of encoder_N16_RADIX3_3 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : AND3_X1 port map( A1 => X(2), A2 => n1, A3 => n2, ZN => Z(2));
   U2 : INV_X1 port map( A => n3, ZN => Z(1));
   U3 : MUX2_X1 port map( A => n1, B => n2, S => X(2), Z => n3);
   U4 : AOI21_X1 port map( B1 => n2, B2 => n1, A => X(2), ZN => Z(0));
   U5 : NAND2_X1 port map( A1 => X(1), A2 => X(0), ZN => n1);
   U6 : XNOR2_X1 port map( A => X(0), B => X(1), ZN => n2);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity encoder_N16_RADIX3_2 is

   port( X : in std_logic_vector (2 downto 0);  Z : out std_logic_vector (2 
         downto 0));

end encoder_N16_RADIX3_2;

architecture SYN_beh of encoder_N16_RADIX3_2 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : AND3_X1 port map( A1 => X(2), A2 => n1, A3 => n2, ZN => Z(2));
   U2 : INV_X1 port map( A => n3, ZN => Z(1));
   U3 : MUX2_X1 port map( A => n1, B => n2, S => X(2), Z => n3);
   U4 : AOI21_X1 port map( B1 => n2, B2 => n1, A => X(2), ZN => Z(0));
   U5 : NAND2_X1 port map( A1 => X(1), A2 => X(0), ZN => n1);
   U6 : XNOR2_X1 port map( A => X(0), B => X(1), ZN => n2);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity encoder_N16_RADIX3_1 is

   port( X : in std_logic_vector (2 downto 0);  Z : out std_logic_vector (2 
         downto 0));

end encoder_N16_RADIX3_1;

architecture SYN_beh of encoder_N16_RADIX3_1 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : AND3_X1 port map( A1 => X(2), A2 => n1, A3 => n2, ZN => Z(2));
   U2 : INV_X1 port map( A => n3, ZN => Z(1));
   U3 : MUX2_X1 port map( A => n1, B => n2, S => X(2), Z => n3);
   U4 : AOI21_X1 port map( B1 => n2, B2 => n1, A => X(2), ZN => Z(0));
   U5 : NAND2_X1 port map( A1 => X(1), A2 => X(0), ZN => n1);
   U6 : XNOR2_X1 port map( A => X(0), B => X(1), ZN => n2);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity booth_mul_row_N16_RADIX3_2 is

   port( prevA, prevSum : in std_logic_vector (15 downto 0);  encoderIn : in 
         std_logic_vector (2 downto 0);  nextA, nextSum : out std_logic_vector 
         (15 downto 0));

end booth_mul_row_N16_RADIX3_2;

architecture SYN_struct of booth_mul_row_N16_RADIX3_2 is

   component RCA_N16_2
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component MUX_GENERIC_N16_RADIX3_2
      port( plusA, minusA, plus2A, minus2A : in std_logic_vector (15 downto 0);
            SEL : in std_logic_vector (2 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component ShiftnCompl_N16_2
      port( plusA : in std_logic_vector (15 downto 0);  plus2A_out, minus2A_out
            , plus4A_out, minus4A_out : out std_logic_vector (15 downto 0));
   end component;
   
   component encoder_N16_RADIX3_2
      port( X : in std_logic_vector (2 downto 0);  Z : out std_logic_vector (2 
            downto 0));
   end component;
   
   signal X_Logic0_port, nextA_15_port, nextA_14_port, nextA_13_port, 
      nextA_12_port, nextA_11_port, nextA_10_port, nextA_9_port, nextA_8_port, 
      nextA_7_port, nextA_6_port, nextA_5_port, nextA_4_port, nextA_3_port, 
      nextA_2_port, nextA_1_port, n2, encoder_to_mux_2_port, 
      encoder_to_mux_1_port, encoder_to_mux_0_port, plus2A_s_15_port, 
      plus2A_s_14_port, plus2A_s_13_port, plus2A_s_12_port, plus2A_s_11_port, 
      plus2A_s_10_port, plus2A_s_9_port, plus2A_s_8_port, plus2A_s_7_port, 
      plus2A_s_6_port, plus2A_s_5_port, plus2A_s_4_port, plus2A_s_3_port, 
      plus2A_s_2_port, plus2A_s_1_port, plus2A_s_0_port, minus2A_s_15_port, 
      minus2A_s_14_port, minus2A_s_13_port, minus2A_s_12_port, 
      minus2A_s_11_port, minus2A_s_10_port, minus2A_s_9_port, minus2A_s_8_port,
      minus2A_s_7_port, minus2A_s_6_port, minus2A_s_5_port, minus2A_s_4_port, 
      minus2A_s_3_port, minus2A_s_2_port, minus2A_s_1_port, minus2A_s_0_port, 
      minus4A_s_15_port, minus4A_s_14_port, minus4A_s_13_port, 
      minus4A_s_12_port, minus4A_s_11_port, minus4A_s_10_port, minus4A_s_9_port
      , minus4A_s_8_port, minus4A_s_7_port, minus4A_s_6_port, minus4A_s_5_port,
      minus4A_s_4_port, minus4A_s_3_port, minus4A_s_2_port, minus4A_s_1_port, 
      minus4A_s_0_port, mux_to_adder_15_port, mux_to_adder_14_port, 
      mux_to_adder_13_port, mux_to_adder_12_port, mux_to_adder_11_port, 
      mux_to_adder_10_port, mux_to_adder_9_port, mux_to_adder_8_port, 
      mux_to_adder_7_port, mux_to_adder_6_port, mux_to_adder_5_port, 
      mux_to_adder_4_port, mux_to_adder_3_port, mux_to_adder_2_port, 
      mux_to_adder_1_port, mux_to_adder_0_port, nextA_0_port, n_1004 : 
      std_logic;

begin
   nextA <= ( nextA_15_port, nextA_14_port, nextA_13_port, nextA_12_port, 
      nextA_11_port, nextA_10_port, nextA_9_port, nextA_8_port, nextA_7_port, 
      nextA_6_port, nextA_5_port, nextA_4_port, nextA_3_port, nextA_2_port, 
      nextA_1_port, nextA_0_port );
   
   X_Logic0_port <= '0';
   encoder_1 : encoder_N16_RADIX3_2 port map( X(2) => encoderIn(2), X(1) => 
                           encoderIn(1), X(0) => encoderIn(0), Z(2) => 
                           encoder_to_mux_2_port, Z(1) => encoder_to_mux_1_port
                           , Z(0) => encoder_to_mux_0_port);
   ShiftnCompl_1 : ShiftnCompl_N16_2 port map( plusA(15) => prevA(15), 
                           plusA(14) => prevA(14), plusA(13) => prevA(13), 
                           plusA(12) => prevA(12), plusA(11) => prevA(11), 
                           plusA(10) => prevA(10), plusA(9) => prevA(9), 
                           plusA(8) => prevA(8), plusA(7) => prevA(7), plusA(6)
                           => prevA(6), plusA(5) => prevA(5), plusA(4) => 
                           prevA(4), plusA(3) => prevA(3), plusA(2) => prevA(2)
                           , plusA(1) => prevA(1), plusA(0) => prevA(0), 
                           plus2A_out(15) => plus2A_s_15_port, plus2A_out(14) 
                           => plus2A_s_14_port, plus2A_out(13) => 
                           plus2A_s_13_port, plus2A_out(12) => plus2A_s_12_port
                           , plus2A_out(11) => plus2A_s_11_port, plus2A_out(10)
                           => plus2A_s_10_port, plus2A_out(9) => 
                           plus2A_s_9_port, plus2A_out(8) => plus2A_s_8_port, 
                           plus2A_out(7) => plus2A_s_7_port, plus2A_out(6) => 
                           plus2A_s_6_port, plus2A_out(5) => plus2A_s_5_port, 
                           plus2A_out(4) => plus2A_s_4_port, plus2A_out(3) => 
                           plus2A_s_3_port, plus2A_out(2) => plus2A_s_2_port, 
                           plus2A_out(1) => plus2A_s_1_port, plus2A_out(0) => 
                           plus2A_s_0_port, minus2A_out(15) => 
                           minus2A_s_15_port, minus2A_out(14) => 
                           minus2A_s_14_port, minus2A_out(13) => 
                           minus2A_s_13_port, minus2A_out(12) => 
                           minus2A_s_12_port, minus2A_out(11) => 
                           minus2A_s_11_port, minus2A_out(10) => 
                           minus2A_s_10_port, minus2A_out(9) => 
                           minus2A_s_9_port, minus2A_out(8) => minus2A_s_8_port
                           , minus2A_out(7) => minus2A_s_7_port, minus2A_out(6)
                           => minus2A_s_6_port, minus2A_out(5) => 
                           minus2A_s_5_port, minus2A_out(4) => minus2A_s_4_port
                           , minus2A_out(3) => minus2A_s_3_port, minus2A_out(2)
                           => minus2A_s_2_port, minus2A_out(1) => 
                           minus2A_s_1_port, minus2A_out(0) => minus2A_s_0_port
                           , plus4A_out(15) => nextA_15_port, plus4A_out(14) =>
                           nextA_14_port, plus4A_out(13) => nextA_13_port, 
                           plus4A_out(12) => nextA_12_port, plus4A_out(11) => 
                           nextA_11_port, plus4A_out(10) => nextA_10_port, 
                           plus4A_out(9) => nextA_9_port, plus4A_out(8) => 
                           nextA_8_port, plus4A_out(7) => nextA_7_port, 
                           plus4A_out(6) => nextA_6_port, plus4A_out(5) => 
                           nextA_5_port, plus4A_out(4) => nextA_4_port, 
                           plus4A_out(3) => nextA_3_port, plus4A_out(2) => 
                           nextA_2_port, plus4A_out(1) => nextA_1_port, 
                           plus4A_out(0) => n2, minus4A_out(15) => 
                           minus4A_s_15_port, minus4A_out(14) => 
                           minus4A_s_14_port, minus4A_out(13) => 
                           minus4A_s_13_port, minus4A_out(12) => 
                           minus4A_s_12_port, minus4A_out(11) => 
                           minus4A_s_11_port, minus4A_out(10) => 
                           minus4A_s_10_port, minus4A_out(9) => 
                           minus4A_s_9_port, minus4A_out(8) => minus4A_s_8_port
                           , minus4A_out(7) => minus4A_s_7_port, minus4A_out(6)
                           => minus4A_s_6_port, minus4A_out(5) => 
                           minus4A_s_5_port, minus4A_out(4) => minus4A_s_4_port
                           , minus4A_out(3) => minus4A_s_3_port, minus4A_out(2)
                           => minus4A_s_2_port, minus4A_out(1) => 
                           minus4A_s_1_port, minus4A_out(0) => minus4A_s_0_port
                           );
   mux_1 : MUX_GENERIC_N16_RADIX3_2 port map( plusA(15) => plus2A_s_15_port, 
                           plusA(14) => plus2A_s_14_port, plusA(13) => 
                           plus2A_s_13_port, plusA(12) => plus2A_s_12_port, 
                           plusA(11) => plus2A_s_11_port, plusA(10) => 
                           plus2A_s_10_port, plusA(9) => plus2A_s_9_port, 
                           plusA(8) => plus2A_s_8_port, plusA(7) => 
                           plus2A_s_7_port, plusA(6) => plus2A_s_6_port, 
                           plusA(5) => plus2A_s_5_port, plusA(4) => 
                           plus2A_s_4_port, plusA(3) => plus2A_s_3_port, 
                           plusA(2) => plus2A_s_2_port, plusA(1) => 
                           plus2A_s_1_port, plusA(0) => nextA_0_port, 
                           minusA(15) => minus2A_s_15_port, minusA(14) => 
                           minus2A_s_14_port, minusA(13) => minus2A_s_13_port, 
                           minusA(12) => minus2A_s_12_port, minusA(11) => 
                           minus2A_s_11_port, minusA(10) => minus2A_s_10_port, 
                           minusA(9) => minus2A_s_9_port, minusA(8) => 
                           minus2A_s_8_port, minusA(7) => minus2A_s_7_port, 
                           minusA(6) => minus2A_s_6_port, minusA(5) => 
                           minus2A_s_5_port, minusA(4) => minus2A_s_4_port, 
                           minusA(3) => minus2A_s_3_port, minusA(2) => 
                           minus2A_s_2_port, minusA(1) => minus2A_s_1_port, 
                           minusA(0) => minus2A_s_0_port, plus2A(15) => 
                           nextA_15_port, plus2A(14) => nextA_14_port, 
                           plus2A(13) => nextA_13_port, plus2A(12) => 
                           nextA_12_port, plus2A(11) => nextA_11_port, 
                           plus2A(10) => nextA_10_port, plus2A(9) => 
                           nextA_9_port, plus2A(8) => nextA_8_port, plus2A(7) 
                           => nextA_7_port, plus2A(6) => nextA_6_port, 
                           plus2A(5) => nextA_5_port, plus2A(4) => nextA_4_port
                           , plus2A(3) => nextA_3_port, plus2A(2) => 
                           nextA_2_port, plus2A(1) => nextA_1_port, plus2A(0) 
                           => nextA_0_port, minus2A(15) => minus4A_s_15_port, 
                           minus2A(14) => minus4A_s_14_port, minus2A(13) => 
                           minus4A_s_13_port, minus2A(12) => minus4A_s_12_port,
                           minus2A(11) => minus4A_s_11_port, minus2A(10) => 
                           minus4A_s_10_port, minus2A(9) => minus4A_s_9_port, 
                           minus2A(8) => minus4A_s_8_port, minus2A(7) => 
                           minus4A_s_7_port, minus2A(6) => minus4A_s_6_port, 
                           minus2A(5) => minus4A_s_5_port, minus2A(4) => 
                           minus4A_s_4_port, minus2A(3) => minus4A_s_3_port, 
                           minus2A(2) => minus4A_s_2_port, minus2A(1) => 
                           minus4A_s_1_port, minus2A(0) => minus4A_s_0_port, 
                           SEL(2) => encoder_to_mux_2_port, SEL(1) => 
                           encoder_to_mux_1_port, SEL(0) => 
                           encoder_to_mux_0_port, Y(15) => mux_to_adder_15_port
                           , Y(14) => mux_to_adder_14_port, Y(13) => 
                           mux_to_adder_13_port, Y(12) => mux_to_adder_12_port,
                           Y(11) => mux_to_adder_11_port, Y(10) => 
                           mux_to_adder_10_port, Y(9) => mux_to_adder_9_port, 
                           Y(8) => mux_to_adder_8_port, Y(7) => 
                           mux_to_adder_7_port, Y(6) => mux_to_adder_6_port, 
                           Y(5) => mux_to_adder_5_port, Y(4) => 
                           mux_to_adder_4_port, Y(3) => mux_to_adder_3_port, 
                           Y(2) => mux_to_adder_2_port, Y(1) => 
                           mux_to_adder_1_port, Y(0) => mux_to_adder_0_port);
   rca_1 : RCA_N16_2 port map( A(15) => mux_to_adder_15_port, A(14) => 
                           mux_to_adder_14_port, A(13) => mux_to_adder_13_port,
                           A(12) => mux_to_adder_12_port, A(11) => 
                           mux_to_adder_11_port, A(10) => mux_to_adder_10_port,
                           A(9) => mux_to_adder_9_port, A(8) => 
                           mux_to_adder_8_port, A(7) => mux_to_adder_7_port, 
                           A(6) => mux_to_adder_6_port, A(5) => 
                           mux_to_adder_5_port, A(4) => mux_to_adder_4_port, 
                           A(3) => mux_to_adder_3_port, A(2) => 
                           mux_to_adder_2_port, A(1) => mux_to_adder_1_port, 
                           A(0) => mux_to_adder_0_port, B(15) => prevSum(15), 
                           B(14) => prevSum(14), B(13) => prevSum(13), B(12) =>
                           prevSum(12), B(11) => prevSum(11), B(10) => 
                           prevSum(10), B(9) => prevSum(9), B(8) => prevSum(8),
                           B(7) => prevSum(7), B(6) => prevSum(6), B(5) => 
                           prevSum(5), B(4) => prevSum(4), B(3) => prevSum(3), 
                           B(2) => prevSum(2), B(1) => prevSum(1), B(0) => 
                           prevSum(0), Ci => X_Logic0_port, S(15) => 
                           nextSum(15), S(14) => nextSum(14), S(13) => 
                           nextSum(13), S(12) => nextSum(12), S(11) => 
                           nextSum(11), S(10) => nextSum(10), S(9) => 
                           nextSum(9), S(8) => nextSum(8), S(7) => nextSum(7), 
                           S(6) => nextSum(6), S(5) => nextSum(5), S(4) => 
                           nextSum(4), S(3) => nextSum(3), S(2) => nextSum(2), 
                           S(1) => nextSum(1), S(0) => nextSum(0), Co => n_1004
                           );
   nextA_0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity booth_mul_row_N16_RADIX3_1 is

   port( prevA, prevSum : in std_logic_vector (15 downto 0);  encoderIn : in 
         std_logic_vector (2 downto 0);  nextA, nextSum : out std_logic_vector 
         (15 downto 0));

end booth_mul_row_N16_RADIX3_1;

architecture SYN_struct of booth_mul_row_N16_RADIX3_1 is

   component RCA_N16_1
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component MUX_GENERIC_N16_RADIX3_1
      port( plusA, minusA, plus2A, minus2A : in std_logic_vector (15 downto 0);
            SEL : in std_logic_vector (2 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component ShiftnCompl_N16_1
      port( plusA : in std_logic_vector (15 downto 0);  plus2A_out, minus2A_out
            , plus4A_out, minus4A_out : out std_logic_vector (15 downto 0));
   end component;
   
   component encoder_N16_RADIX3_1
      port( X : in std_logic_vector (2 downto 0);  Z : out std_logic_vector (2 
            downto 0));
   end component;
   
   signal X_Logic0_port, nextA_15_port, nextA_14_port, nextA_13_port, 
      nextA_12_port, nextA_11_port, nextA_10_port, nextA_9_port, nextA_8_port, 
      nextA_7_port, nextA_6_port, nextA_5_port, nextA_4_port, nextA_3_port, 
      nextA_2_port, nextA_1_port, n2, encoder_to_mux_2_port, 
      encoder_to_mux_1_port, encoder_to_mux_0_port, plus2A_s_15_port, 
      plus2A_s_14_port, plus2A_s_13_port, plus2A_s_12_port, plus2A_s_11_port, 
      plus2A_s_10_port, plus2A_s_9_port, plus2A_s_8_port, plus2A_s_7_port, 
      plus2A_s_6_port, plus2A_s_5_port, plus2A_s_4_port, plus2A_s_3_port, 
      plus2A_s_2_port, plus2A_s_1_port, plus2A_s_0_port, minus2A_s_15_port, 
      minus2A_s_14_port, minus2A_s_13_port, minus2A_s_12_port, 
      minus2A_s_11_port, minus2A_s_10_port, minus2A_s_9_port, minus2A_s_8_port,
      minus2A_s_7_port, minus2A_s_6_port, minus2A_s_5_port, minus2A_s_4_port, 
      minus2A_s_3_port, minus2A_s_2_port, minus2A_s_1_port, minus2A_s_0_port, 
      minus4A_s_15_port, minus4A_s_14_port, minus4A_s_13_port, 
      minus4A_s_12_port, minus4A_s_11_port, minus4A_s_10_port, minus4A_s_9_port
      , minus4A_s_8_port, minus4A_s_7_port, minus4A_s_6_port, minus4A_s_5_port,
      minus4A_s_4_port, minus4A_s_3_port, minus4A_s_2_port, minus4A_s_1_port, 
      minus4A_s_0_port, mux_to_adder_15_port, mux_to_adder_14_port, 
      mux_to_adder_13_port, mux_to_adder_12_port, mux_to_adder_11_port, 
      mux_to_adder_10_port, mux_to_adder_9_port, mux_to_adder_8_port, 
      mux_to_adder_7_port, mux_to_adder_6_port, mux_to_adder_5_port, 
      mux_to_adder_4_port, mux_to_adder_3_port, mux_to_adder_2_port, 
      mux_to_adder_1_port, mux_to_adder_0_port, nextA_0_port, n_1005 : 
      std_logic;

begin
   nextA <= ( nextA_15_port, nextA_14_port, nextA_13_port, nextA_12_port, 
      nextA_11_port, nextA_10_port, nextA_9_port, nextA_8_port, nextA_7_port, 
      nextA_6_port, nextA_5_port, nextA_4_port, nextA_3_port, nextA_2_port, 
      nextA_1_port, nextA_0_port );
   
   X_Logic0_port <= '0';
   encoder_1 : encoder_N16_RADIX3_1 port map( X(2) => encoderIn(2), X(1) => 
                           encoderIn(1), X(0) => encoderIn(0), Z(2) => 
                           encoder_to_mux_2_port, Z(1) => encoder_to_mux_1_port
                           , Z(0) => encoder_to_mux_0_port);
   ShiftnCompl_1 : ShiftnCompl_N16_1 port map( plusA(15) => prevA(15), 
                           plusA(14) => prevA(14), plusA(13) => prevA(13), 
                           plusA(12) => prevA(12), plusA(11) => prevA(11), 
                           plusA(10) => prevA(10), plusA(9) => prevA(9), 
                           plusA(8) => prevA(8), plusA(7) => prevA(7), plusA(6)
                           => prevA(6), plusA(5) => prevA(5), plusA(4) => 
                           prevA(4), plusA(3) => prevA(3), plusA(2) => prevA(2)
                           , plusA(1) => prevA(1), plusA(0) => prevA(0), 
                           plus2A_out(15) => plus2A_s_15_port, plus2A_out(14) 
                           => plus2A_s_14_port, plus2A_out(13) => 
                           plus2A_s_13_port, plus2A_out(12) => plus2A_s_12_port
                           , plus2A_out(11) => plus2A_s_11_port, plus2A_out(10)
                           => plus2A_s_10_port, plus2A_out(9) => 
                           plus2A_s_9_port, plus2A_out(8) => plus2A_s_8_port, 
                           plus2A_out(7) => plus2A_s_7_port, plus2A_out(6) => 
                           plus2A_s_6_port, plus2A_out(5) => plus2A_s_5_port, 
                           plus2A_out(4) => plus2A_s_4_port, plus2A_out(3) => 
                           plus2A_s_3_port, plus2A_out(2) => plus2A_s_2_port, 
                           plus2A_out(1) => plus2A_s_1_port, plus2A_out(0) => 
                           plus2A_s_0_port, minus2A_out(15) => 
                           minus2A_s_15_port, minus2A_out(14) => 
                           minus2A_s_14_port, minus2A_out(13) => 
                           minus2A_s_13_port, minus2A_out(12) => 
                           minus2A_s_12_port, minus2A_out(11) => 
                           minus2A_s_11_port, minus2A_out(10) => 
                           minus2A_s_10_port, minus2A_out(9) => 
                           minus2A_s_9_port, minus2A_out(8) => minus2A_s_8_port
                           , minus2A_out(7) => minus2A_s_7_port, minus2A_out(6)
                           => minus2A_s_6_port, minus2A_out(5) => 
                           minus2A_s_5_port, minus2A_out(4) => minus2A_s_4_port
                           , minus2A_out(3) => minus2A_s_3_port, minus2A_out(2)
                           => minus2A_s_2_port, minus2A_out(1) => 
                           minus2A_s_1_port, minus2A_out(0) => minus2A_s_0_port
                           , plus4A_out(15) => nextA_15_port, plus4A_out(14) =>
                           nextA_14_port, plus4A_out(13) => nextA_13_port, 
                           plus4A_out(12) => nextA_12_port, plus4A_out(11) => 
                           nextA_11_port, plus4A_out(10) => nextA_10_port, 
                           plus4A_out(9) => nextA_9_port, plus4A_out(8) => 
                           nextA_8_port, plus4A_out(7) => nextA_7_port, 
                           plus4A_out(6) => nextA_6_port, plus4A_out(5) => 
                           nextA_5_port, plus4A_out(4) => nextA_4_port, 
                           plus4A_out(3) => nextA_3_port, plus4A_out(2) => 
                           nextA_2_port, plus4A_out(1) => nextA_1_port, 
                           plus4A_out(0) => n2, minus4A_out(15) => 
                           minus4A_s_15_port, minus4A_out(14) => 
                           minus4A_s_14_port, minus4A_out(13) => 
                           minus4A_s_13_port, minus4A_out(12) => 
                           minus4A_s_12_port, minus4A_out(11) => 
                           minus4A_s_11_port, minus4A_out(10) => 
                           minus4A_s_10_port, minus4A_out(9) => 
                           minus4A_s_9_port, minus4A_out(8) => minus4A_s_8_port
                           , minus4A_out(7) => minus4A_s_7_port, minus4A_out(6)
                           => minus4A_s_6_port, minus4A_out(5) => 
                           minus4A_s_5_port, minus4A_out(4) => minus4A_s_4_port
                           , minus4A_out(3) => minus4A_s_3_port, minus4A_out(2)
                           => minus4A_s_2_port, minus4A_out(1) => 
                           minus4A_s_1_port, minus4A_out(0) => minus4A_s_0_port
                           );
   mux_1 : MUX_GENERIC_N16_RADIX3_1 port map( plusA(15) => plus2A_s_15_port, 
                           plusA(14) => plus2A_s_14_port, plusA(13) => 
                           plus2A_s_13_port, plusA(12) => plus2A_s_12_port, 
                           plusA(11) => plus2A_s_11_port, plusA(10) => 
                           plus2A_s_10_port, plusA(9) => plus2A_s_9_port, 
                           plusA(8) => plus2A_s_8_port, plusA(7) => 
                           plus2A_s_7_port, plusA(6) => plus2A_s_6_port, 
                           plusA(5) => plus2A_s_5_port, plusA(4) => 
                           plus2A_s_4_port, plusA(3) => plus2A_s_3_port, 
                           plusA(2) => plus2A_s_2_port, plusA(1) => 
                           plus2A_s_1_port, plusA(0) => nextA_0_port, 
                           minusA(15) => minus2A_s_15_port, minusA(14) => 
                           minus2A_s_14_port, minusA(13) => minus2A_s_13_port, 
                           minusA(12) => minus2A_s_12_port, minusA(11) => 
                           minus2A_s_11_port, minusA(10) => minus2A_s_10_port, 
                           minusA(9) => minus2A_s_9_port, minusA(8) => 
                           minus2A_s_8_port, minusA(7) => minus2A_s_7_port, 
                           minusA(6) => minus2A_s_6_port, minusA(5) => 
                           minus2A_s_5_port, minusA(4) => minus2A_s_4_port, 
                           minusA(3) => minus2A_s_3_port, minusA(2) => 
                           minus2A_s_2_port, minusA(1) => minus2A_s_1_port, 
                           minusA(0) => minus2A_s_0_port, plus2A(15) => 
                           nextA_15_port, plus2A(14) => nextA_14_port, 
                           plus2A(13) => nextA_13_port, plus2A(12) => 
                           nextA_12_port, plus2A(11) => nextA_11_port, 
                           plus2A(10) => nextA_10_port, plus2A(9) => 
                           nextA_9_port, plus2A(8) => nextA_8_port, plus2A(7) 
                           => nextA_7_port, plus2A(6) => nextA_6_port, 
                           plus2A(5) => nextA_5_port, plus2A(4) => nextA_4_port
                           , plus2A(3) => nextA_3_port, plus2A(2) => 
                           nextA_2_port, plus2A(1) => nextA_1_port, plus2A(0) 
                           => nextA_0_port, minus2A(15) => minus4A_s_15_port, 
                           minus2A(14) => minus4A_s_14_port, minus2A(13) => 
                           minus4A_s_13_port, minus2A(12) => minus4A_s_12_port,
                           minus2A(11) => minus4A_s_11_port, minus2A(10) => 
                           minus4A_s_10_port, minus2A(9) => minus4A_s_9_port, 
                           minus2A(8) => minus4A_s_8_port, minus2A(7) => 
                           minus4A_s_7_port, minus2A(6) => minus4A_s_6_port, 
                           minus2A(5) => minus4A_s_5_port, minus2A(4) => 
                           minus4A_s_4_port, minus2A(3) => minus4A_s_3_port, 
                           minus2A(2) => minus4A_s_2_port, minus2A(1) => 
                           minus4A_s_1_port, minus2A(0) => minus4A_s_0_port, 
                           SEL(2) => encoder_to_mux_2_port, SEL(1) => 
                           encoder_to_mux_1_port, SEL(0) => 
                           encoder_to_mux_0_port, Y(15) => mux_to_adder_15_port
                           , Y(14) => mux_to_adder_14_port, Y(13) => 
                           mux_to_adder_13_port, Y(12) => mux_to_adder_12_port,
                           Y(11) => mux_to_adder_11_port, Y(10) => 
                           mux_to_adder_10_port, Y(9) => mux_to_adder_9_port, 
                           Y(8) => mux_to_adder_8_port, Y(7) => 
                           mux_to_adder_7_port, Y(6) => mux_to_adder_6_port, 
                           Y(5) => mux_to_adder_5_port, Y(4) => 
                           mux_to_adder_4_port, Y(3) => mux_to_adder_3_port, 
                           Y(2) => mux_to_adder_2_port, Y(1) => 
                           mux_to_adder_1_port, Y(0) => mux_to_adder_0_port);
   rca_1 : RCA_N16_1 port map( A(15) => mux_to_adder_15_port, A(14) => 
                           mux_to_adder_14_port, A(13) => mux_to_adder_13_port,
                           A(12) => mux_to_adder_12_port, A(11) => 
                           mux_to_adder_11_port, A(10) => mux_to_adder_10_port,
                           A(9) => mux_to_adder_9_port, A(8) => 
                           mux_to_adder_8_port, A(7) => mux_to_adder_7_port, 
                           A(6) => mux_to_adder_6_port, A(5) => 
                           mux_to_adder_5_port, A(4) => mux_to_adder_4_port, 
                           A(3) => mux_to_adder_3_port, A(2) => 
                           mux_to_adder_2_port, A(1) => mux_to_adder_1_port, 
                           A(0) => mux_to_adder_0_port, B(15) => prevSum(15), 
                           B(14) => prevSum(14), B(13) => prevSum(13), B(12) =>
                           prevSum(12), B(11) => prevSum(11), B(10) => 
                           prevSum(10), B(9) => prevSum(9), B(8) => prevSum(8),
                           B(7) => prevSum(7), B(6) => prevSum(6), B(5) => 
                           prevSum(5), B(4) => prevSum(4), B(3) => prevSum(3), 
                           B(2) => prevSum(2), B(1) => prevSum(1), B(0) => 
                           prevSum(0), Ci => X_Logic0_port, S(15) => 
                           nextSum(15), S(14) => nextSum(14), S(13) => 
                           nextSum(13), S(12) => nextSum(12), S(11) => 
                           nextSum(11), S(10) => nextSum(10), S(9) => 
                           nextSum(9), S(8) => nextSum(8), S(7) => nextSum(7), 
                           S(6) => nextSum(6), S(5) => nextSum(5), S(4) => 
                           nextSum(4), S(3) => nextSum(3), S(2) => nextSum(2), 
                           S(1) => nextSum(1), S(0) => nextSum(0), Co => n_1005
                           );
   nextA_0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n1);
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity complementer_N16_0 is

   port( input : in std_logic_vector (15 downto 0);  complement2 : out 
         std_logic_vector (15 downto 0));

end complementer_N16_0;

architecture SYN_beh of complementer_N16_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, 
      complement2_1_port, complement2_14_port, complement2_13_port, 
      complement2_12_port, complement2_11_port, complement2_10_port, 
      complement2_9_port, complement2_8_port, complement2_7_port, 
      complement2_6_port, complement2_5_port, complement2_4_port, 
      complement2_3_port, complement2_2_port, complement2_15_port, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44 : 
      std_logic;

begin
   complement2 <= ( complement2_15_port, complement2_14_port, 
      complement2_13_port, complement2_12_port, complement2_11_port, 
      complement2_10_port, complement2_9_port, complement2_8_port, 
      complement2_7_port, complement2_6_port, complement2_5_port, 
      complement2_4_port, complement2_3_port, complement2_2_port, 
      complement2_1_port, input(0) );
   
   U2 : AND2_X1 port map( A1 => n31, A2 => n30, ZN => n1);
   U3 : AND2_X1 port map( A1 => n32, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n33, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n34, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n35, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n36, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n44, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n43, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n42, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n41, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n40, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n39, A2 => n11, ZN => n12);
   U14 : AND2_X1 port map( A1 => n38, A2 => n12, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n13, ZN => n29);
   U16 : XOR2_X1 port map( A => n31, B => n30, Z => complement2_1_port);
   U17 : XOR2_X1 port map( A => n37, B => n13, Z => complement2_14_port);
   U18 : XOR2_X1 port map( A => n38, B => n12, Z => complement2_13_port);
   U19 : XOR2_X1 port map( A => n39, B => n11, Z => complement2_12_port);
   U20 : XOR2_X1 port map( A => n40, B => n10, Z => complement2_11_port);
   U21 : XOR2_X1 port map( A => n41, B => n9, Z => complement2_10_port);
   U22 : XOR2_X1 port map( A => n42, B => n8, Z => complement2_9_port);
   U23 : XOR2_X1 port map( A => n43, B => n7, Z => complement2_8_port);
   U24 : XOR2_X1 port map( A => n44, B => n6, Z => complement2_7_port);
   U25 : XOR2_X1 port map( A => n36, B => n5, Z => complement2_6_port);
   U26 : XOR2_X1 port map( A => n35, B => n4, Z => complement2_5_port);
   U27 : XOR2_X1 port map( A => n34, B => n3, Z => complement2_4_port);
   U28 : XOR2_X1 port map( A => n33, B => n2, Z => complement2_3_port);
   U29 : XOR2_X1 port map( A => n32, B => n1, Z => complement2_2_port);
   U30 : XOR2_X1 port map( A => input(15), B => n29, Z => complement2_15_port);
   U31 : INV_X1 port map( A => input(7), ZN => n44);
   U32 : INV_X1 port map( A => input(8), ZN => n43);
   U33 : INV_X1 port map( A => input(9), ZN => n42);
   U34 : INV_X1 port map( A => input(10), ZN => n41);
   U35 : INV_X1 port map( A => input(11), ZN => n40);
   U36 : INV_X1 port map( A => input(12), ZN => n39);
   U37 : INV_X1 port map( A => input(13), ZN => n38);
   U38 : INV_X1 port map( A => input(14), ZN => n37);
   U39 : INV_X1 port map( A => input(6), ZN => n36);
   U40 : INV_X1 port map( A => input(5), ZN => n35);
   U41 : INV_X1 port map( A => input(4), ZN => n34);
   U42 : INV_X1 port map( A => input(3), ZN => n33);
   U43 : INV_X1 port map( A => input(2), ZN => n32);
   U44 : INV_X1 port map( A => input(1), ZN => n31);
   U45 : INV_X1 port map( A => input(0), ZN => n30);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity shifter_N16_0 is

   port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
         std_logic_vector (15 downto 0));

end shifter_N16_0;

architecture SYN_beh of shifter_N16_0 is

signal X_Logic0_port : std_logic;

begin
   shiftLeftOnePos <= ( input(14), input(13), input(12), input(11), input(10), 
      input(9), input(8), input(7), input(6), input(5), input(4), input(3), 
      input(2), input(1), input(0), X_Logic0_port );
   
   X_Logic0_port <= '0';

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity RCA_N16_0 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_N16_0;

architecture SYN_STRUCTURAL of RCA_N16_0 is

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
   
   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_44 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_43 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_42 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_41 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_40 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_39 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_38 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_37 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_36 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_35 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_34 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_33 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity ShiftnCompl_N16_0 is

   port( plusA : in std_logic_vector (15 downto 0);  plus2A_out, minus2A_out, 
         plus4A_out, minus4A_out : out std_logic_vector (15 downto 0));

end ShiftnCompl_N16_0;

architecture SYN_struct of ShiftnCompl_N16_0 is

   component complementer_N16_5
      port( input : in std_logic_vector (15 downto 0);  complement2 : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component complementer_N16_6
      port( input : in std_logic_vector (15 downto 0);  complement2 : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component shifter_N16_5
      port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component shifter_N16_6
      port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
            std_logic_vector (15 downto 0));
   end component;
   
   signal plus2A_out_15_port, plus2A_out_14_port, plus2A_out_13_port, 
      plus2A_out_12_port, plus2A_out_11_port, plus2A_out_10_port, 
      plus2A_out_9_port, plus2A_out_8_port, plus2A_out_7_port, 
      plus2A_out_6_port, plus2A_out_5_port, plus2A_out_4_port, 
      plus2A_out_3_port, plus2A_out_2_port, plus2A_out_1_port, 
      plus2A_out_0_port, plus4A_out_15_port, plus4A_out_14_port, 
      plus4A_out_13_port, plus4A_out_12_port, plus4A_out_11_port, 
      plus4A_out_10_port, plus4A_out_9_port, plus4A_out_8_port, 
      plus4A_out_7_port, plus4A_out_6_port, plus4A_out_5_port, 
      plus4A_out_4_port, plus4A_out_3_port, plus4A_out_2_port, 
      plus4A_out_1_port, plus4A_out_0_port, n_1006, n_1007 : std_logic;

begin
   plus2A_out <= ( plus2A_out_15_port, plus2A_out_14_port, plus2A_out_13_port, 
      plus2A_out_12_port, plus2A_out_11_port, plus2A_out_10_port, 
      plus2A_out_9_port, plus2A_out_8_port, plus2A_out_7_port, 
      plus2A_out_6_port, plus2A_out_5_port, plus2A_out_4_port, 
      plus2A_out_3_port, plus2A_out_2_port, plus2A_out_1_port, 
      plus2A_out_0_port );
   plus4A_out <= ( plus4A_out_15_port, plus4A_out_14_port, plus4A_out_13_port, 
      plus4A_out_12_port, plus4A_out_11_port, plus4A_out_10_port, 
      plus4A_out_9_port, plus4A_out_8_port, plus4A_out_7_port, 
      plus4A_out_6_port, plus4A_out_5_port, plus4A_out_4_port, 
      plus4A_out_3_port, plus4A_out_2_port, plus4A_out_1_port, 
      plus4A_out_0_port );
   
   shifter_1 : shifter_N16_6 port map( input(15) => plusA(15), input(14) => 
                           plusA(14), input(13) => plusA(13), input(12) => 
                           plusA(12), input(11) => plusA(11), input(10) => 
                           plusA(10), input(9) => plusA(9), input(8) => 
                           plusA(8), input(7) => plusA(7), input(6) => plusA(6)
                           , input(5) => plusA(5), input(4) => plusA(4), 
                           input(3) => plusA(3), input(2) => plusA(2), input(1)
                           => plusA(1), input(0) => plusA(0), 
                           shiftLeftOnePos(15) => plus2A_out_15_port, 
                           shiftLeftOnePos(14) => plus2A_out_14_port, 
                           shiftLeftOnePos(13) => plus2A_out_13_port, 
                           shiftLeftOnePos(12) => plus2A_out_12_port, 
                           shiftLeftOnePos(11) => plus2A_out_11_port, 
                           shiftLeftOnePos(10) => plus2A_out_10_port, 
                           shiftLeftOnePos(9) => plus2A_out_9_port, 
                           shiftLeftOnePos(8) => plus2A_out_8_port, 
                           shiftLeftOnePos(7) => plus2A_out_7_port, 
                           shiftLeftOnePos(6) => plus2A_out_6_port, 
                           shiftLeftOnePos(5) => plus2A_out_5_port, 
                           shiftLeftOnePos(4) => plus2A_out_4_port, 
                           shiftLeftOnePos(3) => plus2A_out_3_port, 
                           shiftLeftOnePos(2) => plus2A_out_2_port, 
                           shiftLeftOnePos(1) => plus2A_out_1_port, 
                           shiftLeftOnePos(0) => n_1006);
   shifter_2 : shifter_N16_5 port map( input(15) => plus2A_out_15_port, 
                           input(14) => plus2A_out_14_port, input(13) => 
                           plus2A_out_13_port, input(12) => plus2A_out_12_port,
                           input(11) => plus2A_out_11_port, input(10) => 
                           plus2A_out_10_port, input(9) => plus2A_out_9_port, 
                           input(8) => plus2A_out_8_port, input(7) => 
                           plus2A_out_7_port, input(6) => plus2A_out_6_port, 
                           input(5) => plus2A_out_5_port, input(4) => 
                           plus2A_out_4_port, input(3) => plus2A_out_3_port, 
                           input(2) => plus2A_out_2_port, input(1) => 
                           plus2A_out_1_port, input(0) => plus2A_out_0_port, 
                           shiftLeftOnePos(15) => plus4A_out_15_port, 
                           shiftLeftOnePos(14) => plus4A_out_14_port, 
                           shiftLeftOnePos(13) => plus4A_out_13_port, 
                           shiftLeftOnePos(12) => plus4A_out_12_port, 
                           shiftLeftOnePos(11) => plus4A_out_11_port, 
                           shiftLeftOnePos(10) => plus4A_out_10_port, 
                           shiftLeftOnePos(9) => plus4A_out_9_port, 
                           shiftLeftOnePos(8) => plus4A_out_8_port, 
                           shiftLeftOnePos(7) => plus4A_out_7_port, 
                           shiftLeftOnePos(6) => plus4A_out_6_port, 
                           shiftLeftOnePos(5) => plus4A_out_5_port, 
                           shiftLeftOnePos(4) => plus4A_out_4_port, 
                           shiftLeftOnePos(3) => plus4A_out_3_port, 
                           shiftLeftOnePos(2) => plus4A_out_2_port, 
                           shiftLeftOnePos(1) => plus4A_out_1_port, 
                           shiftLeftOnePos(0) => n_1007);
   complementer_1 : complementer_N16_6 port map( input(15) => 
                           plus2A_out_15_port, input(14) => plus2A_out_14_port,
                           input(13) => plus2A_out_13_port, input(12) => 
                           plus2A_out_12_port, input(11) => plus2A_out_11_port,
                           input(10) => plus2A_out_10_port, input(9) => 
                           plus2A_out_9_port, input(8) => plus2A_out_8_port, 
                           input(7) => plus2A_out_7_port, input(6) => 
                           plus2A_out_6_port, input(5) => plus2A_out_5_port, 
                           input(4) => plus2A_out_4_port, input(3) => 
                           plus2A_out_3_port, input(2) => plus2A_out_2_port, 
                           input(1) => plus2A_out_1_port, input(0) => 
                           plus2A_out_0_port, complement2(15) => 
                           minus2A_out(15), complement2(14) => minus2A_out(14),
                           complement2(13) => minus2A_out(13), complement2(12) 
                           => minus2A_out(12), complement2(11) => 
                           minus2A_out(11), complement2(10) => minus2A_out(10),
                           complement2(9) => minus2A_out(9), complement2(8) => 
                           minus2A_out(8), complement2(7) => minus2A_out(7), 
                           complement2(6) => minus2A_out(6), complement2(5) => 
                           minus2A_out(5), complement2(4) => minus2A_out(4), 
                           complement2(3) => minus2A_out(3), complement2(2) => 
                           minus2A_out(2), complement2(1) => minus2A_out(1), 
                           complement2(0) => minus2A_out(0));
   complementer_2 : complementer_N16_5 port map( input(15) => 
                           plus4A_out_15_port, input(14) => plus4A_out_14_port,
                           input(13) => plus4A_out_13_port, input(12) => 
                           plus4A_out_12_port, input(11) => plus4A_out_11_port,
                           input(10) => plus4A_out_10_port, input(9) => 
                           plus4A_out_9_port, input(8) => plus4A_out_8_port, 
                           input(7) => plus4A_out_7_port, input(6) => 
                           plus4A_out_6_port, input(5) => plus4A_out_5_port, 
                           input(4) => plus4A_out_4_port, input(3) => 
                           plus4A_out_3_port, input(2) => plus4A_out_2_port, 
                           input(1) => plus4A_out_1_port, input(0) => 
                           plus4A_out_0_port, complement2(15) => 
                           minus4A_out(15), complement2(14) => minus4A_out(14),
                           complement2(13) => minus4A_out(13), complement2(12) 
                           => minus4A_out(12), complement2(11) => 
                           minus4A_out(11), complement2(10) => minus4A_out(10),
                           complement2(9) => minus4A_out(9), complement2(8) => 
                           minus4A_out(8), complement2(7) => minus4A_out(7), 
                           complement2(6) => minus4A_out(6), complement2(5) => 
                           minus4A_out(5), complement2(4) => minus4A_out(4), 
                           complement2(3) => minus4A_out(3), complement2(2) => 
                           minus4A_out(2), complement2(1) => minus4A_out(1), 
                           complement2(0) => minus4A_out(0));
   plus2A_out_0_port <= '0';
   plus4A_out_0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity MUX_GENERIC_N16_RADIX3_0 is

   port( plusA, minusA, plus2A, minus2A : in std_logic_vector (15 downto 0);  
         SEL : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end MUX_GENERIC_N16_RADIX3_0;

architecture SYN_beh of MUX_GENERIC_N16_RADIX3_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component TBUF_X1
      port( A, EN : in std_logic;  Z : out std_logic);
   end component;
   
   signal n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
      n53, n54, n55, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, 
      n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28
      , n29, n30, n31, n32, n33, n34, n35, n36, n37, n38 : std_logic;

begin
   
   Y_tri_0_inst : TBUF_X1 port map( A => n55, EN => n46, Z => Y(0));
   Y_tri_1_inst : TBUF_X1 port map( A => n54, EN => n46, Z => Y(1));
   Y_tri_2_inst : TBUF_X1 port map( A => n53, EN => n46, Z => Y(2));
   Y_tri_3_inst : TBUF_X1 port map( A => n52, EN => n46, Z => Y(3));
   Y_tri_4_inst : TBUF_X1 port map( A => n51, EN => n46, Z => Y(4));
   Y_tri_5_inst : TBUF_X1 port map( A => n50, EN => n46, Z => Y(5));
   Y_tri_6_inst : TBUF_X1 port map( A => n49, EN => n46, Z => Y(6));
   Y_tri_7_inst : TBUF_X1 port map( A => n48, EN => n46, Z => Y(7));
   Y_tri_8_inst : TBUF_X1 port map( A => n47, EN => n46, Z => Y(8));
   Y_tri_9_inst : TBUF_X1 port map( A => n45, EN => n46, Z => Y(9));
   Y_tri_10_inst : TBUF_X1 port map( A => n44, EN => n46, Z => Y(10));
   Y_tri_11_inst : TBUF_X1 port map( A => n43, EN => n46, Z => Y(11));
   Y_tri_12_inst : TBUF_X1 port map( A => n42, EN => n46, Z => Y(12));
   Y_tri_13_inst : TBUF_X1 port map( A => n41, EN => n46, Z => Y(13));
   Y_tri_14_inst : TBUF_X1 port map( A => n40, EN => n46, Z => Y(14));
   Y_tri_15_inst : TBUF_X1 port map( A => n39, EN => n46, Z => Y(15));
   U2 : NOR2_X2 port map( A1 => n37, A2 => SEL(1), ZN => n4);
   U3 : NOR2_X2 port map( A1 => n37, A2 => n38, ZN => n5);
   U4 : NOR2_X2 port map( A1 => n38, A2 => SEL(0), ZN => n3);
   U5 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => n55);
   U6 : AOI22_X1 port map( A1 => minusA(0), A2 => n3, B1 => plusA(0), B2 => n4,
                           ZN => n2);
   U7 : AOI22_X1 port map( A1 => plus2A(0), A2 => n5, B1 => minus2A(0), B2 => 
                           SEL(2), ZN => n1);
   U8 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => n54);
   U9 : AOI22_X1 port map( A1 => minusA(1), A2 => n3, B1 => plusA(1), B2 => n4,
                           ZN => n7);
   U10 : AOI22_X1 port map( A1 => plus2A(1), A2 => n5, B1 => minus2A(1), B2 => 
                           SEL(2), ZN => n6);
   U11 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n53);
   U12 : AOI22_X1 port map( A1 => minusA(2), A2 => n3, B1 => plusA(2), B2 => n4
                           , ZN => n9);
   U13 : AOI22_X1 port map( A1 => plus2A(2), A2 => n5, B1 => minus2A(2), B2 => 
                           SEL(2), ZN => n8);
   U14 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => n52);
   U15 : AOI22_X1 port map( A1 => minusA(3), A2 => n3, B1 => plusA(3), B2 => n4
                           , ZN => n11);
   U16 : AOI22_X1 port map( A1 => plus2A(3), A2 => n5, B1 => minus2A(3), B2 => 
                           SEL(2), ZN => n10);
   U17 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => n51);
   U18 : AOI22_X1 port map( A1 => minusA(4), A2 => n3, B1 => plusA(4), B2 => n4
                           , ZN => n13);
   U19 : AOI22_X1 port map( A1 => plus2A(4), A2 => n5, B1 => minus2A(4), B2 => 
                           SEL(2), ZN => n12);
   U20 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => n50);
   U21 : AOI22_X1 port map( A1 => minusA(5), A2 => n3, B1 => plusA(5), B2 => n4
                           , ZN => n15);
   U22 : AOI22_X1 port map( A1 => plus2A(5), A2 => n5, B1 => minus2A(5), B2 => 
                           SEL(2), ZN => n14);
   U23 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => n49);
   U24 : AOI22_X1 port map( A1 => minusA(6), A2 => n3, B1 => plusA(6), B2 => n4
                           , ZN => n17);
   U25 : AOI22_X1 port map( A1 => plus2A(6), A2 => n5, B1 => minus2A(6), B2 => 
                           SEL(2), ZN => n16);
   U26 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => n48);
   U27 : AOI22_X1 port map( A1 => minusA(7), A2 => n3, B1 => plusA(7), B2 => n4
                           , ZN => n19);
   U28 : AOI22_X1 port map( A1 => plus2A(7), A2 => n5, B1 => minus2A(7), B2 => 
                           SEL(2), ZN => n18);
   U29 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => n47);
   U30 : AOI22_X1 port map( A1 => minusA(8), A2 => n3, B1 => plusA(8), B2 => n4
                           , ZN => n21);
   U31 : AOI22_X1 port map( A1 => plus2A(8), A2 => n5, B1 => minus2A(8), B2 => 
                           SEL(2), ZN => n20);
   U32 : INV_X1 port map( A => n22, ZN => n46);
   U33 : OAI21_X1 port map( B1 => SEL(1), B2 => SEL(0), A => SEL(2), ZN => n22)
                           ;
   U34 : NAND2_X1 port map( A1 => n23, A2 => n24, ZN => n45);
   U35 : AOI22_X1 port map( A1 => minusA(9), A2 => n3, B1 => plusA(9), B2 => n4
                           , ZN => n24);
   U36 : AOI22_X1 port map( A1 => plus2A(9), A2 => n5, B1 => minus2A(9), B2 => 
                           SEL(2), ZN => n23);
   U37 : NAND2_X1 port map( A1 => n25, A2 => n26, ZN => n44);
   U38 : AOI22_X1 port map( A1 => minusA(10), A2 => n3, B1 => plusA(10), B2 => 
                           n4, ZN => n26);
   U39 : AOI22_X1 port map( A1 => plus2A(10), A2 => n5, B1 => minus2A(10), B2 
                           => SEL(2), ZN => n25);
   U40 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => n43);
   U41 : AOI22_X1 port map( A1 => minusA(11), A2 => n3, B1 => plusA(11), B2 => 
                           n4, ZN => n28);
   U42 : AOI22_X1 port map( A1 => plus2A(11), A2 => n5, B1 => minus2A(11), B2 
                           => SEL(2), ZN => n27);
   U43 : NAND2_X1 port map( A1 => n29, A2 => n30, ZN => n42);
   U44 : AOI22_X1 port map( A1 => minusA(12), A2 => n3, B1 => plusA(12), B2 => 
                           n4, ZN => n30);
   U45 : AOI22_X1 port map( A1 => plus2A(12), A2 => n5, B1 => minus2A(12), B2 
                           => SEL(2), ZN => n29);
   U46 : NAND2_X1 port map( A1 => n31, A2 => n32, ZN => n41);
   U47 : AOI22_X1 port map( A1 => minusA(13), A2 => n3, B1 => plusA(13), B2 => 
                           n4, ZN => n32);
   U48 : AOI22_X1 port map( A1 => plus2A(13), A2 => n5, B1 => minus2A(13), B2 
                           => SEL(2), ZN => n31);
   U49 : NAND2_X1 port map( A1 => n33, A2 => n34, ZN => n40);
   U50 : AOI22_X1 port map( A1 => minusA(14), A2 => n3, B1 => plusA(14), B2 => 
                           n4, ZN => n34);
   U51 : AOI22_X1 port map( A1 => plus2A(14), A2 => n5, B1 => minus2A(14), B2 
                           => SEL(2), ZN => n33);
   U52 : NAND2_X1 port map( A1 => n35, A2 => n36, ZN => n39);
   U53 : AOI22_X1 port map( A1 => minusA(15), A2 => n3, B1 => plusA(15), B2 => 
                           n4, ZN => n36);
   U54 : AOI22_X1 port map( A1 => plus2A(15), A2 => n5, B1 => minus2A(15), B2 
                           => SEL(2), ZN => n35);
   U55 : INV_X1 port map( A => SEL(1), ZN => n38);
   U56 : INV_X1 port map( A => SEL(0), ZN => n37);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity ShiftnCompl_special_N16 is

   port( plusA : in std_logic_vector (15 downto 0);  plusA_out, minusA_out, 
         plus2A_out, minus2A_out : out std_logic_vector (15 downto 0));

end ShiftnCompl_special_N16;

architecture SYN_struct of ShiftnCompl_special_N16 is

   component complementer_N16_7
      port( input : in std_logic_vector (15 downto 0);  complement2 : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component complementer_N16_0
      port( input : in std_logic_vector (15 downto 0);  complement2 : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component shifter_N16_0
      port( input : in std_logic_vector (15 downto 0);  shiftLeftOnePos : out 
            std_logic_vector (15 downto 0));
   end component;
   
   signal plus2A_out_15_port, plus2A_out_14_port, plus2A_out_13_port, 
      plus2A_out_12_port, plus2A_out_11_port, plus2A_out_10_port, 
      plus2A_out_9_port, plus2A_out_8_port, plus2A_out_7_port, 
      plus2A_out_6_port, plus2A_out_5_port, plus2A_out_4_port, 
      plus2A_out_3_port, plus2A_out_2_port, plus2A_out_1_port, 
      plus2A_out_0_port, n_1008 : std_logic;

begin
   plusA_out <= ( plusA(15), plusA(14), plusA(13), plusA(12), plusA(11), 
      plusA(10), plusA(9), plusA(8), plusA(7), plusA(6), plusA(5), plusA(4), 
      plusA(3), plusA(2), plusA(1), plusA(0) );
   plus2A_out <= ( plus2A_out_15_port, plus2A_out_14_port, plus2A_out_13_port, 
      plus2A_out_12_port, plus2A_out_11_port, plus2A_out_10_port, 
      plus2A_out_9_port, plus2A_out_8_port, plus2A_out_7_port, 
      plus2A_out_6_port, plus2A_out_5_port, plus2A_out_4_port, 
      plus2A_out_3_port, plus2A_out_2_port, plus2A_out_1_port, 
      plus2A_out_0_port );
   
   shifter_1 : shifter_N16_0 port map( input(15) => plusA(15), input(14) => 
                           plusA(14), input(13) => plusA(13), input(12) => 
                           plusA(12), input(11) => plusA(11), input(10) => 
                           plusA(10), input(9) => plusA(9), input(8) => 
                           plusA(8), input(7) => plusA(7), input(6) => plusA(6)
                           , input(5) => plusA(5), input(4) => plusA(4), 
                           input(3) => plusA(3), input(2) => plusA(2), input(1)
                           => plusA(1), input(0) => plusA(0), 
                           shiftLeftOnePos(15) => plus2A_out_15_port, 
                           shiftLeftOnePos(14) => plus2A_out_14_port, 
                           shiftLeftOnePos(13) => plus2A_out_13_port, 
                           shiftLeftOnePos(12) => plus2A_out_12_port, 
                           shiftLeftOnePos(11) => plus2A_out_11_port, 
                           shiftLeftOnePos(10) => plus2A_out_10_port, 
                           shiftLeftOnePos(9) => plus2A_out_9_port, 
                           shiftLeftOnePos(8) => plus2A_out_8_port, 
                           shiftLeftOnePos(7) => plus2A_out_7_port, 
                           shiftLeftOnePos(6) => plus2A_out_6_port, 
                           shiftLeftOnePos(5) => plus2A_out_5_port, 
                           shiftLeftOnePos(4) => plus2A_out_4_port, 
                           shiftLeftOnePos(3) => plus2A_out_3_port, 
                           shiftLeftOnePos(2) => plus2A_out_2_port, 
                           shiftLeftOnePos(1) => plus2A_out_1_port, 
                           shiftLeftOnePos(0) => n_1008);
   complementer_1 : complementer_N16_0 port map( input(15) => plusA(15), 
                           input(14) => plusA(14), input(13) => plusA(13), 
                           input(12) => plusA(12), input(11) => plusA(11), 
                           input(10) => plusA(10), input(9) => plusA(9), 
                           input(8) => plusA(8), input(7) => plusA(7), input(6)
                           => plusA(6), input(5) => plusA(5), input(4) => 
                           plusA(4), input(3) => plusA(3), input(2) => plusA(2)
                           , input(1) => plusA(1), input(0) => plusA(0), 
                           complement2(15) => minusA_out(15), complement2(14) 
                           => minusA_out(14), complement2(13) => minusA_out(13)
                           , complement2(12) => minusA_out(12), complement2(11)
                           => minusA_out(11), complement2(10) => minusA_out(10)
                           , complement2(9) => minusA_out(9), complement2(8) =>
                           minusA_out(8), complement2(7) => minusA_out(7), 
                           complement2(6) => minusA_out(6), complement2(5) => 
                           minusA_out(5), complement2(4) => minusA_out(4), 
                           complement2(3) => minusA_out(3), complement2(2) => 
                           minusA_out(2), complement2(1) => minusA_out(1), 
                           complement2(0) => minusA_out(0));
   complementer_2 : complementer_N16_7 port map( input(15) => 
                           plus2A_out_15_port, input(14) => plus2A_out_14_port,
                           input(13) => plus2A_out_13_port, input(12) => 
                           plus2A_out_12_port, input(11) => plus2A_out_11_port,
                           input(10) => plus2A_out_10_port, input(9) => 
                           plus2A_out_9_port, input(8) => plus2A_out_8_port, 
                           input(7) => plus2A_out_7_port, input(6) => 
                           plus2A_out_6_port, input(5) => plus2A_out_5_port, 
                           input(4) => plus2A_out_4_port, input(3) => 
                           plus2A_out_3_port, input(2) => plus2A_out_2_port, 
                           input(1) => plus2A_out_1_port, input(0) => 
                           plus2A_out_0_port, complement2(15) => 
                           minus2A_out(15), complement2(14) => minus2A_out(14),
                           complement2(13) => minus2A_out(13), complement2(12) 
                           => minus2A_out(12), complement2(11) => 
                           minus2A_out(11), complement2(10) => minus2A_out(10),
                           complement2(9) => minus2A_out(9), complement2(8) => 
                           minus2A_out(8), complement2(7) => minus2A_out(7), 
                           complement2(6) => minus2A_out(6), complement2(5) => 
                           minus2A_out(5), complement2(4) => minus2A_out(4), 
                           complement2(3) => minus2A_out(3), complement2(2) => 
                           minus2A_out(2), complement2(1) => minus2A_out(1), 
                           complement2(0) => minus2A_out(0));
   plus2A_out_0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity encoder_N16_RADIX3_0 is

   port( X : in std_logic_vector (2 downto 0);  Z : out std_logic_vector (2 
         downto 0));

end encoder_N16_RADIX3_0;

architecture SYN_beh of encoder_N16_RADIX3_0 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : AND3_X1 port map( A1 => X(2), A2 => n1, A3 => n2, ZN => Z(2));
   U2 : INV_X1 port map( A => n3, ZN => Z(1));
   U3 : MUX2_X1 port map( A => n1, B => n2, S => X(2), Z => n3);
   U4 : AOI21_X1 port map( B1 => n2, B2 => n1, A => X(2), ZN => Z(0));
   U5 : NAND2_X1 port map( A1 => X(1), A2 => X(0), ZN => n1);
   U6 : XNOR2_X1 port map( A => X(0), B => X(1), ZN => n2);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity booth_mul_row_N16_RADIX3_0 is

   port( prevA, prevSum : in std_logic_vector (15 downto 0);  encoderIn : in 
         std_logic_vector (2 downto 0);  nextA, nextSum : out std_logic_vector 
         (15 downto 0));

end booth_mul_row_N16_RADIX3_0;

architecture SYN_struct of booth_mul_row_N16_RADIX3_0 is

   component RCA_N16_0
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component MUX_GENERIC_N16_RADIX3_3
      port( plusA, minusA, plus2A, minus2A : in std_logic_vector (15 downto 0);
            SEL : in std_logic_vector (2 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component ShiftnCompl_N16_0
      port( plusA : in std_logic_vector (15 downto 0);  plus2A_out, minus2A_out
            , plus4A_out, minus4A_out : out std_logic_vector (15 downto 0));
   end component;
   
   component encoder_N16_RADIX3_3
      port( X : in std_logic_vector (2 downto 0);  Z : out std_logic_vector (2 
            downto 0));
   end component;
   
   signal X_Logic0_port, nextA_15_port, nextA_14_port, nextA_13_port, 
      nextA_12_port, nextA_11_port, nextA_10_port, nextA_9_port, nextA_8_port, 
      nextA_7_port, nextA_6_port, nextA_5_port, nextA_4_port, nextA_3_port, 
      nextA_2_port, nextA_1_port, n2, encoder_to_mux_2_port, 
      encoder_to_mux_1_port, encoder_to_mux_0_port, plus2A_s_15_port, 
      plus2A_s_14_port, plus2A_s_13_port, plus2A_s_12_port, plus2A_s_11_port, 
      plus2A_s_10_port, plus2A_s_9_port, plus2A_s_8_port, plus2A_s_7_port, 
      plus2A_s_6_port, plus2A_s_5_port, plus2A_s_4_port, plus2A_s_3_port, 
      plus2A_s_2_port, plus2A_s_1_port, plus2A_s_0_port, minus2A_s_15_port, 
      minus2A_s_14_port, minus2A_s_13_port, minus2A_s_12_port, 
      minus2A_s_11_port, minus2A_s_10_port, minus2A_s_9_port, minus2A_s_8_port,
      minus2A_s_7_port, minus2A_s_6_port, minus2A_s_5_port, minus2A_s_4_port, 
      minus2A_s_3_port, minus2A_s_2_port, minus2A_s_1_port, minus2A_s_0_port, 
      minus4A_s_15_port, minus4A_s_14_port, minus4A_s_13_port, 
      minus4A_s_12_port, minus4A_s_11_port, minus4A_s_10_port, minus4A_s_9_port
      , minus4A_s_8_port, minus4A_s_7_port, minus4A_s_6_port, minus4A_s_5_port,
      minus4A_s_4_port, minus4A_s_3_port, minus4A_s_2_port, minus4A_s_1_port, 
      minus4A_s_0_port, mux_to_adder_15_port, mux_to_adder_14_port, 
      mux_to_adder_13_port, mux_to_adder_12_port, mux_to_adder_11_port, 
      mux_to_adder_10_port, mux_to_adder_9_port, mux_to_adder_8_port, 
      mux_to_adder_7_port, mux_to_adder_6_port, mux_to_adder_5_port, 
      mux_to_adder_4_port, mux_to_adder_3_port, mux_to_adder_2_port, 
      mux_to_adder_1_port, mux_to_adder_0_port, nextA_0_port, n_1009 : 
      std_logic;

begin
   nextA <= ( nextA_15_port, nextA_14_port, nextA_13_port, nextA_12_port, 
      nextA_11_port, nextA_10_port, nextA_9_port, nextA_8_port, nextA_7_port, 
      nextA_6_port, nextA_5_port, nextA_4_port, nextA_3_port, nextA_2_port, 
      nextA_1_port, nextA_0_port );
   
   X_Logic0_port <= '0';
   encoder_1 : encoder_N16_RADIX3_3 port map( X(2) => encoderIn(2), X(1) => 
                           encoderIn(1), X(0) => encoderIn(0), Z(2) => 
                           encoder_to_mux_2_port, Z(1) => encoder_to_mux_1_port
                           , Z(0) => encoder_to_mux_0_port);
   ShiftnCompl_1 : ShiftnCompl_N16_0 port map( plusA(15) => prevA(15), 
                           plusA(14) => prevA(14), plusA(13) => prevA(13), 
                           plusA(12) => prevA(12), plusA(11) => prevA(11), 
                           plusA(10) => prevA(10), plusA(9) => prevA(9), 
                           plusA(8) => prevA(8), plusA(7) => prevA(7), plusA(6)
                           => prevA(6), plusA(5) => prevA(5), plusA(4) => 
                           prevA(4), plusA(3) => prevA(3), plusA(2) => prevA(2)
                           , plusA(1) => prevA(1), plusA(0) => prevA(0), 
                           plus2A_out(15) => plus2A_s_15_port, plus2A_out(14) 
                           => plus2A_s_14_port, plus2A_out(13) => 
                           plus2A_s_13_port, plus2A_out(12) => plus2A_s_12_port
                           , plus2A_out(11) => plus2A_s_11_port, plus2A_out(10)
                           => plus2A_s_10_port, plus2A_out(9) => 
                           plus2A_s_9_port, plus2A_out(8) => plus2A_s_8_port, 
                           plus2A_out(7) => plus2A_s_7_port, plus2A_out(6) => 
                           plus2A_s_6_port, plus2A_out(5) => plus2A_s_5_port, 
                           plus2A_out(4) => plus2A_s_4_port, plus2A_out(3) => 
                           plus2A_s_3_port, plus2A_out(2) => plus2A_s_2_port, 
                           plus2A_out(1) => plus2A_s_1_port, plus2A_out(0) => 
                           plus2A_s_0_port, minus2A_out(15) => 
                           minus2A_s_15_port, minus2A_out(14) => 
                           minus2A_s_14_port, minus2A_out(13) => 
                           minus2A_s_13_port, minus2A_out(12) => 
                           minus2A_s_12_port, minus2A_out(11) => 
                           minus2A_s_11_port, minus2A_out(10) => 
                           minus2A_s_10_port, minus2A_out(9) => 
                           minus2A_s_9_port, minus2A_out(8) => minus2A_s_8_port
                           , minus2A_out(7) => minus2A_s_7_port, minus2A_out(6)
                           => minus2A_s_6_port, minus2A_out(5) => 
                           minus2A_s_5_port, minus2A_out(4) => minus2A_s_4_port
                           , minus2A_out(3) => minus2A_s_3_port, minus2A_out(2)
                           => minus2A_s_2_port, minus2A_out(1) => 
                           minus2A_s_1_port, minus2A_out(0) => minus2A_s_0_port
                           , plus4A_out(15) => nextA_15_port, plus4A_out(14) =>
                           nextA_14_port, plus4A_out(13) => nextA_13_port, 
                           plus4A_out(12) => nextA_12_port, plus4A_out(11) => 
                           nextA_11_port, plus4A_out(10) => nextA_10_port, 
                           plus4A_out(9) => nextA_9_port, plus4A_out(8) => 
                           nextA_8_port, plus4A_out(7) => nextA_7_port, 
                           plus4A_out(6) => nextA_6_port, plus4A_out(5) => 
                           nextA_5_port, plus4A_out(4) => nextA_4_port, 
                           plus4A_out(3) => nextA_3_port, plus4A_out(2) => 
                           nextA_2_port, plus4A_out(1) => nextA_1_port, 
                           plus4A_out(0) => n2, minus4A_out(15) => 
                           minus4A_s_15_port, minus4A_out(14) => 
                           minus4A_s_14_port, minus4A_out(13) => 
                           minus4A_s_13_port, minus4A_out(12) => 
                           minus4A_s_12_port, minus4A_out(11) => 
                           minus4A_s_11_port, minus4A_out(10) => 
                           minus4A_s_10_port, minus4A_out(9) => 
                           minus4A_s_9_port, minus4A_out(8) => minus4A_s_8_port
                           , minus4A_out(7) => minus4A_s_7_port, minus4A_out(6)
                           => minus4A_s_6_port, minus4A_out(5) => 
                           minus4A_s_5_port, minus4A_out(4) => minus4A_s_4_port
                           , minus4A_out(3) => minus4A_s_3_port, minus4A_out(2)
                           => minus4A_s_2_port, minus4A_out(1) => 
                           minus4A_s_1_port, minus4A_out(0) => minus4A_s_0_port
                           );
   mux_1 : MUX_GENERIC_N16_RADIX3_3 port map( plusA(15) => plus2A_s_15_port, 
                           plusA(14) => plus2A_s_14_port, plusA(13) => 
                           plus2A_s_13_port, plusA(12) => plus2A_s_12_port, 
                           plusA(11) => plus2A_s_11_port, plusA(10) => 
                           plus2A_s_10_port, plusA(9) => plus2A_s_9_port, 
                           plusA(8) => plus2A_s_8_port, plusA(7) => 
                           plus2A_s_7_port, plusA(6) => plus2A_s_6_port, 
                           plusA(5) => plus2A_s_5_port, plusA(4) => 
                           plus2A_s_4_port, plusA(3) => plus2A_s_3_port, 
                           plusA(2) => plus2A_s_2_port, plusA(1) => 
                           plus2A_s_1_port, plusA(0) => nextA_0_port, 
                           minusA(15) => minus2A_s_15_port, minusA(14) => 
                           minus2A_s_14_port, minusA(13) => minus2A_s_13_port, 
                           minusA(12) => minus2A_s_12_port, minusA(11) => 
                           minus2A_s_11_port, minusA(10) => minus2A_s_10_port, 
                           minusA(9) => minus2A_s_9_port, minusA(8) => 
                           minus2A_s_8_port, minusA(7) => minus2A_s_7_port, 
                           minusA(6) => minus2A_s_6_port, minusA(5) => 
                           minus2A_s_5_port, minusA(4) => minus2A_s_4_port, 
                           minusA(3) => minus2A_s_3_port, minusA(2) => 
                           minus2A_s_2_port, minusA(1) => minus2A_s_1_port, 
                           minusA(0) => minus2A_s_0_port, plus2A(15) => 
                           nextA_15_port, plus2A(14) => nextA_14_port, 
                           plus2A(13) => nextA_13_port, plus2A(12) => 
                           nextA_12_port, plus2A(11) => nextA_11_port, 
                           plus2A(10) => nextA_10_port, plus2A(9) => 
                           nextA_9_port, plus2A(8) => nextA_8_port, plus2A(7) 
                           => nextA_7_port, plus2A(6) => nextA_6_port, 
                           plus2A(5) => nextA_5_port, plus2A(4) => nextA_4_port
                           , plus2A(3) => nextA_3_port, plus2A(2) => 
                           nextA_2_port, plus2A(1) => nextA_1_port, plus2A(0) 
                           => nextA_0_port, minus2A(15) => minus4A_s_15_port, 
                           minus2A(14) => minus4A_s_14_port, minus2A(13) => 
                           minus4A_s_13_port, minus2A(12) => minus4A_s_12_port,
                           minus2A(11) => minus4A_s_11_port, minus2A(10) => 
                           minus4A_s_10_port, minus2A(9) => minus4A_s_9_port, 
                           minus2A(8) => minus4A_s_8_port, minus2A(7) => 
                           minus4A_s_7_port, minus2A(6) => minus4A_s_6_port, 
                           minus2A(5) => minus4A_s_5_port, minus2A(4) => 
                           minus4A_s_4_port, minus2A(3) => minus4A_s_3_port, 
                           minus2A(2) => minus4A_s_2_port, minus2A(1) => 
                           minus4A_s_1_port, minus2A(0) => minus4A_s_0_port, 
                           SEL(2) => encoder_to_mux_2_port, SEL(1) => 
                           encoder_to_mux_1_port, SEL(0) => 
                           encoder_to_mux_0_port, Y(15) => mux_to_adder_15_port
                           , Y(14) => mux_to_adder_14_port, Y(13) => 
                           mux_to_adder_13_port, Y(12) => mux_to_adder_12_port,
                           Y(11) => mux_to_adder_11_port, Y(10) => 
                           mux_to_adder_10_port, Y(9) => mux_to_adder_9_port, 
                           Y(8) => mux_to_adder_8_port, Y(7) => 
                           mux_to_adder_7_port, Y(6) => mux_to_adder_6_port, 
                           Y(5) => mux_to_adder_5_port, Y(4) => 
                           mux_to_adder_4_port, Y(3) => mux_to_adder_3_port, 
                           Y(2) => mux_to_adder_2_port, Y(1) => 
                           mux_to_adder_1_port, Y(0) => mux_to_adder_0_port);
   rca_1 : RCA_N16_0 port map( A(15) => mux_to_adder_15_port, A(14) => 
                           mux_to_adder_14_port, A(13) => mux_to_adder_13_port,
                           A(12) => mux_to_adder_12_port, A(11) => 
                           mux_to_adder_11_port, A(10) => mux_to_adder_10_port,
                           A(9) => mux_to_adder_9_port, A(8) => 
                           mux_to_adder_8_port, A(7) => mux_to_adder_7_port, 
                           A(6) => mux_to_adder_6_port, A(5) => 
                           mux_to_adder_5_port, A(4) => mux_to_adder_4_port, 
                           A(3) => mux_to_adder_3_port, A(2) => 
                           mux_to_adder_2_port, A(1) => mux_to_adder_1_port, 
                           A(0) => mux_to_adder_0_port, B(15) => prevSum(15), 
                           B(14) => prevSum(14), B(13) => prevSum(13), B(12) =>
                           prevSum(12), B(11) => prevSum(11), B(10) => 
                           prevSum(10), B(9) => prevSum(9), B(8) => prevSum(8),
                           B(7) => prevSum(7), B(6) => prevSum(6), B(5) => 
                           prevSum(5), B(4) => prevSum(4), B(3) => prevSum(3), 
                           B(2) => prevSum(2), B(1) => prevSum(1), B(0) => 
                           prevSum(0), Ci => X_Logic0_port, S(15) => 
                           nextSum(15), S(14) => nextSum(14), S(13) => 
                           nextSum(13), S(12) => nextSum(12), S(11) => 
                           nextSum(11), S(10) => nextSum(10), S(9) => 
                           nextSum(9), S(8) => nextSum(8), S(7) => nextSum(7), 
                           S(6) => nextSum(6), S(5) => nextSum(5), S(4) => 
                           nextSum(4), S(3) => nextSum(3), S(2) => nextSum(2), 
                           S(1) => nextSum(1), S(0) => nextSum(0), Co => n_1009
                           );
   nextA_0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity booth_mul_row_special_N16_RADIX3 is

   port( A : in std_logic_vector (15 downto 0);  encoderIn : in 
         std_logic_vector (2 downto 0);  nextA, nextSum : out std_logic_vector 
         (15 downto 0));

end booth_mul_row_special_N16_RADIX3;

architecture SYN_struct of booth_mul_row_special_N16_RADIX3 is

   component MUX_GENERIC_N16_RADIX3_0
      port( plusA, minusA, plus2A, minus2A : in std_logic_vector (15 downto 0);
            SEL : in std_logic_vector (2 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component ShiftnCompl_special_N16
      port( plusA : in std_logic_vector (15 downto 0);  plusA_out, minusA_out, 
            plus2A_out, minus2A_out : out std_logic_vector (15 downto 0));
   end component;
   
   component encoder_N16_RADIX3_0
      port( X : in std_logic_vector (2 downto 0);  Z : out std_logic_vector (2 
            downto 0));
   end component;
   
   signal nextA_15_port, nextA_14_port, nextA_13_port, nextA_12_port, 
      nextA_11_port, nextA_10_port, nextA_9_port, nextA_8_port, nextA_7_port, 
      nextA_6_port, nextA_5_port, nextA_4_port, nextA_3_port, nextA_2_port, 
      nextA_1_port, n2, encoder_to_mux_2_port, encoder_to_mux_1_port, 
      encoder_to_mux_0_port, plusA_s_15_port, plusA_s_14_port, plusA_s_13_port,
      plusA_s_12_port, plusA_s_11_port, plusA_s_10_port, plusA_s_9_port, 
      plusA_s_8_port, plusA_s_7_port, plusA_s_6_port, plusA_s_5_port, 
      plusA_s_4_port, plusA_s_3_port, plusA_s_2_port, plusA_s_1_port, 
      plusA_s_0_port, minusA_s_15_port, minusA_s_14_port, minusA_s_13_port, 
      minusA_s_12_port, minusA_s_11_port, minusA_s_10_port, minusA_s_9_port, 
      minusA_s_8_port, minusA_s_7_port, minusA_s_6_port, minusA_s_5_port, 
      minusA_s_4_port, minusA_s_3_port, minusA_s_2_port, minusA_s_1_port, 
      minusA_s_0_port, minus2A_s_15_port, minus2A_s_14_port, minus2A_s_13_port,
      minus2A_s_12_port, minus2A_s_11_port, minus2A_s_10_port, minus2A_s_9_port
      , minus2A_s_8_port, minus2A_s_7_port, minus2A_s_6_port, minus2A_s_5_port,
      minus2A_s_4_port, minus2A_s_3_port, minus2A_s_2_port, minus2A_s_1_port, 
      minus2A_s_0_port, nextA_0_port : std_logic;

begin
   nextA <= ( nextA_15_port, nextA_14_port, nextA_13_port, nextA_12_port, 
      nextA_11_port, nextA_10_port, nextA_9_port, nextA_8_port, nextA_7_port, 
      nextA_6_port, nextA_5_port, nextA_4_port, nextA_3_port, nextA_2_port, 
      nextA_1_port, nextA_0_port );
   
   encoder_1 : encoder_N16_RADIX3_0 port map( X(2) => encoderIn(2), X(1) => 
                           encoderIn(1), X(0) => encoderIn(0), Z(2) => 
                           encoder_to_mux_2_port, Z(1) => encoder_to_mux_1_port
                           , Z(0) => encoder_to_mux_0_port);
   ShiftnCompl_special_1 : ShiftnCompl_special_N16 port map( plusA(15) => A(15)
                           , plusA(14) => A(14), plusA(13) => A(13), plusA(12) 
                           => A(12), plusA(11) => A(11), plusA(10) => A(10), 
                           plusA(9) => A(9), plusA(8) => A(8), plusA(7) => A(7)
                           , plusA(6) => A(6), plusA(5) => A(5), plusA(4) => 
                           A(4), plusA(3) => A(3), plusA(2) => A(2), plusA(1) 
                           => A(1), plusA(0) => A(0), plusA_out(15) => 
                           plusA_s_15_port, plusA_out(14) => plusA_s_14_port, 
                           plusA_out(13) => plusA_s_13_port, plusA_out(12) => 
                           plusA_s_12_port, plusA_out(11) => plusA_s_11_port, 
                           plusA_out(10) => plusA_s_10_port, plusA_out(9) => 
                           plusA_s_9_port, plusA_out(8) => plusA_s_8_port, 
                           plusA_out(7) => plusA_s_7_port, plusA_out(6) => 
                           plusA_s_6_port, plusA_out(5) => plusA_s_5_port, 
                           plusA_out(4) => plusA_s_4_port, plusA_out(3) => 
                           plusA_s_3_port, plusA_out(2) => plusA_s_2_port, 
                           plusA_out(1) => plusA_s_1_port, plusA_out(0) => 
                           plusA_s_0_port, minusA_out(15) => minusA_s_15_port, 
                           minusA_out(14) => minusA_s_14_port, minusA_out(13) 
                           => minusA_s_13_port, minusA_out(12) => 
                           minusA_s_12_port, minusA_out(11) => minusA_s_11_port
                           , minusA_out(10) => minusA_s_10_port, minusA_out(9) 
                           => minusA_s_9_port, minusA_out(8) => minusA_s_8_port
                           , minusA_out(7) => minusA_s_7_port, minusA_out(6) =>
                           minusA_s_6_port, minusA_out(5) => minusA_s_5_port, 
                           minusA_out(4) => minusA_s_4_port, minusA_out(3) => 
                           minusA_s_3_port, minusA_out(2) => minusA_s_2_port, 
                           minusA_out(1) => minusA_s_1_port, minusA_out(0) => 
                           minusA_s_0_port, plus2A_out(15) => nextA_15_port, 
                           plus2A_out(14) => nextA_14_port, plus2A_out(13) => 
                           nextA_13_port, plus2A_out(12) => nextA_12_port, 
                           plus2A_out(11) => nextA_11_port, plus2A_out(10) => 
                           nextA_10_port, plus2A_out(9) => nextA_9_port, 
                           plus2A_out(8) => nextA_8_port, plus2A_out(7) => 
                           nextA_7_port, plus2A_out(6) => nextA_6_port, 
                           plus2A_out(5) => nextA_5_port, plus2A_out(4) => 
                           nextA_4_port, plus2A_out(3) => nextA_3_port, 
                           plus2A_out(2) => nextA_2_port, plus2A_out(1) => 
                           nextA_1_port, plus2A_out(0) => n2, minus2A_out(15) 
                           => minus2A_s_15_port, minus2A_out(14) => 
                           minus2A_s_14_port, minus2A_out(13) => 
                           minus2A_s_13_port, minus2A_out(12) => 
                           minus2A_s_12_port, minus2A_out(11) => 
                           minus2A_s_11_port, minus2A_out(10) => 
                           minus2A_s_10_port, minus2A_out(9) => 
                           minus2A_s_9_port, minus2A_out(8) => minus2A_s_8_port
                           , minus2A_out(7) => minus2A_s_7_port, minus2A_out(6)
                           => minus2A_s_6_port, minus2A_out(5) => 
                           minus2A_s_5_port, minus2A_out(4) => minus2A_s_4_port
                           , minus2A_out(3) => minus2A_s_3_port, minus2A_out(2)
                           => minus2A_s_2_port, minus2A_out(1) => 
                           minus2A_s_1_port, minus2A_out(0) => minus2A_s_0_port
                           );
   mux_1 : MUX_GENERIC_N16_RADIX3_0 port map( plusA(15) => plusA_s_15_port, 
                           plusA(14) => plusA_s_14_port, plusA(13) => 
                           plusA_s_13_port, plusA(12) => plusA_s_12_port, 
                           plusA(11) => plusA_s_11_port, plusA(10) => 
                           plusA_s_10_port, plusA(9) => plusA_s_9_port, 
                           plusA(8) => plusA_s_8_port, plusA(7) => 
                           plusA_s_7_port, plusA(6) => plusA_s_6_port, plusA(5)
                           => plusA_s_5_port, plusA(4) => plusA_s_4_port, 
                           plusA(3) => plusA_s_3_port, plusA(2) => 
                           plusA_s_2_port, plusA(1) => plusA_s_1_port, plusA(0)
                           => plusA_s_0_port, minusA(15) => minusA_s_15_port, 
                           minusA(14) => minusA_s_14_port, minusA(13) => 
                           minusA_s_13_port, minusA(12) => minusA_s_12_port, 
                           minusA(11) => minusA_s_11_port, minusA(10) => 
                           minusA_s_10_port, minusA(9) => minusA_s_9_port, 
                           minusA(8) => minusA_s_8_port, minusA(7) => 
                           minusA_s_7_port, minusA(6) => minusA_s_6_port, 
                           minusA(5) => minusA_s_5_port, minusA(4) => 
                           minusA_s_4_port, minusA(3) => minusA_s_3_port, 
                           minusA(2) => minusA_s_2_port, minusA(1) => 
                           minusA_s_1_port, minusA(0) => minusA_s_0_port, 
                           plus2A(15) => nextA_15_port, plus2A(14) => 
                           nextA_14_port, plus2A(13) => nextA_13_port, 
                           plus2A(12) => nextA_12_port, plus2A(11) => 
                           nextA_11_port, plus2A(10) => nextA_10_port, 
                           plus2A(9) => nextA_9_port, plus2A(8) => nextA_8_port
                           , plus2A(7) => nextA_7_port, plus2A(6) => 
                           nextA_6_port, plus2A(5) => nextA_5_port, plus2A(4) 
                           => nextA_4_port, plus2A(3) => nextA_3_port, 
                           plus2A(2) => nextA_2_port, plus2A(1) => nextA_1_port
                           , plus2A(0) => nextA_0_port, minus2A(15) => 
                           minus2A_s_15_port, minus2A(14) => minus2A_s_14_port,
                           minus2A(13) => minus2A_s_13_port, minus2A(12) => 
                           minus2A_s_12_port, minus2A(11) => minus2A_s_11_port,
                           minus2A(10) => minus2A_s_10_port, minus2A(9) => 
                           minus2A_s_9_port, minus2A(8) => minus2A_s_8_port, 
                           minus2A(7) => minus2A_s_7_port, minus2A(6) => 
                           minus2A_s_6_port, minus2A(5) => minus2A_s_5_port, 
                           minus2A(4) => minus2A_s_4_port, minus2A(3) => 
                           minus2A_s_3_port, minus2A(2) => minus2A_s_2_port, 
                           minus2A(1) => minus2A_s_1_port, minus2A(0) => 
                           minus2A_s_0_port, SEL(2) => encoder_to_mux_2_port, 
                           SEL(1) => encoder_to_mux_1_port, SEL(0) => 
                           encoder_to_mux_0_port, Y(15) => nextSum(15), Y(14) 
                           => nextSum(14), Y(13) => nextSum(13), Y(12) => 
                           nextSum(12), Y(11) => nextSum(11), Y(10) => 
                           nextSum(10), Y(9) => nextSum(9), Y(8) => nextSum(8),
                           Y(7) => nextSum(7), Y(6) => nextSum(6), Y(5) => 
                           nextSum(5), Y(4) => nextSum(4), Y(3) => nextSum(3), 
                           Y(2) => nextSum(2), Y(1) => nextSum(1), Y(0) => 
                           nextSum(0));
   nextA_0_port <= '0';

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Booth_N8_RADIX3.all;

entity Booth_N8_RADIX3 is

   port( A, B : in std_logic_vector (7 downto 0);  P : out std_logic_vector (15
         downto 0));

end Booth_N8_RADIX3;

architecture SYN_booth_struct of Booth_N8_RADIX3 is

   component booth_mul_row_N16_RADIX3_1
      port( prevA, prevSum : in std_logic_vector (15 downto 0);  encoderIn : in
            std_logic_vector (2 downto 0);  nextA, nextSum : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component booth_mul_row_N16_RADIX3_2
      port( prevA, prevSum : in std_logic_vector (15 downto 0);  encoderIn : in
            std_logic_vector (2 downto 0);  nextA, nextSum : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component booth_mul_row_N16_RADIX3_0
      port( prevA, prevSum : in std_logic_vector (15 downto 0);  encoderIn : in
            std_logic_vector (2 downto 0);  nextA, nextSum : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component booth_mul_row_special_N16_RADIX3
      port( A : in std_logic_vector (15 downto 0);  encoderIn : in 
            std_logic_vector (2 downto 0);  nextA, nextSum : out 
            std_logic_vector (15 downto 0));
   end component;
   
   signal X_Logic0_port, sigMatrix_0_31_port, sigMatrix_0_30_port, 
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
      sigMatrix_1_31_port, sigMatrix_1_30_port, sigMatrix_1_29_port, 
      sigMatrix_1_28_port, sigMatrix_1_27_port, sigMatrix_1_26_port, 
      sigMatrix_1_25_port, sigMatrix_1_24_port, sigMatrix_1_23_port, 
      sigMatrix_1_22_port, sigMatrix_1_21_port, sigMatrix_1_20_port, 
      sigMatrix_1_19_port, sigMatrix_1_18_port, sigMatrix_1_17_port, 
      sigMatrix_1_16_port, sigMatrix_1_15_port, sigMatrix_1_14_port, 
      sigMatrix_1_13_port, sigMatrix_1_12_port, sigMatrix_1_11_port, 
      sigMatrix_1_10_port, sigMatrix_1_9_port, sigMatrix_1_8_port, 
      sigMatrix_1_7_port, sigMatrix_1_6_port, sigMatrix_1_5_port, 
      sigMatrix_1_4_port, sigMatrix_1_3_port, sigMatrix_1_2_port, 
      sigMatrix_1_1_port, sigMatrix_1_0_port, sigMatrix_2_31_port, 
      sigMatrix_2_30_port, sigMatrix_2_29_port, sigMatrix_2_28_port, 
      sigMatrix_2_27_port, sigMatrix_2_26_port, sigMatrix_2_25_port, 
      sigMatrix_2_24_port, sigMatrix_2_23_port, sigMatrix_2_22_port, 
      sigMatrix_2_21_port, sigMatrix_2_20_port, sigMatrix_2_19_port, 
      sigMatrix_2_18_port, sigMatrix_2_17_port, sigMatrix_2_16_port, 
      sigMatrix_2_15_port, sigMatrix_2_14_port, sigMatrix_2_13_port, 
      sigMatrix_2_12_port, sigMatrix_2_11_port, sigMatrix_2_10_port, 
      sigMatrix_2_9_port, sigMatrix_2_8_port, sigMatrix_2_7_port, 
      sigMatrix_2_6_port, sigMatrix_2_5_port, sigMatrix_2_4_port, 
      sigMatrix_2_3_port, sigMatrix_2_2_port, sigMatrix_2_1_port, 
      sigMatrix_2_0_port, n1, n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, 
      n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, n_1022, n_1023, n_1024, 
      n_1025 : std_logic;

begin
   
   X_Logic0_port <= '0';
   booth_mul_row_special_1_0 : booth_mul_row_special_N16_RADIX3 port map( A(15)
                           => A(7), A(14) => A(7), A(13) => A(7), A(12) => A(7)
                           , A(11) => A(7), A(10) => A(7), A(9) => A(7), A(8) 
                           => A(7), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), encoderIn(2) => B(1), 
                           encoderIn(1) => B(0), encoderIn(0) => X_Logic0_port,
                           nextA(15) => sigMatrix_0_31_port, nextA(14) => 
                           sigMatrix_0_30_port, nextA(13) => 
                           sigMatrix_0_29_port, nextA(12) => 
                           sigMatrix_0_28_port, nextA(11) => 
                           sigMatrix_0_27_port, nextA(10) => 
                           sigMatrix_0_26_port, nextA(9) => sigMatrix_0_25_port
                           , nextA(8) => sigMatrix_0_24_port, nextA(7) => 
                           sigMatrix_0_23_port, nextA(6) => sigMatrix_0_22_port
                           , nextA(5) => sigMatrix_0_21_port, nextA(4) => 
                           sigMatrix_0_20_port, nextA(3) => sigMatrix_0_19_port
                           , nextA(2) => sigMatrix_0_18_port, nextA(1) => 
                           sigMatrix_0_17_port, nextA(0) => sigMatrix_0_16_port
                           , nextSum(15) => sigMatrix_0_15_port, nextSum(14) =>
                           sigMatrix_0_14_port, nextSum(13) => 
                           sigMatrix_0_13_port, nextSum(12) => 
                           sigMatrix_0_12_port, nextSum(11) => 
                           sigMatrix_0_11_port, nextSum(10) => 
                           sigMatrix_0_10_port, nextSum(9) => 
                           sigMatrix_0_9_port, nextSum(8) => sigMatrix_0_8_port
                           , nextSum(7) => sigMatrix_0_7_port, nextSum(6) => 
                           sigMatrix_0_6_port, nextSum(5) => sigMatrix_0_5_port
                           , nextSum(4) => sigMatrix_0_4_port, nextSum(3) => 
                           sigMatrix_0_3_port, nextSum(2) => sigMatrix_0_2_port
                           , nextSum(1) => sigMatrix_0_1_port, nextSum(0) => 
                           sigMatrix_0_0_port);
   booth_mul_row_1_1 : booth_mul_row_N16_RADIX3_0 port map( prevA(15) => 
                           sigMatrix_0_31_port, prevA(14) => 
                           sigMatrix_0_30_port, prevA(13) => 
                           sigMatrix_0_29_port, prevA(12) => 
                           sigMatrix_0_28_port, prevA(11) => 
                           sigMatrix_0_27_port, prevA(10) => 
                           sigMatrix_0_26_port, prevA(9) => sigMatrix_0_25_port
                           , prevA(8) => sigMatrix_0_24_port, prevA(7) => 
                           sigMatrix_0_23_port, prevA(6) => sigMatrix_0_22_port
                           , prevA(5) => sigMatrix_0_21_port, prevA(4) => 
                           sigMatrix_0_20_port, prevA(3) => sigMatrix_0_19_port
                           , prevA(2) => sigMatrix_0_18_port, prevA(1) => 
                           sigMatrix_0_17_port, prevA(0) => n1, prevSum(15) => 
                           sigMatrix_0_15_port, prevSum(14) => 
                           sigMatrix_0_14_port, prevSum(13) => 
                           sigMatrix_0_13_port, prevSum(12) => 
                           sigMatrix_0_12_port, prevSum(11) => 
                           sigMatrix_0_11_port, prevSum(10) => 
                           sigMatrix_0_10_port, prevSum(9) => 
                           sigMatrix_0_9_port, prevSum(8) => sigMatrix_0_8_port
                           , prevSum(7) => sigMatrix_0_7_port, prevSum(6) => 
                           sigMatrix_0_6_port, prevSum(5) => sigMatrix_0_5_port
                           , prevSum(4) => sigMatrix_0_4_port, prevSum(3) => 
                           sigMatrix_0_3_port, prevSum(2) => sigMatrix_0_2_port
                           , prevSum(1) => sigMatrix_0_1_port, prevSum(0) => 
                           sigMatrix_0_0_port, encoderIn(2) => B(3), 
                           encoderIn(1) => B(2), encoderIn(0) => B(1), 
                           nextA(15) => sigMatrix_1_31_port, nextA(14) => 
                           sigMatrix_1_30_port, nextA(13) => 
                           sigMatrix_1_29_port, nextA(12) => 
                           sigMatrix_1_28_port, nextA(11) => 
                           sigMatrix_1_27_port, nextA(10) => 
                           sigMatrix_1_26_port, nextA(9) => sigMatrix_1_25_port
                           , nextA(8) => sigMatrix_1_24_port, nextA(7) => 
                           sigMatrix_1_23_port, nextA(6) => sigMatrix_1_22_port
                           , nextA(5) => sigMatrix_1_21_port, nextA(4) => 
                           sigMatrix_1_20_port, nextA(3) => sigMatrix_1_19_port
                           , nextA(2) => sigMatrix_1_18_port, nextA(1) => 
                           sigMatrix_1_17_port, nextA(0) => sigMatrix_1_16_port
                           , nextSum(15) => sigMatrix_1_15_port, nextSum(14) =>
                           sigMatrix_1_14_port, nextSum(13) => 
                           sigMatrix_1_13_port, nextSum(12) => 
                           sigMatrix_1_12_port, nextSum(11) => 
                           sigMatrix_1_11_port, nextSum(10) => 
                           sigMatrix_1_10_port, nextSum(9) => 
                           sigMatrix_1_9_port, nextSum(8) => sigMatrix_1_8_port
                           , nextSum(7) => sigMatrix_1_7_port, nextSum(6) => 
                           sigMatrix_1_6_port, nextSum(5) => sigMatrix_1_5_port
                           , nextSum(4) => sigMatrix_1_4_port, nextSum(3) => 
                           sigMatrix_1_3_port, nextSum(2) => sigMatrix_1_2_port
                           , nextSum(1) => sigMatrix_1_1_port, nextSum(0) => 
                           sigMatrix_1_0_port);
   booth_mul_row_1_2 : booth_mul_row_N16_RADIX3_2 port map( prevA(15) => 
                           sigMatrix_1_31_port, prevA(14) => 
                           sigMatrix_1_30_port, prevA(13) => 
                           sigMatrix_1_29_port, prevA(12) => 
                           sigMatrix_1_28_port, prevA(11) => 
                           sigMatrix_1_27_port, prevA(10) => 
                           sigMatrix_1_26_port, prevA(9) => sigMatrix_1_25_port
                           , prevA(8) => sigMatrix_1_24_port, prevA(7) => 
                           sigMatrix_1_23_port, prevA(6) => sigMatrix_1_22_port
                           , prevA(5) => sigMatrix_1_21_port, prevA(4) => 
                           sigMatrix_1_20_port, prevA(3) => sigMatrix_1_19_port
                           , prevA(2) => sigMatrix_1_18_port, prevA(1) => 
                           sigMatrix_1_17_port, prevA(0) => n1, prevSum(15) => 
                           sigMatrix_1_15_port, prevSum(14) => 
                           sigMatrix_1_14_port, prevSum(13) => 
                           sigMatrix_1_13_port, prevSum(12) => 
                           sigMatrix_1_12_port, prevSum(11) => 
                           sigMatrix_1_11_port, prevSum(10) => 
                           sigMatrix_1_10_port, prevSum(9) => 
                           sigMatrix_1_9_port, prevSum(8) => sigMatrix_1_8_port
                           , prevSum(7) => sigMatrix_1_7_port, prevSum(6) => 
                           sigMatrix_1_6_port, prevSum(5) => sigMatrix_1_5_port
                           , prevSum(4) => sigMatrix_1_4_port, prevSum(3) => 
                           sigMatrix_1_3_port, prevSum(2) => sigMatrix_1_2_port
                           , prevSum(1) => sigMatrix_1_1_port, prevSum(0) => 
                           sigMatrix_1_0_port, encoderIn(2) => B(5), 
                           encoderIn(1) => B(4), encoderIn(0) => B(3), 
                           nextA(15) => sigMatrix_2_31_port, nextA(14) => 
                           sigMatrix_2_30_port, nextA(13) => 
                           sigMatrix_2_29_port, nextA(12) => 
                           sigMatrix_2_28_port, nextA(11) => 
                           sigMatrix_2_27_port, nextA(10) => 
                           sigMatrix_2_26_port, nextA(9) => sigMatrix_2_25_port
                           , nextA(8) => sigMatrix_2_24_port, nextA(7) => 
                           sigMatrix_2_23_port, nextA(6) => sigMatrix_2_22_port
                           , nextA(5) => sigMatrix_2_21_port, nextA(4) => 
                           sigMatrix_2_20_port, nextA(3) => sigMatrix_2_19_port
                           , nextA(2) => sigMatrix_2_18_port, nextA(1) => 
                           sigMatrix_2_17_port, nextA(0) => sigMatrix_2_16_port
                           , nextSum(15) => sigMatrix_2_15_port, nextSum(14) =>
                           sigMatrix_2_14_port, nextSum(13) => 
                           sigMatrix_2_13_port, nextSum(12) => 
                           sigMatrix_2_12_port, nextSum(11) => 
                           sigMatrix_2_11_port, nextSum(10) => 
                           sigMatrix_2_10_port, nextSum(9) => 
                           sigMatrix_2_9_port, nextSum(8) => sigMatrix_2_8_port
                           , nextSum(7) => sigMatrix_2_7_port, nextSum(6) => 
                           sigMatrix_2_6_port, nextSum(5) => sigMatrix_2_5_port
                           , nextSum(4) => sigMatrix_2_4_port, nextSum(3) => 
                           sigMatrix_2_3_port, nextSum(2) => sigMatrix_2_2_port
                           , nextSum(1) => sigMatrix_2_1_port, nextSum(0) => 
                           sigMatrix_2_0_port);
   booth_mul_row_1_3 : booth_mul_row_N16_RADIX3_1 port map( prevA(15) => 
                           sigMatrix_2_31_port, prevA(14) => 
                           sigMatrix_2_30_port, prevA(13) => 
                           sigMatrix_2_29_port, prevA(12) => 
                           sigMatrix_2_28_port, prevA(11) => 
                           sigMatrix_2_27_port, prevA(10) => 
                           sigMatrix_2_26_port, prevA(9) => sigMatrix_2_25_port
                           , prevA(8) => sigMatrix_2_24_port, prevA(7) => 
                           sigMatrix_2_23_port, prevA(6) => sigMatrix_2_22_port
                           , prevA(5) => sigMatrix_2_21_port, prevA(4) => 
                           sigMatrix_2_20_port, prevA(3) => sigMatrix_2_19_port
                           , prevA(2) => sigMatrix_2_18_port, prevA(1) => 
                           sigMatrix_2_17_port, prevA(0) => n1, prevSum(15) => 
                           sigMatrix_2_15_port, prevSum(14) => 
                           sigMatrix_2_14_port, prevSum(13) => 
                           sigMatrix_2_13_port, prevSum(12) => 
                           sigMatrix_2_12_port, prevSum(11) => 
                           sigMatrix_2_11_port, prevSum(10) => 
                           sigMatrix_2_10_port, prevSum(9) => 
                           sigMatrix_2_9_port, prevSum(8) => sigMatrix_2_8_port
                           , prevSum(7) => sigMatrix_2_7_port, prevSum(6) => 
                           sigMatrix_2_6_port, prevSum(5) => sigMatrix_2_5_port
                           , prevSum(4) => sigMatrix_2_4_port, prevSum(3) => 
                           sigMatrix_2_3_port, prevSum(2) => sigMatrix_2_2_port
                           , prevSum(1) => sigMatrix_2_1_port, prevSum(0) => 
                           sigMatrix_2_0_port, encoderIn(2) => B(7), 
                           encoderIn(1) => B(6), encoderIn(0) => B(5), 
                           nextA(15) => n_1010, nextA(14) => n_1011, nextA(13) 
                           => n_1012, nextA(12) => n_1013, nextA(11) => n_1014,
                           nextA(10) => n_1015, nextA(9) => n_1016, nextA(8) =>
                           n_1017, nextA(7) => n_1018, nextA(6) => n_1019, 
                           nextA(5) => n_1020, nextA(4) => n_1021, nextA(3) => 
                           n_1022, nextA(2) => n_1023, nextA(1) => n_1024, 
                           nextA(0) => n_1025, nextSum(15) => P(15), 
                           nextSum(14) => P(14), nextSum(13) => P(13), 
                           nextSum(12) => P(12), nextSum(11) => P(11), 
                           nextSum(10) => P(10), nextSum(9) => P(9), nextSum(8)
                           => P(8), nextSum(7) => P(7), nextSum(6) => P(6), 
                           nextSum(5) => P(5), nextSum(4) => P(4), nextSum(3) 
                           => P(3), nextSum(2) => P(2), nextSum(1) => P(1), 
                           nextSum(0) => P(0));
   n1 <= '0';

end SYN_booth_struct;
