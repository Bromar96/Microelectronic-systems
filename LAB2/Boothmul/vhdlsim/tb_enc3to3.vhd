LIBRARY ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity TBENC3TO3 is
end TBENC3TO3;

architecture TEST of TBENC3TO3 is
 	signal	Xt : std_logic_vector (2 downto 0);
	signal	Yt : std_logic_vector (2 downto 0);
	component ENC3TO3 is
	port (	X : IN  std_logic_vector (2 downto 0);
		Y : OUT std_logic_vector (2 downto 0));
	end component;
begin
	u1 : ENC3TO3 port map (Xt, Yt);
	Xt <= "000", "110" after 1 ns, "001" after 2 ns, "111" after 3 ns, "101" after 4 ns, "010" after 5 ns, "100" after 6 ns, "011" after 7 ns;
end test;

configuration ENC3TO3TEST of TBENC3TO3 is
	for TEST
		for u1 : ENC3TO3
			use configuration WORK.CFG_ENC3TO3_BEHAVIORAL;
		end for;
	end for;
end ENC3TO3TEST;