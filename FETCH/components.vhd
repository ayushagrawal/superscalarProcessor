library ieee;
use ieee.std_logic_1164.all;

package components is

	component instruction_memory IS
		PORT
		(
			address_a		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			address_b		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			wren_a		: IN STD_LOGIC  := '0';
			wren_b		: IN STD_LOGIC  := '0';
			q_a		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
			q_b		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	END component;

	component mux2 is 
		generic (N : integer);
		port( in0,in1 : in std_logic_vector(N-1 downto 0); 
				sel : in std_logic; 
				output : out std_logic_vector(N-1 downto 0));
	end component;
	
	component registers is
		generic(N  : integer);
		port(input : in std_logic_vector(N-1 downto 0);
			  enable: in std_logic;
			  output: out std_logic_vector(N-1 downto 0);
			  clk   : in std_logic;
			  reset : in std_logic);
	end component;
	
	component inc IS
		PORT
		(
			data0x		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			data1x		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			result		: OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
		);
	END component;
	
	component branch_predictor is
		port(pc		: in std_logic_vector(6 downto 0);
			  clk		: in std_logic;
			  bp_out : out std_logic_vector(6 downto 0);
			  sel 	: out std_logic);
	end component;
	
end package;