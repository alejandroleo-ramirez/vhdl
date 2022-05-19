----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Alejandro Leo-Ramirez
-- 
-- Create Date: 17.05.2022 14:46:15
-- Design Name: 
-- Module Name: and_2_inputs - Behavioral
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

entity and_2_inputs is
 port (input: in std_logic_vector (1 downto 0);
        output: out std_logic);
end and_2_inputs;

architecture Behavioral of and_2_inputs is

begin

    output <= input(1) and input(0);

end Behavioral;
