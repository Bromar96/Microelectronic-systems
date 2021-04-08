library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; -- we need a conversion to unsigned 
use WORK.CONSTANTS.ALL;

entity TBSUM_BLOCK is 
end TBSUM_BLOCK; 

architecture TEST of TBSUM_BLOCK is

	component LFSR16 
    	port (
				CLK, RESET, LD, EN : in std_logic; 
       	DIN : in std_logic_vector(15 downto 0); 
       	PRN : out std_logic_vector(15 downto 0); 
        ZERO_D : out std_logic);
	end component;

	component SUM_BLOCK is
    	generic(
        K: integer:= NumBitBlock
    	);
    	port(
        a:      in std_logic_vector(K-1 downto 0);
        b:      in std_logic_vector(K-1 downto 0);
				C_gen:	in std_logic;
        sum:    out std_logic_vector(K-1 downto 0)
    	);
	end component;
  
  --parameter
  constant adder_size: integer:=NumBitBlock;
  constant Period: time := 1 ns; -- Clock period (1 GHz)
  signal CLK : std_logic;
  signal RESET,LD,EN,ZERO_D : std_logic;
  signal DIN, PRN : std_logic_vector(15 downto 0);
  signal A, B, Sum1,Sum2: std_logic_vector(adder_size-1 downto 0);
  
Begin

	GEN1: SUM_BLOCK generic map (adder_size) port map (A, B,'0',Sum1);
	GEN2: SUM_BLOCK generic map (adder_size) port map (A, B,'1',Sum2);
	

	-- Forcing adder input to LFSR output
  	A(0) <= PRN(0);
  	--A(5) <= PRN(2);
  	A(3) <= PRN(4);
  	A(1) <= PRN(6);
  	--A(4) <= PRN(8);
  	A(2) <= PRN(10);
  	B(0) <= PRN(15);
  	--B(5) <= PRN(13);
  	B(3) <= PRN(11);
  	B(1) <= PRN(9);
  	--B(4) <= PRN(7);
  	B(2) <= PRN(5);

	-- Instanciate the Unit Under Test (UUT)
  	UUT: LFSR16 port map (CLK=>CLK, RESET=>RESET, LD=>LD, EN=>EN, DIN=>DIN,PRN=>PRN, ZERO_D=>ZERO_D);
	-- Create the permanent Clock
    
  	process
	begin
		CLK<='0';
		wait for period/2;
		CLK<='1';
		wait for period/2;
	end process;

  	RESET <= '1', '0' after Period;
	-- Open file, make a load, and wait for a timeout in case of design error.
  	process
  	begin
		RESET<='1';
		wait for period/2;
		RESET<='0';
		wait for period/2;
    	DIN <= "0000000000000001";
    	EN <='1';
    	LD <='1';
    	wait for 2 * PERIOD;
    	LD <='0';
    	wait for (65600 * PERIOD);
  	end process;

end TEST;

configuration TBSUM_BLOCK_TEST of TBSUM_BLOCK is
  for TEST
    for GEN1: SUM_BLOCK
      use configuration WORK.CFG_SUM_BLOCK_STR;
    end for;
    for GEN2: SUM_BLOCK
      use configuration WORK.CFG_SUM_BLOCK_STR;
    end for;
  end for;
end TBSUM_BLOCK_TEST;
