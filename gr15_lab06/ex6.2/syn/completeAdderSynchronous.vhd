library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.constants.all;  

entity completeAdderSynchronous is

    generic (
        N: integer := numBit;
        RADIX : INTEGER := radixN);

    port (
        A_tle    : in  std_logic_vector(N-1 downto 0);          -- Input operand
        B_tle    : in  std_logic_vector(N-1 downto 0);          -- Input operand
        Cin_tle : in  std_logic;                               -- CarryIn (from the external world)
        Cout_tle : out std_logic;                               -- CarryOut (to the external world)
        Sum_tle  : out std_logic_vector(N-1 downto 0);          -- Result

        Clk  : in  std_logic;
        rst  : in  std_logic);

end entity completeAdderSynchronous;

architecture beh of completeAdderSynchronous is

component completeAdder is
  generic (
    N     : integer := numBit;
    RADIX : integer := radixN);

  port (
    A    : in  std_logic_vector(N-1 downto 0);          -- Input operand
    B    : in  std_logic_vector(N-1 downto 0);          -- Input operand
    Cin  : in  std_logic;                               -- CarryIn (from the external world)
    Cout : out std_logic;                               -- CarryOut (to the external world)
    Sum  : out std_logic_vector(N-1 downto 0));         -- Result
end component completeAdder;

signal Qa, Qb, sumFromCAtoReg: std_logic_vector(N-1 downto 0);
signal Qcin, coutFromCAtoReg: std_logic;
    
begin
    completeAdder_1: completeAdder generic map (N => N, RADIX => RADIX)
    port map (A => Qa, B => Qb, Cin => Qcin, Cout => coutFromCAtoReg, Sum => sumFromCAtoReg);

    regInput: process(clk, rst)
    begin
    if rising_edge(clk) then
        if rst = '1' then
            Qa <= (others => '0');
            Qb <= (others => '0');
            Qcin <= '0';
        else
            Qa <= A_tle;
            Qb <= B_tle;
            Qcin <= Cin_tle;
        end if;
    end if;
    end process regInput;    
    
    regOutput: process(clk, rst)
    begin
    if rising_edge(clk) then
        if rst = '1' then
            Sum_tle <= (others => '0');
            Cout_tle <= '0';
        else
            Sum_tle <= sumFromCAtoReg;
            Cout_tle <= coutFromCAtoReg;
        end if;
    end if;
    end process regOutput;

end architecture beh;
