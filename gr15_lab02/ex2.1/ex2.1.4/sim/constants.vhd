library ieee;
use ieee.math_real."log2";

package constants is

  constant radixN    : integer := 4;
  constant numBit : integer := 32;
  constant rows : integer := integer(log2(real(numBit)));

end package constants;
