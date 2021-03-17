LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use WORK.constants.all;


entity ACC is
	Generic (NBIT:	integer := numBit);
    port (
      A          : in  std_logic_vector(NBIT - 1 downto 0);
      B          : in  std_logic_vector(NBIT - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      --- ACC_EN_n   : in  std_logic;  -- optional use of the enable
      Y          : out std_logic_vector(NBIT - 1 downto 0));
  end ACC;

architecture STRUCTURAL of ACC is

component MUX21_GENERIC
	Generic	(
			NBIT: integer:= numBit);
			--DELAY_MUX:	Time:= tp_mux);
	Port 	(
			A:		In	std_logic_vector(NBIT-1 downto 0);
			B:		In	std_logic_vector(NBIT-1 downto 0);
			SEL:	In	std_logic;
			Y:		Out	std_logic_vector(NBIT-1 downto 0));
end component;

component regN is
	GENERIC(N: integer := NumBit);
 Port( regIn: IN std_logic_vector(0 to N-1);
	   Clk: IN std_logic;
	   Reset: IN std_logic;
	   regOut: OUT std_logic_vector(0 to N-1));
end component;

component RCA is
    generic(
        size: integer:= NumBit);
        --delay_s: time:= DRCAS;
        --delay_c: time:= DRCAC
    --);
    port(
        a:      in std_logic_vector(size-1 downto 0);
        b:      in std_logic_vector(size-1 downto 0);
        c_out:  out std_logic;
        sum:    out std_logic_vector(size-1 downto 0)
    );
end component;

		signal out_mux: std_logic_vector (NBIT-1 downto 0);
		signal out_add: std_logic_vector (NBIT-1 downto 0);
		signal feed_back: std_logic_vector (NBIT-1 downto 0);

begin

		MUX : MUX21_GENERIC Generic Map (NBIT) Port Map (feed_back, B, ACCUMULATE, out_mux);
		ADD : RCA   Generic Map (NBIT) Port Map (a=>A, b=>out_mux, sum=>out_add);
		REG	: regN  Generic Map (NBIT) Port Map (out_add, CLK, RST_n, feed_back);
		Y <= feed_back;

end STRUCTURAL;

architecture BEHAVIOURAL of ACC is

signal curr_sum,next_sum: std_logic_vector(NBIT-1 downto 0);

begin

    --sequential process for register,reset async
    process(CLK,RST_n)
    begin
        if RST_n='1' then
            curr_sum<=(others=>'0');
        elsif rising_edge(CLK) then
            curr_sum<=next_sum;
        end if;
    end process;
    
    --combinational process
    process(A,B,ACCUMULATE,curr_sum)
    begin    
        if ACCUMULATE='1' then
            next_sum<=std_logic_vector(unsigned(A)+unsigned(curr_sum));
        else
            next_sum<=std_logic_vector(unsigned(A)+unsigned(B));
        end if;   
    end process;
    
    Y<=curr_sum;

end BEHAVIOURAL;

configuration CFG_ACC_STRUCTURAL of ACC is
	for STRUCTURAL
		for MUX :MUX21_GENERIC
			use configuration WORK.CFG_MUX21_GEN_STRUCTURAL;
		end for;
		for ADD : RCA
			use configuration WORK.RCA_STR;
		end for;
		for REG : regN
			use configuration WORK.CFG_REGN_Structural_asyn;
		end for;
	end for;
end CFG_ACC_STRUCTURAL;

configuration CFG_ACC_BEHAVIOURAL of ACC is
    for BEHAVIOURAL
    end for;
end CFG_ACC_BEHAVIOURAL;
	



