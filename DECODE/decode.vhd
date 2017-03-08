library ieee;
use ieee.std_logic_1164.all;

library work;
use work.components.all;

entity decode is

	port(clk	: in std_logic;
		  reset : in std_logic);

end entity;

architecture DEC of decode is
	signal stall, wr_en : std_logic;
	signal input,output : std_logic_vector(21 downto 0);
begin

	ROB: reorder_buffer generic map(N => 32) port map(clk => clk,
																		reset => reset,
																		stall => stall,
																		input => input,
																		output => output,
																		wr_en => wr_en);

end DEC;