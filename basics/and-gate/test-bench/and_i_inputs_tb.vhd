----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2022 11:32:31
-- Design Name: 
-- Module Name: and_i_inputs_tb - Behavioral
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

entity and_i_inputs_tb is
--  Port ( );
end and_i_inputs_tb;

architecture Behavioral of and_i_inputs_tb is
    
    -- Declaramos la cantidad de entradas que vamos a tener
    constant input_width: natural := 8;
    
    -- Declaramos el componente que vamos a utilizar
    component and_i_inputs is
        generic(N: natural := input_width);
        port(input: in std_logic_vector ((N-1) downto 0);
            output: out std_logic);
    end component;
    
    -- Señales de entrada
    signal input: std_logic_vector ((input_width-1) downto 0) := "00000000";
    
    -- Señales de salida
    signal output: std_logic;
    
    begin
        
        uut: and_i_inputs port map (input => input,
                                    output => output);
        
        stimuli: process
            begin
                wait for 5ns;
                input <= "00000001";
                wait for 5ns;
                input <= "00001001";
                wait for 5ns;
                input <= "00011001";
                wait for 5ns;
                input <= "00000100";
                wait for 5ns;
                input <= "00001010";
                wait for 5ns;
                input <= "01111111";
                wait for 5ns;
                input <= "00001111";
                wait for 5ns;
                input <= "10101100";
                wait for 5ns;
                input <= "01011101";
                wait for 5ns;
                input <= "00011111";
                wait for 5ns;
                input <= "11111110";
                wait for 5ns;
                input <= "11101000";
                wait for 5ns;
                input <= "11111111";
                wait;
        end process;
end Behavioral;
