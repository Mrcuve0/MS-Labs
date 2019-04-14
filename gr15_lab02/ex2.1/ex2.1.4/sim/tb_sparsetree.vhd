library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity tb is
end entity tb;

-------------------------------------------------------------------------------
-- Testbench Architecture
-------------------------------------------------------------------------------

architecture tb_arch of tb is

  component SparseTree is
    generic (
      N     : integer;
      RADIX : integer);
    port (
      A, B        : in  std_logic_vector(N-1 downto 0);
      Cin         : in  std_logic;
      carryVector : out std_logic_vector(numBit/radixN-1 downto 0));
  end component SparseTree;


  signal A1, B1: std_logic_vector(numBit-1 downto 0) ;
  signal Ci : std_logic;
  signal carries : std_logic_vector(numBit/radixN-1 downto 0);

  for ST_1   : SparseTree use entity work.SparseTree (struct);

begin  -- architecture tb_arch

 ST_1 : SparseTree generic map (
   N     => numBit,
   RADIX => radixN)
   port map (
   A           => A1,
   B           => B1,
   Cin         => Ci,
   carryVector => carries);
 
-- A1 <= "00000000000000000000001011010100";
-- B1 <= "00000000000000000000001001010100";
 A1 <=  X"00000000FFFFFFFF";
 B1 <=  X"00000000FFFFFFFF";
 Ci<='0';
 
end architecture tb_arch;

