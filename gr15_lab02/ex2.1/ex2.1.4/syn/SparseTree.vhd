library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

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

  constant rows : integer := integer(log2(real(numBit)));

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

  component PGNetwork is
    generic (
      N : integer);
    port (
      A         : in  std_logic_vector(N-1 downto 0);
      B         : in  std_logic_vector(N-1 downto 0);
      Cin       : in  std_logic;
      gpSignals : out std_logic_vector(2*N-1 downto 0));
  end component PGNetwork;

  component ST_row1And2 is
    generic (
      N : integer);
    port (
      input  : in  std_logic_vector(2*N-1 downto 0);
      output : out std_logic_vector(2*N-1 downto 0));
  end component ST_row1And2;

  type signalVector is array (0 to rows-1) of std_logic_vector(2*N-1 downto 0);
  signal sigMatrix : signalVector;

begin  -- architecture struct

  PGNetwork_1 : PGNetwork generic map (
    N => N) port map (
      A         => A,
      B         => B,
      Cin       => Cin,
      gpSignals => sigMatrix(0));

  ST_row1And2_1 : ST_row1And2 generic map (
    N => N) port map (
      input  => sigMatrix(0),
      output => sigMatrix(1));

  -- i = 0, 1, 2
  -- j = 0, 1, 2, 3
  -- k = 0, 1, 2, 3

  rowGen : for i in 0 to (rows-2)-1 generate  -- genera il numero di righe necessario
    blockGen : for j in 0 to 2**(rows-3-i)-1 generate  -- genera i sottogruppi
      
      generateCondition : if j = 0 generate  -- Primo sottogruppo di ogni riga
        groupingGenerate : for k in 0 to (2**i)-1 generate  -- Blocchi Generate da
                                        -- generare nel sottogruppo
          G_1 : GeneralGenerate port map (
            Gk_1   => sigMatrix(1+i)(7),
            GikPik => sigMatrix(1+i)((8*(2**i)) + 7 + (k*8) downto (8*(2**i)) + 6 + (k*8)),  --gli indici si spostano per ogni sottogruppo di 8* le potenze di
                                        --2,-+8 per ogni blocco
            Gij    => sigMatrix(2+i)((k+1)*7));
        end generate groupingGenerate;
      end generate generateCondition;

      propagateGenerateCondition : if j > 0 generate
        
        specialPGrow : if i = 0 generate
          groupingPropagateGenerate : for k in 0 to (2**i)-1 generate
            PG_x : GeneralPropagateGenerate port map (
              Gk_1Pk_1 => sigMatrix(1+i)(j*16 + 7 downto j*16 + 6),
              GikPik   => sigMatrix(1+i)(j*16 + 15 downto j*16 + 14),
              GijPij   => sigMatrix(2+i)(j*16 + 15 downto j*16 + 14));
          end generate groupingPropagateGenerate;
        end generate specialPGrow;

        otherPGrows : if i > 0 generate
          boh : for k in 0 to (2**i)-1 generate
            PG_1 : GeneralPropagateGenerate port map (
              -- non dipende da k
              Gk_1Pk_1 => sigMatrix(1+i)( ((8*2**i) - 1 + ((j*2**(i+1))*8)) downto (((8*2**i) - 1 + ((j*2**(i+1))*8)) - 1) ),
              -- dipende da k
              GikPik   => sigMatrix(1+i)( (((1 + 2**i)*8 - 1 + ((j*(2**(i+1)))*8)) + 8*k) downto (((1 + 2**i)*8 - 1 + ((j*(2**(i+1)))*8)) + 8*k) - 1 ),
              -- dipende da k
              GijPij   => sigMatrix(2+i)( (((1 + 2**i)*8 - 1 + ((j*(2**(i+1)))*8)) + 8*k) downto (((1 + 2**i)*8 - 1 + ((j*(2**(i+1)))*8)) + 8*k) - 1 ));
          end generate boh;
        end generate otherPGrows;
        
      end generate propagateGenerateCondition;
      
    end generate blockGen;
  end generate rowGen;

end architecture struct;
