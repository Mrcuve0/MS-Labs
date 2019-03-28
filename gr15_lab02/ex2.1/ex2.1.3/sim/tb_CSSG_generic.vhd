library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity tb is

end entity tb;


architecture tb_arch of tb is

  component LFSR16 is
    port (
      CLK, RESET, LD, EN : in  std_logic;
      DIN                : in  std_logic_vector(15 downto 0);
      PRN                : out std_logic_vector(15 downto 0);
      ZERO_D             : out std_logic);
  end component LFSR16;

  component CSSG_generic is
    generic (
      N : integer);
    port (
      A, B         : in  std_logic_vector(CSSG_NBIT-1 downto 0);
      carry_vector : in  std_logic_vector(CSSG_NBIT/numBit-1 downto 0);
      S            : out std_logic_vector(CSSG_NBIT-1 downto 0));
  end component CSSG_generic;

  constant Period              : time      := 1 ns;  -- Clock period (1 GHz)
  signal CLK                   : std_logic := '0';
  signal RESET, LD, EN, ZERO_D : std_logic;
  signal DIN, PRN              : std_logic_vector(15 downto 0);

  signal A, B, S1       : std_logic_vector(CSSG_NBIT-1 downto 0)        := (others => '0');
  signal carry_vector_s : std_logic_vector(CSSG_NBIT/numBit-1 downto 0) := (others => '0');

begin  -- architecture tb_arch

  CSSG_1 : CSSG_generic generic map (
    N => CSSG_NBIT)
    port map (
      A            => A,
      B            => B,
      carry_vector => carry_vector_s,
      S            => S1);

  -- Instanciate the Unit Under Test (UUT)
  UUT : LFSR16 port map (CLK => CLK, RESET => RESET, LD => LD, EN => EN,
                         DIN => DIN, PRN => PRN, ZERO_D => ZERO_D);

  A(0) <= PRN(0);
  A(5) <= PRN(2);
  A(3) <= PRN(4);
  A(1) <= PRN(6);
  A(4) <= PRN(8);
  A(2) <= PRN(10);
  A(6) <= PRN(12);
  A(7) <= PRN(14);

  B(0) <= PRN(15);
  B(5) <= PRN(13);
  B(3) <= PRN(11);
  B(1) <= PRN(9);
  B(4) <= PRN(7);
  B(2) <= PRN(5);
  B(6) <= PRN(3);
  B(7) <= PRN(1);



  CLK   <= not CLK  after Period/2;
  RESET <= '1', '0' after Period;

  STIMULUS1 : process
  begin
    DIN <= "0000000000000001";
    EN  <= '1';
    LD  <= '1';
    wait for 2 * PERIOD;
    LD  <= '0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;

  carries : process is
  begin  -- process carries
    carry_vector_s <= (others => '0');
    wait for 11.5 ns;
    carry_vector_s <= "00000010";
    wait for 1 ns;
    carry_vector_s <= (others => '0');
    wait for 1 ns;
    carry_vector_s <= "00000010";

    wait for 1 ns;
    carry_vector_s <= (others => '0');

    wait for 1 ns;
    carry_vector_s <= "00000010";
    wait for 1 ns;
    carry_vector_s <= (others => '0');
    wait for 1 ns;
    carry_vector_s <= "00000100";
    wait for 1 ns;
    carry_vector_s <= "00000110";
    wait for 1 ns;
    carry_vector_s <= "00000100";
    wait for 1 ns;
    carry_vector_s <= "ZZZZZZZZ";
  end process carries;

  process
  begin
    wait for 20 ns;
    assert false report "SImulation Finished" severity failure;
  end process;
  
end architecture tb_arch;
