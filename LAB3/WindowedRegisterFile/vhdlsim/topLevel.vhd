library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.all;
use CONSTANTS.all;

entity topLevel is 
	generic (
				M: integer := NREG_BLOCK; --GLOBALS
				N: integer := NREG_BLOCK; --IN/LOC/OUT
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
end topLevel;

architecture STRUCT of topLevel is

component register_file is
 generic(
	 WORD_SIZE: natural:=32;
	 ADDR_SIZE: natural:=5
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
	generic (M : integer := 8;
			 N : integer := 8;
			 F : integer := 3;
			 VIRTUAL_ADDR_SIZE: integer:=5;
			 PHY_ADDR_SIZE: integer:= 6
			 );  

	port(
		CALL: in std_logic; 
		RET : in std_logic;
		STALL:out std_logic;
		READ1,READ2,WRITE: in std_logic;
		RD1,RD2,WR: out std_logic;
		ENABLE: in std_logic;
		RST,CLK: in std_logic;
		SPILL,FILL: out std_logic;
		ACK: in std_logic;
		PHY_ADDRESS1,PHY_ADDRESS2,PHY_ADDRESS3: out std_logic_vector(PHY_ADDR_SIZE-1 downto 0);
		VIRTUAL_ADDRESS1,VIRTUAL_ADDRESS2,VIRTUAL_ADDRESS3: in std_logic_vector(VIRTUAL_ADDR_SIZE-1 downto 0)
	);
end component;

--PHY_ADDRRESS1 --> WRITE
--PHY_ADDRRESS2 --> RD1
--PHY_ADDRRESS3 --> RD2
signal PHY_ADDRESS1,PHY_ADDRESS2,PHY_ADDRESS3:  std_logic_vector(PHY_ADDR_SIZE-1 downto 0);
signal BYPASSED_RD1,BYPASSED_RD2,BYPASSED_WR: std_logic;

begin

	RegManUn: RMU generic map(M=>NREG_BLOCK,
														N=>NREG_BLOCK,
														F=>NWINDOWS,
														VIRTUAL_ADDR_SIZE=>VIRTUAL_ADDR,
														PHY_ADDR_SIZE=>PHY_ADDR
								) 
								port map (CALL,
													RET,
													STALL=>STALL,
													READ1=>RD1,
													READ2=>RD2,
													WRITE=>WR,
													RD1=>BYPASSED_RD1,
													RD2=>BYPASSED_RD2,
													WR=>BYPASSED_WR,
													ENABLE=>ENABLE,
													RST=>RESET,
													CLK=>CLK,
													SPILL=>SPILL,
													FILL=>FILL,
													ACK=>ACK,
													PHY_ADDRESS1=>PHY_ADDRESS1,
													PHY_ADDRESS2=>PHY_ADDRESS2,
													PHY_ADDRESS3=>PHY_ADDRESS3,
													VIRTUAL_ADDRESS1=>ADD_WR,
													VIRTUAL_ADDRESS2=>ADD_RD1,
													VIRTUAL_ADDRESS3=>ADD_RD2
								);



	RegFile: register_file generic map(WORD_SIZE=>WORD_SIZE,
																		 ADDR_SIZE=>PHY_ADDR
 							) 
							port map(	CLK,
												RESET,
												ENABLE,
												RD1=>BYPASSED_RD1,
												RD2=>BYPASSED_RD2,
												WR=>BYPASSED_WR,
												ADD_WR=>PHY_ADDRESS1,
												ADD_RD1=>PHY_ADDRESS2,
												ADD_RD2=>PHY_ADDRESS3,
												DATAIN=>DATAIN,
												OUT1=>OUT1,
												OUT2=>OUT2);


end STRUCT;

configuration CFG_topLevel_STRUCT of topLevel is
  for STRUCT
		for RegManUn: RMU
			use configuration CFG_RMU_BEH;
		end for;
		for RegFile: register_file
			use configuration CFG_RF_BEH;
		end for;
  end for;
end configuration;
