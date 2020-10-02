library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity adder is
    generic
    (
        larguraDados : natural := 10
    );
    port
    (
	 -- Entry A is going to be one.
	 -- Entry B is going to be PC.
        entradaA, entradaB: in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:  out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture rtl of adder is
    begin
        saida <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
end architecture;