library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_cu is
   generic (
          dataWidth: natural := 10;
          addrWidth: natural := 4
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture rtl of rom_cu is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
        tmp(0) := "0000000000"; -- Load for r7 mem [0x200]
        tmp(1) := "0011011010"; -- LOAD
        tmp(2) := "0001000010"; -- ADD
        tmp(3) := "0001001010"; -- SUB
        tmp(4) := "0011000010"; -- ADDI
        tmp(5) := "0011001010"; -- SUBI
        tmp(6) := "1000000000"; -- JUMP 
        tmp(7) := "0100000000"; -- JE
        tmp(8) := "0011010001"; -- STORE
        tmp(9) := "0001000110"; -- CMP
--        tmp(10) := x"55";
--        tmp(11) := x"55";
--        tmp(12) := x"55";
--        tmp(13) := x"55";
--        tmp(14) := x"55";
--        tmp(15) := x"55";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;