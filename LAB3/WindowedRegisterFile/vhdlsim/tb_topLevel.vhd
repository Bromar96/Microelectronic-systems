library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.all;
use CONSTANTS.all;


entity tb is 
end tb;

architecture TEST of tb IS

component topLevel is 
	generic (
			M: integer := NREG_BLOCK;
			N: integer := NREG_BLOCK;
			F: integer := NWINDOWS;
			VIRTUAL_ADD_SIZE: integer:= VIRTUAL_ADDR;
			PHY_ADDR_SIZE: integer:= PHY_ADDR;
			WORD_SIZE: integer := VIRTUAL_SIZE
	);  
	port(
		CALL, RET: in std_logic;
		CLK, RESET, ENABLE: in std_logic;
		RD1, RD2: in std_logic;
		WR: in std_logic;
		ADD_WR: 	IN std_logic_vector(VIRTUAL_ADD_SIZE-1 downto 0);
		ADD_RD1: 	IN std_logic_vector(VIRTUAL_ADD_SIZE-1 downto 0);
		ADD_RD2: 	IN std_logic_vector(VIRTUAL_ADD_SIZE-1 downto 0);
		DATAIN: 	IN std_logic_vector(WORD_SIZE-1 downto 0);
 		OUT1: 		OUT std_logic_vector(WORD_SIZE-1 downto 0);
		OUT2: 		OUT std_logic_vector(WORD_SIZE-1 downto 0);
		ACK: in std_logic;
		SPILL,FILL: out std_logic;
		STALL: out std_logic	
	);
end component;

constant WORD_SIZE: integer:= 32;
constant VIRTUAL_ADD_SIZE: integer:= 5;

signal READ1,READ2,WRITE: std_logic;
signal DATAIN,DATAOUT1,DATAOUT2: std_logic_vector(WORD_SIZE-1 downto 0);
signal ADDRESS_WRITE,ADDRESS_READ1,ADDRESS_READ2: std_logic_vector(VIRTUAL_ADD_SIZE-1 downto 0);

signal CALL,RET: std_logic;
signal ACK,FILL,SPILL,STALL: std_logic;

signal CLK,RST,ENABLE: std_logic;
constant period: time := 10 ns;
constant HOLD: time := 2 ns;
constant SETUP: time :=2 ns;

begin

	uut: topLevel port map (
		CALL=>CALL,
		RET=>RET,
		CLK=>CLK,
		RESET=>RST,
		ENABLE=>ENABLE,
		RD1=>READ1,
		RD2=>READ2,
		WR=>WRITE,
		ADD_WR=>ADDRESS_WRITE,
		ADD_RD1=>ADDRESS_READ1,
		ADD_RD2=>ADDRESS_READ2,
		DATAIN=>DATAIN,
		OUT1=>DATAOUT1,
		OUT2=>DATAOUT2,
		ACK=>ACK,
		SPILL=>SPILL,
		FILL=>FILL,
		STALL=>STALL
	);

	--clock process
	process
	begin
		CLK<='0';
		wait for period/2;
		CLK<='1';
		wait for period/2;
	end process;


	--test read,write wothout previous call/ret WRITE & READ ARE SYNCH
	process
	begin
		RST<='1';
		ENABLE<='0';
		WRITE<='0';
		READ1<='0';
		READ2<='0';
		CALL<='0';
		RET<='0';
		ACK<='0';
		wait for period/2;
		wait for HOLD;
		RST<='0';
		ENABLE<='1';
		wait for (period/2 - HOLD);
		wait for (period/2 - SETUP);
		WRITE<='1';
		--WRITE ON GLOBAL (DATAIN SHOULD BE WRITTEN @PHYSICAL_REGISTERFILE(56))
		ADDRESS_WRITE <= (others=>'0'); 
		DATAIN <= x"0000000A";
		--READ R15 (SHOULD GIVE DATAOUT1=0x0000 FROM @PHYSICAL_REGISTERFILE(7))
		READ1<='1';
		ADDRESS_READ1<="01111";
		wait for (period/2 + HOLD);
		wait;
	end process;


end TEST;
