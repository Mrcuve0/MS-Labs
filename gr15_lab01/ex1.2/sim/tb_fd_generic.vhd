library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity TBFD is
end TBFD;

architecture TEST of TBFD is
  constant NBIT  : integer   := 16;
  signal CK      : std_logic := '0';
  signal RESET   : std_logic := '0';
  signal D       : std_logic_vector(NBIT-1 downto 0);
  signal QSYNCH  : std_logic_vector(NBIT-1 downto 0);
  signal QASYNCH : std_logic_vector(NBIT-1 downto 0);

  component FD
    generic (N : integer := numbit);
    port (CK    : in  std_logic;
          RESET : in  std_logic;
          D     : in  std_logic_vector(NBIT-1 downto 0);
          Q     : out std_logic_vector(NBIT-1 downto 0));
  end component;

begin
  
  UFD1 : FD
    generic map (NBIT)
    port map (CK, RESET, D, QSYNCH);    -- sinc

  UFD2 : FD
    generic map (NBIT)
    port map (CK, RESET, D, QASYNCH);   -- asinc
  

  RESET <= '0', '1' after 0.6 ns, '0' after 1.1 ns, '1' after 2.2 ns, '0' after 3.2 ns;


  D <= "0000000000000000",
       "1111111111111111" after 0.4 ns,
       "0000000000000000" after 1.1 ns,
       "1111111111111111" after 1.4 ns,
       "0000000000000000" after 1.7 ns,
       "1111111111111111" after 1.9 ns;

  
  PCLOCK : process(CK)
  begin
    CK <= not(CK) after 0.5 ns;
  end process;

end TEST;

configuration FDTEST of TBFD is
  for TEST
    for UFD1 : FD
      use configuration WORK.CFG_FD_SYNCARCH;   -- sincrono
    end for;
    for UFD2 : FD
      use configuration WORK.CFG_FD_ASYNCARCH;  -- asincrono
    end for;
  end for;
end FDTEST;

