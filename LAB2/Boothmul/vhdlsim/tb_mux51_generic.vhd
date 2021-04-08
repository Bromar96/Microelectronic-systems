LIBRARY ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity TBMUX51_GENERIC is
end TBMUX51_GENERIC;

architecture TEST of TBMUX51_GENERIC is
	constant NBIT : integer := 4;
	signal A0t,A1t,A2t,A3t,A4t   :  std_logic_vector (NBIT-1 downto 0);
	signal SELt		     :  std_logic_vector (2 downto 0);
	signal Yt		     :  std_logic_vector (NBIT-1 downto 0); 
	component MUX51_GENERIC is
	generic (	NBIT : integer := numBit;
			DELAY_MUX : time := TP_MUX);
	port	(	A0,A1,A2,A3,A4  : IN  std_logic_vector (NBIT-1 downto 0);
			SEL		: IN  std_logic_vector (2 downto 0);
			Y		: OUT std_logic_vector (NBIT-1 downto 0));
	end component;
begin
	u1 : MUX51_GENERIC generic map (NBIT) port map (A0t,A1t,A2t,A3t,A4t,SELt,Yt);
	A0t  <= "0001";
	A1t  <= "0010";
	A2t  <= "0011";
	A3t  <= "0100";
	A4t  <= "0101";
	SELt <= "111", "101" after 1 ns, "110" after 2 ns, "011" after 3 ns, "001" after 4 ns;
end test;

configuration MUX51GENTEST of TBMUX51_GENERIC is
	for TEST
		for u1 : MUX51_GENERIC
			use configuration WORK.CFG_MUX51_GENERIC_STRUCTURAL;
		end for;
	end for;
end MUX51GENTEST;