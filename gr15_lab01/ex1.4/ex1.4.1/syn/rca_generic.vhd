library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity RCA is
  generic (--DRCAS : time    := 0 ns;
           --DRCAC : time    := 0 ns;
           N     : integer := NumBit);
  port (A  : in  std_logic_vector(N-1 downto 0);
        B  : in  std_logic_vector(N-1 downto 0);
        Ci : in  std_logic;
        S  : out std_logic_vector(N-1 downto 0);
        Co : out std_logic);
end RCA;

architecture STRUCTURAL of RCA is

  signal STMP : std_logic_vector(N-1 downto 0);
  signal CTMP : std_logic_vector(N downto 0);

  component FA
    --generic (DFAS : time := 0 ns;
    --         DFAC : time := 0 ns);
    port (A  : in  std_logic;
          B  : in  std_logic;
          Ci : in  std_logic;
          S  : out std_logic;
          Co : out std_logic);
  end component;

begin

  CTMP(0) <= Ci;
  S       <= STMP;
  Co      <= CTMP(6);

  ADDER1 : for I in 1 to N generate
    FAI : FA
      --generic map (DFAS => DRCAS, DFAC => DRCAC)
      port map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I));
  end generate;

end STRUCTURAL;


architecture BEHAVIORAL of RCA is

  signal S7 : std_logic_vector(N downto 0);
begin
  
  S7 <= ('0'&A) + ('0'&B) + Ci; --after DRCAS;
  Co <= S7(N);                  --after DRCAC;
  S  <= S7(N-1 downto 0);
  
end BEHAVIORAL;

configuration CFG_RCA_STRUCTURAL of RCA is
  for STRUCTURAL
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCA_STRUCTURAL;

configuration CFG_RCA_BEHAVIORAL of RCA is
  for BEHAVIORAL
  end for;
end CFG_RCA_BEHAVIORAL;
