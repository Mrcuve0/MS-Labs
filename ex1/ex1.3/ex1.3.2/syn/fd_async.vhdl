
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD.all;

entity FD is

   port( D : in std_logic_vector (3 downto 0);  CK, RESET : in std_logic;  Q : 
         out std_logic_vector (3 downto 0));

end FD;

architecture SYN_PLUTO of FD is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n_1000, n_1001, n_1002, n_1003 : std_logic;

begin
   
   Q_reg_3_inst : DFFR_X1 port map( D => D(3), CK => CK, RN => n1, Q => Q(3), 
                           QN => n_1000);
   Q_reg_2_inst : DFFR_X1 port map( D => D(2), CK => CK, RN => n1, Q => Q(2), 
                           QN => n_1001);
   Q_reg_1_inst : DFFR_X1 port map( D => D(1), CK => CK, RN => n1, Q => Q(1), 
                           QN => n_1002);
   Q_reg_0_inst : DFFR_X1 port map( D => D(0), CK => CK, RN => n1, Q => Q(0), 
                           QN => n_1003);
   U4 : INV_X1 port map( A => RESET, ZN => n1);

end SYN_PLUTO;
