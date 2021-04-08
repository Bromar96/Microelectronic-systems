library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; -- we need a conversion to unsigned 
use WORK.CONSTANTS.ALL;

entity TB_SUM_GEN is
end TB_SUM_GEN;

architecture TEST of TB_SUM_GEN is
	component SUM_GENERATOR is
			generic (	N: integer := NumBit;
								K: integer := NumBitBlock);
			port(carries: in std_logic_vector(((N/K)-1) downto 0);
					 A, B: in std_logic_vector(N-1 downto 0);
					 SUM: out std_logic_vector(N-1 downto 0)
					 );
	end component;

  constant size: integer:=NumBit;
	constant k: integer :=NumBitBlock;
  signal A_s, B_s, Sum: std_logic_vector(size-1 downto 0);
	signal carries_s: std_logic_vector((size/k)-1 downto 0);
  

begin
	
	UUT: SUM_GENERATOR generic map (size, k) port map(carries_s, A_s, B_s, Sum);
	process
	begin
	--A_s <= "00000000000000000000000000000001";	
	--B_s <= "00000000000000000000000000000001";	
	--carries_s <= "00000001";

  --A_s <= "0000000000000000";	
	--B_s <= "0000000000010001";	
	--carries_s <= "0001";

	A_S <= "00000000";
	B_S <= "00000001";
	carries_s <= "0001";
	wait for 10 ns;
	A_S <= "00000001";
	B_S <= "00000001";
	carries_s <= "0001";	
	wait for 10 ns;
	A_S <= "00000011";
	B_S <= "00000011";
	carries_s <= "0011";
	wait for 10 ns;
	carries_s <= "1001";
	wait;
	end process;
	

end TEST;

configuration CFG_TB_SUM_GEN of TB_SUM_GEN is
	for TEST
		for UUT: SUM_GENERATOR
			use configuration WORK.CFG_SUM_GEN_STRUCT;
		end for;
	end for;
end CFG_TB_SUM_GEN;

