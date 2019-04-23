library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use WORK.constants.all;

--------------------------------------------------------------------------------
-- Definition of the overall structure composing the Booth's Multiplier (Top Level Entity)
--
-- The Multiplier accepts 2 operands on "N" bits, but internally it translates both the 
-- operands on "2N" bits like the final result. Every ïnternal "operation" is completed on 2N bits.
-- The operands can be both positive or negative and the result will be correct in any case.
--
-- This structure instantiates and interconnects "rows/stages", which are of 2 different types:
-- --> booth_mul_row_special
-- --> booth_mul_row
--
-- The former is instantiated only once and only for the first row
-- (since it doesn't contain an adder).
-- The latter is instantiated for all the other "rows" as it contains an adder in it.
--
-- Each row "passes" 2 values to the next row. The interconnections are made using 
-- the "sigMatrix" matrix of array of std_logic_vectors.
-- Each row of the matrix has enaough space to accomodate 2 signals on 2*N bits.
--------------------------------------------------------------------------------

entity Booth is
  generic (
    N     : integer := numBit;
    RADIX : integer := radixN);
  port (
    A : in  std_logic_vector(N-1 downto 0);     -- First operand (on N bits)
    B : in  std_logic_vector(N-1 downto 0);     -- Second operand (on N bits)
    P : out std_logic_vector(2*N-1 downto 0));  -- Result (on 2N bits)
end entity Booth;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture booth_struct of Booth is

  component booth_mul_row_special is            -- First "special" stage of the multiplier
    generic (
      N     : integer;
      RADIX : integer);
    port (
      A         : in  std_logic_vector(N-1 downto 0);
      encoderIn : in  std_logic_vector(RADIX-1 downto 0);
      nextA     : out std_logic_vector(N-1 downto 0);
      nextSum   : out std_logic_vector(N-1 downto 0));
  end component booth_mul_row_special;

  component booth_mul_row is                    -- Other stages of the multiplier
    generic (
      N     : integer;
      RADIX : integer);
    port (
      prevA     : in  std_logic_vector(N-1 downto 0);
      prevSum   : in  std_logic_vector(N-1 downto 0);
      encoderIn : in  std_logic_vector(RADIX-1 downto 0);
      nextA     : out std_logic_vector(N-1 downto 0);
      nextSum   : out std_logic_vector(N-1 downto 0));
  end component booth_mul_row;

  -- Interconnections Layers
  type matrix_t is array (0 to N/2-1) of std_logic_vector(4*N-1 downto 0);
  signal sigMatrix : matrix_t;

  -- Special signal connected to the first encoder (contained into the "booth_mul_row_special" entity)
  signal firstEnconderVector : std_logic_vector(RADIX-1  downto 0);

  -- Signal used to handle the operand A expansion
  signal firstInput : std_logic_vector(2*N-1 downto 0);

begin  -- architecture booth_struct

  firstEnconderVector <= B(1 downto 0) & '0';

  -- Expansion of the "A" operand, the sign is handled automatically
  firstInput <= std_logic_vector(resize(signed(A), firstInput'length));

  bool_generate : for i in 0 to N/2-1 generate          -- For generates that instantiates 
                                                        -- the correct number of stages
    first_level : if i = 0 generate
      booth_mul_row_special_1 : booth_mul_row_special generic map (   -- First row/stage, the "special" one
        N     => 2*N,
        RADIX => RADIX)
        port map (
          A         => firstInput,
          encoderIn => firstEnconderVector,
          nextA     => sigMatrix(i)(4*N-1 downto 2*N),
          nextSum   => sigMatrix(i)(2*N-1 downto 0));
    end generate first_level;

    other_levels : if i > 0 generate
      booth_mul_row_1 : booth_mul_row generic map (                   -- All the other rows/stages
        N     => 2*N,
        RADIX => RADIX)
        port map (
          prevA     => sigMatrix(i-1)(4*N-1 downto 2*N),
          prevSum   => sigMatrix(i-1)(2*N-1 downto 0),
          encoderIn => B(i*2+1 downto i*2-1),
          nextA     => sigMatrix(i)(4*N-1 downto 2*N),
          nextSum   => sigMatrix(i)(2*N-1 downto 0));
    end generate other_levels;
  end generate bool_generate;

  P <= sigMatrix(N/2-1)(2*N-1 downto 0);            -- Final resukt extraction from the sigMatrix group of signals

end architecture booth_struct;
