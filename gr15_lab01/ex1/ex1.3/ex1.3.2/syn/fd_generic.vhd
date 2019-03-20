library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity FD is
  generic
    (N : integer := numbit
     );
  port (
    D     : in  std_logic_vector(N-1 downto 0);
    CK    : in  std_logic;
    RESET : in  std_logic;
    Q     : out std_logic_vector(N-1 downto 0));
end entity;


architecture SYNCARCH of FD is          -- flip flop D with syncronous reset

begin
  PSYNCH : process(CK, RESET)
  begin
    if CK'event and CK = '1' then       -- positive edge triggered:
      if RESET = '1' then               -- active high reset 
        Q <= (others => '0');
      else
        Q <= D;                         -- input is written on output
      end if;
    end if;
  end process;

end SYNCARCH;

architecture ASYNCARCH of FD is         -- flip flop D with asyncronous reset

begin
  
  PASYNCH : process(CK, RESET)
  begin
    if RESET = '1' then
      Q <= (others => '0');
    elsif CK'event and CK = '1' then    -- positive edge triggered:
      Q <= D;
    end if;
  end process;

end ASYNCARCH;


configuration CFG_FD_SYNCARCH of FD is
  for SYNCARCH
  end for;
end CFG_FD_SYNCARCH;


configuration CFG_FD_ASYNCARCH of FD is
  for ASYNCARCH
  end for;
end CFG_FD_ASYNCARCH;


