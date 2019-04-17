library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity CSB_generic is

  generic (
    N : integer := radixN);
  port (
    A, B : in  std_logic_vector(N-1 downto 0);
    Cin  : in  std_logic;
    S    : out std_logic_vector(N-1 downto 0));

end entity CSB_generic;

-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of CSB_generic is

  component RCA is
    generic (
      N : integer := radixN);
    port (
      A  : in  std_logic_vector(N-1 downto 0);
      B  : in  std_logic_vector(N-1 downto 0);
      Ci : in  std_logic;
      S  : out std_logic_vector(N-1 downto 0);
      Co : out std_logic);
  end component RCA;

  component MUX21_GENERIC is
    generic (
      N : integer := radixN);
    port (
      A   : in  std_logic_vector(N-1 downto 0);
      B   : in  std_logic_vector(N-1 downto 0);
      SEL : in  std_logic;
      Y   : out std_logic_vector(N-1 downto 0));
  end component MUX21_GENERIC;

  signal RCA1toMux, RCA2toMux : std_logic_vector(N-1 downto 0);

  for RCA_1   : RCA use entity work.RCA (STRUCTURAL);
  for RCA_2   : RCA use entity work.RCA (STRUCTURAL);
  for MUX21_1 : MUX21_GENERIC use entity work.MUX21_GENERIC (beh);

begin  -- architecture struct

  RCA_1 : RCA generic map (
    N => radixN)
    port map (
      A  => A,
      B  => B,
      Ci => '0',
      S  => RCA1toMux);

  RCA_2 : RCA generic map (
    N => radixN)
    port map (
      A  => A,
      B  => B,
      Ci => '1',
      S  => RCA2toMux);

  MUX21_1 : MUX21_GENERIC generic map (
    N => radixN)
    port map (
      A   => RCA1toMux,
      B   => RCA2toMux,
      SEL => Cin,
      Y   => S);

end architecture struct;


--configuration CFG_CSB_GEN_STRUCT of CSB_generic is

--  for struct
--    for RCA_1 : RCA
--      use configuration work.CFG_RCA_STRUCTURAL;
--    end for;

--    for RCA_2 : RCA
--      use configuration work.CFG_RCA_STRUCTURAL;
--    end for;

--    for MUX21_1 : MUX21_GENERIC
--      use configuration work.CFG_MUX21_GEN_BEHAVIORAL;
--    end for;
--  end for;

--  end configuration CFG_CSB_GEN_STRUCT;
