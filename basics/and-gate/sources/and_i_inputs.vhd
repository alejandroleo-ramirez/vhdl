----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2022 18:16:26
-- Design Name: 
-- Module Name: and_i_inputs - Behavioral
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

entity and_i_inputs is

    -- Definición del número de entradas (por defecto, 8 en este caso)
    generic (N: natural := 8);
    
    -- Definición de los puertos
    port (input: in std_logic_vector ((N-1) downto 0);
        output: out std_logic);

end and_i_inputs;

architecture Behavioral of and_i_inputs is

    signal s: std_logic_vector ((N-3) downto 0);
    
    begin
        s(0) <= input(0) and input (1);
        
        generate_and: for i in 1 to (N-3) generate
            s(i) <= input(i+1) and s(i-1);
        end generate;
        
        output <= input(N-1) and s(N-3);
end Behavioral;
