library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.all;

entity RMU is 
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
end RMU;


architecture HLSM of RMU is
	
	function log2 (N: integer) return integer is
	variable cnt, tmp: integer;		
	begin
		tmp := N;
		cnt := 0;
		while (tmp > 1) loop
			tmp := tmp/2;
			cnt := cnt+1;
		end loop;
	return cnt;
	end function;

	type statetype is (INIT,S_ON,S_FILL,S_ACK,S_SPILL);
	signal curr_state,next_state: statetype;

	signal curr_CWP,next_CWP,curr_SWP,next_SWP,curr_RESTORE,next_RESTORE: std_logic_vector(PHY_ADDR_SIZE downto 0);
	signal curr_CANSAVE,next_CANSAVE: std_logic_vector(log2(F+1)-1 downto 0);
  
begin


	--process for update registers, reset synch
	process(CLK)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				curr_state<=INIT;
				curr_CWP<=(others=>'0');
				curr_SWP<=(others=>'0');
				curr_RESTORE<=(others=>'0');
				curr_CANSAVE<=std_logic_vector(to_unsigned(F,curr_CANSAVE'length));
			elsif (ENABLE='1') then
				curr_state<=next_state;
				curr_CWP<=next_CWP;
				curr_SWP<=next_SWP;
				curr_RESTORE<=next_RESTORE;
				curr_CANSAVE<=next_CANSAVE;
			end if;
		end if;				
	end process;


	--process for control
	process(curr_state,curr_SWP,curr_CWP,CALL,RET,ENABLE,ACK,VIRTUAL_ADDRESS1,VIRTUAL_ADDRESS2,VIRTUAL_ADDRESS3,curr_RESTORE,curr_CANSAVE,READ1,READ2,WRITE)
	variable tmpU: unsigned (VIRTUAL_ADDR_SIZE-1 downto 0);
	variable tmpI,res: integer;
	begin
		STALL<='0';
		SPILL<='0';
		FILL<='0';
		RD1<='0';
		RD2<='0';
		WR<='0';
		if (to_integer(unsigned(VIRTUAL_ADDRESS1)) < N) then
				tmpU:=unsigned(VIRTUAL_ADDRESS1);
				tmpI:=to_integer(tmpU);
				res:=tmpI + (2*N*F+N);
				PHY_ADDRESS1<=std_logic_vector(to_unsigned(res,PHY_ADDRESS1'length));	
		else
				PHY_ADDRESS1 <=std_logic_vector((unsigned(VIRTUAL_ADDRESS1) + unsigned(curr_CWP(PHY_ADDR_SIZE-1 downto 0)) - 8)mod(2*N*F+N));
		end  if;

		if (to_integer(unsigned(VIRTUAL_ADDRESS2)) < N) then
				tmpU:=unsigned(VIRTUAL_ADDRESS1);
				tmpI:=to_integer(tmpU);
				res:=tmpI + (2*N*F+N);
				PHY_ADDRESS2<=std_logic_vector(to_unsigned(res,PHY_ADDRESS2'length));		
		else
				PHY_ADDRESS2 <=std_logic_vector((unsigned(VIRTUAL_ADDRESS2) + unsigned(curr_CWP(PHY_ADDR_SIZE-1 downto 0)) - 8)mod(2*N*F+N));
		end if;

		if (to_integer(unsigned(VIRTUAL_ADDRESS3)) < N) then
				tmpU:=unsigned(VIRTUAL_ADDRESS1);
				tmpI:=to_integer(tmpU);
				res:=tmpI + (2*N*F+N);
				PHY_ADDRESS3<=std_logic_vector(to_unsigned(res,PHY_ADDRESS3'length));		
		else
				PHY_ADDRESS3 <=std_logic_vector((unsigned(VIRTUAL_ADDRESS3) + unsigned(curr_CWP(PHY_ADDR_SIZE-1 downto 0)) - 8)mod(2*N*F+N));
		end if;
		
		case curr_state is			
			when INIT=>
				if ENABLE='0' then
					next_state<=INIT;
				else
					next_state<=S_ON;
				end if;
				next_CWP<=(others=>'0');
				next_SWP<=(others=>'0');
				next_RESTORE<=(others=>'0');
				next_CANSAVE<=std_logic_vector(to_unsigned(F,curr_CANSAVE'length));
	
			when S_ON=>
				--here we need to bypass write and reads signals
				RD1<=READ1;
				RD2<=READ2;
				WR<=WRITE;
				if CALL='1' then
					next_state<=S_SPILL;
				elsif RET='1' then
					next_state<=S_FILL;
				else
					next_state<=S_ON;
				end if;
				

			when S_SPILL=>
				if to_integer(unsigned(curr_CANSAVE)) > 0 then
					next_RESTORE<=curr_CWP;
					next_CANSAVE<=std_logic_vector(unsigned(curr_CANSAVE) - 1);
					next_state<=S_ON;
				else
					SPILL<='1';
					STALL<='1';
					next_RESTORE<=curr_CWP;
					next_SWP<=std_logic_vector((unsigned(curr_CWP) +N)mod(2*N*F+N));
					next_state<=S_ACK;
				end if;
				next_CWP<=std_logic_vector((unsigned(curr_CWP) +2*N)mod(2*N*F+N));
	
			when S_FILL=>
				if (unsigned(curr_RESTORE) /= unsigned(curr_SWP)) then
					next_CANSAVE<=std_logic_vector(unsigned(curr_CANSAVE)+1);
					next_state<=S_ON;
				elsif (unsigned(curr_RESTORE) = unsigned(curr_SWP)) then
					FILL<='1';
					STALL<='1';
					next_SWP<=std_logic_vector((unsigned(curr_SWP) + (2*N*F+N) - 2*N) mod(2*N*F+N));
					next_state<=S_ACK;
				end if;
				next_RESTORE<=std_logic_vector((unsigned(curr_RESTORE) + (2*N*F+N) - 2*N)mod(2*N*F+N));
				next_CWP<=std_logic_vector((unsigned(curr_CWP) + (2*N*F+N) - 2*N)mod(2*N*F+N));

			when S_ACK=>
				if ACK='1' then
					next_state<=S_ON;
				else
					next_state<=S_ACK;
				end if;
				STALL<='1';

		end case;
	end process;

end HLSM;

configuration CFG_RMU_BEH of RMU is
  for HLSM
  end for;
end configuration;

