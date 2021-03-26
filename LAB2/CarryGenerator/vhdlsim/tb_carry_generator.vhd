library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is


	component CARRY_GENERATOR is
		generic (
			NBIT  :	integer := NumBit;
			NBLOCK: integer := NumBitBlock);
		port (
			A :		in	std_logic_vector(NBIT-1 downto 0);
			B :		in	std_logic_vector(NBIT-1 downto 0);
			Cin :	in	std_logic;
			Co :	out	std_logic_vector((NBIT/NBLOCK) downto 0));
	end component;

	constant N: integer:=NumBit;
	constant BLK: integer:=NumBitBlock;
	constant period: time:=1 ns;
	signal A_tb,B_tb: std_logic_vector(N-1 downto 0);
	signal Cout: std_logic_vector(N/BLK downto 0);
	
begin

	uut: CARRY_GENERATOR generic map(N,BLK) port map(A_tb,B_tb,'0',Cout);
	
	--stimuli generation
	process
	begin
		A_tb<=(others=>'0');
		B_tb<=(others=>'0');
		wait for period;
		A_tb<=(others=>'1');
		B_tb<=(others=>'0');
		wait for period;
		A_tb<=(others=>'1');
		B_tb<=(others=>'1');
		wait for period;
		A_tb<=(others=>'1');
		B_tb<=x"FF00FF00";
		wait for period;
		A_tb<=(others=>'0');
		B_tb<=x"FF00FF00";
		wait for period;
		A_tb<=x"00FF00FF";
		B_tb<=x"FF0001FF";
		wait;
	end process;
end TEST;


configuration TBCGEN_TEST of TB_CARRY_GENERATOR is
  for TEST
    for uut: CARRY_GENERATOR
      use configuration WORK.CARRY_GEN_STR;
    end for;
  end for;
end TBCGEN_TEST;




