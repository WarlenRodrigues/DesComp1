library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity cpu is
    port
    (
		  clock: in STD_LOGIC;
		  addresses: out STD_LOGIC_VECTOR(7 downto 0);
		  data_in: in STD_LOGIC_VECTOR(7 downto 0);
		  data_out: out STD_LOGIC_VECTOR(7 downto 0);
		  habilitate_read_mem : out STD_LOGIC;
		  habilitate_write_mem : out STD_LOGIC;
		  pintest : out STD_LOGIC_VECTOR (8 downto 0)

    );
end entity;

architecture rtl of cpu is

signal instruction : STD_LOGIC_VECTOR(15 downto 0);
signal flip_flop_to_instruction_search : STD_LOGIC;
signal control_points_to_execution : STD_LOGIC_VECTOR (9 downto 0);
signal out_pintest : STD_LOGIC_VECTOR(8 downto 0);

begin

addresses <= instruction (7 downto 0);
habilitate_read_mem <= control_points_to_execution(1);
habilitate_write_mem <= control_points_to_execution(0);
pintest <= out_pintest;
	  
instruction_search : entity work.instruction_search port map(
		  clock => clock,
		  instruction => instruction,
		  flip_flop_flag => flip_flop_to_instruction_search,
		  control_points_pin => control_points_to_execution,
		  pintest => out_pintest);
				  
execution_operation : entity work.execution_operation port map (
		  clock => clock,
		  instruction => instruction,
		  control_points_pin => control_points_to_execution,
		  flip_flop_flag => flip_flop_to_instruction_search,
		  data_in => data_in,
		  registers_out => data_out
		);
end architecture;