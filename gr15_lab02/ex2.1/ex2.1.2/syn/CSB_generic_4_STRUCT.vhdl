
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_CSB_generic_N4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_CSB_generic_N4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_CSB_generic_N4.all;

entity FA is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA;

architecture SYN_BEHAVIORAL of FA is

   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_XOR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal N0, N1, N2, N3, N4 : std_logic;

begin
   
   C8 : GTECH_XOR2 port map( A => N0, B => Ci, Z => S);
   C9 : GTECH_XOR2 port map( A => A, B => B, Z => N0);
   C10 : GTECH_OR2 port map( A => N3, B => N4, Z => Co);
   C11 : GTECH_OR2 port map( A => N1, B => N2, Z => N3);
   C12 : GTECH_AND2 port map( A => A, B => B, Z => N1);
   C13 : GTECH_AND2 port map( A => B, B => Ci, Z => N2);
   C14 : GTECH_AND2 port map( A => A, B => Ci, Z => N4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_CSB_generic_N4.all;

entity MUX21_GENERIC_N4 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4;

architecture SYN_beh of MUX21_GENERIC_N4 is

   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_BUF
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SELECT_OP
      generic( num_inputs, input_width : integer );
      port( DATA : in std_logic_vector( num_inputs* input_width - 1 downto 0 );
            CONTROL : in std_logic_vector( num_inputs - 1 downto 0 ); Z : out 
            std_logic_vector( input_width - 1 downto 0 ) );
   end component;
   
   signal N0, N1, A_3_port, A_2_port, A_1_port, A_0_port, B_3_port, B_2_port, 
      B_1_port, B_0_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port, N2 : 
      std_logic;

begin
   ( A_3_port, A_2_port, A_1_port, A_0_port ) <= A;
   ( B_3_port, B_2_port, B_1_port, B_0_port ) <= B;
   Y <= ( Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   C14_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => A_3_port, DATA(2) => A_2_port, DATA(1) => A_1_port, DATA(0)
               => A_0_port, 
         -- Connections to port 'DATA2'
         DATA(7) => B_3_port, DATA(6) => B_2_port, DATA(5) => B_1_port, DATA(4)
               => B_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(3) => Y_3_port, Z(2) => Y_2_port, Z(1) => Y_1_port, Z(0) => Y_0_port
               );
   B_0 : GTECH_BUF port map( A => N2, Z => N0);
   B_1 : GTECH_BUF port map( A => SEL, Z => N1);
   I_0 : GTECH_NOT port map( A => SEL, Z => N2);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_CSB_generic_N4.all;

entity RCA_N4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4;

architecture SYN_STRUCTURAL of RCA_N4 is

   component FA
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), Co 
                           => CTMP_2_port);
   FAI_3 : FA port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), Co 
                           => CTMP_3_port);
   FAI_4 : FA port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), Co 
                           => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_CSB_generic_N4.all;

entity CSB_generic_N4 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end CSB_generic_N4;

architecture SYN_struct of CSB_generic_N4 is

   component MUX21_GENERIC_N4
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA1toMux_3_port, RCA1toMux_2_port, 
      RCA1toMux_1_port, RCA1toMux_0_port, RCA2toMux_3_port, RCA2toMux_2_port, 
      RCA2toMux_1_port, RCA2toMux_0_port, n_1000, n_1001 : std_logic;

begin
   
   RCA_1 : RCA_N4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA1toMux_3_port, S(2) => RCA1toMux_2_port, S(1) => 
                           RCA1toMux_1_port, S(0) => RCA1toMux_0_port, Co => 
                           n_1000);
   RCA_2 : RCA_N4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA2toMux_3_port, S(2) => RCA2toMux_2_port, S(1) => 
                           RCA2toMux_1_port, S(0) => RCA2toMux_0_port, Co => 
                           n_1001);
   MUX21_1 : MUX21_GENERIC_N4 port map( A(3) => RCA1toMux_3_port, A(2) => 
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
entity SELECT_OP is
   generic ( num_inputs, input_width : integer );
   port(
      DATA : in std_logic_vector( num_inputs  * input_width - 1 downto 0 );
      CONTROL : in std_logic_vector( num_inputs - 1 downto 0 );
      Z : out std_logic_vector( input_width - 1 downto 0 )
   );
end SELECT_OP;

architecture RTL of SELECT_OP is
begin

   process ( DATA, CONTROL )
      variable index, high, low : integer;
   begin
   
      --  Initialize variables
      index := 0;
      
      -- Loop over the values of the control inputs
      for_loop : for i in CONTROL'range loop
      
         if ( CONTROL(i) = '1' ) then
         
            index := i;
            exit for_loop;
            
         end if;
         
      end loop;
      
      -- Store the corresponding data lines into the output
      low := input_width * index;
      high := low + input_width - 1;
      Z <= DATA( high downto low );
   
   end process;
   
end RTL;
