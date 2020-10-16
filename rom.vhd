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
		  -- CMP
--        tmp(2) := "0001" & "001" & "000001111"; -- LOAD R1, #15
--        tmp(3) := "0000" & "000" & "000000000"; -- NOP
--        tmp(4) := "1000" & "001" & "010000011"; -- STORE Mem[131], R1
--        tmp(5) := "1001" & "001" & "010000011"; -- CMP R1, Mem[131]
--        tmp(6) := "0111" & "000" & "000001001"; -- JE ROM[9]
			-- ADD
--        tmp(2) := "0001" & "001" & "000001111"; -- LOAD R1, #15
--		  tmp(3) := "0001" & "010" & "000011110"; -- LOAD R1, #30
--        tmp(4) := "0000" & "000" & "000000000"; -- NOP
--        tmp(5) := "1000" & "001" & "010000011"; -- STORE Mem[131], R1
--		  tmp(6) := "1000" & "010" & "010000111"; -- STORE Mem[131], R1
--        tmp(7) := "0010" & "001" & "010000011"; -- ADD R1, Mem[131]
--        tmp(8) := "1001" & "001" & "010000111"; -- CMP R1, Mem[135]
--        tmp(9) := "0111" & "000" & "000000000"; -- JE ROM[9]
--        tmp(10) := "0000" & "000" & "000000000"; -- JE ROM[9]
--        tmp(11) := "0000" & "000" & "000000000"; -- JE ROM[9]
--        tmp(12) := "0110" & "000" & "000000000"; -- JUMP
--		  -- SUB
--        tmp(2) := "0001" & "001" & "000001111"; -- LOAD R1, #15
--		  tmp(3) := "0001" & "010" & "000000000"; -- LOAD R1, #0
--        tmp(4) := "0000" & "000" & "000000000"; -- NOP
--        tmp(5) := "1000" & "001" & "010000011"; -- STORE Mem[131], R1
--		  tmp(6) := "1000" & "010" & "010000111"; -- STORE Mem[135], R1
--        tmp(7) := "0011" & "001" & "010000011"; -- SUB R1, Mem[131]
--        tmp(8) := "1001" & "001" & "010000111"; -- CMP R1, Mem[135]
--        tmp(9) := "0111" & "000" & "000000000"; -- JE ROM[9]
--        tmp(10) := "0000" & "000" & "000000000"; -- JE ROM[9]
--        tmp(11) := "0000" & "000" & "000000000"; -- JE ROM[9]
--        tmp(12) := "0110" & "000" & "000000000"; -- JUMP
-- STORE ON IO
        tmp(2) := "0001" & "001" & "000000010"; -- LOAD R1, #2
		  tmp(3) := "0001" & "010" & "000000001"; -- LOAD R2, #1
        tmp(4) := "0000" & "000" & "000000000"; -- NOP
        tmp(5) := "1000" & "001" & "010000011"; -- STORE Mem[131], R1
		  tmp(6) := "1000" & "010" & "010000111"; -- STORE Mem[135], R1
        tmp(7) := "0010" & "001" & "010000011"; -- ADD R1, Mem[131]
		  tmp(8) := "1000" & "001" & "000000000"; -- STORE Mem[135], R1

--        tmp(8) := "1001" & "001" & "010000111"; -- CMP R1, Mem[135]
--        tmp(9) := "0111" & "000" & "000000000"; -- JE ROM[9]
--        tmp(10) := "0000" & "000" & "000000000"; -- JE ROM[9]
--        tmp(11) := "0000" & "000" & "000000000"; -- JE ROM[9]
        tmp(9) := "0110" & "000" & "000000111"; -- JUMP
		-- 
       return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;