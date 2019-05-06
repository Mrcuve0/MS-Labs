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

  signal call_cnt, call_cntNext : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

  type state_t is (waitState, resetState, callState, retState, spillState, fillState);
  signal currentState, nextState : state_t := waitState;

begin  -- architecture beh

  combLogic : process (reset, enable, call, ret, MMUStrobe, currentState, cansave, canrestore) is
    variable need_to_spill : integer := 0;
    variable need_to_fill  : integer := 0;
    variable call_cntVar   : integer := 0;
    variable actual_round  : integer := 0;
  begin

    case currentState is
      when waitState =>

        need_to_fill    := 0;
        need_to_spill   := 0;

        spill   <= '0';
        fill    <= '0';
        dataACK <= '0';


        if call = '1' then
          nextState <= callState;
        elsif ret = '1' and unsigned(swp) /= 0 then
          nextState <= retState;
        elsif ret = '1' and to_integer(unsigned(swp)) = 0 and to_integer(unsigned(cwp)) < F then
          nextState <= retState;
        else
          nextState <= waitState;
        end if;

--------------------------------------------------------------------------------

      when resetState =>

        call_cntNext    <= (others => '0');

        cansaveNext    <= std_logic_vector(to_unsigned(F-1, cansave'length));
        canrestoreNext <= (others => '0');
        cwp            <= (others => '0');
        swp            <= (others => '0');

        spill   <= '0';
        fill    <= '0';
        dataACK <= '0';

        if reset = '1' then
          nextState <= resetState;
        else
          nextState <= waitState;
        end if;

-------------------------------------------------------------------------------          

      when callState =>

        spill           <= '0';
        fill            <= '0';
        dataACK         <= '0';

        call_cntNext <= std_logic_vector(unsigned(call_cnt) + 1);
        -- canrestoreNext <= std_logic_vector(unsigned(canrestore) + 1);

        if to_integer(unsigned(cansave)) = 0 then  -- If the previous call
                                                   -- emptied the buffer ...
          need_to_spill := 1;           -- We must SPILL
        else                            -- There's no need to SPILL now

          need_to_spill  := 0;
          -- So let's update the statistics with this recordered CALL action
          cwp            <= call_cnt;
          cansaveNext    <= std_logic_vector(unsigned(cansave) - 1);
          canrestoreNext <= std_logic_vector(unsigned(canrestore) + 1);


        end if;


        -- STATE TRANSITIONS
        if need_to_spill = 1 then
          nextState <= spillState;
        elsif need_to_spill = 0 and call = '1' then
          nextState <= callState;
        elsif call = '0' and ret = '1' then
          nextState <= retState;
        else
          nextState <= waitState;
        end if;

-------------------------------------------------------------------------------        

      when spillState =>

        need_to_spill := 0;
        spill         <= '1';
        fill          <= '0';

        call_cntVar := to_integer(unsigned(call_cnt));
        call_cntVar := call_cntVar mod (F);  -- 0 1 2



        if MMUStrobe = '0' then
          dataACK   <= '0';
          nextState <= spillState;
        else
          if call_cntVar = 0 then
            actual_round := actual_round + 1;
          end if;
          dataACK <= '1' after 0.2 ns;  -- IRL asserted afer a certain delay
                                        -- (equal to the time needed to retrieve
                                        -- data from the bus)
          cwp     <= std_logic_vector(unsigned(call_cnt) - 1);
          swp     <= std_logic_vector(to_unsigned((call_cntVar + ((actual_round - 1) * F)), swp'length));


          nextState <= waitState;
        end if;

-------------------------------------------------------------------------------        

      when retState =>

        spill           <= '0';
        fill            <= '0';
        dataACK         <= '0';

        if unsigned(call_cnt) /= 0 then
          call_cntNext <= std_logic_vector(unsigned(call_cnt) - 1);
        end if;

        if unsigned(cansave) /= (F-1) then
          cansaveNext <= std_logic_vector(unsigned(cansave) + 1);
        end if;




        if to_integer(unsigned(canrestore)) = 1 then
          if (to_integer(unsigned(swp)) /= 0) then  -- devo fillare
            need_to_fill := 1;
          else                                      -- SWP = 0
            need_to_fill   := 0;
            cwp            <= std_logic_vector(unsigned(cwp) - 1);
            canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);
          end if;
        else
          -- Canrestore != 1
          need_to_fill := 0;
          if to_integer(unsigned(canrestore)) /= 0 then
            canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);
            cwp            <= std_logic_vector(unsigned(cwp) - 1);
          end if;

        end if;




        -- Added lastly
        --cwp <= std_logic_vector(unsigned(cwp) - 1);

        if need_to_fill = 1 then
          nextState <= fillState;
        elsif need_to_fill = 0 and ret = '1' and unsigned(call_cnt) /= 0 then
          nextState <= retState;
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

        call_cntVar := to_integer(unsigned(call_cnt));
        call_cntVar := call_cntVar mod (F);  -- 0 1 2


        if MMUStrobe = '0' then
          dataACK   <= '0';
          nextState <= fillState;
        else
          if call_cntVar = 0 then
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
        call_cnt     <= (others => '0');
      end if;

      if enable = '1' and reset = '0' then
        cansave      <= cansaveNext;
        canrestore   <= canrestoreNext;
        call_cnt     <= call_cntNext;
        currentState <= nextState;
      end if;
      
    end if;
end process;


cwpOut <= cwp;
swpOut <= swp;

end architecture beh;
