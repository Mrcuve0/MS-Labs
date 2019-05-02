library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.constants.all;


entity controlUnit_RF is
  generic (
    N            : integer := numN;
    M            : integer := numM;
    F            : integer := numF;
    windowBlocks : integer := numWindowBlocks;
    NData        : integer := numBitData;
    NAddr        : integer := integer(log2(real(numN*numwindowBlocks + numM))));
  port (
    clk    : in std_logic;
    reset  : in std_logic;
    enable : in std_logic;

    cwpOut : out std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
    swpOut : out std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);

    resetPhysicalRF : out std_logic;

    call  : in  std_logic;
    ret   : in  std_logic;
    fill  : out std_logic;
    spill : out std_logic;

    dataACK : out std_logic);
end entity controlUnit_RF;


architecture beh of controlUnit_RF is

  constant Fplus1 : integer := F+1;

  -- Stores the number of the last called subroutine
  signal cwp : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
  -- signal cwpNext : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
  -- Stores the number of the last spilled subroutine
  signal swp : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
  -- signal swpNext : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);

  -- Stores the number of available (empty) windows.
  -- If the number is  equal to zero, then no space is available
  -- and a SPILL operation is needed
  signal cansave    : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
  -- signal cansaveNext    : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
  -- Stores the number of occupied (full) windows.
  signal canrestore : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
  -- signal canrestoreNext : std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);

  type state_t is (waitState, resetState, callState, retState, spillState, fillState);
  signal currentState : state_t := waitState;

begin  -- architecture beh


  combLogic : process (clk) is
    variable need_to_spill : integer := 0;
    variable need_to_fill  : integer := 0;
    variable call_cnt      : integer := 0;

  begin

    if reset = '1' and enable = '1' then

      resetPhysicalRF <= '1';           -- Informs the RF to resets its outputs
      call_cnt        := 0;

      -- cansave = 4
      cansave    <= std_logic_vector(to_unsigned(Fplus1, cansave'length));
      canrestore <= (others => '0');
      cwp <= (others => '0');
      swp <= (others => '0');

      spill <= '0';
      fill  <= '0';

    elsif reset = '0' and enable = '1' then
      if rising_edge(clk) then
        case currentState is
          when waitState =>

            -- Outputs Handling

            resetPhysicalRF <= '0';
            need_to_fill  := 0;
            need_to_spill := 0;

            spill <= '0';
            fill  <= '0';

            -- State Handling
            if call = '1' then
              currentState <= callState;
            elsif ret = '1' then
              currentState <= retState;
            else
              currentState <= waitState;
            end if;

          when callState =>

            -- Outputs Handling
            resetPhysicalRF <= '0';
            call_cnt        := call_cnt + 1;

            cansave    <= std_logic_vector(unsigned(cansave) - to_unsigned(1, cansave'length));
            canrestore <= std_logic_vector(unsigned(canrestore) + to_unsigned(1, canrestore'length));

            cwp <= std_logic_vector(to_unsigned(call_cnt - 1, cwp'length));

            spill <= '0';
            fill  <= '0';

            if to_integer(unsigned(cansave)) = -1 then
              need_to_spill := 1;
            else
              need_to_spill := 0;
            end if;

            -- State Handling
            if call = '1' and need_to_spill = 1 then
              currentState <= spillState;
            elsif call = '1' and need_to_spill = 0 then
              currentState <= callState;
            elsif ret = '1' then
              currentState <= retState;
            else
              currentState <= waitState;
            end if;

-------------------------------------------------------------------------------        

          when spillState =>

            -- Ouptuts Handling
            need_to_spill := 0;

            cansave    <= std_logic_vector(unsigned(cansave) + to_unsigned(1, cansave'length));
            canrestore <= std_logic_vector(unsigned(canrestore) - to_unsigned(1, canrestore'length));

            swp <= std_logic_vector(to_unsigned(call_cnt mod F+1, swp'length));

            spill <= '1';
            fill  <= '0';

            -- State Handling
            if call = '1' then
              currentState <= callState;
            elsif ret = '1' then
              currentState <= retState;
            else
              currentState <= waitState;
            end if;

-------------------------------------------------------------------------------        

          when retState =>

            -- Outputs Handling
            resetPhysicalRF <= '0';
            call_cnt        := call_cnt - 1;

            cansave    <= std_logic_vector(unsigned(cansave) + to_unsigned(1, cansave'length));
            canrestore <= std_logic_vector(unsigned(canrestore) - to_unsigned(1, canrestore'length));

            cwp <= std_logic_vector(to_signed(call_cnt, cwp'length));
            cwp <= std_logic_vector(unsigned(cwp) - to_unsigned(1, cwp'length));

            spill <= '0';
            fill  <= '0';

            if to_integer(unsigned(canrestore)) = 0 then
              need_to_fill := 1;
            end if;

            -- State Handling
            if ret = '1' and need_to_fill = 1 then
              currentState <= fillState;
            elsif ret = '1' and need_to_fill = 0 then
              currentState <= retState;
            elsif call = '1' then
              currentState <=  callState;
            else
              currentState <= waitState;
            end if;

-------------------------------------------------------------------------------        

          when fillState =>

            -- Outputs Handling
            need_to_fill := 0;

            cansave    <= std_logic_vector(unsigned(cansave) - to_unsigned(1, cansave'length));
            canrestore <= std_logic_vector(unsigned(canrestore) + to_unsigned(1, canrestore'length));

            swp <= std_logic_vector(unsigned(swp) - to_unsigned(1, swp'length));

            spill <= '0';
            fill  <= '1';

            -- State Handling
            if ret = '1' then
              currentState <= retState;
            elsif call = '1' then
              currentState <= callState;
            else
              currentState <= waitState;
            end if;

          when others => currentState <= waitState;
        end case;
      end if;

    else
    -- 'Z' output qui
    end if;
  end process combLogic;

  cwpOut <= cwp;
  swpOut <= swp;


end architecture beh;
