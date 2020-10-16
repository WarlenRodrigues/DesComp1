
--signal rom_to_ram: STD_LOGIC_VECTOR(9 downto 0);
--
--alias register_address : std_logic_vector(2 downto 0) is instruction(12 downto 10);

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
   port (
		 Endereco : in std_logic_vector (7 DOWNTO 0);
		 Dado : out std_logic_vector (9 DOWNTO 0)
    );
end entity;

architecture rtl of decoder is

begin

Dado <= "1000000000" when Endereco(7) = '1' else -- Bloco RAM
		  "0000000001" when Endereco = "00000000" else -- Display 0
		  "0000000010" when Endereco = "00000001" else -- Display 1
		  "0000000100" when Endereco = "00000010" else -- Display 2
		  "0000001000" when Endereco = "00000011" else -- Display 3
		  "0000010000" when Endereco = "00000100" else -- Display 4
		  "0000100000" when Endereco = "00000101" else -- Display 5
		  "0001000000" when Endereco = "00000110" else -- Chaves
		  "0010000000" when Endereco = "00000111" else -- Botoes
		  "0100000000" when Endereco = "00001000" else -- Leds
		  "0000000000";
		  
end architecture;