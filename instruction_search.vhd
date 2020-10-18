library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity instruction_search is
    port
    (
		  clock: in STD_LOGIC;
		  instruction: out STD_LOGIC_VECTOR(15 downto 0);
		  flip_flop_flag : in STD_LOGIC;
		  control_points_pin : out STD_LOGIC_VECTOR(9 downto 0)
    );
end entity;

architecture rtl of instruction_search is
signal pc_to_rom_and_adder: STD_LOGIC_VECTOR(8 downto 0);
signal mux_to_pc: STD_LOGIC_VECTOR(8 downto 0);
signal adder_to_mux: STD_LOGIC_VECTOR(8 downto 0);
signal pc_instruction: STD_LOGIC_VECTOR(8 downto 0);
signal on_instruction: STD_LOGIC_VECTOR(15 downto 0);
signal control_points: STD_LOGIC_VECTOR(9 downto 0);
signal selector_mux: STD_LOGIC;

--signal pc_instruction <= instruction

alias opcode: STD_LOGIC_VECTOR (3 downto 0) is on_instruction(15 downto 12);
alias jump: STD_LOGIC is control_points(9);
alias je: STD_LOGIC is control_points(8);

begin
	 pc_instruction <= on_instruction(8 downto 0);
	 instruction <= on_instruction;
	 selector_mux <= (je and flip_flop_flag) or jump;
	 control_points_pin <= control_points;
--	 pintest <= pc_to_rom_and_adder;
	 
-- Instanciamos a nossa ROM.
-- Entradas da ROM:
-- Endereco => o endereco que entra na ROM vem do program counter.
-- Saidas da ROM:
-- Dado => a instrucao lida da ROM vai para o pino de saida instruction, sendo que o opcode alimenta a uniadade de controle.
rom : entity work.rom   generic map (dataWidth => 16, addrWidth => 9)
          port map (Endereco => pc_to_rom_and_adder, Dado => on_instruction);

-- Instanciamos a nossa Unidade de controle.
-- Entradas da UC:
-- Endereco => e o opcode que vem da instrucao.
-- Saida UC:
-- Dado => pontos de controle que vao para o pino control_points_pin.
control_unit : entity work.rom_cu   generic map (dataWidth => 10, addrWidth => 4)
          port map (Endereco => opcode, Dado => control_points);
			 
-- Instanciamos o nosso PC.
-- Entradas do PC:
-- DIN => saida do mux entra no DIN.
-- Enable => sempre 1.
-- CLK => clock.
-- RST => sempre 0.
-- Saida PC:
-- Dout => a saida do PC e o contador que alimenta da ROM (para incrementar as os enderecos) e o adder para se auto incrementar.
pc : entity work.generic_register   generic map (larguraDados => 9)
          port map (DIN => mux_to_pc, DOUT => pc_to_rom_and_adder, ENABLE => '1', CLK => clock, RST => '0');

-- Instanciamos o nosso mux1.
-- Entradas do mux1:
-- entradaA_MUX => vem do Adder com o contador das instrucoes.
-- entradaB_MUX => vem da instrucao.
-- seletor_MUX => vem da unidade de controle. Se houver JMP ou JE sera 1.
-- Saida mux1:
-- saida_MUX => realimenta o PC com o novo endereco.
mux1 :  entity work.muxgenerico  generic map (larguraDados => 9)
        port map( entradaA_MUX => adder_to_mux,
                 entradaB_MUX => pc_instruction,
                 seletor_MUX => selector_mux,
                 saida_MUX => mux_to_pc);
					  
-- Instanciamos o nosso mux1.
-- Entradas do mux1:
-- entradaA => 1.
-- entradaB => vem da program counter.
-- Saida mux1:
-- saida => liga a saida do adder com o mux.
adder :  entity work.adder  generic map (larguraDados => 9)
        port map( entradaA => "000000001", entradaB =>  pc_to_rom_and_adder, saida => adder_to_mux);
		  
end architecture;