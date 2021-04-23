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
		STALL_ON_FILL: out std_logic; --CPU signal
		STALL_ON_SPILL: out std_logic; --CPU
		ENABLE: in std_logic;
		RST,CLK: in std_logic;
		SPILL,FILL: out std_logic; --MMU signals
		ACK: in std_logic;
		PHY_ADDRESS: out std_logic_vector(PHY_ADDR_SIZE-1 downto 0);
		VIRTUAL_ADDRESS: in std_logic_vector(VIRTUAL_ADDR_SIZE-1 downto 0)
	);
end component;


	signal call, ret,stall_fill,stall_spill, enable, rst,clk, spill,fill,ack : std_logic;
	signal phy_add : std_logic_vector(5 downto 0);
	signal virt_addr: std_logic_vector (4 downto 0);
begin
	UUT: RMU port map(call,ret,stall_fill,stall_spill,enable,rst,clk,spill,fill,ack,phy_add,virt_addr);

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
	  wait for 10 ns;
		wait for 3 ns;
		rst<='0';
		enable<='1';
		wait for 20 ns;
		--write access
		virt_addr<=(others=>'1');
		wait for 20 ns;
		--read access @GLOBAL R0
		virt_addr<=(others=>'0');
		--read access @GLOBAL R7
	  virt_addr<="00111";
		wait for 20 ns;
		--CALL for procedure 1
		call<='1';
		wait for 20 ns;
		call <='0';
		-- write access @R15
		virt_addr<="10001";
		wait for 20 ns;
		--read access @GLOBAL R3
		virt_addr<="00011";
		wait for 20 ns;
		--from now on, just test procedures
		--call for procedure 2
		call<='1';
		wait for 20 ns;
		--call for procedure 3
		wait for 20 ns;
		--read access R10
		virt_addr<="01010";
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


