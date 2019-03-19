
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity RCA is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA;

architecture SYN_BEHAVIORAL of RCA is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal add_1_root_add_52_2_carry_1_port, add_1_root_add_52_2_carry_2_port, 
      add_1_root_add_52_2_carry_3_port : std_logic;

begin
   
   add_1_root_add_52_2_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, 
                           CO => add_1_root_add_52_2_carry_1_port, S => S(0));
   add_1_root_add_52_2_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => 
                           add_1_root_add_52_2_carry_1_port, CO => 
                           add_1_root_add_52_2_carry_2_port, S => S(1));
   add_1_root_add_52_2_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => 
                           add_1_root_add_52_2_carry_2_port, CO => 
                           add_1_root_add_52_2_carry_3_port, S => S(2));
   add_1_root_add_52_2_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => 
                           add_1_root_add_52_2_carry_3_port, CO => Co, S => 
                           S(3));

end SYN_BEHAVIORAL;
