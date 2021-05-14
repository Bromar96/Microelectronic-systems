library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
--use ieee.numeric_std.all;
--use work.all;

--memory sieze should be changed with the amount o instruction that your dlx must perform
--basic version: 19 operations

--ADD
--SUB
--AND
--OR

--ADDI1
--SUBI1
--ANDI1
--ORI1
--ADDI2
--SUBI2
--ANDI2
--ORI2
--MOV
--SREG1
--SREG2
--SMEM1
--SMEM2
--LMEM1
--LMEM2

entity dlx_cu is
  generic (
    LUT_SIZE :     integer := 19;  -- LUT  Size
    FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
    OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
    IR_SIZE            :     integer := 32;  -- Instruction Register Size    
    CW_SIZE            :     integer := 13);  -- Control Word Size
  port (
    Clk                : in  std_logic;  -- Clock
    Rst                : in  std_logic;  -- Reset:Active-Low
    -- Instruction Register OUTPUT
    IR_IN              : in  std_logic_vector(IR_SIZE - 1 downto 0);
                                        
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
end dlx_cu;

architecture dlx_cu_rtl of dlx_cu is
  type mem_array is array (integer range 0 to LUT_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
  
  --TO BE PLACED IN A PACKAGE
  --NextProgramCounter, Instruction Rgister are not taken into consoideration!
  --IF stage is assumed to be already done.
  
  --CONTROL SIGNALS:
  --DIRECTION: (0 UPTO CW_SIZE -1)
  --0: RD1_ENABLE_REGFILE
  --1: RD2_ENABLE_REGFILE
  --2: ENABLE_REGFILE
  --3: MUX_R1_INP1
  --4: MUX_R2_INP2
  --5,6: SEL_ALU
  --7: ENABLE_ALU_OUT
  --8: READ_MEM_ENABLE
  --9: WRITE_MEM_ENABLE
  --10:MEM_ENABLE, GENERAL_OUT_ENABLE(?)
  --11:MEM_OUT_ALU_OUT_MUX
  --12:WRITE_ENABLE_REGFILE  
  
  --R-TYPE 
  --ALU: ADD=00, SUB=01, AND=10, OR=11
  CONSTANT ADD_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1110100100001";
  CONSTANT SUB_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1110101100001";
  CONSTANT AND_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1110110100001";
  CONSTANT OR_CTRL:  STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1110111100001";
  --I-TYPE
  CONSTANT ADDI1_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="0111000100001";
  CONSTANT SUBI1_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="0111001100001";
  CONSTANT ANDI1_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="0111010100001";
  CONSTANT ORI1_CTRL:  STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="0111011100001";
  CONSTANT ADDI2_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1010000100001";
  CONSTANT SUBI2_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1010001100001";
  CONSTANT ANDI2_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1010010100001";
  CONSTANT ORI2_CTRL:  STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1010011100001";
  --MOV-> RB=RA+(INP1=0)
  CONSTANT MOV_CTRL:   STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1010000100001";
  --SUPPOSING R0=0 (?)
  CONSTANT SREG1_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1011000100001";
  CONSTANT SREG2_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1010000100001";
  CONSTANT SMEM2_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1110000101101";
  CONSTANT LMEM1_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="0111100110111";
  CONSTANT LMEM2_CTRL: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):="1011000110111";
  CONSTANT NOP: STD_LOGIC_VECTOR(CW_SIZE -1 DOWNTO 0):=(others=>'0');
  --IR_FUNC
  CONSTANT ADD: STD_LOGIC_VECTOR(FUNC_SIZE -1 DOWNTO 0):= "00000000000";
  CONSTANT SUB: STD_LOGIC_VECTOR(FUNC_SIZE -1 DOWNTO 0):= "00000000001";
  CONSTANT AND1: STD_LOGIC_VECTOR(FUNC_SIZE -1 DOWNTO 0):="00000000010";
  CONSTANT OR1: STD_LOGIC_VECTOR(FUNC_SIZE -1 DOWNTO 0):= "00000000011";
  
  --control signals from CPU to PIPELINE
  signal cw_mem : mem_array := (ADD_CTRL,
                                SUB_CTRL,
                                AND_CTRL,
                                OR_CTRL,
                                ADDI1_CTRL,
                                SUBI1_CTRL,
                                ANDI1_CTRL,
                                ORI1_CTRL,
                                ADDI2_CTRL,
                                SUBI2_CTRL,
                                ANDI2_CTRL,
                                ORI2_CTRL,
                                MOV_CTRL,
                                SREG1_CTRL,
                                SREG2_CTRL,
                                SMEM2_CTRL,
                                LMEM1_CTRL,
                                LMEM2_CTRL,
                                NOP
                                ); 

                                             
  signal IR_opcode : std_logic_vector(OP_CODE_SIZE -1 downto 0);  -- OpCode part of IR
  signal IR_func : std_logic_vector(FUNC_SIZE -1 downto 0);   -- Func part of IR when Rtype
  signal cw   : std_logic_vector(CW_SIZE - 1 downto 0); -- full control word read from cw_mem


begin  -- dlx_cu_rtl
  
  --Distinguere tra I-Type, R-Type
  process(IR_IN)
  begin
    if IR_IN(31 downto 26) = "000000" then
        --R-Type
        IR_func <= IR_IN(FUNC_SIZE -1 downto 0);
        IR_opcode<=(others=>'0');
    else
      --I-Type
      IR_func <= (others=>'0');
      IR_opcode<= IR_IN(31 downto 26); 
		end if;
  end process;



  --LUT access
  process(clk,rst)
		
	begin
    if rst='1' then
        cw<=cw_mem(18);
    elsif rising_edge(clk) then
        case IR_opcode is
            when "000000" =>
                if (IR_func=ADD) then
                    cw<=cw_mem(0);
                elsif (IR_func=SUB) then
                    cw<=cw_mem(1);
                elsif (IR_func=AND1) then
                    cw<=cw_mem(2);
                else 
                    cw<=cw_mem(3);
               end if;
        
            when "000101" =>
                cw<=cw_mem(4); 
            
            when "001001" =>
                cw<=cw_mem(5);
            
            when "001101" =>
                cw<=cw_mem(6); 
            
            when "010001" =>
                cw<=cw_mem(7);
            
            when "010101" =>
                cw<=cw_mem(8);  
            
            when "011001" =>
                cw<=cw_mem(9);
            
            when "011101" =>
                cw<=cw_mem(10);  
            
            when "100001" =>
                cw<=cw_mem(11);
            
            when "100101" =>
                cw<=cw_mem(12);
            
            when "101001" =>
                cw<=cw_mem(13);
            
            when "101101" =>
                cw<=cw_mem(14);
            
            when "110001" =>
                cw<=cw_mem(15); 
            
            when "110101" =>
                cw<=cw_mem(16);       
    
            when "000001" =>
                cw<=cw_mem(17); 
            
            when "111111" =>
                cw<=cw_mem(18);  
                
            when others =>
                cw<=cw_mem(18);    
        end case;
     end if;
  end process;
  
  -- ID Control Signals
    RF1<= cw(CW_SIZE-1);
    RF2<= cw(CW_SIZE-2);
    EN1<= cw(CW_SIZE-3);
    -- EX Control Signals
    S1<= cw(CW_SIZE-4);
    S2<= cw(CW_SIZE-5);
    ALU1<=   cw(CW_SIZE-6);
    ALU2<=   cw(CW_SIZE-7);
    EN2<=    cw(CW_SIZE-8);
    -- MEM Control Signals
    RM<= cw(CW_SIZE-9);
    WM<= cw(CW_SIZE-10);
    EN3<=    cw(CW_SIZE-11);

    -- WB Control signals
    S3<= cw(CW_SIZE-12);
    WF1<=    cw(CW_SIZE-13);

end dlx_cu_rtl;
