library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use std.textio.all;
use work.constants.all;

entity tb_controlUnit_RF is
end entity tb_controlUnit_RF;

--------------------------------------------------------------------------------
-- Control Unit Testbench
--------------------------------------------------------------------------------

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
      MMUStrobe       : in  std_logic;
      dataACK         : out std_logic);
  end component controlUnit_RF;

  signal clk_s, reset_s, enable_s, resetPhysicalRF_s            : std_logic := '0';
  signal call_s, ret_s, fill_s, spill_s, MMUStrobe_s, dataACK_s : std_logic := '0';
  signal cwpOut_s, swpOut_s                                     : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
  constant period                                               : time      := 2 ns;

  
  constant fill_spill_time : time := integer(numN*(numWindowBlocks-1)) * period;

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
      MMUStrobe       => MMUStrobe_s,
      dataACK         => dataACK_s);

  clkStimuli : process
  begin
    clk_s <= not clk_s;
    wait for period/2;
  end process;

  inputStimuli : process
    variable lb : line;
  begin
    enable_s    <= '1';
    reset_s     <= '1', '0' after 7.5 ns, '1' after 11.5 ns, '0' after 13.5 ns;
    MMUStrobe_s <= '0';
    ret_s       <= '0';

    call_s <= '0', '1' after 2.5 ns, '0' after 5 ns, '1' after 9 ns, '0' after 9.5 ns,
              '1' after 15.5 ns, '0' after 20.5 ns;

    wait for 22 ns;
    -- Here time = 22 ns
    wait for fill_spill_time;
    -- Here time = 22 ns + 32 ns = 54 ns;
    write(lb, now);
    writeline(output, lb);
    ret_s <= '0';
    MMUStrobe_s <= '1', '0' after 2.5 ns;  -- This set @ time = 54 ns
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    -- Here time = 60 ns;
    wait for fill_spill_time;
    -- Here time = 92 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    -- Here time = 98 ns;
    wait for fill_spill_time;
    -- Here time = 130 ns
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    -- Here time = 98 ns;
    wait for fill_spill_time;
    -- Here time = 168 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    -- Here time = 174 ns;
    wait for fill_spill_time;
    -- Here time = 206 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 244 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 282 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 320 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 358 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 396 ns;
    write(lb, now);
    writeline(output, lb);
    --MMUStrobe_s <= '1', '0' after 2.5 ns;
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 434 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 472 ns;
    write(lb, now);
    writeline(output, lb);
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;
    MMUStrobe_s <= '1', '0' after 2.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 472 ns;
    write(lb, now);
    writeline(output, lb);
    reset_s <= '1' after 2.5 ns, '0' after 8.5 ns;

    wait;
  end process;

end architecture arch;
