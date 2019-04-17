library ieee;
use ieee.std_logic_1164.all;

use work.constants.all;

entity tb_pg is

end entity tb_pg;

architecture tb_pg of tb_pg is

  component GeneralPropagateGenerate is
    port (
      Gk_1Pk_1 : in  std_logic_vector(1 downto 0);
      GikPik   : in  std_logic_vector(1 downto 0);
      GijPij   : out std_logic_vector(1 downto 0));
  
  end component GeneralPropagateGenerate;

  signal A,B,C : std_logic_vector(1 downto 0);
begin  -- architecture tb_pg

  PG : GeneralPropagateGenerate port map (
    Gk_1Pk_1 => A,
    GikPik   => B,
    GijPij   => C);

  A <= "01";
  B <= "10";
  A <= "11" after 10 ns;
  B <= "11" after 10 ns;
 
  

end architecture tb_pg;
