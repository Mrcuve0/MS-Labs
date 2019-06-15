library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use WORK.constants.all;

entity registers is
  
  generic (
    N : integer := numBit);

  port (
    Clk   : in std_logic;
    Rst   : in std_logic;
    A     : in  std_logic_vector(N-1 downto 0);
    B     : in  std_logic_vector(N-1 downto 0);
    A_out : out std_logic_vector(N-1 downto 0);
    B_out : out std_logic_vector(N-1 downto 0));

end entity registers;

architecture reg_beh of registers is

begin  -- architecture reg_beh

  process(Clk)
    begin
      if Clk = '1' and Clk'EVENT then
        if Rst= '1' then
          A_out <= (others => '0');
          B_out <= (others => '0');
        else
          A_out <= A;
          B_out <= B;
        end if;
      end if;
    end process;

end architecture reg_beh;
