library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.constants.all;

entity tb_controlUnit_RF is
end entity tb_controlUnit_RF;


architecture arch of tb_controlUnit_RF is

  component controlUnit_RF is
    generic (
      N            : integer;
      M            : integer;
      F            : integer;
      windowBlocks : integer;
      NData        : integer;
      NAddr        : integer);
    port (
      clk             : in  std_logic;
      reset           : in  std_logic;
      enable          : in  std_logic;
      resetPhysicalRF : out std_logic;
      cwpOut          : out std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
      swpOut          : out std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
      call            : in  std_logic;
      ret             : in  std_logic;
      fill            : out std_logic;
      spill           : out std_logic;
      dataACK         : out std_logic);
  end component controlUnit_RF;

  signal clk_s, reset_s, enable_s, resetPhysicalRF_s, call_s, ret_s, fill_s, spill_s, dataACK_s : std_logic := '0';
  signal cwpOut_s, swpOut_s                                                                     : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
  constant period                                                                               : time      := 2 ns;

begin  -- architecture tb_arch

  DUT : controlUnit_RF generic map (
    N            => numN,
    M            => numM,
    F            => numF,
    windowBlocks => numWindowBlocks,
    NData        => numBitData,
    NAddr        => integer(log2(real(numN*numwindowBlocks + numM))))
    port map (
      clk             => clk_s,
      reset           => reset_s,
      enable          => enable_s,
      resetPhysicalRF => resetPhysicalRF_s,
      cwpOut          => cwpOut_s,
      swpOut          => swpOut_s,
      call            => call_s,
      ret             => ret_s,
      fill            => fill_s,
      spill           => spill_s,
      dataACK         => dataACK_s);

  clkStimuli : process
  begin
    clk_s <= not clk_s;
    wait for period/2;
  end process;

  inputStimuli : process
  begin
    reset_s <= '1', '0' after 8 ns, '1' after 12 ns, '0' after 14 ns;
    call_s  <= '0', '1' after 2.5 ns, '0' after 5 ns, '1' after 9 ns, '0' after 9.5 ns, '1' after 15 ns, '0' after 24 ns, '1' after 32 ns;
    ret_s   <= '0', '1' after 2.5 ns, '0' after 5 ns, '1' after 24 ns, '0' after 32 ns;
    wait;
  end process;

end architecture arch;
