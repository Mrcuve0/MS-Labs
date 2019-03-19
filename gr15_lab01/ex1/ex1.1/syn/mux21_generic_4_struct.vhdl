
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_N4_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_N4_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_N4_1.all;

entity OR21_GENERIC_N4 is

   port( A, B : in std_logic_vector (3 downto 0);  Y : out std_logic_vector (3 
         downto 0));

end OR21_GENERIC_N4;

architecture SYN_beh of OR21_GENERIC_N4 is

   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   C10 : GTECH_OR2 port map( A => A(3), B => B(3), Z => Y(3));
   C11 : GTECH_OR2 port map( A => A(2), B => B(2), Z => Y(2));
   C12 : GTECH_OR2 port map( A => A(1), B => B(1), Z => Y(1));
   C13 : GTECH_OR2 port map( A => A(0), B => B(0), Z => Y(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_N4_1.all;

entity NOT_GENERIC_N4 is

   port( A : in std_logic_vector (3 downto 0);  Y : out std_logic_vector (3 
         downto 0));

end NOT_GENERIC_N4;

architecture SYN_beh of NOT_GENERIC_N4 is

   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;

begin
   
   I_0 : GTECH_NOT port map( A => A(3), Z => Y(3));
   I_1 : GTECH_NOT port map( A => A(2), Z => Y(2));
   I_2 : GTECH_NOT port map( A => A(1), Z => Y(1));
   I_3 : GTECH_NOT port map( A => A(0), Z => Y(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_N4_1.all;

entity AND21_GENERIC_N4 is

   port( A, B : in std_logic_vector (3 downto 0);  Y : out std_logic_vector (3 
         downto 0));

end AND21_GENERIC_N4;

architecture SYN_beh of AND21_GENERIC_N4 is

   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   C10 : GTECH_AND2 port map( A => A(3), B => B(3), Z => Y(3));
   C11 : GTECH_AND2 port map( A => A(2), B => B(2), Z => Y(2));
   C12 : GTECH_AND2 port map( A => A(1), B => B(1), Z => Y(1));
   C13 : GTECH_AND2 port map( A => A(0), B => B(0), Z => Y(0));

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_N4_1.all;

entity MUX21_GENERIC_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_1;

architecture SYN_struct of MUX21_GENERIC_N4_1 is

   component OR21_GENERIC_N4
      port( A, B : in std_logic_vector (3 downto 0);  Y : out std_logic_vector 
            (3 downto 0));
   end component;
   
   component AND21_GENERIC_N4
      port( A, B : in std_logic_vector (3 downto 0);  Y : out std_logic_vector 
            (3 downto 0));
   end component;
   
   component NOT_GENERIC_N4
      port( A : in std_logic_vector (3 downto 0);  Y : out std_logic_vector (3 
            downto 0));
   end component;
   
   signal NotAnd1_s_3_port, NotAnd1_s_2_port, NotAnd1_s_1_port, 
      NotAnd1_s_0_port, AndOr1_s_3_port, AndOr1_s_2_port, AndOr1_s_1_port, 
      AndOr1_s_0_port, AndOr2_s_3_port, AndOr2_s_2_port, AndOr2_s_1_port, 
      AndOr2_s_0_port : std_logic;

begin
   
   And1 : AND21_GENERIC_N4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => NotAnd1_s_3_port, B(2) => 
                           NotAnd1_s_2_port, B(1) => NotAnd1_s_1_port, B(0) => 
                           NotAnd1_s_0_port, Y(3) => AndOr1_s_3_port, Y(2) => 
                           AndOr1_s_2_port, Y(1) => AndOr1_s_1_port, Y(0) => 
                           AndOr1_s_0_port);
   Not1 : NOT_GENERIC_N4 port map( A(3) => SEL, A(2) => SEL, A(1) => SEL, A(0) 
                           => SEL, Y(3) => NotAnd1_s_3_port, Y(2) => 
                           NotAnd1_s_2_port, Y(1) => NotAnd1_s_1_port, Y(0) => 
                           NotAnd1_s_0_port);
   And2 : AND21_GENERIC_N4 port map( A(3) => B(3), A(2) => B(2), A(1) => B(1), 
                           A(0) => B(0), B(3) => SEL, B(2) => SEL, B(1) => SEL,
                           B(0) => SEL, Y(3) => AndOr2_s_3_port, Y(2) => 
                           AndOr2_s_2_port, Y(1) => AndOr2_s_1_port, Y(0) => 
                           AndOr2_s_0_port);
   Or2 : OR21_GENERIC_N4 port map( A(3) => AndOr1_s_3_port, A(2) => 
                           AndOr1_s_2_port, A(1) => AndOr1_s_1_port, A(0) => 
                           AndOr1_s_0_port, B(3) => AndOr2_s_3_port, B(2) => 
                           AndOr2_s_2_port, B(1) => AndOr2_s_1_port, B(0) => 
                           AndOr2_s_0_port, Y(3) => Y(3), Y(2) => Y(2), Y(1) =>
                           Y(1), Y(0) => Y(0));

end SYN_struct;
