library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity interface_switches is
    port (
        sw_in    : in std_logic_vector(9 DOWNTO 0);
        sw_out   : out std_logic_vector(7 DOWNTO 0);
        habilitate : in std_logic
    );
end entity;

architecture rtl of interface_switches is

BEGIN

    sw_out <= sw_in(7 downto 0) when (habilitate = '1') else (others => 'Z');
    
end architecture;