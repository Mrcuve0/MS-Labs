library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use WORK.constants.all;

entity SparseTree is
  
  generic (
    N     : integer := numBit;
    RADIX : integer := radixN);

  port (
    A, B        : in  std_logic_vector(N-1 downto 0);  -- Input operators
    Cin         : in  std_logic;
    carryVector : out std_logic_vector(N/RADIX-1 downto 0));  -- Output carry vector

end entity SparseTree;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of SparseTree is

  component PGNetBlock is
    
    port (
      a, b : in  std_logic;
      gp   : out std_logic_vector(1 downto 0));  -- g (MSB), p (LSB)

  end component PGNetBlock;

  component GeneralGenerate is
    port (
      Gk_1   : in  std_logic;
      GikPik : in  std_logic_vector(1 downto 0);
      Gij    : out std_logic);
  end component GeneralGenerate;

  component GeneralPropagateGenerate is
    port (
      Gk_1Pk_1 : in  std_logic_vector(1 downto 0);
      GikPik   : in  std_logic_vector(1 downto 0);
      GijPij   : out std_logic_vector(1 downto 0));
  end component GeneralPropagateGenerate;

  -- Signals used for the first PGNetBlock (the "anormal" one)
  signal g1p1 : std_logic_vector(1 downto 0);
  -- signal G1_0 : std_logic;

  -- Array Signal for the connections between PGNetwork and first row of PG and
  -- G blocks
  type signalVector is array (0 to rows-1) of std_logic_vector(N*2-1 downto 0);
  signal signalMatrix : signalVector;

  signal gpVector_s : std_logic_vector(1 downto 0);

begin  -- architecture struct

  PG_gen : for PGBlock in 1 to N generate

    -- Condition on the first PGNetblock that must contain a General Generate

    PG_1 : if PGBlock = 1 generate
      
      PGNetBlock_1 : PGNetBlock port map (
        a  => A(PGBlock-1),
        b  => B(PGBlock-1),
        gp => g1p1);

      GG_1 : GeneralGenerate port map (
        Gk_1   => Cin,
        GikPik => g1p1,
        Gij    => signalMatrix(0)(PGBlock-1));
    end generate;

    -- All the other PGNetBlock are generated after
    PGNetBlock_n : PGNetBlock port map (
      a  => A(PGBlock-1),
      b  => B(PGBlock-1),
      gp => gpVector_s);
  end generate;

  process (gpVector_s)
    variable i : integer := 2;
  begin
    signalMatrix(0)(3 downto 2) <= gpVector_s;
    i := i + 2;
  end process;

  

end architecture struct;
