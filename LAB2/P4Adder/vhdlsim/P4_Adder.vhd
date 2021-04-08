library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use WORK.CONSTANTS.ALL;

entity P4Adder is
	generic (	N: integer := NumBit;
						K: integer := NumBitBlock);	
	port(A,B: IN std_logic_vector(N-1 DOWNTO 0);
			 CIN: IN std_logic;
			 Cout: OUT std_logic;
			 SUM: OUT std_logic_vector(N-1 DOWNTO 0));
end P4Adder;

architecture Structural of P4Adder is

component SUM_GENERATOR is
			generic (	N: integer := NumBit;
								K: integer := NumBitBlock);
			port(carries: in std_logic_vector(((N/K)-1) downto 0);
					 A, B: in std_logic_vector(N-1 downto 0);
					 SUM: out std_logic_vector(N-1 downto 0)
					 );
end component;

component CARRY_GENERATOR is
	generic (
		NBIT :		integer := NumBit;
		NBLOCK: integer := NumBitBlock);
	port (
		A :		in	std_logic_vector(NBIT-1 downto 0);
		B :		in	std_logic_vector(NBIT-1 downto 0);
		Cin :	in	std_logic;
		Co :	out	std_logic_vector((NBIT/NBLOCK) downto 0)); --in questo caso sono 9 (c32, c28, c24, c0, c16, c12 c8, c4, c0)
end component;

	signal carries_s: std_logic_vector((N/K) downto 0);
	
begin

	CG: CARRY_GENERATOR generic map(N, K) port map(A,B,CIN,carries_s);
	SG: SUM_GENERATOR generic map(N, K) port map(carries_s((N/K)-1 downto 0),A,B,SUM);
	Cout <= carries_s(N/K);

end Structural;

configuration CFG_P4ADD_STR of P4Adder is
	for Structural
		for CG: CARRY_GENERATOR
			use configuration WORK.CARRY_GEN_STR;
		end for;
		for SG: SUM_GENERATOR
			use configuration WORK.CFG_SUM_GEN_STRUCT;
		end for;
	end for;
end CFG_P4ADD_STR;
