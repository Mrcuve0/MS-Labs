
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

signal A_3_port, A_2_port, A_1_port, A_0_port, B_3_port, B_2_port, B_1_port, 
   B_0_port, Ci_port, S_3_port, S_2_port, S_1_port, S_0_port, Co_port, N0, N1, 
   N2, N3, N4 : std_logic;

begin
   ( A_3_port, A_2_port, A_1_port, A_0_port ) <= A;
   ( B_3_port, B_2_port, B_1_port, B_0_port ) <= B;
   Ci_port <= Ci;
   S <= ( S_3_port, S_2_port, S_1_port, S_0_port );
   Co <= Co_port;
   
   add_52 : process ( A_3_port, A_2_port, A_1_port, A_0_port, B_3_port, 
         B_2_port, B_1_port, B_0_port )
      variable A : UNSIGNED( 4 downto 0 );
      variable B : UNSIGNED( 4 downto 0 );
      variable Z : UNSIGNED( 4 downto 0 );
   begin
      A := ( '0', A_3_port, A_2_port, A_1_port, A_0_port );
      B := ( '0', B_3_port, B_2_port, B_1_port, B_0_port );
      Z := A + B;
      ( N4, N3, N2, N1, N0 ) <= Z;
   end process;
   
   add_52_2 : process ( N4, N3, N2, N1, N0, Ci_port )
      variable A : UNSIGNED( 4 downto 0 );
      variable B : UNSIGNED( 4 downto 0 );
      variable Z : UNSIGNED( 4 downto 0 );
   begin
      A := ( N4, N3, N2, N1, N0 );
      B := ( '0', '0', '0', '0', Ci_port );
      Z := A + B;
      ( Co_port, S_3_port, S_2_port, S_1_port, S_0_port ) <= Z;
   end process;
   

end SYN_BEHAVIORAL;
