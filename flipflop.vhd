library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop is
    port (DIN : in STD_LOGIC;
       DOUT : out STD_LOGIC;
       ENABLE : in STD_LOGIC;
       CLK,RST : in STD_LOGIC
        );
end entity;

architecture rtl of flipflop is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            DOUT <= (others => '0');    -- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
                        DOUT <= DIN;
                end if;
            end if;
        end if;
    end process;
end architecture;