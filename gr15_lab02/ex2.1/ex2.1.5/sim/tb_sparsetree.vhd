library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity tb is

end entity tb;


architecture tb_arch of tb is

  component LFSR16 is
    port (
      CLK, RESET, LD, EN : in  std_logic;
      DIN                : in  std_logic_vector(15 downto 0);
      PRN                : out std_logic_vector(15 downto 0);
      ZERO_D             : out std_logic);
  end component LFSR16;

  component SparseTree is
    generic (
      N     : integer;
      RADIX : integer);
    port (
      A, B        : in  std_logic_vector(N-1 downto 0);
      Cin         : in  std_logic;
      carryVector : out std_logic_vector(N/RADIX-1 downto 0));
  end component SparseTree;

  constant Period              : time      := 1 ns;  -- Clock period (1 GHz)
  signal CLK                   : std_logic := '0';
  signal RESET, LD, EN, ZERO_D : std_logic;
  signal DIN, PRN              : std_logic_vector(15 downto 0);

  signal A_s, B_s       : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal carry_vector_s : std_logic_vector(numBit/radixN-1 downto 0) := (others => '0');
  signal Cin_s          : std_logic;

begin  -- architecture tb_arch

  ST : SparseTree generic map (
    N     => numBit,
    RADIX => radixN)
    port map (
      A           => A_s,
      B           => B_s,
      Cin         => Cin_s,
      carryVector => carry_vector_s);

  -- Instanciate the Unit Under Test (UUT)
  UUT : LFSR16 port map (CLK => CLK, RESET => RESET, LD => LD, EN => EN,
                         DIN => DIN, PRN => PRN, ZERO_D => ZERO_D);

  Cin_s <= '1';

   A_s(0) <= PRN(0);
   A_s(5) <= PRN(2);
   A_s(3) <= PRN(4);
   A_s(1) <= PRN(6);
   A_s(4) <= PRN(8);
   A_s(2) <= PRN(10);
   A_s(6) <= PRN(12);
   A_s(7) <= PRN(14);

   B_s(0) <= PRN(15);
   B_s(5) <= PRN(13);
   B_s(3) <= PRN(11);
   B_s(1) <= PRN(9);
   B_s(4) <= PRN(7);
   B_s(2) <= PRN(5);
   B_s(6) <= PRN(3);
   B_s(7) <= PRN(1);

  CLK   <= not CLK  after Period/2;
  RESET <= '1', '0' after Period;

 -- inputs: process is
 -- begin

  --  wait for 10 ns;
  --  A_s <= X"0000FFFF";
  -- B_s <= X"000000FF";
  --  Cin_s <= '0';
  --  wait for 10 ns;
  --  A_s <= X"FFFFFFFF";
  --  B_s <= X"FFFFFFFF";
  --  wait for 10 ns;
  --  A_s <= X"FFFF0000";
  --  B_s <= X"0001FFFF";

  --  wait;
  -- end process inputs;


  STIMULUS1 : process
  begin
    DIN <= "0000000000000001";
    EN  <= '1';
    LD  <= '1';
    wait for 2 * PERIOD;
    LD  <= '0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;
  
end architecture tb_arch;

