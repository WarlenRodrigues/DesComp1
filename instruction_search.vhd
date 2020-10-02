library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity instruction_search is
    port
    (
		  clock: in STD_LOGIC;
		  mux_selector: in STD_LOGIC;
		  instruction: out STD_LOGIC_VECTOR(16 downto 0)
    );
end entity;

architecture rtl of instruction_search is
signal pc_to_rom_and_adder: STD_LOGIC_VECTOR(9 downto 0);
signal mux_to_pc: STD_LOGIC_VECTOR(9 downto 0);
signal adder_to_mux: STD_LOGIC_VECTOR(9 downto 0);
signal pc_instruction: STD_LOGIC_VECTOR(9 downto 0);
signal on_instruction: STD_LOGIC_VECTOR(16 downto 0);

--signal pc_instruction <= instruction

    begin
	 pc_instruction <= on_instruction(9 downto 0);
	 instruction <= on_instruction;

rom : entity work.rom   generic map (dataWidth => 17, addrWidth => 10)
          port map (Endereco => pc_to_rom_and_adder, Dado => on_instruction);
			 
pc : entity work.generic_register   generic map (larguraDados => 10)
          port map (DIN => mux_to_pc, DOUT => pc_to_rom_and_adder, ENABLE => '1', CLK => clock, RST => '0');

mux :  entity work.mux  generic map (larguraDados => 10)
        port map( entradaA_MUX => pc_instruction,
                 entradaB_MUX =>  adder_to_mux,
                 seletor_MUX => mux_selector,
                 saida_MUX => mux_to_pc);

adder :  entity work.adder  generic map (larguraDados => 10)
        port map( entradaA => "0000000001", entradaB =>  pc_to_rom_and_adder, saida => adder_to_mux);
		  
end architecture;