library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use WORK.constants.all;

--------------------------------------------------------------------------------
-- Definition of the MUX component.
-- The selection signals come from the Booth's encoder.
--------------------------------------------------------------------------------

entity MUX_GENERIC is
  generic (N : integer;       --numBit*2
           RADIX : integer);      -- 3 bit
  port (plusA   : in  std_logic_vector(N-1 downto 0);
        minusA  : in  std_logic_vector(N-1 downto 0);
        plus2A  : in  std_logic_vector(N-1 downto 0);
        minus2A : in  std_logic_vector(N-1 downto 0);
        SEL     : in  std_logic_vector(radixN-1 downto 0);
        Y       : out std_logic_vector(N-1 downto 0));
end entity;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of MUX_GENERIC is

begin  -- architecture beh

  process (plusA, minusA, plus2A, minus2A, SEL) is
  begin  -- process
    case SEL is
      when "000"  => Y <= (others => '0');
                    
      when "001"  => Y <= plusA;
                     
      when "011"  => Y <= plus2A;
      when "100"  => Y <= minus2A;
                     
      when "010"  => Y <= minusA;
                     
      when others => Y <= (others => 'Z');
    end case;
  end process;

end architecture beh;

