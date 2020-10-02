library ieee;
use ieee.std_logic_1164.all;

entity mux is
  -- Total de bits das entradas e saidas
  -- Data length is about next instruction address.
  generic ( larguraDados : natural := 10);
  port (
    entradaA_MUX, entradaB_MUX : in std_logic_vector((larguraDados-1) downto 0);
    seletor_MUX : in std_logic;
    saida_MUX : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture rtl of mux is
  begin
    saida_MUX <= entradaB_MUX when (seletor_MUX = '1') else entradaA_MUX;
end architecture;