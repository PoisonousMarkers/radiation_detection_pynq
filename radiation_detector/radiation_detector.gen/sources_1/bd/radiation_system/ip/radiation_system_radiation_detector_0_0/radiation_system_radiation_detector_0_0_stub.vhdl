-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Jun  6 15:58:05 2025
-- Host        : DESKTOP-UI9B5C1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Documents/Project/radiation_detection_pynq/radiation_detector/radiation_detector.gen/sources_1/bd/radiation_system/ip/radiation_system_radiation_detector_0_0/radiation_system_radiation_detector_0_0_stub.vhdl
-- Design      : radiation_system_radiation_detector_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity radiation_system_radiation_detector_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    alert : out STD_LOGIC
  );

end radiation_system_radiation_detector_0_0;

architecture stub of radiation_system_radiation_detector_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,alert";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "radiation_detector_top,Vivado 2022.2";
begin
end;
