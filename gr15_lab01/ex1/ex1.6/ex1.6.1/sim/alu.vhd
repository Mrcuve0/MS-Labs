library IEEE;
use IEEE.std_logic_1164.all;
-- use IEEE.std_logic_unsigned.all;
-- use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use WORK.constants.all;
use WORK.alu_types.all;

entity ALU is
  generic (N : integer := numBit);
  port (FUNC         : in  TYPE_OP;
        DATA1, DATA2 : in  std_logic_vector(N-1 downto 0);
        OUTALU       : out std_logic_vector(N-1 downto 0));
end ALU;

architecture BEHAVIOR of ALU is

begin

  P_ALU : process (FUNC, DATA1, DATA2)
    -- complete all the requested functions

  begin
    case FUNC is
      when ADD     =>
        OUTALU <= std_logic_vector(unsigned(DATA1) + unsigned(DATA2));
      when SUB     =>
        OUTALU <= std_logic_vector(unsigned(DATA1) - unsigned(DATA2));
      when MULT    =>
        OUTALU <= std_logic_vector(unsigned(DATA1((N-1)/2 downto 0)) * unsigned(DATA2((N-1)/2 downto 0)));
      when BITAND  =>                   -- Bitwise Operations
        OUTALU <= DATA1 and DATA2;   
      when BITOR   =>
        OUTALU <= DATA1 or DATA2;
      when BITXOR  =>
        OUTALU <= DATA1 xor DATA2;
      when FUNCLSL =>                   -- Logical Shift Left (Use concatenation)
        OUTALU <= std_logic_vector(unsigned(DATA1) sll to_integer(unsigned(DATA2)));  
      when FUNCLSR =>
        OUTALU <= std_logic_vector(unsigned(DATA1) srl to_integer(unsigned(DATA2)));                -- Logical Shift Right
      when FUNCRL  =>
        OUTALU <= std_logic_vector(unsigned(DATA1) rol to_integer(unsigned(DATA2)));                -- Rotate Left
      when FUNCRR  =>
        OUTALU <= std_logic_vector(unsigned(DATA1) ror to_integer(unsigned(DATA2)));                -- Rotate Right
      when others  => null;
    end case;
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
