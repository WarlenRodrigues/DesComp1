library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity execution_operation is
    port
    (
		  clock: in STD_LOGIC;
--		  mux_selector: in STD_LOGIC;
		  instruction: out STD_LOGIC_VECTOR(15 downto 0);
		  pintest: out STD_LOGIC_VECTOR(8 downto 0) -- TESTE TODO TIRAR
    );
end entity;

architecture rtl of execution_operation is
signal imediate: STD_LOGIC_VECTOR(7 downto 0);
signal on_instruction: STD_LOGIC_VECTOR(15 downto 0);
signal control_points: STD_LOGIC_VECTOR(9 downto 0);
signal mux_to_ula: STD_LOGIC_VECTOR(7 downto 0);
signal ula_to_registers: STD_LOGIC_VECTOR(7 downto 0);
signal registers_to_ula: STD_LOGIC_VECTOR(7 downto 0);

alias register_address: STD_LOGIC_VECTOR (2 downto 0) is on_instruction(11 downto 9);
alias selector_mux: STD_LOGIC is control_points(7);
alias habilitate_register_bank: STD_LOGIC is control_points(6);
alias ula_operation: STD_LOGIC_VECTOR (2 downto 0) is control_points(5 downto 3);


begin
imediate <= on_instruction(7 downto 0);
instruction <= on_instruction;
 
mux :  entity work.mux  generic map (larguraDados => 8)
        port map( entradaA_MUX => adder_to_mux, -- Barramento de dados: Entrada - IO In
                 entradaB_MUX => imediate,
                 seletor_MUX => selector_mux,
                 saida_MUX => mux_to_ula);
					  
ula : entity work.ula  generic map(larguraDados => 8)
          port map (entradaA => registers_to_ula, entradaB =>  mux_to_ula, saida => ula_to_registers, seletor => ula_operation, flagZero => '0');
			 
registers : entity work.register_bank   generic map (larguraDados => 8, larguraEndBancoRegs => 3)
          port map ( clk => clock,
              endereco => register_address,
              dadoEscrita => ula_to_registers,
              habilitaEscrita => habilitate_register_bank,
              saida  => registers_to_ula);
				  
end architecture;