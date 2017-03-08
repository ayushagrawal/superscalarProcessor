library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

library work;
use work.components.all;

entity reorder_buffer is
	
	generic(N : integer);		-- Represets total number of entries
	port(input			: in std_logic_vector(21 downto 0);
		  wr_en			: in std_logic;								-- When writing to ROB
		  
		  clk				: in std_logic;
		  reset			: in std_logic;
		  stall			: out std_logic;
		  output			: out std_logic_vector(21 downto 0));

end entity;

architecture ROB of reorder_buffer is
	signal write_pointer : std_logic_vector(natural(log2(real(N)))-1 downto 0);	-- where in the ROB new data is written to
	signal read_pointer	: std_logic_vector(natural(log2(real(N)))-1 downto 0);	-- from where the data is commited
	signal full 			: std_logic;
	signal enable			: std_logic_vector(N-1 downto 0);
	
	signal multiplex	: main_array(0 to N-1)(21 downto 0);

begin
	
	process(read_pointer,write_pointer)
	begin
		if(read_pointer = write_pointer) then
			full <= '1';
		else
			full <= '0';
		end if;
	end process;
	
	stall <= full;
	
	GEN_REG	: for I in 0 to N-1 generate
				  REGX	: registers generic map(N => 22) port map(reset  => reset,
																					clk	 => clk,
																					input  => input,
																					output => multiplex(I),
																					enable => enable(I));
	end generate;

																		 
	mux_def		: multiplexer generic map(X => N,Y => 22) port map(input  => multiplex,
																						output => output,
																						sel	 => read_pointer);
	
end ROB;