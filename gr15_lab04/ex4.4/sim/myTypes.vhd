library ieee;
use ieee.std_logic_1164.all;

package myTypes is

-- Control unit input sizes
  constant OP_CODE_SIZE : integer := 6;   -- OPCODE field size
  constant FUNC_SIZE    : integer := 11;  -- FUNC field size
  constant CW_SIZE      : integer := 13;      -- CW size
  constant INSTRUCTIONS_EXECUTION_CYCLES : integer := 3;  --Instructions Execution
  constant MICROCODE_MEM_SIZE : integer := 79;  --raws in memory

-- I-Type addresses instruction -> FUNC field
  constant ITYPE : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000000000";
-- R-Type addresses instruction -> FUNC field
  constant RTYPE : std_logic_vector(FUNC_SIZE - 1 downto 0)  := "00000000001"; -- for ADD, SUB, AND, OR register-to-register operation
  
-- R-Type addresses instruction -> OPCODE field
  constant RTYPE_ADD_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "000000";  -- ADD RS1,RS2,RD
  constant RTYPE_SUB_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "000011";  -- SUB RS1,RS2,RD
  constant RTYPE_AND_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "000110";  -- AND RS1, RS2, RD
  constant RTYPE_OR_addr  : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "001001";  -- OR RS1, RS2, RD

  constant NOP_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "001100"; 



-- I-Type addresses instruction -> OPCODE field
  constant ITYPE_ADDI1_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "000000";  --ADDI1 RS1,RD,INP1
  constant ITYPE_SUBI1_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "000011";  --SUBI1
  constant ITYPE_ANDI1_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "000110";  --ANDI1
  constant ITYPE_ORI1_addr  : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "001001";  --ORI1

  constant ITYPE_ADDI2_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "001100";  --ADDI2 RS1,RD,INP2
  constant ITYPE_SUBI2_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "001111";  --SUBI2
  constant ITYPE_ANDI2_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "010010";  --ANDI2
  constant ITYPE_ORI2_addr  : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "010101";  --ORI2

  constant ITYPE_MOV_addr   : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "011000";  --MOV
  constant ITYPE_SREG1_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "011011";  --SREG1
  constant ITYPE_SREG2_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "011110";  --SREG2
  constant ITYPE_SMEM2_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "100001";  --SMEM2
  constant ITYPE_LMEM1_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "100100";  --LMEM1
  constant ITYPE_LMEM2_addr : std_logic_vector(OP_CODE_SIZE-1 downto 0) := "100111";  --LMEM2


  
  
end myTypes;

