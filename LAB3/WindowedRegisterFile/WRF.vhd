library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.all;

entity topLevel is 
	generic (
				M: integer := 8;
				N: integer := 8;
				F: integer := 3;
				VIRTUAL_ADD_SIZE: integer:= 5;
				PHY_ADDR_SIZE: integer:= 6;
				WORD_SIZE: integer := 32
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
	SPILL,FILL: out std_logic	
	);
end topLevel;

architecture STRUCT of topLevel is

component register_file is
 generic(
	 WORD_SIZE: natural:=32;
	 ADDR_SIZE: natural:=5 --5=2**5 registers
 );
 port ( 
	 CLK: 		IN std_logic;
   RESET: 	IN std_logic;
	 ENABLE: 	IN std_logic;
	 RD1: 		IN std_logic;
	 RD2: 		IN std_logic;
	 WR: 		IN std_logic;
	 ADD_WR: 	IN std_logic_vector(ADDR_SIZE-1 downto 0);
	 ADD_RD1: 	IN std_logic_vector(ADDR_SIZE-1 downto 0);
	 ADD_RD2: 	IN std_logic_vector(ADDR_SIZE-1 downto 0);
	 DATAIN: 	IN std_logic_vector(WORD_SIZE-1 downto 0);
   OUT1: 		OUT std_logic_vector(WORD_SIZE-1 downto 0);
	 OUT2: 		OUT std_logic_vector(WORD_SIZE-1 downto 0)
 );
end component;

component RMU is 
	generic (M : integer := 8;  --number of register in each GLOBAL block
			 N : integer := 8;	--number of registers in each IN/OUT/LOCAL block
			 F : integer := 3;	--number of windows
			 VIRTUAL_ADDR_SIZE: integer:=5;
			 PHY_ADDR_SIZE: integer:= 6
			 );  

	port(
		CALL: in std_logic;  --CPU signal
		RET : in std_logic;  --CPU signal
		STALL_ON_FILL: out std_logic; --CPU signal
		STALL_ON_SPILL: out std_logic; --CPU
		ENABLE: in std_logic;
		RST,CLK: in std_logic;
		SPILL,FILL: out std_logic; --MMU signals
		ACK: in std_logic;
		PHY_ADDRESS1,PHY_ADDRESS2,PHY_ADDRESS3: out std_logic_vector(PHY_ADDR_SIZE-1 downto 0);
		VIRTUAL_ADDRESS1,VIRTUAL_ADDRESS2,VIRTUAL_ADDRESS3: in std_logic_vector(VIRTUAL_ADDR_SIZE-1 downto 0)
	);
end component;

signal STALL_ON_FILL,STALL_ON_SPILL: std_logic;
signal PHY_ADDRESS1,PHY_ADDRESS2,PHY_ADDRESS3:  std_logic_vector(PHY_ADDR_SIZE-1 downto 0);


begin
	
	RegManUn: RMU generic map(M,N,F,VIRTUAL_ADD_SIZE,PHY_ADDR_SIZE) 
								port map (CALL,
													RET,
													STALL_ON_FILL,
													STALL_ON_SPILL,
													ENABLE,
													RESET,
													CLK,
													SPILL,
													FILL,
													ACK,
													PHY_ADDRESS1,PHY_ADDRESS2,PHY_ADDRESS3,
													ADD_WR,ADD_RD1,ADD_RD2);



	RegFile: register_file generic map(WORD_SIZE,PHY_ADDR_SIZE ) 
							port map(	CLK,
												RESET,
												ENABLE,
												RD1,
												RD2,
												WR,
												PHY_ADDRESS1,
												PHY_ADDRESS2,
												PHY_ADDRESS3,
												DATAIN,
												OUT1,
												OUT2);


end STRUCT;
