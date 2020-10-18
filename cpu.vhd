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
		  habilitate_write_mem : out STD_LOGIC
    );
end entity;

architecture rtl of cpu is

signal instruction : STD_LOGIC_VECTOR(15 downto 0);
signal flip_flop_to_instruction_search : STD_LOGIC;
signal control_points_to_execution : STD_LOGIC_VECTOR (9 downto 0);

begin

addresses <= instruction (7 downto 0);
habilitate_read_mem <= control_points_to_execution(1);
habilitate_write_mem <= control_points_to_execution(0);

-- Entrada instruction_search:
-- clock => clock.
-- flip_flop_flag => vem da execution_operation para compararmos com o a instrucaoJE.
-- Saida instruction_search:
-- instruction => instrucao que vai para o execution_operation.
-- control_points_pin => os pontos de controle que habilitam os componentes que nao estao no instruction_search.
instruction_search : entity work.instruction_search port map(
		  clock => clock,
		  instruction => instruction,
		  flip_flop_flag => flip_flop_to_instruction_search,
		  control_points_pin => control_points_to_execution);
-- Entrada execution_operation:
-- clock => clock.
-- instruction => instrucao que vem do instruction_search.
-- control_points_pin => pontos de controle que vem do instruction_search.
-- data_in => vem do barramento de dados: Entrada.
-- Saida execution_operation:
-- flip_flop_flag => entra na instruction_search.
-- registers_out => vai para o barramento de dados: saida.
execution_operation : entity work.execution_operation port map (
		  clock => clock,
		  instruction => instruction,
		  control_points_pin => control_points_to_execution,
		  flip_flop_flag => flip_flop_to_instruction_search,
		  data_in => data_in,
		  registers_out => data_out
		);
end architecture;