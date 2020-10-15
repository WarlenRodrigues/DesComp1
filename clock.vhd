library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity clock is
    port
    (
		  clock_50: in STD_LOGIC;
		  pintest : out STD_LOGIC_VECTOR (8 downto 0)
    );
end entity;

architecture rtl of clock is
signal data_in : STD_LOGIC_VECTOR(7 downto 0);
signal addresses : STD_LOGIC_VECTOR(7 downto 0);
signal data_out : STD_LOGIC_VECTOR(7 downto 0);
signal habilitate_read_mem : STD_LOGIC;
signal habilitate_write_mem : STD_LOGIC;
signal habilitates : STD_LOGIC_VECTOR(9 downto 0);
signal out_pintest : STD_LOGIC_VECTOR(8 downto 0);

alias decoder_to_ram : STD_LOGIC is habilitates(9);
alias addresses_to_ram : STD_LOGIC_VECTOR (6 downto 0) is addresses(6 downto 0);

begin
pintest <= out_pintest;

cpu : entity work.cpu port map (clock => clock_50,
		  addresses => addresses,
		  data_in => data_in,
		  data_out => data_out,
		  habilitate_read_mem => habilitate_read_mem,
		  habilitate_write_mem => habilitate_write_mem,
		  pintest => out_pintest
);

ram : entity work.memRam
port map (addr => addresses_to_ram, we => habilitate_write_mem, re => habilitate_read_mem, habilita =>  decoder_to_ram, dado_in => data_in, dado_out => data_out, clk => clock_50);

decoder : entity work.decoder port map ( Endereco => addresses, 
		 Dado => habilitates);

end architecture;