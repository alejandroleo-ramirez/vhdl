----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2022 17:31:00
-- Design Name: 
-- Module Name: and_2_inputs_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and_2_inputs_tb is
--  Port ( );
end and_2_inputs_tb;

architecture Behavioral of and_2_inputs_tb is

    component and_2_inputs is
        port(input: in std_logic_vector(1 downto 0);
            output: out std_logic);
    end component;
    
    -- Señales de entrada
    signal input: std_logic_vector(1 downto 0) := "00";
    
    -- Señales de salida
    signal output: std_logic;

begin

    UUT: and_2_inputs port map (input => input,
                                 output => output);
    stimuli: process
    begin
        --INICIO
        -- input = "00"
        
        -- input = "01"
        wait for 5 ns;
        input <= "01";
        
        -- input = "10"
        wait for 5 ns;
        input <= "10";
        
        -- input = "11"
        wait for 5 ns;
        input <= "11";
        
        -- Este wait para la ejecución del test
        wait;
    end process;

end Behavioral;
