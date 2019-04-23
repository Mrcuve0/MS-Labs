library ieee;
use ieee.std_logic_1164.all;

use work.constants.all;

entity encoder is
  generic (
    N : integer;
    RADIX: integer);                       -- Supposing radixN = 3
  port(
    X : in  std_logic_vector(radixN-1 downto 0);
    Z : out std_logic_vector(radixN-1 downto 0));
end encoder;


-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of encoder is
begin
  process(X)
  begin
    case X is
      when "000" => Z <= "000";         --0

      when "001" => Z <= "001";         --A
      when "010" => Z <= "001";         --A

      when "011" => Z <= "011";         --2A
      when "100" => Z <= "100";         -- -2A

      when "101" => Z <= "010";         -- -A
      when "110" => Z <= "010";         -- -A

      when "111"  => Z <= "000";        -- 0
      when others => Z <= (others => 'Z');
    end case;
  end process;
end beh;

