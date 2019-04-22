library ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity Booth is
  
  generic (
    N : integer := numBit;              -- numBit is the number of bit of the moltiplicand
    M : integer := numMultiplier;
   );

  port (
    A : in  std_logic_vector(M-1 downto 0);
    B : in  std_logic_vector(N-1 downto 0);
    P : out std_logic_vector(N*2-1 downto 0));

end entity Booth;

architecture booth_struct of Booth is

  component encoder is
    generic (
      N : integer);
    port (
      X : IN  STD_LOGIC_VECTOR(N-1 DOWNTO 0);
      Z : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
  end component encoder;

  

 signal encoders_out : std_logic_vector(N/2-1);  -- uscite degli encoders che sono N/2
  
begin  -- architecture booth_struct

  encoders : for i in from 0 to N-1 generate
    en1_condition : if i = 0 generate
       EN_1 : encoder generic map (
      N => numEnc)
      port map (
        X => B(1 downto 0) & '0',
        Z => encoders_out(0);      --consideriamo il primo encoder a parte che analizza i primi 3 bit 1,0,-1
    end generate en1_condition;

    en_condition: if i mod 2 =0 generate
      EN : encoder generic map (
     N => numEnc)
     port map (
       X => B(i+1 downto i-1),
       Z => encoders_out(i);
  end generate encoders;
  end generate en_condition;

  
   

end architecture booth_struct;
