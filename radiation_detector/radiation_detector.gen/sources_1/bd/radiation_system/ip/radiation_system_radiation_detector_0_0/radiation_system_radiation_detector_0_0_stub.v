// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun  6 15:58:05 2025
// Host        : DESKTOP-UI9B5C1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/Project/radiation_detection_pynq/radiation_detector/radiation_detector.gen/sources_1/bd/radiation_system/ip/radiation_system_radiation_detector_0_0/radiation_system_radiation_detector_0_0_stub.v
// Design      : radiation_system_radiation_detector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "radiation_detector_top,Vivado 2022.2" *)
module radiation_system_radiation_detector_0_0(clk, rst_n, alert)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,alert" */;
  input clk;
  input rst_n;
  output alert;
endmodule
