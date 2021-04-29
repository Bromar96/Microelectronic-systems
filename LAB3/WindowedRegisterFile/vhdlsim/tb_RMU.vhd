library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.all;

entity tb is 
end tb;

architecture TEST of tb IS
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
		STALL: out std_logic; --CPU signal
		READ1,READ2,WRITE: in std_logic; --CPU signal to be bypassed
		RD1,RD2,WR: out std_logic; --bypassed
		ENABLE: in std_logic;
		RST,CLK: in std_logic;
		SPILL,FILL: out std_logic; --MMU signals
		ACK: in std_logic;
		PHY_ADDRESS1,PHY_ADDRESS2,PHY_ADDRESS3: out std_logic_vector(PHY_ADDR_SIZE-1 downto 0);
		VIRTUAL_ADDRESS1,VIRTUAL_ADDRESS2,VIRTUAL_ADDRESS3: in std_logic_vector(VIRTUAL_ADDR_SIZE-1 downto 0)
	);
end component;


	signal call, ret,stall, enable, rst,clk, spill,fill,ack : std_logic;
	signal read1,read2,write: std_logic;
	signal phy_add1, phy_add2, phy_add3 : std_logic_vector(5 downto 0);
	signal virt_addr1, virt_addr2, virt_addr3: std_logic_vector (4 downto 0);
begin
	UUT: RMU port map(CALL=>call,
										RET=>ret,
										STALL=>stall,
										READ1=>read1,
										READ2=>read2,
										WRITE=>write,
										ENABLE=>enable,
										RST=>rst,
										CLK=>clk,
										SPILL=>spill,
										FILL=>fill,
										ACK=>ack,
										PHY_ADDRESS1=>phy_add1,
										PHY_ADDRESS2=>phy_add2,
										PHY_ADDRESS3=>phy_add3,
										VIRTUAL_ADDRESS1=>virt_addr1,
										VIRTUAL_ADDRESS2=>virt_addr2,
										VIRTUAL_ADDRESS3=>virt_addr3
										);

	process
	begin
		 	clk <= '0';
			wait for 10 ns;
	   	clk <= '1';
			wait for 10 ns;
  end process;
		
	process
	begin
		rst<='1';
		enable<='0';
		call<='0';
		ack<='1';
		ret<='0';
		read1<='0';
		read2<='0';
		write<='0';
	  wait for 10 ns;
		wait for 3 ns;
		rst<='0';
		enable<='1';
		wait for 20 ns;
		--test access in physical register
		virt_addr1<=(others=>'1');
		wait for 20 ns;
		--read access @GLOBAL R0
		virt_addr1<=(others=>'0');
		--read access @GLOBAL R7
	  virt_addr1<="00111";
		wait for 20 ns;
		--CALL for procedure 1
		call<='1';
		wait for 20 ns;
		call <='0';
		-- write access @R15
		virt_addr1<="10001";
		wait for 20 ns;
		--read access @GLOBAL R3
		virt_addr1<="00011";
		wait for 20 ns;
		--from now on, just test procedures
		--call for procedure 2
		call<='1';
		wait for 20 ns;
		--call for procedure 3
		wait for 20 ns;
		--read access R10
		virt_addr1<="01010";
		--call for procedure 4, spill is needed here!
		wait for 20 ns;
		wait for 20 ns;
		call<='0';
		wait for 20 ns;
		--return from procedure 4 to procedure 3
		ret<='1';
		wait for 20 ns;
		--return from procedure 3 to procedure 2
		wait for 20 ns;
		--call procedure 3
		ret<='0';
		call<='1';
		wait for 20 ns;
		--call procedure 4, another splil here
		call<='0';		
		wait for 20 ns;
		--call procedure 5
		call<='1';
		wait for 20 ns;
		--call procedure 6
		wait for 20 ns;
		--call procedure 7, spill needed again, 3rd round
		call<='0';
		wait for 20 ns;
		wait for 20 ns;
		--return to procedure 6
		ret<='1';
		wait for 20 ns;
		--return to procedure 5
		wait for 20 ns;
		--return to procedure 4
		wait for 20 ns;
		--return to procedure 3
		wait for 20 ns;
		--return to procedure 2
		wait for 20 ns;
		
WAIT;		
	end process;
end TEST;


