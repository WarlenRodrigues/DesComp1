library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity instruction_search is
    port
    (
		  clock: in STD_LOGIC;
		  instruction: out STD_LOGIC_VECTOR(15 downto 0);
		  flip_flop_flag : in STD_LOGIC;
		  control_points_pin : out STD_LOGIC_VECTOR(9 downto 0);
		  pintest : out STD_LOGIC_VECTOR (8 downto 0)
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
	 pintest <= pc_to_rom_and_adder;
	 
rom : entity work.rom   generic map (dataWidth => 16, addrWidth => 9)
          port map (Endereco => pc_to_rom_and_adder, Dado => on_instruction);

control_unit : entity work.rom_cu   generic map (dataWidth => 10, addrWidth => 4)
          port map (Endereco => opcode, Dado => control_points);
			 
pc : entity work.generic_register   generic map (larguraDados => 9)
          port map (DIN => mux_to_pc, DOUT => pc_to_rom_and_adder, ENABLE => '1', CLK => clock, RST => '0');

mux :  entity work.mux  generic map (larguraDados => 9)
        port map( entradaA_MUX => adder_to_mux,
                 entradaB_MUX => pc_instruction,
                 seletor_MUX => selector_mux,
                 saida_MUX => mux_to_pc);

adder :  entity work.adder  generic map (larguraDados => 9)
        port map( entradaA => "000000001", entradaB =>  pc_to_rom_and_adder, saida => adder_to_mux);
		  
end architecture;