library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity clock is
    port
    (
		  clock_50: in STD_LOGIC;
		  HEX0: out STD_LOGIC_VECTOR(6 downto 0);
		  HEX1: out STD_LOGIC_VECTOR(6 downto 0);
		  HEX2: out STD_LOGIC_VECTOR(6 downto 0);
		  HEX3: out STD_LOGIC_VECTOR(6 downto 0);
		  HEX4: out STD_LOGIC_VECTOR(6 downto 0);
		  HEX5: out STD_LOGIC_VECTOR(6 downto 0);
		  LEDR: out STD_LOGIC_VECTOR(8 downto 0);
		  SW : IN std_logic_vector(9 DOWNTO 0);
		  data_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end entity;

architecture rtl of clock is
signal data_in_cpu : STD_LOGIC_VECTOR(7 downto 0);
signal addresses : STD_LOGIC_VECTOR(7 downto 0);
signal addresses_out_temp : STD_LOGIC_VECTOR(7 downto 0);

signal data_out_cpu : STD_LOGIC_VECTOR(7 downto 0);
signal habilitate_read_mem : STD_LOGIC;
signal habilitate_write_mem : STD_LOGIC;
signal habilitates : STD_LOGIC_VECTOR(11 downto 0);
signal out_pintest : STD_LOGIC_VECTOR(8 downto 0);
signal clk : STD_LOGIC;

signal register_to_display0, register_to_display1, register_to_display2, register_to_display3, register_to_display4, register_to_display5 : STD_LOGIC_VECTOR(3 downto 0);

alias decoder_to_ram : STD_LOGIC is habilitates(9);
alias addresses_to_ram : STD_LOGIC_VECTOR (6 downto 0) is addresses(6 downto 0);
alias cpu_to_register_display : STD_LOGIC_VECTOR(3 downto 0) is data_out_cpu(3 downto 0);
alias habilita_temp : STD_LOGIC is habilitates(10);
alias habilita_clear_temp : STD_LOGIC is habilitates(11);
alias habilita_sw : STD_LOGIC is habilitates(6);

alias chave_to_temporizador : STD_LOGIC is SW(0);

begin
-- pintest <= out_pintest;
-- Comment this line
clk <= clock_50;
LEDR <= out_pintest;
data_out <= data_in_cpu;

-- CPU entradas:
-- clock => clk que e o clock.
-- data_in => vem da RAM, do temporizador e das chaves.
-- CPU saidas:
-- addresses => que vai para o decoder e para a RAM sendo verificado o que deve ser habilitado.
-- data_out => data_out_cpu que vai para a RAM.
-- habilitate_read_mem => habilita a leitura da memoria.
-- habilitate_write_mem => habilita a escrita na memoria.
cpu : entity work.cpu port map (clock => clk,
		  addresses => addresses,
		  data_in => data_in_cpu,
		  data_out => data_out_cpu,
		  habilitate_read_mem => habilitate_read_mem,
		  habilitate_write_mem => habilitate_write_mem
);
-- RAM entradas:
-- addr => enderecos de 6 a zero para definir qual local da RAM iremos modificar.
-- we => habilitate_write_mem, habilita a escrita na RAM, vem da CPU.
-- re => habilitate_read_mem, habilita a leitura da RAM.
-- habilita => habilita a utilizacao da RAM, vem do decoder.
-- clk => clock.
-- dado_in => dado que iremos adicionar na RAM, vem da CPU.
-- RAM saidas:
-- dado_out => vai para o data_in da CPU.
ram : entity work.memRam
port map (addr => addresses_to_ram, we => habilitate_write_mem, re => habilitate_read_mem, habilita =>  decoder_to_ram, dado_in => data_out_cpu, dado_out => data_in_cpu, clk => clk);

-- DECODER entradas:
-- Endereco => Recebe os enderecos do barramento de enderecos.
-- DECODER saidas:
-- Dado => Devolve o que deve ser habilitado, entre displays, chaves, RAM, etc.
decoder : entity work.decoder port map ( Endereco => addresses, 
		 Dado => habilitates);

-- Temporizador entradas:
-- clk => clock.
-- habilitaLeitura => vem do decoder.
-- limpaLeitura => vem do decoder e define quando devemos resetar o valor que esta na memoria sendo que ja foi contado um segundo no programa.
-- chave => define a chave que modifica no arquivo da base de tempo qual base de tempo estamos utilizando.
-- Temporizador OUT:
-- leituraUmSegundo => quando da um, joga no barramento de dados: Entrada para depois olharmos pelo programa.
temporizador: entity work.divisorGenerico_e_Interface
  PORT MAP (
		clk                 => clk,
		habilitaLeitura     => habilita_temp,
		limpaLeitura        => habilita_clear_temp,
		leituraUmSegundo    => data_in_cpu,
		chave => chave_to_temporizador
  );


-- Definimos todos os registradores que fazem o intermedio do display. Cada um tem um sinal de habilita que vem do decoder.

register_display0 : entity work.generic_register_read_write	port map(DIN => cpu_to_register_display, DOUT => register_to_display0, ENABLE => habilitates(0), W => habilitate_write_mem, CLK => clk, RST => '0');
	
register_display1 : entity work.generic_register_read_write	port map(DIN => cpu_to_register_display, DOUT => register_to_display1, ENABLE => habilitates(1), W => habilitate_write_mem, CLK => clk, RST => '0');
	
register_display2 : entity work.generic_register_read_write	port map(DIN => cpu_to_register_display, DOUT => register_to_display2, ENABLE => habilitates(2), W => habilitate_write_mem, CLK => clk, RST => '0');

register_display3 : entity work.generic_register_read_write	port map(DIN => cpu_to_register_display, DOUT => register_to_display3, ENABLE => habilitates(3), W => habilitate_write_mem, CLK => clk, RST => '0');

register_display4 : entity work.generic_register_read_write	port map(DIN => cpu_to_register_display, DOUT => register_to_display4, ENABLE => habilitates(4), W => habilitate_write_mem, CLK => clk, RST => '0');

register_display5 : entity work.generic_register_read_write	port map(DIN => cpu_to_register_display, DOUT => register_to_display5, ENABLE => habilitates(5), W => habilitate_write_mem, CLK => clk, RST => '0');

-- interface_switches entradas:
-- sw => SW.
-- habilitate => habilita_sw, habilita a leitura das chaves.
-- interface_switches out:
-- sw_out => data_in_cpu, vai para a CPU para modificar o programa.
interface_switches: entity work.interface_switches
  port map (
		sw_in => SW,
		sw_out => data_in_cpu,
		habilitate => habilita_sw
  );
 
-- Instanciamos todos os displays para integracao com os registradores que definem os seus valores.

display0 :  entity work.display_decoder
port map(dadoHex => register_to_display0,
		  apaga =>  '0',
		  negativo => '0',
		  overFlow =>  '0',
		  saida7seg => HEX0);
		  
display1:  entity work.display_decoder
port map(dadoHex => register_to_display1,
		  apaga =>  '0',
		  negativo => '0',
		  overFlow =>  '0',
		  saida7seg => HEX1);

display2 :  entity work.display_decoder
port map(dadoHex => register_to_display2,
		  apaga =>  '0',
		  negativo => '0',
		  overFlow =>  '0',
		  saida7seg => HEX2);

display3 :  entity work.display_decoder
port map(dadoHex => register_to_display3,
		  apaga =>  '0',
		  negativo => '0',
		  overFlow =>  '0',
		  saida7seg => HEX3);
		  
display4 :  entity work.display_decoder
port map(dadoHex => register_to_display4,
		  apaga =>  '0',
		  negativo => '0',
		  overFlow =>  '0',
		  saida7seg => HEX4);
		  
display5 :  entity work.display_decoder
port map(dadoHex => register_to_display5,
		  apaga =>  '0',
		  negativo => '0',
		  overFlow =>  '0',
		  saida7seg => HEX5);
		  

end architecture;