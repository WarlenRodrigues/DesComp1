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
		  -- Cada instrucao em binario contem um comentario com sua equivalente em assembly.
tmp(0) := "0001000000000000"; -- LOAD R0, #0
tmp(1) := "1000000000000000"; -- STORE R0, %0
tmp(2) := "1000000000000001"; -- STORE R0, %1
tmp(3) := "1000000000000010"; -- STORE R0, %2
tmp(4) := "1000000000000011"; -- STORE R0, %3
tmp(5) := "1000000000000100"; -- STORE R0, %4
tmp(6) := "1000000000000101"; -- STORE R0, %5
tmp(7) := "1000000010000010"; -- STORE R0, %130
tmp(8) := "1000000010000011"; -- STORE R0, %131
tmp(9) := "1000000010000100"; -- STORE R0, %132
tmp(10) := "1000000010000101"; -- STORE R0, %133
tmp(11) := "1000000010000110"; -- STORE R0, %134
tmp(12) := "1000000010000111"; -- STORE R0, %135
tmp(13) := "0001001000000001"; -- LOAD R1, #1
tmp(14) := "1000001000010000"; -- STORE R1, %16
tmp(15) := "0001010000010000"; -- LOOP: LOAD R2, #16
tmp(16) := "1001010000000110"; -- CMP R2, %6
tmp(17) := "0111000000001111"; -- JE LOOP
tmp(18) := "0001000000000000"; -- LOAD R0, #0
tmp(19) := "1001000000001111"; -- CMP R0, %15
tmp(20) := "0111000000001111"; -- JE LOOP
tmp(21) := "0001001000000001"; -- LOAD R1, #1
tmp(22) := "1000001000010000"; -- STORE R1, %16
tmp(23) := "0001010000000010"; -- LOAD R2, #2
tmp(24) := "1001010000000110"; -- CMP R2, %6
tmp(25) := "0111000001110001"; -- JE CONFIG_SEC
tmp(26) := "0001010000000100"; -- LOAD R2, #4
tmp(27) := "1001010000000110"; -- CMP R2, %6
tmp(28) := "0111000010001000"; -- JE CONFIG_MIN
tmp(29) := "0001010000001000"; -- LOAD R2, #8
tmp(30) := "1001010000000110"; -- CMP R2, %6
tmp(31) := "0111000010011111"; -- JE CONFIG_HOUR
tmp(32) := "0001001000000001"; -- LOAD R1, #1
tmp(33) := "0010001010000010"; -- ADD R1, %130
tmp(34) := "1000001000000000"; -- STORE R1, %0
tmp(35) := "1000001010000010"; -- STORE R1, %130
tmp(36) := "0001010000001010"; -- IFS: LOAD R2, #10
tmp(37) := "1001010010000010"; -- CMP R2, %130
tmp(38) := "0111000000110111"; -- JE INC_SEC_D
tmp(39) := "0001010000000110"; -- LOAD R2, #6
tmp(40) := "1001010010000011"; -- CMP R2, %131
tmp(41) := "0111000000111111"; -- JE INC_MIN_U
tmp(42) := "0001010000001010"; -- LOAD R2, #10
tmp(43) := "1001010010000100"; -- CMP R2, %132
tmp(44) := "0111000001000111"; -- JE INC_MIN_D
tmp(45) := "0001010000000110"; -- LOAD R2, #6
tmp(46) := "1001010010000101"; -- CMP R2, %133
tmp(47) := "0111000001001111"; -- JE INC_HOUR_U
tmp(48) := "0001010000001010"; -- LOAD R2, #10
tmp(49) := "1001010010000110"; -- CMP R2, %134
tmp(50) := "0111000001010111"; -- JE INC_HOUR_D
tmp(51) := "0001010000000010"; -- LOAD R2, #2
tmp(52) := "1001010010000111"; -- CMP R2, %135
tmp(53) := "0111000001011111"; -- JE DAY
tmp(54) := "0110000000001111"; -- JMP LOOP
tmp(55) := "0001001000000001"; -- INC_SEC_D: LOAD R1, #1
tmp(56) := "0010001010000011"; -- ADD R1, %131
tmp(57) := "1000001010000011"; -- STORE R1, %131
tmp(58) := "1000001000000001"; -- STORE R1, %1
tmp(59) := "0001000000000000"; -- LOAD R0, #0
tmp(60) := "1000000010000010"; -- STORE R0, %130
tmp(61) := "1000000000000000"; -- STORE R0, %0
tmp(62) := "0110000000100100"; -- JMP IFS
tmp(63) := "0001001000000001"; -- INC_MIN_U: LOAD R1, #1
tmp(64) := "0010001010000100"; -- ADD R1, %132
tmp(65) := "1000001010000100"; -- STORE R1, %132
tmp(66) := "1000001000000010"; -- STORE R1, %2
tmp(67) := "0001000000000000"; -- LOAD R0, #0
tmp(68) := "1000000010000011"; -- STORE R0, %131
tmp(69) := "1000000000000001"; -- STORE R0, %1
tmp(70) := "0110000000100100"; -- JMP IFS
tmp(71) := "0001001000000001"; -- INC_MIN_D: LOAD R1, #1
tmp(72) := "0010001010000101"; -- ADD R1, %133
tmp(73) := "1000001010000101"; -- STORE R1, %133
tmp(74) := "1000001000000011"; -- STORE R1, %3
tmp(75) := "0001000000000000"; -- LOAD R0, #0
tmp(76) := "1000000010000100"; -- STORE R0, %132
tmp(77) := "1000000000000010"; -- STORE R0, %2
tmp(78) := "0110000000100100"; -- JMP IFS
tmp(79) := "0001001000000001"; -- INC_HOUR_U: LOAD R1, #1
tmp(80) := "0010001010000110"; -- ADD R1, %134
tmp(81) := "1000001010000110"; -- STORE R1, %134
tmp(82) := "1000001000000100"; -- STORE R1, %4
tmp(83) := "0001000000000000"; -- LOAD R0, #0
tmp(84) := "1000000010000101"; -- STORE R0, %133
tmp(85) := "1000000000000011"; -- STORE R0, %3
tmp(86) := "0110000000100100"; -- JMP IFS
tmp(87) := "0001001000000001"; -- INC_HOUR_D: LOAD R1, #1
tmp(88) := "0010001010000111"; -- ADD R1, %135
tmp(89) := "1000001010000111"; -- STORE R1, %135
tmp(90) := "1000001000000101"; -- STORE R1, %5
tmp(91) := "0001000000000000"; -- LOAD R0, #0
tmp(92) := "1000000010000110"; -- STORE R0, %134
tmp(93) := "1000000000000100"; -- STORE R0, %4
tmp(94) := "0110000000100100"; -- JMP IFS
tmp(95) := "0001001000000100"; -- DAY: LOAD R1, #4
tmp(96) := "1001001010000110"; -- CMP R1, %134
tmp(97) := "0111000001100011"; -- JE RESET_DAY
tmp(98) := "0110000000001111"; -- JMP LOOP
tmp(99) := "0001000000000000"; -- RESET_DAY: LOAD R0, #0
tmp(100) := "1000000000000000"; -- STORE R0, %0
tmp(101) := "1000000000000001"; -- STORE R0, %1
tmp(102) := "1000000000000010"; -- STORE R0, %2
tmp(103) := "1000000000000011"; -- STORE R0, %3
tmp(104) := "1000000000000100"; -- STORE R0, %4
tmp(105) := "1000000000000101"; -- STORE R0, %5
tmp(106) := "1000000010000010"; -- STORE R0, %130
tmp(107) := "1000000010000011"; -- STORE R0, %131
tmp(108) := "1000000010000100"; -- STORE R0, %132
tmp(109) := "1000000010000101"; -- STORE R0, %133
tmp(110) := "1000000010000110"; -- STORE R0, %134
tmp(111) := "1000000010000111"; -- STORE R0, %135
tmp(112) := "0110000000001111"; -- JMP LOOP
tmp(113) := "0001001000000001"; -- CONFIG_SEC: LOAD R1, #1
tmp(114) := "0010001010000010"; -- ADD R1, %130
tmp(115) := "1000001000000000"; -- STORE R1, %0
tmp(116) := "1000001010000010"; -- STORE R1, %130
tmp(117) := "0001010000001010"; -- CONFIG_SEC_IF: LOAD R2, #10
tmp(118) := "1001010010000010"; -- CMP R2, %130
tmp(119) := "0111000001111100"; -- JE CONFIG_INC_SEC_D
tmp(120) := "0001010000000110"; -- LOAD R2, #6
tmp(121) := "1001010010000011"; -- CMP R2, %131
tmp(122) := "0111000010000100"; -- JE CONFIG_RESET_SEC_D
tmp(123) := "0110000000001111"; -- JMP LOOP
tmp(124) := "0001001000000001"; -- CONFIG_INC_SEC_D: LOAD R1, #1
tmp(125) := "0010001010000011"; -- ADD R1, %131
tmp(126) := "1000001010000011"; -- STORE R1, %131
tmp(127) := "1000001000000001"; -- STORE R1, %1
tmp(128) := "0001000000000000"; -- LOAD R0, #0
tmp(129) := "1000000010000010"; -- STORE R0, %130
tmp(130) := "1000000000000000"; -- STORE R0, %0
tmp(131) := "0110000001110101"; -- JMP CONFIG_SEC_IF
tmp(132) := "0001000000000000"; -- CONFIG_RESET_SEC_D: LOAD R0, #0
tmp(133) := "1000000010000011"; -- STORE R0, %131
tmp(134) := "1000000000000001"; -- STORE R0, %1
tmp(135) := "0110000000001111"; -- JMP LOOP
tmp(136) := "0001001000000001"; -- CONFIG_MIN: LOAD R1, #1
tmp(137) := "0010001010000100"; -- ADD R1, %132
tmp(138) := "1000001010000100"; -- STORE R1, %132
tmp(139) := "1000001000000010"; -- STORE R1, %2
tmp(140) := "0001010000001010"; -- CONFIG_MIN_IF: LOAD R2, #10
tmp(141) := "1001010010000100"; -- CMP R2, %132
tmp(142) := "0111000010010011"; -- JE CONFIG_INC_MIN_D
tmp(143) := "0001010000000110"; -- LOAD R2, #6
tmp(144) := "1001010010000101"; -- CMP R2, %133
tmp(145) := "0111000010011011"; -- JE CONFIG_RESET_MIN_D
tmp(146) := "0110000000001111"; -- JMP LOOP
tmp(147) := "0001001000000001"; -- CONFIG_INC_MIN_D: LOAD R1, #1
tmp(148) := "0010001010000101"; -- ADD R1, %133
tmp(149) := "1000001010000101"; -- STORE R1, %133
tmp(150) := "1000001000000011"; -- STORE R1, %3
tmp(151) := "0001000000000000"; -- LOAD R0, #0
tmp(152) := "1000000010000100"; -- STORE R0, %132
tmp(153) := "1000000000000010"; -- STORE R0, %2
tmp(154) := "0110000010001100"; -- JMP CONFIG_MIN_IF
tmp(155) := "0001000000000000"; -- CONFIG_RESET_MIN_D: LOAD R0, #0
tmp(156) := "1000000010000101"; -- STORE R0, %133
tmp(157) := "1000000000000011"; -- STORE R0, %3
tmp(158) := "0110000000001111"; -- JMP LOOP
tmp(159) := "0001001000000001"; -- CONFIG_HOUR: LOAD R1, #1
tmp(160) := "0010001010000110"; -- ADD R1, %134
tmp(161) := "1000001010000110"; -- STORE R1, %134
tmp(162) := "1000001000000100"; -- STORE R1, %4
tmp(163) := "0001010000001010"; -- CONFIG_HOUR_IF: LOAD R2, #10
tmp(164) := "1001010010000110"; -- CMP R2, %134
tmp(165) := "0111000010101010"; -- JE CONFIG_INC_HOUR_D
tmp(166) := "0001010000000010"; -- LOAD R2, #2
tmp(167) := "1001010010000111"; -- CMP R2, %135
tmp(168) := "0111000010110010"; -- JE CONFIG_DAY
tmp(169) := "0110000000001111"; -- JMP LOOP
tmp(170) := "0001001000000001"; -- CONFIG_INC_HOUR_D: LOAD R1, #1
tmp(171) := "0010001010000111"; -- ADD R1, %135
tmp(172) := "1000001010000111"; -- STORE R1, %135
tmp(173) := "1000001000000101"; -- STORE R1, %5
tmp(174) := "0001000000000000"; -- LOAD R0, #0
tmp(175) := "1000000010000110"; -- STORE R0, %134
tmp(176) := "1000000000000100"; -- STORE R0, %4
tmp(177) := "0110000010100011"; -- JMP CONFIG_HOUR_IF
tmp(178) := "0001001000000100"; -- CONFIG_DAY: LOAD R1, #4
tmp(179) := "1001001010000110"; -- CMP R1, %134
tmp(180) := "0111000010110110"; -- JE CONFIG_RESET_DAY
tmp(181) := "0110000000001111"; -- JMP LOOP
tmp(182) := "0001000000000000"; -- CONFIG_RESET_DAY: LOAD R0, #0
tmp(183) := "1000000000000100"; -- STORE R0, %4
tmp(184) := "1000000000000101"; -- STORE R0, %5
tmp(185) := "1000000010000110"; -- STORE R0, %134
tmp(186) := "1000000010000111"; -- STORE R0, %135
tmp(187) := "0110000000001111"; -- JMP LOOP

       return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;