library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity execution_operation is
    port
    (
		  clock: in STD_LOGIC;
		  instruction: in STD_LOGIC_VECTOR(15 downto 0);
		  flip_flop_flag: out STD_LOGIC;
		  control_points_pin : in STD_LOGIC_VECTOR(9 downto 0);
		  data_in : in STD_LOGIC_VECTOR(7 downto 0);
		  registers_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end entity;

architecture rtl of execution_operation is
signal imediate: STD_LOGIC_VECTOR(7 downto 0);
signal mux_to_ula: STD_LOGIC_VECTOR(7 downto 0);
signal ula_to_registers: STD_LOGIC_VECTOR(7 downto 0);
signal registers_to_ula: STD_LOGIC_VECTOR(7 downto 0);
signal flagZero: STD_LOGIC;

alias register_address: STD_LOGIC_VECTOR (2 downto 0) is instruction(11 downto 9);
alias selector_mux: STD_LOGIC is control_points_pin(7);
alias habilitate_register_bank: STD_LOGIC is control_points_pin(6);
alias ula_operation: STD_LOGIC_VECTOR (2 downto 0) is control_points_pin(5 downto 3);
alias habilitate_flip_flop: STD_LOGIC is control_points_pin(2);


begin
imediate <= instruction(7 downto 0);
registers_out <= registers_to_ula;

-- Entradas do mux:
-- entradaA_MUX => Data in vem do barramentos de dados: Entrada.
-- entradaB_MUX => Imediato, vem da instrucao.
-- Seletor => vem da unidade de controle, control_points_pin.
-- Saida Mux:
-- saida_MUX => a saida do Mux vai para a ULA.
mux :  entity work.muxgenerico  generic map (larguraDados => 8)
        port map( entradaA_MUX => data_in, -- Barramento de dados: Entrada - IO In
                 entradaB_MUX => imediate,
                 seletor_MUX => selector_mux,
                 saida_MUX => mux_to_ula);

-- Entradas da ULA:
-- entradaA => vem dos registradores.
-- entradaB => vem do Mux.
-- seletor => vem da Unidade de controle, control_points_pin.
-- Saidas da ULA:
-- saida => a saida da ULA volta para o banco de registradores.
-- flagZero => vai para o flagZero, e sera utilizado no caso de operacoes de CMP.
ula : entity work.ula  generic map(larguraDados => 8)
          port map (entradaA => registers_to_ula, entradaB =>  mux_to_ula, saida => ula_to_registers, seletor => ula_operation, flagZero => flagZero);
			 
-- Entradas do banco de registradores:
-- clk => clock.
-- endereco => vem da instrucao, selecionar qual registrador utilizaremos na operacao.
-- dadoEscrita => dado de saida da ULA que volta para os registradores.
-- habilitaEscrita => vem da unidade de controle.
-- Saida do banco de registradores:
-- saida => valor do registrador entra na A da ULA.
registers : entity work.register_bank   generic map (larguraDados => 8, larguraEndBancoRegs => 3)
          port map ( clk => clock,
              endereco => register_address,
              dadoEscrita => ula_to_registers,
              habilitaEscrita => habilitate_register_bank,
              saida  => registers_to_ula);
-- Entradas do Flip Flop:
-- DIN => FlagZero.
-- ENABLE => vem da unidade de controle, controla o acionamento do FlipFLop.
-- CLK => clock.
-- RST => 0.
-- Saida do Flip Flop:
-- DOUT => flip_flop_flag, vai ser usado na comparacao com a operacao JE.
flipflop : entity work.flipflop port map (DIN => flagZero,
       DOUT => flip_flop_flag,
       ENABLE => habilitate_flip_flop,
		 CLK => clock,
       RST => '0'
);
				  
end architecture;