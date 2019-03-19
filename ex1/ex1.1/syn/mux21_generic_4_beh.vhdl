
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_N4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_N4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_N4.all;

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
