library ieee;
use ieee.std_logic_1164.all;

entity tristate is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entry : in std_logic_vector((larguraDados-1) downto 0);
    state : in std_logic;
    out_ : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture rtl of tristate is
  begin
    out_ <= entry when (state = '1') else 'Z';
end architecture;