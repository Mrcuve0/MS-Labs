package constants is

  -- Register File Parameters
  constant numBitData : integer := 32;      -- Register Width

  -- Windowed RF Parameters
  constant numM            : integer := 8;  -- Number of global registers
  constant numN            : integer := 8;  -- Number of registers in each window block 
  constant numF            : integer := 4;  -- Number of windows
  constant numWindowBlocks : integer := 3;  -- IN - LOCAL - OUT

  -- Number of maximum times the windows can overlap themselves
  -- (affects number of fill-spills that can be performed, affects size of the SWP and CWP registers)
  constant windowRounds : integer := 4;
  
  -- Physical RF Parameters
  constant numRegs_physical_RF : integer := (numM + numN*numWindowBlocks*numF - numN*numF); --globals + numbers of regs for each window * number of windows in each block* number of blocks in physical reg - registers in windows that overlap

end package constants;
