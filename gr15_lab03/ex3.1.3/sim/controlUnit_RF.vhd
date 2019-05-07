library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.constants.all;


entity controlUnit_RF is
  generic (
    N              : integer := numN;
    M              : integer := numM;
    F              : integer := numF;
    windowBlocks   : integer := numWindowBlocks;
    NData          : integer := numBitData;
    NAddr_Windowed : integer := integer(ceil(log2(real(numN*numwindowBlocks + numM)))));
  port (
    clk    : in std_logic;
    reset  : in std_logic;
    enable : in std_logic;

    cwpOut : out std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
    swpOut : out std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

    call  : in  std_logic;
    ret   : in  std_logic;
    fill  : out std_logic;
    spill : out std_logic;

    MMUStrobe : in  std_logic;
    dataACK   : out std_logic);
end entity controlUnit_RF;


architecture beh of controlUnit_RF is

  constant Fplus1 : integer := F+1;

  -- Stores the number of the last called subroutine
  signal cwp : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
  -- Stores the number of the last spilled subroutine
  signal swp : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

  -- Stores the number of available (empty) windows.
  -- If the number is  equal to zero, then no space is available
  -- and a SPILL operation is needed
  signal cansave        : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
  signal cansaveNext    : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
  -- Stores the number of occupied (full) windows.
  signal canrestore     : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
  signal canrestoreNext : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

  --signal call_cnt, call_cntNext : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

  type state_t is (waitState, resetState, callState, retState, spillState, fillState);
  signal currentState, nextState : state_t := waitState;

begin  -- architecture beh

  combLogic : process (reset, enable, call, ret, MMUStrobe, currentState, cansave, canrestore) is
    variable need_to_spill : integer := 0;
    variable need_to_fill  : integer := 0;
    variable swpVar        : integer := 0;
    variable actual_round  : integer := 0;
  begin

    case currentState is

      when resetState =>

        -- OUTS
        cwp <= (others => '0');
        swp <= std_logic_vector(to_signed(-1, swp'length));


        -- REGS
        --call_cntNext   <= (others => '0');
        cansaveNext    <= std_logic_vector(to_unsigned(F-1, cansave'length));
        canrestoreNext <= (others => '0');


        spill   <= '0';
        fill    <= '0';
        dataACK <= '0';

        if reset = '1' then
          nextState <= resetState;
        else
          nextState <= waitState;
        end if;

--------------------------------------------------------------------------------

      when waitState =>

        need_to_fill  := 0;
        need_to_spill := 0;

        -- OUTS
        spill   <= '0';
        fill    <= '0';
        dataACK <= '0';

        -- REGS
        if to_integer(unsigned(cansave)) = 0 then

          if call = '1' and ret = '0' then
            nextState <= spillState;

            -- elsif call = '0' and ret = '1' and to_integer(unsigned(cwp)) /= 0 then
            --   cansaveNext    <= std_logic_vector(unsigned(cansave) + 1);
            --   canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);

            --   nextState <= retState;

          elsif call = '0' and ret = '0' then
            nextState <= waitState;

          end if;

        elsif to_integer(unsigned(cansave)) /= 0 then

          if call = '1' and ret = '0' then
            cansaveNext    <= std_logic_vector(unsigned(cansave) - 1);
            canrestoreNext <= std_logic_vector(unsigned(canrestore) + 1);

            nextState <= callState;

            -- elsif call = '0' and ret = '1' and to_integer(unsigned(cwp)) /= 0 then
            --   cansaveNext    <= std_logic_vector(unsigned(cansave) + 1);
            --   canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);

            --   nextState <= retState;

          elsif call = '0' and ret = '0' then
            nextState <= waitState;

          end if;
        end if;

        if to_integer(unsigned(canrestore)) = 0 then

          if ret = '1' and call = '0' then
            nextState <= fillState;

          elsif ret = '0' and call = '0' then
            nextState <= waitState;

          end if;

        elsif to_integer(unsigned(canrestore)) /= 0 then

          if ret = '1' and call = '0' then
            cansaveNext    <= std_logic_vector(unsigned(cansave) + 1);
            canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);

            nextState <= retState;

          elsif ret = '0' and ret = '1' then
            nextState <= waitState;

          end if;
        end if;


-------------------------------------------------------------------------------          

      when callState =>

        spill   <= '0';
        fill    <= '0';
        dataACK <= '0';

        if to_integer(unsigned(cansave)) = 0 then
          need_to_spill := 1;
        -- CWP will be upgraded only after SPILL
        elsif to_integer(unsigned(cansave)) /= 0 and call = '1' then
          need_to_spill := 0;
          --cwp           <= call_cnt;
          cwp           <= std_logic_vector(unsigned(cwp) + 1);
        end if;


        -- STATE TRANSITIONS
        if need_to_spill = 1 then
          nextState <= spillState;

        elsif need_to_spill = 0 and call = '1' then
--          call_cntNext   <= std_logic_vector(unsigned(call_cnt) + 1);
          cansaveNext    <= std_logic_vector(unsigned(cansave) - 1);
          canrestoreNext <= std_logic_vector(unsigned(canrestore) + 1);
          nextState      <= callState;

        elsif call = '0' and ret = '1' then
--          call_cntNext   <= std_logic_vector(unsigned(call_cnt) - 1);
          cansaveNext    <= std_logic_vector(unsigned(cansave) + 1);
          canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);
          nextState      <= retState;

        else
          nextState <= waitState;

        end if;

-------------------------------------------------------------------------------        

      when spillState =>

        need_to_spill := 0;
        spill         <= '1';
        fill          <= '0';

        swpVar := to_integer(unsigned(swp));
        swpVar := swpVar mod (F);       -- 0 1 2


        if MMUStrobe = '0' then  -- Response from the MMU not received...
          dataACK   <= '0';
          nextState <= spillState;

        else                            -- Response from the MMU received...



          dataACK <= '1' after 0.2 ns;  -- OK, MMUStrobe received!
          cwp     <= std_logic_vector(unsigned(cwp) + 1);

          if swp = std_logic_vector(to_signed(-1, swp'length)) then
            swpVar := to_integer(signed(swp) + 1);
          else
            swpVar := to_integer(unsigned(swp) + 1);
          end if;

          swpVar := swpVar mod F;
          if swpVar = 0 then
            actual_round := actual_round + 1;
          end if;

          swp <= std_logic_vector(to_unsigned(swpVar + ((actual_round - 1) * F), swp'length));

          --call_cntNext <= std_logic_vector(unsigned(call_cnt) - 1);
          --cansaveNext    <= std_logic_vector(unsigned(cansave) + 1);
          --canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);

          nextState <= waitState;
        end if;

-------------------------------------------------------------------------------        

      when retState =>

        spill   <= '0';
        fill    <= '0';
        dataACK <= '0';

        if to_integer(unsigned(canrestore)) = 0 then
          need_to_fill := 1;
        elsif to_integer(unsigned(cansave)) /= 0 and ret = '1' then
          need_to_fill := 0;
          cwp          <= std_logic_vector(unsigned(cwp) - 1);
        end if;


        -- STATE TRANSITIONS
        if need_to_fill = 1 then
          nextState <= fillState;

        elsif need_to_fill = 0 and ret = '1' then
          canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);
          cansaveNext    <= std_logic_vector(unsigned(cansave) + 1);
          nextState      <= retState;

        elsif call = '1' and ret = '0' then
          nextState <= callState;

        else
          nextState <= waitState;

        end if;

-------------------------------------------------------------------------------        

      when fillState =>

        need_to_fill := 0;
        spill        <= '0';
        fill         <= '1';
        dataACK      <= '0';

        swpVar := to_integer(unsigned(swp));
        swpVar := swpVar mod (F);       -- 0 1 2 3


        if MMUStrobe = '0' then         -- Response form MMU not received...
          dataACK   <= '0';
          nextState <= fillState;

        else                            -- Response from the MMU received...

          if swpVar = 0 then
            actual_round := actual_round - 1;
          end if;

          dataACK   <= '1' after 0.2 ns;
          cwp       <= std_logic_vector(unsigned(cwp) - 1);
          swp       <= std_logic_vector(unsigned(swp) - 1);
          nextState <= waitState;

        end if;

      when others => nextState <= waitState;
    end case;

  end process combLogic;


  stateReg : process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        currentState <= resetState;
        cansave      <= std_logic_vector(to_unsigned(F-1, cansave'length));
        canrestore   <= (others => '0');
      --call_cnt     <= (others => '0');
      end if;

      if enable = '1' and reset = '0' then
        cansave      <= cansaveNext;
        canrestore   <= canrestoreNext;
        --call_cnt     <= call_cntNext;
        currentState <= nextState;
      end if;

    end if;
  end process;


  cwpOut <= cwp;
  swpOut <= swp;

end architecture beh;
