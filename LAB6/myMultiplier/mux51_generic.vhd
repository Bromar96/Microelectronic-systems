LIBRARY ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity MUX51_GENERIC is
	generic (	NBIT : integer := numBit);
			--DELAY_MUX : time := TP_MUX);
	port	(	A0,A1,A2,A3,A4  : IN  std_logic_vector (NBIT-1 downto 0);
			SEL		: IN  std_logic_vector (2 downto 0);
			Y		: OUT std_logic_vector (NBIT-1 downto 0));
end MUX51_GENERIC;

architecture STRUCTURAL of MUX51_GENERIC is
	component MUX21_GENERIC
	generic (	NBIT : integer := numBit);
			--DELAY_MUX : time := TP_MUX);
	port	(	A		: IN	std_logic_vector (NBIT-1 downto 0);
			B		: IN	std_logic_vector (NBIT-1 downto 0);
			SEL		: IN	std_logic;
			Y		: OUT	std_logic_vector (NBIT-1 downto 0));
	end component;
	signal Y0, Y1, Y2 : std_logic_vector (NBIT-1 downto 0);
begin
	mux000 : MUX21_GENERIC generic map (NBIT) port map (A0,A1,SEL(2),Y0);
	mux100 : MUX21_GENERIC generic map (NBIT) port map (A2,A3,SEL(2),Y1);
	mux010 : MUX21_GENERIC generic map (NBIT) port map (Y0,Y1,SEL(1),Y2);
	mux001 : MUX21_GENERIC generic map (NBIT) port map (Y2,A4,SEL(0),Y);
end structural;

configuration CFG_MUX51_GENERIC_STRUCTURAL of MUX51_GENERIC is
	for STRUCTURAL
		for all : MUX21_GENERIC
			use configuration WORK.CFG_MUX21_GEN_BEHAVIORAL;
		end for;
	end for;
end CFG_MUX51_GENERIC_STRUCTURAL;
