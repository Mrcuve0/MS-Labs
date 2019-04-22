LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

use work.constants.all;

ENTITY encoder IS
  generic (
    N: integer);            -- Supposing radixN = 3
  port(
    X: IN STD_LOGIC_VECTOR(radixN-1 DOWNTO 0);
    Z: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END encoder;



ARCHITECTURE beh OF encoder IS
BEGIN
  PROCESS(X)
  BEGIN
    CASE X IS
      WHEN "000" => Z <= "000"; --0
                    
      WHEN "001" => Z <= "001"; --A
      WHEN "010" => Z <= "001"; --A
                    
      WHEN "011" => Z <= "011"; --2A
      WHEN "100" => Z <= "100"; -- -2A
                    
      WHEN "101" => Z <= "010"; -- -A
      WHEN "110" => Z <= "010"; -- -A
                    
      WHEN "111" => Z <= "000"; -- 0
      WHEN OTHERS => Z <= (OTHERS => 'Z');
    END CASE;
  END PROCESS;
END beh;

