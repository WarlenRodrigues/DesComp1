LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorGenerico_e_Interface is

    GENERIC (
        DATA_WIDTH : NATURAL := 8
    );

   port(
        clk                 :   in std_logic;
        habilitaLeitura     : in std_logic;
        limpaLeitura        : in std_logic;
        leituraUmSegundo    :   out std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
		  chave : in std_logic
   );

end entity;

architecture interface of divisorGenerico_e_Interface is

  signal sinalUmSegundo : std_logic;
  signal saidaclk_reg1seg : std_logic;
  signal saida_clk : std_logic;
  signal saida_clk_2 : std_logic;
  
begin

-- Nesse arquivo definimos qual base de tempo utilizaremos. Para testar o funciomanento do programa criamos duas bases de tempo.
-- Uma delas com 1 segundo para funcionar normalmente a outra com menos para testar se o programa esta certo.
-- Lemos a chave 0 da placa. No caso dela estar em 0 usamos a base de tempo de 1 segundo. Em caso dela estar 1 utilizamos a contagem mais rapida.

saidaclk_reg1seg <= saida_clk when chave = '0' else saida_clk_2;

baseTempo1: entity work.divisorGenerico
           generic map (divisor => 25000000)
           port map (clk => clk, saida_clk => saida_clk);

baseTempo2: entity work.divisorGenerico
           generic map (divisor => 100000)
           port map (clk => clk, saida_clk => saida_clk_2);

registraUmSegundo: entity work.flipflop
   port map (
        DIN => '1',
        DOUT => sinalUmSegundo,
        ENABLE => '1',
        CLK => saidaclk_reg1seg,
        RST => limpaLeitura
    );
	 

-- Faz o tristate de saida:
leituraUmSegundo <= ("0000000" & sinalUmSegundo) when habilitaLeitura = '1' else "ZZZZZZZZ";

end architecture interface;
