library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_bank is
    generic
    (
        larguraDados        : natural := 8; -- Precisa talvez atualizar TODO.
        larguraEndBancoRegs : natural := 3   --Resulta em 2^3=8 posicoes
    );

-- Leitura e escrita de um registrador.
    port
    (
        clk        : in std_logic;
        endereco       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        dadoEscrita    : in std_logic_vector((larguraDados-1) downto 0);
        habilitaEscrita: in std_logic := '0';
        saida          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture rtl of register_bank is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (habilitaEscrita = '1') then
                registrador(to_integer(unsigned(endereco))) := dadoEscrita;
            end if;
        end if;
    end process;
end architecture;