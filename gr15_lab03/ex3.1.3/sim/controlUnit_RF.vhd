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

    resetPhysicalRF : out std_logic;

    call  : in  std_logic;
    ret   : in std_logic;
    fill  : out std_logic;
    spill : out std_logic;

    dataACK : out std_logic);
end entity controlUnit_RF;


architecture beh of controlUnit_RF is

  -- Stores the number of the last called subroutine
  signal CWP : std_logic_vector(integer(log2(real(windowRounds)))-1 downto 0);
  -- Stores the number of the last spilled subroutine
  signal SWP : std_logic_vector(integer(log2(real(windowRounds)))-1 downto 0);


  -- Stores the number of available (empty) windows.
  -- If the number is  equal to zero, then no space is available
  -- and a SPILL operation is needed
  signal cansave : std_logic_vector(integer(log2(real(F)))-1 downto 0);

  -- Stores the number of occupied (full) windows.
  signal canrestore : std_logic_vector(integer(log2(real(F)))-1 downto 0);

  type state_t is (resetState, waitState, callState, retState, spillState, fillState);
  signal currentState, nextState : state_t := waitState;

begin  -- architecture beh

  combLogic : process (currentState) is

    variable need_to_spill : integer := 0;
    variable need_to_fill  : integer := 0;
    variable call_cnt      : integer := 0;

  begin
    case currentState is

      when resetState =>

        -- Outputs Handling
        resetPhysicalRF <= '1';         -- Informs the RF to resets its outputs
        cansave         <= std_logic_vector(to_unsigned(F, cansave'length));  -- cansave
                                        -- = 3
        canrestore      <= (others => '0');
        cwp             <= (others => '0');
        swp             <= (others => '0');

        need_to_fill  := 0;
        need_to_spill := 0;
        call_cnt := 0;

        -- State Handling
        if reset = '1' then
          nextState <= resetState;
        else
          nextState <= waitState;
        end if;

      when waitState =>

        -- Outputs Handling
        -- Insert here 'Z' output, if needed
        resetPhysicalRF <= '0';         -- Stop resetting the outputs

        -- State Handling
        if reset = '1' then
          nextState <= resetState;
        elsif call = '1' then
          nextState <= callState;
        elsif ret = '1' then
          nextState <= retState;
        else
          nextState <= waitState;
        end if;


      when callState =>

        -- Outputs Handling
        cansave    <= std_logic_vector(unsigned(cansave) - to_unsigned(1, cansave'length));
        canrestore <= std_logic_vector(unsigned(canrestore) + to_unsigned(1, canrestore'length));
        call_cnt := call_cnt + 1;
        cwp <= std_logic_vector(to_unsigned(call_cnt - 1, cwp'length));

        if to_integer(signed(cansave)) = -1 then
          need_to_spill := 1;
        else
          need_to_spill := 0;
        end if;


        -- State Handling
        if reset = '1' then
          nextState <= resetState;
        elsif need_to_spill = 1 then
          nextState <= spillState;
        elsif call = '1' and need_to_spill = 0 then
          nextState <= callState;
        else
          nextState <= waitState;
        end if;

      when spillState =>

        -- Ouptuts Handling
        need_to_spill := 0;
        
        cansave    <= std_logic_vector(unsigned(cansave) + to_unsigned(1, cansave'length));
        canrestore <= std_logic_vector(unsigned(canrestore) - to_unsigned(1, canrestore'length));
        swp <= std_logic_vector(to_unsigned(call_cnt mod F+1, swp'length));

        -- State Handling
        if reset = '1' then
          nextState <= resetState;
        elsif call = '1' then
          nextState <= callState;
        else
          nextState <= waitState;
        end if;


      when retState =>

        -- Outputs Handling
        cansave    <= std_logic_vector(unsigned(cansave) + to_unsigned(1, cansave'length));
        canrestore <= std_logic_vector(unsigned(canrestore) - to_unsigned(1, canrestore'length));
        call_cnt := call_cnt - 1;
        cwp <= std_logic_vector(to_unsigned(call_cnt - 1, cwp'length));

        if to_integer(unsigned(canrestore)) = 0 then
          need_to_fill := 1;
        end if;

        
        -- State Handling
        if reset = '1' then
          nextState <= resetState;
        elsif need_to_fill = 1 then
          nextState <= fillState;
        elsif ret = '1' and need_to_fill = 0 then
          nextState <= retState;
        else
          nextState <= waitState;
        end if;


      when fillState =>

        -- Outputs Handling
        need_to_fill := 0;

        cansave    <= std_logic_vector(unsigned(cansave) - to_unsigned(1, cansave'length));
        canrestore <= std_logic_vector(unsigned(canrestore) + to_unsigned(1, canrestore'length));
        swp <= std_logic_vector(unsigned(swp) - to_unsigned(1, swp'length));

        -- State Handling
        if reset = '1' then
          nextState <= resetState;
        elsif ret = '1' then
          nextState <= retState;
        else
          nextState <= waitState;
        end if;

      when others => nextState <= waitState;
    end case;
  end process combLogic;

  stateReg : process(clk)
  begin
    if rising_edge(clk) then
      currentState <= nextState;
    end if;
  end process stateReg;


end architecture beh;
