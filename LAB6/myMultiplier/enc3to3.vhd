LIBRARY ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity ENC3TO3 is
	port (	X : IN  std_logic_vector (2 downto 0);
		Y : OUT std_logic_vector (2 downto 0));
end ENC3TO3;

architecture BEHAVIOR of ENC3TO3 is
begin
	process (X)
	begin
		case X is
		when "000"  => Y<="111";	--     0
		when "001"  => Y<="011";	--  +  A
		when "010"  => Y<="011";	--  +  A
		when "011"  => Y<="001";	--  + 2A
		when "100"  => Y<="110";	--  - 2A
		when "101"  => Y<="101";	--  -  A
		when "110"  => Y<="101";	--  -  A
		when "111"  => Y<="111";	--     0
		when others => Y<="111";
		end case;
	end process;
end BEHAVIOR;

configuration CFG_ENC3TO3_BEHAVIORAL of ENC3TO3 is
	for BEHAVIOR
	end for;
end CFG_ENC3TO3_BEHAVIORAL;