LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity SETTLER is
	generic (	NBIT : integer := numBit);
	port	(	A  			: IN  std_logic_vector (NBIT-1 downto 0);
			Y0,Y1,Y2,Y3,Y4,Y5	: OUT std_logic_vector (NBIT-1 downto 0));
end SETTLER;

architecture BEHAVIOR of SETTLER is
	signal tmp2,tmp4 	: signed (NBIT-1 downto 0);
	signal tmp3,tmp5	: std_logic_vector (NBIT-1 downto 0);
begin
	Y0   <= A XOR A;			        --   0
	Y1   <= A;				        --   A
	tmp2 <= ( NOT (signed(A)) ) + 1;	        --  -A
	Y2   <= std_logic_vector (tmp2);  
	tmp3 <= A(NBIT-2 downto 0) & '0';	        --  2A
	Y3   <= tmp3; 
	tmp4 <= ( NOT (signed(tmp3)) ) + 1;	        -- -2A
	Y4   <= std_logic_vector (tmp4);
	tmp5 <= tmp3(NBIT-2 downto 0) & '0';		--  4A
	Y5   <= tmp5;
end BEHAVIOR;

configuration CFG_SETTLER_BEHAVIORAL of SETTLER is
	for BEHAVIOR
	end for;
end CFG_SETTLER_BEHAVIORAL;