library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA is
    generic
    (
        larguraDados : natural := 8
    );
    port
    (
	 -- Definimos os pinos de entrada e saida da ULA.
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      flagZero: out std_logic
    );
end entity;

architecture rtl of ULA is
  constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');
  
  -- Dependendo da operacao que chega no seletor da ULA uma das operacoes a seguir sera retornada.

   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_and :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_or :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_xor :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_not :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);

    begin
	 
		-- Todas as operacoes sao realizadas.
		
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
      op_and    <= entradaA and entradaB;
      op_or     <= entradaA or entradaB;
      op_xor    <= entradaA xor entradaB;
      op_not    <= not entradaA;

		-- A saida sera selecionada de acordo com o seletor.

      saida <= soma when (seletor = "000") else
          subtracao when (seletor = "001") else
          entradaA when  (seletor = "010") else
          entradaB when  (seletor = "011") else
          op_xor when    (seletor = "100") else
          op_not when    (seletor = "101") else
          op_and when    (seletor = "110") else
          op_or when     (seletor = "111") else
          entradaA;      -- outra opcao: saida = entradaA

		-- A flagZero e utilizada para operacoes do tipo CMP. No caso da entrada A ser igual a entrada B a saida da flagZero e 1. Caso contrario
		-- e zero.
      flagZero <= '1' when unsigned(entradaA) = unsigned(entradaB) else '0';

end architecture;