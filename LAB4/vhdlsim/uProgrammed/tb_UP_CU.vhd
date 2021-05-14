----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2021 16:48:39
-- Design Name: 
-- Module Name: tb_UP_CU - test
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_UP_CU is
--  Port ( );
end tb_UP_CU;

architecture test of tb_UP_CU is

component cisc_cu is
  generic (
    INSTRUCTIONS_EXECUTION_CYCLES : integer := 3;   -- ID, EXE, MEM (3 clock cycles)                                                  
    MICROCODE_MEM_SIZE            : integer := 64;  -- Microcode Memory Size (only 57=19x3 actually used)
    DECODER_SIZE                  : integer := 19;  -- Decoder size (19=57:3)                                                   
    OP_CODE_SIZE : integer := 6;        -- Op Code Size
    ALU_OPC_SIZE : integer := 2;        -- ALU Op Code Word Size
    IR_SIZE      : integer := 32;       -- Instruction Register Size
    FUNC_SIZE    : integer := 11;       -- Func Field Size for R-Type Ops
    CW_SIZE      : integer := 13);      -- Control Word Size

  port (
    Clk             : in  std_logic;    -- Clock
    Rst             : in  std_logic;    -- Reset:Active-Low
    -- Instruction Register
    IR_IN           : in std_logic_vector(IR_SIZE - 1 downto 0);
    -- ID Control Signals
    RF1: out std_logic;
    RF2: out std_logic;
    EN1: out std_logic;
    -- EX Control Signals
    S1: out std_logic;
    S2: out std_logic;
    ALU1:   out std_logic;
    ALU2:   out std_logic;
    EN2:    out std_logic;
    -- MEM Control Signals
    RM: out std_logic;
    WM: out std_logic;
    EN3:    out std_logic;
    -- WB Control signals
    S3: out std_logic;
    WF1:    out std_logic
    );

end component;

constant period: time:=10 ns;
signal ropcode: std_logic_vector(5 downto 0):=(others=>'0');
signal iopcodeANDI2: std_logic_vector(5 downto 0):="011101";
signal iopcodeSUBI1: std_logic_vector(5 downto 0):="001001";

signal ADD: std_logic_vector(10 DOWNTO 0):= "00000000000";
signal SUB: std_logic_vector(10 DOWNTO 0):= "00000000001";
signal AND1: std_logic_vector(10 DOWNTO 0):="00000000010";
signal OR1: std_logic_vector(10 DOWNTO 0):= "00000000011";
signal operand: std_logic_vector(4 downto 0):=(others=>'0');			--not used 
signal immediate: std_logic_vector(15 downto 0):=(others=>'0');		--not used
signal clk,rst: std_logic;
signal IR_IN: std_logic_vector(31 downto 0);

signal RF1,RF2,EN1,S1,S2,ALU1,ALU2,EN2,RM,WM,EN3,S3,WF1: std_logic; 

begin

    uut: cisc_cu 
    generic map (
         INSTRUCTIONS_EXECUTION_CYCLES=>3,                                                   
         MICROCODE_MEM_SIZE=>64, 
         DECODER_SIZE=>19,                                                    
         OP_CODE_SIZE=>6,        
         ALU_OPC_SIZE=>2,        
         IR_SIZE=>32,       
         FUNC_SIZE=>11,       
         CW_SIZE=>13
    )
    
    port map(
        Clk=>clk,
        Rst=>rst,
        IR_IN=>IR_IN,
        RF1=>RF1,
        RF2=>RF2,
        EN1=>EN1,
        S1=>S1,
        S2=>S2,
        ALU1=>ALU1,
        ALU2=>ALU2,
        EN2=>EN2,
        RM=>RM,
        WM=>WM,
        EN3=>EN3,
        S3=>S3,
        WF1=>WF1
    ); 
    

    process
    begin
        clk<='0';
        wait for period/2;
        clk<='1';
        wait for period/2;
    end process;
    
    process
    begin
        rst<='1';
        wait for (2 ns);
        rst<='0';
        wait for period;
        wait for period;
        wait for period;
        IR_IN(31 downto 26)<=ropcode;
        IR_IN(25 downto 21)<=operand;
        IR_IN(20 downto 16)<=operand;
        IR_IN(15 downto 11)<=operand;
        IR_IN(10 downto 0)<=ADD;
        wait for period;
        wait for period;
        wait for period;
        IR_IN(31 downto 26)<=ropcode;
        IR_IN(25 downto 21)<=operand;
        IR_IN(20 downto 16)<=operand;
        IR_IN(15 downto 11)<=operand;
        IR_IN(10 downto 0)<=SUB;
        wait for period;
        wait for period;
        wait for period;
        IR_IN(31 downto 26)<=ropcode;
        IR_IN(25 downto 21)<=operand;
        IR_IN(20 downto 16)<=operand;
        IR_IN(15 downto 11)<=operand;
        IR_IN(10 downto 0)<=OR1;
        wait for period;
        wait for period;
        wait for period;
        IR_IN(31 downto 26)<=iopcodeANDI2;
        IR_IN(25 downto 21)<=operand;
        IR_IN(20 downto 16)<=operand;
        IR_IN(15 downto 0)<=immediate;
        wait for period;
        wait for period;
        wait for period;
        IR_IN(31 downto 26)<=iopcodeSUBI1;
        IR_IN(25 downto 21)<=operand;
        IR_IN(20 downto 16)<=operand;
        IR_IN(15 downto 0)<=immediate;
        wait;
    end process;


end test;

configuration CFG_UP_TEST of tb_UP_CU is
	for test
		for uut: cisc_cu
			use configuration WORK.CFG_UP_CU;
		end for;
	end for;
end CFG_UP_TEST;
