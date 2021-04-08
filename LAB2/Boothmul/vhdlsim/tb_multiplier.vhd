library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity MULTIPLIER_tb is
end MULTIPLIER_tb;


architecture TEST of MULTIPLIER_tb is

  	--constant numBit : integer := 4;
	--constant numBit : integer := 5;
	--constant numBit : integer := 6;
	--constant numBit : integer := 7;   
 	constant numBit : integer := 8;
	--constant numBit : integer := 10;
	--constant numBit : integer := 16;

  	signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  	signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  	signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);

	component BOOTHMUL
	generic (	NBIT 	  : integer 	:= numBit);
	port (		A_mp 			: IN  std_logic_vector (NBIT-1 downto 0);
			B_mp 			: IN  std_logic_vector (NBIT-1 downto 0);
			Y_mp 			: OUT std_logic_vector (2*NBIT-1 downto 0));
	end component;

begin

	u1 : BOOTHMUL generic map (numBit) port map (A_mp_i, B_mp_i, Y_mp_i);

	-- examples on 4 bits. range[pos ; neg]: [15,0 ; 7,-8]
	--A_mp_i <= "0100"; --   4
	--B_mp_i <= "0011"; --   3

	--A_mp_i <= "0101"; --   5
	--B_mp_i <= "1001"; --  -7

	--A_mp_i <= "1010"; --  -6
	--B_mp_i <= "0101"; --   5

	--A_mp_i <= "1101"; --  -3
	--B_mp_i <= "1001"; --  -7

	-- examples on 5 bits. range[pos ; neg]: [31,0 ; 15,-16]
	--A_mp_i <= "01111"; --    15
	--B_mp_i <= "01001"; --     9

	--A_mp_i <= "10100"; --   -12
	--B_mp_i <= "01010"; --    10

	-- examples on 6 bits. range[pos ; neg]: [63,0 ; 31,-32]
	--A_mp_i <= "010110"; --  22
	--B_mp_i <= "001001"; --   9

	--A_mp_i <= "010100"; --   20
	--B_mp_i <= "100101"; --  -27

	-- examples on 7 bits. range[pos ; neg]: [127,0 ; 63,-64]
	--A_mp_i <= "0110010"; --   50
	--B_mp_i <= "0000110"; --    6

	--A_mp_i <= "1010000"; --   -48
	--B_mp_i <= "0001010"; --    10

	-- examples on 8 bits. range[pos ; neg]: [255,0 ; 127,-128]
	--A_mp_i <= "00000010"; --    2
	--B_mp_i <= "00011000"; --   24

	--A_mp_i <= "00001010"; --   10
	--B_mp_i <= "11011100"; --  -36

	A_mp_i <= "11100111"; --   -25
	B_mp_i <= "00000111"; --    7

	--A_mp_i <= "10110000"; --   -80
	--B_mp_i <= "11110000"; --   -16

	-- examples on 10 bits. range[pos ; neg]: [1023,0 ; 511,-512]
	--A_mp_i <= "1011010100"; --  -300
	--B_mp_i <= "1001101010"; --  -406

end TEST;

configuration BOOTHMULTEST of MULTIPLIER_tb is
	for TEST
		for u1 : BOOTHMUL
			use configuration WORK.CFG_BOOTHMUL_STRUCTURAL;
		end for;
	end for;
end BOOTHMULTEST;
