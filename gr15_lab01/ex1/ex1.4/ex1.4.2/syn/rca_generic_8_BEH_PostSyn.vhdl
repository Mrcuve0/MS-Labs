
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA_N8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA_N8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA_N8.all;

entity RCA_N8_DW01_add_0 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end RCA_N8_DW01_add_0;

architecture SYN_rpl of RCA_N8_DW01_add_0 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, carry_1_port : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           SUM(8), S => SUM(7));
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

use work.CONV_PACK_RCA_N8.all;

entity RCA_N8 is

   port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (7 downto 0);  Co : out std_logic);

end RCA_N8;

architecture SYN_BEHAVIORAL of RCA_N8 is

   component RCA_N8_DW01_add_0
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1003 : std_logic;

begin
   
   n1 <= '0';
   add_1_root_add_52_2 : RCA_N8_DW01_add_0 port map( A(8) => n1, A(7) => A(7), 
                           A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3) => 
                           A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), B(8)
                           => n1, B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => Ci, SUM(8) => Co, SUM(7) 
                           => S(7), SUM(6) => S(6), SUM(5) => S(5), SUM(4) => 
                           S(4), SUM(3) => S(3), SUM(2) => S(2), SUM(1) => S(1)
                           , SUM(0) => S(0), CO => n_1003);

end SYN_BEHAVIORAL;
