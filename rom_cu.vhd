library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

-- Decidimos fazer nossa unidade de controle baseada em uma ROM.
-- ROM Control Unit.

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
        tmp(0) := "0000000000"; -- NOP

        tmp(1) := "0011011010"; -- LOAD
		  -- Nosso LOAD deve habilitar, da seguinte forma, os seguintes sinais:
		  -- muxImeadiato(RAM) para 1 => 1 (imediato) da entrada do mux vai para a saida.
		  -- HabilitaRegistrador => 1.
		  -- Carregar a saida da ULA para a entrada B => Operacao.
		  -- HabilitaLeituraMem => 1.
        tmp(2) := "0001000010"; -- ADD
		  -- Nosso ADD deve habilitar, da seguinte forma, os seguintes sinais:
		  -- muxImeadiato(RAM) para 0 => 0 da entrada do mux vai para a saida.
		  -- HabilitaRegistrador => 1.
		  -- Operacao => Carregar a saida da ULA para a soma de A com B.
		  -- HabilitaLeituraMem => 1.
        tmp(3) := "0001001010"; -- SUB
		  -- Nosso SUB deve habilitar, da seguinte forma, os seguintes sinais:
		  -- muxImeadiato(RAM) para 0 => 0 da entrada do mux vai para a saida.
		  -- HabilitaRegistrador => 1.
		  -- Operacao => Carregar a saida da ULA para a subtracao de A com B.
		  -- HabilitaLeituraMem => 1.
        tmp(4) := "0011000000"; -- ADDI
		  -- Nosso ADDI deve habilitar, da seguinte forma, os seguintes sinais:
		  -- muxImeadiato(RAM) para 1 => 1 (imediato) da entrada do mux vai para a saida.
		  -- HabilitaRegistrador => 1.
		  -- Operacao => Carregar a saida da ULA para a soma de A com B.
        tmp(5) := "0011001000"; -- SUBI
		  -- Nosso SUBI deve habilitar, da seguinte forma, os seguintes sinais:
		  -- muxImeadiato(RAM) para 1 => 1 (imediato) da entrada do mux vai para a saida.
		  -- HabilitaRegistrador => 1.
		  -- Operacao => Carregar a saida da ULA para a subtracao de A com B.
        tmp(6) := "1000000000"; -- JUMP 
		  -- Nosso JUMP deve habilitar, da seguinte forma, os seguintes sinais:
		  -- Jump => 1.
        tmp(7) := "0100000000"; -- JE
		  -- Nosso JE deve habilitar, da seguinte forma, os seguintes sinais:
		  -- InstrucaoJE => 1.
        tmp(8) := "0011010001"; -- STORE
		  -- Nosso STORE deve habilitar, da seguinte forma, os seguintes sinais:
		  -- muxImeadiato(RAM) para 1 => 1 (imediato) da entrada do mux vai para a saida.
		  -- HabilitaRegistrador => 1.
		  -- Operacao => Carregar a saida da ULA para a entrada A.
		  -- HabilitaEscritaMem => 1.
        tmp(9) := "0001000110"; -- CMP
		  -- Nosso CMP deve habilitar, da seguinte forma, os seguintes sinais:
		  -- muxImeadiato(RAM) para 0 => 0  da entrada do mux vai para a saida.
		  -- HabilitaRegistrador => 1.
		  -- Operacao => Carregar a saida da ULA para a soma A com B.
		  -- FlagZero => 1.
		  -- HabilitaFF => 1.
		  -- HabilitaLeituraMem => 1.
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;