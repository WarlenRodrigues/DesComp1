library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
   generic (
          dataWidth: natural := 16;
          addrWidth: natural := 10
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture rtl of rom is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
--        tmp(0) := "0000" & "000" & "000000000"; -- Load for r7 mem [0x200]
--        tmp(1) := "0000" & "000" & "000000000"; -- Jump to line of the code [256]
--        tmp(2) := "0000" & "000" & "000000000";
--        tmp(3) := "0110" & "000" & "000000110"; -- JUMP
--        tmp(4) := "0000" & "000" & "000000000";
--        tmp(5) := "0000" & "000" & "000000000";
--        tmp(6) := "0000" & "000" & "000000000";
--        tmp(7) := "0111" & "000" & "000000010"; -- JE
--        tmp(8) := "0000" & "000" & "000000000";
--        tmp(9) := "0000" & "000" & "000000000";
--        tmp(10) := "0000" & "000" & "000000000";
--        tmp(256) := x"55";
        tmp(0) := "0000" & "000" & "000000000"; -- 
        tmp(1) := "0000" & "000" & "000000000"; -- 
        tmp(2) := "0001" & "001" & "000001111"; -- LOAD R1, #15
        tmp(3) := "0000" & "000" & "000000000"; -- LOAD R2, #15
        tmp(4) := "1000" & "001" & "100000011"; -- STORE Mem[3], R2
        tmp(5) := "1001" & "001" & "100000011"; -- CMP R1, Mem[3]
        tmp(6) := "0111" & "000" & "000001001"; -- JE ROM[9]
        tmp(7) := "0000" & "000" & "000000000"; -- 
        tmp(8) := "0000" & "000" & "000000000";
        tmp(9) := "0000" & "000" & "000000000";
        tmp(10) := "0110" & "000" & "000000000"; -- JUMP
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;