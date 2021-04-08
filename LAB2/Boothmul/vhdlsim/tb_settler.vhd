LIBRARY ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity TBSETTLER is
end TBSETTLER;

architecture TEST of TBSETTLER is
	constant NBIT : integer := 8;
 	signal At  			: std_logic_vector (NBIT-1 downto 0);
	signal Y0t,Y1t,Y2t,Y3t,Y4t,Y5t	: std_logic_vector (NBIT-1 downto 0);
	component SETTLER
	generic (	NBIT : integer := numBit);
	port	(	A  			: IN  std_logic_vector (NBIT-1 downto 0);
			Y0,Y1,Y2,Y3,Y4,Y5	: OUT std_logic_vector (NBIT-1 downto 0));
	end component;
begin
	u1 : SETTLER generic map (NBIT) port map (At, Y0t,Y1t,Y2t,Y3t,Y4t,Y5t);
	At <= "00000010", "00000101" after 3 ns, "11111011" after 6 ns;
end test;

configuration SETTLERTEST of TBSETTLER is
	for TEST
		for u1 : SETTLER
			use configuration WORK.CFG_SETTLER_BEHAVIORAL;
		end for;
	end for;
end SETTLERTEST;