// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun  6 15:58:05 2025
// Host        : DESKTOP-UI9B5C1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/Project/radiation_detection_pynq/radiation_detector/radiation_detector.gen/sources_1/bd/radiation_system/ip/radiation_system_radiation_detector_0_0/radiation_system_radiation_detector_0_0_sim_netlist.v
// Design      : radiation_system_radiation_detector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "radiation_system_radiation_detector_0_0,radiation_detector_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "radiation_detector_top,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module radiation_system_radiation_detector_0_0
   (clk,
    rst_n,
    alert);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN radiation_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output alert;

  wire alert;
  wire clk;
  wire rst_n;

  radiation_system_radiation_detector_0_0_radiation_detector_top inst
       (.alert(alert),
        .clk(clk),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "radiation_detector_core" *) 
module radiation_system_radiation_detector_0_0_radiation_detector_core
   (alert,
    DI,
    S,
    alert_reg_0,
    alert_reg_1,
    clk,
    alert_reg_2,
    signal_valid);
  output alert;
  input [3:0]DI;
  input [3:0]S;
  input [1:0]alert_reg_0;
  input [1:0]alert_reg_1;
  input clk;
  input alert_reg_2;
  input signal_valid;

  wire [3:0]DI;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [3:0]S;
  wire alert;
  wire alert_i_1_n_0;
  wire [1:0]alert_reg_0;
  wire [1:0]alert_reg_1;
  wire alert_reg_2;
  wire clk;
  wire signal_valid;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:2]NLW_state1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hF0FAF2FA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state1_carry__0_n_2),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(signal_valid),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAFA8A0)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state1_carry__0_n_2),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(signal_valid),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(signal_valid),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,PULSE_DETECT:010,PROCESS:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(alert_reg_2),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:001,PULSE_DETECT:010,PROCESS:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(alert_reg_2),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "IDLE:001,PULSE_DETECT:010,PROCESS:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(alert_reg_2),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    alert_i_1
       (.I0(signal_valid),
        .I1(state1_carry__0_n_2),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(alert),
        .O(alert_i_1_n_0));
  FDCE alert_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(alert_reg_2),
        .D(alert_i_1_n_0),
        .Q(alert));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({NLW_state1_carry__0_CO_UNCONNECTED[3:2],state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,alert_reg_0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,alert_reg_1}));
endmodule

(* ORIG_REF_NAME = "radiation_detector_top" *) 
module radiation_system_radiation_detector_0_0_radiation_detector_top
   (alert,
    clk,
    rst_n);
  output alert;
  input clk;
  input rst_n;

  wire alert;
  wire clk;
  wire rst_n;
  wire signal_gen_n_1;
  wire signal_gen_n_10;
  wire signal_gen_n_11;
  wire signal_gen_n_12;
  wire signal_gen_n_13;
  wire signal_gen_n_2;
  wire signal_gen_n_3;
  wire signal_gen_n_4;
  wire signal_gen_n_5;
  wire signal_gen_n_6;
  wire signal_gen_n_7;
  wire signal_gen_n_8;
  wire signal_gen_n_9;
  wire signal_valid;

  radiation_system_radiation_detector_0_0_radiation_detector_core detector_core
       (.DI({signal_gen_n_8,signal_gen_n_9,signal_gen_n_10,signal_gen_n_11}),
        .S({signal_gen_n_4,signal_gen_n_5,signal_gen_n_6,signal_gen_n_7}),
        .alert(alert),
        .alert_reg_0({signal_gen_n_12,signal_gen_n_13}),
        .alert_reg_1({signal_gen_n_2,signal_gen_n_3}),
        .alert_reg_2(signal_gen_n_1),
        .clk(clk),
        .signal_valid(signal_valid));
  radiation_system_radiation_detector_0_0_signal_generator signal_gen
       (.DI({signal_gen_n_8,signal_gen_n_9,signal_gen_n_10,signal_gen_n_11}),
        .S({signal_gen_n_4,signal_gen_n_5,signal_gen_n_6,signal_gen_n_7}),
        .clk(clk),
        .rst_n(rst_n),
        .rst_n_0(signal_gen_n_1),
        .\signal_out_reg[10]_0 ({signal_gen_n_12,signal_gen_n_13}),
        .\signal_out_reg[11]_0 ({signal_gen_n_2,signal_gen_n_3}),
        .signal_valid(signal_valid));
endmodule

(* ORIG_REF_NAME = "signal_generator" *) 
module radiation_system_radiation_detector_0_0_signal_generator
   (signal_valid,
    rst_n_0,
    \signal_out_reg[11]_0 ,
    S,
    DI,
    \signal_out_reg[10]_0 ,
    clk,
    rst_n);
  output signal_valid;
  output rst_n_0;
  output [1:0]\signal_out_reg[11]_0 ;
  output [3:0]S;
  output [3:0]DI;
  output [1:0]\signal_out_reg[10]_0 ;
  input clk;
  input rst_n;

  wire [3:0]DI;
  wire [3:0]S;
  wire clk;
  wire cycle_counter1_carry__0_i_1_n_0;
  wire cycle_counter1_carry__0_i_2_n_0;
  wire cycle_counter1_carry__0_i_3_n_0;
  wire cycle_counter1_carry__0_i_4_n_0;
  wire cycle_counter1_carry__0_i_5_n_0;
  wire cycle_counter1_carry__0_i_6_n_0;
  wire cycle_counter1_carry__0_i_7_n_0;
  wire cycle_counter1_carry__0_n_0;
  wire cycle_counter1_carry__0_n_1;
  wire cycle_counter1_carry__0_n_2;
  wire cycle_counter1_carry__0_n_3;
  wire cycle_counter1_carry__1_i_1_n_0;
  wire cycle_counter1_carry__1_i_2_n_0;
  wire cycle_counter1_carry__1_i_3_n_0;
  wire cycle_counter1_carry__1_i_4_n_0;
  wire cycle_counter1_carry__1_i_5_n_0;
  wire cycle_counter1_carry__1_i_6_n_0;
  wire cycle_counter1_carry__1_i_7_n_0;
  wire cycle_counter1_carry__1_n_0;
  wire cycle_counter1_carry__1_n_1;
  wire cycle_counter1_carry__1_n_2;
  wire cycle_counter1_carry__1_n_3;
  wire cycle_counter1_carry__2_i_1_n_0;
  wire cycle_counter1_carry__2_i_2_n_0;
  wire cycle_counter1_carry__2_i_3_n_0;
  wire cycle_counter1_carry__2_i_4_n_0;
  wire cycle_counter1_carry__2_i_5_n_0;
  wire cycle_counter1_carry__2_i_6_n_0;
  wire cycle_counter1_carry__2_i_7_n_0;
  wire cycle_counter1_carry__2_i_8_n_0;
  wire cycle_counter1_carry__2_n_0;
  wire cycle_counter1_carry__2_n_1;
  wire cycle_counter1_carry__2_n_2;
  wire cycle_counter1_carry__2_n_3;
  wire cycle_counter1_carry_i_1_n_0;
  wire cycle_counter1_carry_i_2_n_0;
  wire cycle_counter1_carry_i_3_n_0;
  wire cycle_counter1_carry_i_4_n_0;
  wire cycle_counter1_carry_i_5_n_0;
  wire cycle_counter1_carry_i_6_n_0;
  wire cycle_counter1_carry_i_7_n_0;
  wire cycle_counter1_carry_i_8_n_0;
  wire cycle_counter1_carry_n_0;
  wire cycle_counter1_carry_n_1;
  wire cycle_counter1_carry_n_2;
  wire cycle_counter1_carry_n_3;
  wire \cycle_counter[0]_i_2_n_0 ;
  wire \cycle_counter[0]_i_3_n_0 ;
  wire \cycle_counter[0]_i_4_n_0 ;
  wire \cycle_counter[0]_i_5_n_0 ;
  wire \cycle_counter[0]_i_6_n_0 ;
  wire \cycle_counter[12]_i_2_n_0 ;
  wire \cycle_counter[12]_i_3_n_0 ;
  wire \cycle_counter[12]_i_4_n_0 ;
  wire \cycle_counter[12]_i_5_n_0 ;
  wire \cycle_counter[16]_i_2_n_0 ;
  wire \cycle_counter[16]_i_3_n_0 ;
  wire \cycle_counter[16]_i_4_n_0 ;
  wire \cycle_counter[16]_i_5_n_0 ;
  wire \cycle_counter[20]_i_2_n_0 ;
  wire \cycle_counter[20]_i_3_n_0 ;
  wire \cycle_counter[20]_i_4_n_0 ;
  wire \cycle_counter[20]_i_5_n_0 ;
  wire \cycle_counter[24]_i_2_n_0 ;
  wire \cycle_counter[24]_i_3_n_0 ;
  wire \cycle_counter[24]_i_4_n_0 ;
  wire \cycle_counter[24]_i_5_n_0 ;
  wire \cycle_counter[28]_i_2_n_0 ;
  wire \cycle_counter[28]_i_3_n_0 ;
  wire \cycle_counter[28]_i_4_n_0 ;
  wire \cycle_counter[28]_i_5_n_0 ;
  wire \cycle_counter[4]_i_2_n_0 ;
  wire \cycle_counter[4]_i_3_n_0 ;
  wire \cycle_counter[4]_i_4_n_0 ;
  wire \cycle_counter[4]_i_5_n_0 ;
  wire \cycle_counter[8]_i_2_n_0 ;
  wire \cycle_counter[8]_i_3_n_0 ;
  wire \cycle_counter[8]_i_4_n_0 ;
  wire \cycle_counter[8]_i_5_n_0 ;
  wire [31:0]cycle_counter_reg;
  wire \cycle_counter_reg[0]_i_1_n_0 ;
  wire \cycle_counter_reg[0]_i_1_n_1 ;
  wire \cycle_counter_reg[0]_i_1_n_2 ;
  wire \cycle_counter_reg[0]_i_1_n_3 ;
  wire \cycle_counter_reg[0]_i_1_n_4 ;
  wire \cycle_counter_reg[0]_i_1_n_5 ;
  wire \cycle_counter_reg[0]_i_1_n_6 ;
  wire \cycle_counter_reg[0]_i_1_n_7 ;
  wire \cycle_counter_reg[12]_i_1_n_0 ;
  wire \cycle_counter_reg[12]_i_1_n_1 ;
  wire \cycle_counter_reg[12]_i_1_n_2 ;
  wire \cycle_counter_reg[12]_i_1_n_3 ;
  wire \cycle_counter_reg[12]_i_1_n_4 ;
  wire \cycle_counter_reg[12]_i_1_n_5 ;
  wire \cycle_counter_reg[12]_i_1_n_6 ;
  wire \cycle_counter_reg[12]_i_1_n_7 ;
  wire \cycle_counter_reg[16]_i_1_n_0 ;
  wire \cycle_counter_reg[16]_i_1_n_1 ;
  wire \cycle_counter_reg[16]_i_1_n_2 ;
  wire \cycle_counter_reg[16]_i_1_n_3 ;
  wire \cycle_counter_reg[16]_i_1_n_4 ;
  wire \cycle_counter_reg[16]_i_1_n_5 ;
  wire \cycle_counter_reg[16]_i_1_n_6 ;
  wire \cycle_counter_reg[16]_i_1_n_7 ;
  wire \cycle_counter_reg[20]_i_1_n_0 ;
  wire \cycle_counter_reg[20]_i_1_n_1 ;
  wire \cycle_counter_reg[20]_i_1_n_2 ;
  wire \cycle_counter_reg[20]_i_1_n_3 ;
  wire \cycle_counter_reg[20]_i_1_n_4 ;
  wire \cycle_counter_reg[20]_i_1_n_5 ;
  wire \cycle_counter_reg[20]_i_1_n_6 ;
  wire \cycle_counter_reg[20]_i_1_n_7 ;
  wire \cycle_counter_reg[24]_i_1_n_0 ;
  wire \cycle_counter_reg[24]_i_1_n_1 ;
  wire \cycle_counter_reg[24]_i_1_n_2 ;
  wire \cycle_counter_reg[24]_i_1_n_3 ;
  wire \cycle_counter_reg[24]_i_1_n_4 ;
  wire \cycle_counter_reg[24]_i_1_n_5 ;
  wire \cycle_counter_reg[24]_i_1_n_6 ;
  wire \cycle_counter_reg[24]_i_1_n_7 ;
  wire \cycle_counter_reg[28]_i_1_n_1 ;
  wire \cycle_counter_reg[28]_i_1_n_2 ;
  wire \cycle_counter_reg[28]_i_1_n_3 ;
  wire \cycle_counter_reg[28]_i_1_n_4 ;
  wire \cycle_counter_reg[28]_i_1_n_5 ;
  wire \cycle_counter_reg[28]_i_1_n_6 ;
  wire \cycle_counter_reg[28]_i_1_n_7 ;
  wire \cycle_counter_reg[4]_i_1_n_0 ;
  wire \cycle_counter_reg[4]_i_1_n_1 ;
  wire \cycle_counter_reg[4]_i_1_n_2 ;
  wire \cycle_counter_reg[4]_i_1_n_3 ;
  wire \cycle_counter_reg[4]_i_1_n_4 ;
  wire \cycle_counter_reg[4]_i_1_n_5 ;
  wire \cycle_counter_reg[4]_i_1_n_6 ;
  wire \cycle_counter_reg[4]_i_1_n_7 ;
  wire \cycle_counter_reg[8]_i_1_n_0 ;
  wire \cycle_counter_reg[8]_i_1_n_1 ;
  wire \cycle_counter_reg[8]_i_1_n_2 ;
  wire \cycle_counter_reg[8]_i_1_n_3 ;
  wire \cycle_counter_reg[8]_i_1_n_4 ;
  wire \cycle_counter_reg[8]_i_1_n_5 ;
  wire \cycle_counter_reg[8]_i_1_n_6 ;
  wire \cycle_counter_reg[8]_i_1_n_7 ;
  wire \decay_counter[6]_i_1_n_0 ;
  wire \decay_counter[6]_i_3_n_0 ;
  wire [6:0]decay_counter_reg;
  wire \lfsr_reg_n_0_[0] ;
  wire \lfsr_reg_n_0_[10] ;
  wire \lfsr_reg_n_0_[11] ;
  wire \lfsr_reg_n_0_[12] ;
  wire \lfsr_reg_n_0_[13] ;
  wire \lfsr_reg_n_0_[14] ;
  wire \lfsr_reg_n_0_[15] ;
  wire \lfsr_reg_n_0_[16] ;
  wire \lfsr_reg_n_0_[17] ;
  wire \lfsr_reg_n_0_[18] ;
  wire \lfsr_reg_n_0_[19] ;
  wire \lfsr_reg_n_0_[1] ;
  wire \lfsr_reg_n_0_[20] ;
  wire \lfsr_reg_n_0_[21] ;
  wire \lfsr_reg_n_0_[22] ;
  wire \lfsr_reg_n_0_[23] ;
  wire \lfsr_reg_n_0_[24] ;
  wire \lfsr_reg_n_0_[25] ;
  wire \lfsr_reg_n_0_[26] ;
  wire \lfsr_reg_n_0_[27] ;
  wire \lfsr_reg_n_0_[28] ;
  wire \lfsr_reg_n_0_[29] ;
  wire \lfsr_reg_n_0_[2] ;
  wire \lfsr_reg_n_0_[30] ;
  wire \lfsr_reg_n_0_[31] ;
  wire \lfsr_reg_n_0_[3] ;
  wire \lfsr_reg_n_0_[4] ;
  wire \lfsr_reg_n_0_[5] ;
  wire \lfsr_reg_n_0_[6] ;
  wire \lfsr_reg_n_0_[7] ;
  wire \lfsr_reg_n_0_[8] ;
  wire \lfsr_reg_n_0_[9] ;
  wire [6:0]p_0_in;
  wire [0:0]p_0_out;
  wire rst_n;
  wire rst_n_0;
  wire [11:0]signal_out;
  wire [11:0]signal_out01_in;
  wire [10:0]signal_out1;
  wire signal_out1__18_carry_i_1_n_0;
  wire signal_out1__18_carry_i_2_n_0;
  wire signal_out1__18_carry_i_3_n_0;
  wire signal_out1__18_carry_i_4_n_0;
  wire signal_out1__18_carry_n_2;
  wire signal_out1__18_carry_n_3;
  wire signal_out1__18_carry_n_6;
  wire signal_out1__18_carry_n_7;
  wire signal_out1__32_carry_i_1_n_0;
  wire signal_out1__32_carry_i_2_n_0;
  wire signal_out1__32_carry_i_3_n_0;
  wire signal_out1__32_carry_i_4_n_0;
  wire signal_out1__32_carry_n_0;
  wire signal_out1__32_carry_n_2;
  wire signal_out1__32_carry_n_3;
  wire signal_out1__32_carry_n_5;
  wire signal_out1__32_carry_n_6;
  wire signal_out1__32_carry_n_7;
  wire signal_out1__7_carry_i_1_n_0;
  wire signal_out1__7_carry_i_2_n_0;
  wire signal_out1__7_carry_n_3;
  wire signal_out1__7_carry_n_6;
  wire signal_out1__7_carry_n_7;
  wire signal_out3_n_100;
  wire signal_out3_n_101;
  wire signal_out3_n_102;
  wire signal_out3_n_103;
  wire signal_out3_n_104;
  wire signal_out3_n_105;
  wire signal_out3_n_86;
  wire signal_out3_n_87;
  wire signal_out3_n_88;
  wire signal_out3_n_89;
  wire signal_out3_n_90;
  wire signal_out3_n_91;
  wire signal_out3_n_92;
  wire signal_out3_n_93;
  wire signal_out3_n_94;
  wire signal_out3_n_95;
  wire signal_out3_n_96;
  wire signal_out3_n_97;
  wire signal_out3_n_98;
  wire signal_out3_n_99;
  wire \signal_out[0]_i_1_n_0 ;
  wire \signal_out[10]_i_1_n_0 ;
  wire \signal_out[11]_i_1_n_0 ;
  wire \signal_out[11]_i_3_n_0 ;
  wire \signal_out[11]_i_4_n_0 ;
  wire \signal_out[11]_i_5_n_0 ;
  wire \signal_out[11]_i_6_n_0 ;
  wire \signal_out[11]_i_8_n_0 ;
  wire \signal_out[1]_i_1_n_0 ;
  wire \signal_out[2]_i_1_n_0 ;
  wire \signal_out[3]_i_1_n_0 ;
  wire \signal_out[3]_i_3_n_0 ;
  wire \signal_out[3]_i_4_n_0 ;
  wire \signal_out[3]_i_5_n_0 ;
  wire \signal_out[3]_i_6_n_0 ;
  wire \signal_out[4]_i_1_n_0 ;
  wire \signal_out[5]_i_1_n_0 ;
  wire \signal_out[6]_i_1_n_0 ;
  wire \signal_out[7]_i_1_n_0 ;
  wire \signal_out[7]_i_3_n_0 ;
  wire \signal_out[7]_i_4_n_0 ;
  wire \signal_out[7]_i_5_n_0 ;
  wire \signal_out[7]_i_6_n_0 ;
  wire \signal_out[8]_i_1_n_0 ;
  wire \signal_out[9]_i_1_n_0 ;
  wire [1:0]\signal_out_reg[10]_0 ;
  wire [1:0]\signal_out_reg[11]_0 ;
  wire \signal_out_reg[11]_i_2_n_1 ;
  wire \signal_out_reg[11]_i_2_n_2 ;
  wire \signal_out_reg[11]_i_2_n_3 ;
  wire \signal_out_reg[3]_i_2_n_0 ;
  wire \signal_out_reg[3]_i_2_n_1 ;
  wire \signal_out_reg[3]_i_2_n_2 ;
  wire \signal_out_reg[3]_i_2_n_3 ;
  wire \signal_out_reg[7]_i_2_n_0 ;
  wire \signal_out_reg[7]_i_2_n_1 ;
  wire \signal_out_reg[7]_i_2_n_2 ;
  wire \signal_out_reg[7]_i_2_n_3 ;
  wire signal_valid;
  wire [3:0]NLW_cycle_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_cycle_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cycle_counter1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_cycle_counter1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_cycle_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_signal_out1__18_carry_CO_UNCONNECTED;
  wire [3:3]NLW_signal_out1__18_carry_O_UNCONNECTED;
  wire [2:2]NLW_signal_out1__32_carry_CO_UNCONNECTED;
  wire [3:3]NLW_signal_out1__32_carry_O_UNCONNECTED;
  wire [3:1]NLW_signal_out1__7_carry_CO_UNCONNECTED;
  wire [3:2]NLW_signal_out1__7_carry_O_UNCONNECTED;
  wire NLW_signal_out3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_signal_out3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_signal_out3_OVERFLOW_UNCONNECTED;
  wire NLW_signal_out3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_signal_out3_PATTERNDETECT_UNCONNECTED;
  wire NLW_signal_out3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_signal_out3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_signal_out3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_signal_out3_CARRYOUT_UNCONNECTED;
  wire [47:20]NLW_signal_out3_P_UNCONNECTED;
  wire [47:0]NLW_signal_out3_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_signal_out_reg[11]_i_2_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    alert_i_2
       (.I0(rst_n),
        .O(rst_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cycle_counter1_carry
       (.CI(1'b0),
        .CO({cycle_counter1_carry_n_0,cycle_counter1_carry_n_1,cycle_counter1_carry_n_2,cycle_counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({cycle_counter1_carry_i_1_n_0,cycle_counter1_carry_i_2_n_0,cycle_counter1_carry_i_3_n_0,cycle_counter1_carry_i_4_n_0}),
        .O(NLW_cycle_counter1_carry_O_UNCONNECTED[3:0]),
        .S({cycle_counter1_carry_i_5_n_0,cycle_counter1_carry_i_6_n_0,cycle_counter1_carry_i_7_n_0,cycle_counter1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cycle_counter1_carry__0
       (.CI(cycle_counter1_carry_n_0),
        .CO({cycle_counter1_carry__0_n_0,cycle_counter1_carry__0_n_1,cycle_counter1_carry__0_n_2,cycle_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cycle_counter1_carry__0_i_1_n_0,cycle_counter1_carry__0_i_2_n_0,cycle_counter_reg[11],cycle_counter1_carry__0_i_3_n_0}),
        .O(NLW_cycle_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({cycle_counter1_carry__0_i_4_n_0,cycle_counter1_carry__0_i_5_n_0,cycle_counter1_carry__0_i_6_n_0,cycle_counter1_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    cycle_counter1_carry__0_i_1
       (.I0(cycle_counter_reg[14]),
        .I1(cycle_counter_reg[15]),
        .O(cycle_counter1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry__0_i_2
       (.I0(cycle_counter_reg[13]),
        .I1(cycle_counter_reg[12]),
        .O(cycle_counter1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cycle_counter1_carry__0_i_3
       (.I0(cycle_counter_reg[8]),
        .I1(cycle_counter_reg[9]),
        .O(cycle_counter1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cycle_counter1_carry__0_i_4
       (.I0(cycle_counter_reg[15]),
        .I1(cycle_counter_reg[14]),
        .O(cycle_counter1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry__0_i_5
       (.I0(cycle_counter_reg[12]),
        .I1(cycle_counter_reg[13]),
        .O(cycle_counter1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cycle_counter1_carry__0_i_6
       (.I0(cycle_counter_reg[10]),
        .I1(cycle_counter_reg[11]),
        .O(cycle_counter1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cycle_counter1_carry__0_i_7
       (.I0(cycle_counter_reg[9]),
        .I1(cycle_counter_reg[8]),
        .O(cycle_counter1_carry__0_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cycle_counter1_carry__1
       (.CI(cycle_counter1_carry__0_n_0),
        .CO({cycle_counter1_carry__1_n_0,cycle_counter1_carry__1_n_1,cycle_counter1_carry__1_n_2,cycle_counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({cycle_counter1_carry__1_i_1_n_0,cycle_counter1_carry__1_i_2_n_0,cycle_counter1_carry__1_i_3_n_0,cycle_counter_reg[17]}),
        .O(NLW_cycle_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({cycle_counter1_carry__1_i_4_n_0,cycle_counter1_carry__1_i_5_n_0,cycle_counter1_carry__1_i_6_n_0,cycle_counter1_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry__1_i_1
       (.I0(cycle_counter_reg[23]),
        .I1(cycle_counter_reg[22]),
        .O(cycle_counter1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry__1_i_2
       (.I0(cycle_counter_reg[21]),
        .I1(cycle_counter_reg[20]),
        .O(cycle_counter1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry__1_i_3
       (.I0(cycle_counter_reg[19]),
        .I1(cycle_counter_reg[18]),
        .O(cycle_counter1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry__1_i_4
       (.I0(cycle_counter_reg[22]),
        .I1(cycle_counter_reg[23]),
        .O(cycle_counter1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry__1_i_5
       (.I0(cycle_counter_reg[20]),
        .I1(cycle_counter_reg[21]),
        .O(cycle_counter1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry__1_i_6
       (.I0(cycle_counter_reg[18]),
        .I1(cycle_counter_reg[19]),
        .O(cycle_counter1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cycle_counter1_carry__1_i_7
       (.I0(cycle_counter_reg[16]),
        .I1(cycle_counter_reg[17]),
        .O(cycle_counter1_carry__1_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cycle_counter1_carry__2
       (.CI(cycle_counter1_carry__1_n_0),
        .CO({cycle_counter1_carry__2_n_0,cycle_counter1_carry__2_n_1,cycle_counter1_carry__2_n_2,cycle_counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({cycle_counter1_carry__2_i_1_n_0,cycle_counter1_carry__2_i_2_n_0,cycle_counter1_carry__2_i_3_n_0,cycle_counter1_carry__2_i_4_n_0}),
        .O(NLW_cycle_counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({cycle_counter1_carry__2_i_5_n_0,cycle_counter1_carry__2_i_6_n_0,cycle_counter1_carry__2_i_7_n_0,cycle_counter1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry__2_i_1
       (.I0(cycle_counter_reg[31]),
        .I1(cycle_counter_reg[30]),
        .O(cycle_counter1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry__2_i_2
       (.I0(cycle_counter_reg[29]),
        .I1(cycle_counter_reg[28]),
        .O(cycle_counter1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry__2_i_3
       (.I0(cycle_counter_reg[27]),
        .I1(cycle_counter_reg[26]),
        .O(cycle_counter1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry__2_i_4
       (.I0(cycle_counter_reg[25]),
        .I1(cycle_counter_reg[24]),
        .O(cycle_counter1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry__2_i_5
       (.I0(cycle_counter_reg[30]),
        .I1(cycle_counter_reg[31]),
        .O(cycle_counter1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry__2_i_6
       (.I0(cycle_counter_reg[28]),
        .I1(cycle_counter_reg[29]),
        .O(cycle_counter1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry__2_i_7
       (.I0(cycle_counter_reg[26]),
        .I1(cycle_counter_reg[27]),
        .O(cycle_counter1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry__2_i_8
       (.I0(cycle_counter_reg[24]),
        .I1(cycle_counter_reg[25]),
        .O(cycle_counter1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cycle_counter1_carry_i_1
       (.I0(cycle_counter_reg[6]),
        .I1(cycle_counter_reg[7]),
        .O(cycle_counter1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cycle_counter1_carry_i_2
       (.I0(cycle_counter_reg[4]),
        .I1(cycle_counter_reg[5]),
        .O(cycle_counter1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry_i_3
       (.I0(cycle_counter_reg[3]),
        .I1(cycle_counter_reg[2]),
        .O(cycle_counter1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cycle_counter1_carry_i_4
       (.I0(cycle_counter_reg[1]),
        .I1(cycle_counter_reg[0]),
        .O(cycle_counter1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cycle_counter1_carry_i_5
       (.I0(cycle_counter_reg[7]),
        .I1(cycle_counter_reg[6]),
        .O(cycle_counter1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cycle_counter1_carry_i_6
       (.I0(cycle_counter_reg[5]),
        .I1(cycle_counter_reg[4]),
        .O(cycle_counter1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry_i_7
       (.I0(cycle_counter_reg[2]),
        .I1(cycle_counter_reg[3]),
        .O(cycle_counter1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cycle_counter1_carry_i_8
       (.I0(cycle_counter_reg[0]),
        .I1(cycle_counter_reg[1]),
        .O(cycle_counter1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[0]_i_2 
       (.I0(cycle_counter_reg[0]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[0]_i_3 
       (.I0(cycle_counter_reg[3]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[0]_i_4 
       (.I0(cycle_counter_reg[2]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[0]_i_5 
       (.I0(cycle_counter_reg[1]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cycle_counter[0]_i_6 
       (.I0(cycle_counter_reg[0]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[12]_i_2 
       (.I0(cycle_counter_reg[15]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[12]_i_3 
       (.I0(cycle_counter_reg[14]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[12]_i_4 
       (.I0(cycle_counter_reg[13]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[12]_i_5 
       (.I0(cycle_counter_reg[12]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[16]_i_2 
       (.I0(cycle_counter_reg[19]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[16]_i_3 
       (.I0(cycle_counter_reg[18]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[16]_i_4 
       (.I0(cycle_counter_reg[17]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[16]_i_5 
       (.I0(cycle_counter_reg[16]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[20]_i_2 
       (.I0(cycle_counter_reg[23]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[20]_i_3 
       (.I0(cycle_counter_reg[22]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[20]_i_4 
       (.I0(cycle_counter_reg[21]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[20]_i_5 
       (.I0(cycle_counter_reg[20]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[24]_i_2 
       (.I0(cycle_counter_reg[27]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[24]_i_3 
       (.I0(cycle_counter_reg[26]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[24]_i_4 
       (.I0(cycle_counter_reg[25]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[24]_i_5 
       (.I0(cycle_counter_reg[24]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[28]_i_2 
       (.I0(cycle_counter_reg[31]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[28]_i_3 
       (.I0(cycle_counter_reg[30]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[28]_i_4 
       (.I0(cycle_counter_reg[29]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[28]_i_5 
       (.I0(cycle_counter_reg[28]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[4]_i_2 
       (.I0(cycle_counter_reg[7]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[4]_i_3 
       (.I0(cycle_counter_reg[6]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[4]_i_4 
       (.I0(cycle_counter_reg[5]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[4]_i_5 
       (.I0(cycle_counter_reg[4]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[8]_i_2 
       (.I0(cycle_counter_reg[11]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[8]_i_3 
       (.I0(cycle_counter_reg[10]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[8]_i_4 
       (.I0(cycle_counter_reg[9]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_counter[8]_i_5 
       (.I0(cycle_counter_reg[8]),
        .I1(cycle_counter1_carry__2_n_0),
        .O(\cycle_counter[8]_i_5_n_0 ));
  FDCE \cycle_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[0]_i_1_n_7 ),
        .Q(cycle_counter_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cycle_counter_reg[0]_i_1_n_0 ,\cycle_counter_reg[0]_i_1_n_1 ,\cycle_counter_reg[0]_i_1_n_2 ,\cycle_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cycle_counter[0]_i_2_n_0 }),
        .O({\cycle_counter_reg[0]_i_1_n_4 ,\cycle_counter_reg[0]_i_1_n_5 ,\cycle_counter_reg[0]_i_1_n_6 ,\cycle_counter_reg[0]_i_1_n_7 }),
        .S({\cycle_counter[0]_i_3_n_0 ,\cycle_counter[0]_i_4_n_0 ,\cycle_counter[0]_i_5_n_0 ,\cycle_counter[0]_i_6_n_0 }));
  FDCE \cycle_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[8]_i_1_n_5 ),
        .Q(cycle_counter_reg[10]));
  FDCE \cycle_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[8]_i_1_n_4 ),
        .Q(cycle_counter_reg[11]));
  FDCE \cycle_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[12]_i_1_n_7 ),
        .Q(cycle_counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[12]_i_1 
       (.CI(\cycle_counter_reg[8]_i_1_n_0 ),
        .CO({\cycle_counter_reg[12]_i_1_n_0 ,\cycle_counter_reg[12]_i_1_n_1 ,\cycle_counter_reg[12]_i_1_n_2 ,\cycle_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_counter_reg[12]_i_1_n_4 ,\cycle_counter_reg[12]_i_1_n_5 ,\cycle_counter_reg[12]_i_1_n_6 ,\cycle_counter_reg[12]_i_1_n_7 }),
        .S({\cycle_counter[12]_i_2_n_0 ,\cycle_counter[12]_i_3_n_0 ,\cycle_counter[12]_i_4_n_0 ,\cycle_counter[12]_i_5_n_0 }));
  FDCE \cycle_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[12]_i_1_n_6 ),
        .Q(cycle_counter_reg[13]));
  FDCE \cycle_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[12]_i_1_n_5 ),
        .Q(cycle_counter_reg[14]));
  FDCE \cycle_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[12]_i_1_n_4 ),
        .Q(cycle_counter_reg[15]));
  FDCE \cycle_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[16]_i_1_n_7 ),
        .Q(cycle_counter_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[16]_i_1 
       (.CI(\cycle_counter_reg[12]_i_1_n_0 ),
        .CO({\cycle_counter_reg[16]_i_1_n_0 ,\cycle_counter_reg[16]_i_1_n_1 ,\cycle_counter_reg[16]_i_1_n_2 ,\cycle_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_counter_reg[16]_i_1_n_4 ,\cycle_counter_reg[16]_i_1_n_5 ,\cycle_counter_reg[16]_i_1_n_6 ,\cycle_counter_reg[16]_i_1_n_7 }),
        .S({\cycle_counter[16]_i_2_n_0 ,\cycle_counter[16]_i_3_n_0 ,\cycle_counter[16]_i_4_n_0 ,\cycle_counter[16]_i_5_n_0 }));
  FDCE \cycle_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[16]_i_1_n_6 ),
        .Q(cycle_counter_reg[17]));
  FDCE \cycle_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[16]_i_1_n_5 ),
        .Q(cycle_counter_reg[18]));
  FDCE \cycle_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[16]_i_1_n_4 ),
        .Q(cycle_counter_reg[19]));
  FDCE \cycle_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[0]_i_1_n_6 ),
        .Q(cycle_counter_reg[1]));
  FDCE \cycle_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[20]_i_1_n_7 ),
        .Q(cycle_counter_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[20]_i_1 
       (.CI(\cycle_counter_reg[16]_i_1_n_0 ),
        .CO({\cycle_counter_reg[20]_i_1_n_0 ,\cycle_counter_reg[20]_i_1_n_1 ,\cycle_counter_reg[20]_i_1_n_2 ,\cycle_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_counter_reg[20]_i_1_n_4 ,\cycle_counter_reg[20]_i_1_n_5 ,\cycle_counter_reg[20]_i_1_n_6 ,\cycle_counter_reg[20]_i_1_n_7 }),
        .S({\cycle_counter[20]_i_2_n_0 ,\cycle_counter[20]_i_3_n_0 ,\cycle_counter[20]_i_4_n_0 ,\cycle_counter[20]_i_5_n_0 }));
  FDCE \cycle_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[20]_i_1_n_6 ),
        .Q(cycle_counter_reg[21]));
  FDCE \cycle_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[20]_i_1_n_5 ),
        .Q(cycle_counter_reg[22]));
  FDCE \cycle_counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[20]_i_1_n_4 ),
        .Q(cycle_counter_reg[23]));
  FDCE \cycle_counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[24]_i_1_n_7 ),
        .Q(cycle_counter_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[24]_i_1 
       (.CI(\cycle_counter_reg[20]_i_1_n_0 ),
        .CO({\cycle_counter_reg[24]_i_1_n_0 ,\cycle_counter_reg[24]_i_1_n_1 ,\cycle_counter_reg[24]_i_1_n_2 ,\cycle_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_counter_reg[24]_i_1_n_4 ,\cycle_counter_reg[24]_i_1_n_5 ,\cycle_counter_reg[24]_i_1_n_6 ,\cycle_counter_reg[24]_i_1_n_7 }),
        .S({\cycle_counter[24]_i_2_n_0 ,\cycle_counter[24]_i_3_n_0 ,\cycle_counter[24]_i_4_n_0 ,\cycle_counter[24]_i_5_n_0 }));
  FDCE \cycle_counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[24]_i_1_n_6 ),
        .Q(cycle_counter_reg[25]));
  FDCE \cycle_counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[24]_i_1_n_5 ),
        .Q(cycle_counter_reg[26]));
  FDCE \cycle_counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[24]_i_1_n_4 ),
        .Q(cycle_counter_reg[27]));
  FDCE \cycle_counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[28]_i_1_n_7 ),
        .Q(cycle_counter_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[28]_i_1 
       (.CI(\cycle_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_cycle_counter_reg[28]_i_1_CO_UNCONNECTED [3],\cycle_counter_reg[28]_i_1_n_1 ,\cycle_counter_reg[28]_i_1_n_2 ,\cycle_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_counter_reg[28]_i_1_n_4 ,\cycle_counter_reg[28]_i_1_n_5 ,\cycle_counter_reg[28]_i_1_n_6 ,\cycle_counter_reg[28]_i_1_n_7 }),
        .S({\cycle_counter[28]_i_2_n_0 ,\cycle_counter[28]_i_3_n_0 ,\cycle_counter[28]_i_4_n_0 ,\cycle_counter[28]_i_5_n_0 }));
  FDCE \cycle_counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[28]_i_1_n_6 ),
        .Q(cycle_counter_reg[29]));
  FDCE \cycle_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[0]_i_1_n_5 ),
        .Q(cycle_counter_reg[2]));
  FDCE \cycle_counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[28]_i_1_n_5 ),
        .Q(cycle_counter_reg[30]));
  FDCE \cycle_counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[28]_i_1_n_4 ),
        .Q(cycle_counter_reg[31]));
  FDCE \cycle_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[0]_i_1_n_4 ),
        .Q(cycle_counter_reg[3]));
  FDCE \cycle_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[4]_i_1_n_7 ),
        .Q(cycle_counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[4]_i_1 
       (.CI(\cycle_counter_reg[0]_i_1_n_0 ),
        .CO({\cycle_counter_reg[4]_i_1_n_0 ,\cycle_counter_reg[4]_i_1_n_1 ,\cycle_counter_reg[4]_i_1_n_2 ,\cycle_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_counter_reg[4]_i_1_n_4 ,\cycle_counter_reg[4]_i_1_n_5 ,\cycle_counter_reg[4]_i_1_n_6 ,\cycle_counter_reg[4]_i_1_n_7 }),
        .S({\cycle_counter[4]_i_2_n_0 ,\cycle_counter[4]_i_3_n_0 ,\cycle_counter[4]_i_4_n_0 ,\cycle_counter[4]_i_5_n_0 }));
  FDCE \cycle_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[4]_i_1_n_6 ),
        .Q(cycle_counter_reg[5]));
  FDCE \cycle_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[4]_i_1_n_5 ),
        .Q(cycle_counter_reg[6]));
  FDCE \cycle_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[4]_i_1_n_4 ),
        .Q(cycle_counter_reg[7]));
  FDCE \cycle_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[8]_i_1_n_7 ),
        .Q(cycle_counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[8]_i_1 
       (.CI(\cycle_counter_reg[4]_i_1_n_0 ),
        .CO({\cycle_counter_reg[8]_i_1_n_0 ,\cycle_counter_reg[8]_i_1_n_1 ,\cycle_counter_reg[8]_i_1_n_2 ,\cycle_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_counter_reg[8]_i_1_n_4 ,\cycle_counter_reg[8]_i_1_n_5 ,\cycle_counter_reg[8]_i_1_n_6 ,\cycle_counter_reg[8]_i_1_n_7 }),
        .S({\cycle_counter[8]_i_2_n_0 ,\cycle_counter[8]_i_3_n_0 ,\cycle_counter[8]_i_4_n_0 ,\cycle_counter[8]_i_5_n_0 }));
  FDCE \cycle_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cycle_counter_reg[8]_i_1_n_6 ),
        .Q(cycle_counter_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decay_counter[0]_i_1 
       (.I0(\signal_out[11]_i_3_n_0 ),
        .I1(decay_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \decay_counter[1]_i_1 
       (.I0(\signal_out[11]_i_3_n_0 ),
        .I1(decay_counter_reg[1]),
        .I2(decay_counter_reg[0]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \decay_counter[2]_i_1 
       (.I0(decay_counter_reg[2]),
        .I1(decay_counter_reg[1]),
        .I2(decay_counter_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA80002)) 
    \decay_counter[3]_i_1 
       (.I0(\signal_out[11]_i_3_n_0 ),
        .I1(decay_counter_reg[2]),
        .I2(decay_counter_reg[1]),
        .I3(decay_counter_reg[0]),
        .I4(decay_counter_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0FE0)) 
    \decay_counter[4]_i_1 
       (.I0(decay_counter_reg[5]),
        .I1(decay_counter_reg[6]),
        .I2(\decay_counter[6]_i_3_n_0 ),
        .I3(decay_counter_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \decay_counter[5]_i_1 
       (.I0(decay_counter_reg[5]),
        .I1(decay_counter_reg[4]),
        .I2(decay_counter_reg[1]),
        .I3(decay_counter_reg[0]),
        .I4(decay_counter_reg[3]),
        .I5(decay_counter_reg[2]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \decay_counter[6]_i_1 
       (.I0(cycle_counter1_carry__2_n_0),
        .I1(\signal_out[11]_i_3_n_0 ),
        .O(\decay_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA9AA)) 
    \decay_counter[6]_i_2 
       (.I0(decay_counter_reg[6]),
        .I1(decay_counter_reg[4]),
        .I2(decay_counter_reg[5]),
        .I3(\decay_counter[6]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \decay_counter[6]_i_3 
       (.I0(decay_counter_reg[1]),
        .I1(decay_counter_reg[0]),
        .I2(decay_counter_reg[3]),
        .I3(decay_counter_reg[2]),
        .O(\decay_counter[6]_i_3_n_0 ));
  FDCE \decay_counter_reg[0] 
       (.C(clk),
        .CE(\decay_counter[6]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(p_0_in[0]),
        .Q(decay_counter_reg[0]));
  FDCE \decay_counter_reg[1] 
       (.C(clk),
        .CE(\decay_counter[6]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(p_0_in[1]),
        .Q(decay_counter_reg[1]));
  FDCE \decay_counter_reg[2] 
       (.C(clk),
        .CE(\decay_counter[6]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(p_0_in[2]),
        .Q(decay_counter_reg[2]));
  FDCE \decay_counter_reg[3] 
       (.C(clk),
        .CE(\decay_counter[6]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(p_0_in[3]),
        .Q(decay_counter_reg[3]));
  FDCE \decay_counter_reg[4] 
       (.C(clk),
        .CE(\decay_counter[6]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(p_0_in[4]),
        .Q(decay_counter_reg[4]));
  FDCE \decay_counter_reg[5] 
       (.C(clk),
        .CE(\decay_counter[6]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(p_0_in[5]),
        .Q(decay_counter_reg[5]));
  FDCE \decay_counter_reg[6] 
       (.C(clk),
        .CE(\decay_counter[6]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(p_0_in[6]),
        .Q(decay_counter_reg[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[0]_i_1 
       (.I0(\lfsr_reg_n_0_[21] ),
        .I1(\lfsr_reg_n_0_[31] ),
        .I2(\lfsr_reg_n_0_[0] ),
        .I3(\lfsr_reg_n_0_[1] ),
        .O(p_0_out));
  FDCE \lfsr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out),
        .Q(\lfsr_reg_n_0_[0] ));
  FDPE \lfsr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[9] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[10] ));
  FDCE \lfsr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[10] ),
        .Q(\lfsr_reg_n_0_[11] ));
  FDPE \lfsr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[11] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[12] ));
  FDCE \lfsr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[12] ),
        .Q(\lfsr_reg_n_0_[13] ));
  FDPE \lfsr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[13] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[14] ));
  FDCE \lfsr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[14] ),
        .Q(\lfsr_reg_n_0_[15] ));
  FDCE \lfsr_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[15] ),
        .Q(\lfsr_reg_n_0_[16] ));
  FDCE \lfsr_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[16] ),
        .Q(\lfsr_reg_n_0_[17] ));
  FDPE \lfsr_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[17] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[18] ));
  FDCE \lfsr_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[18] ),
        .Q(\lfsr_reg_n_0_[19] ));
  FDCE \lfsr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[0] ),
        .Q(\lfsr_reg_n_0_[1] ));
  FDPE \lfsr_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[19] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[20] ));
  FDPE \lfsr_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[20] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[21] ));
  FDCE \lfsr_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[21] ),
        .Q(\lfsr_reg_n_0_[22] ));
  FDCE \lfsr_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[22] ),
        .Q(\lfsr_reg_n_0_[23] ));
  FDCE \lfsr_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[23] ),
        .Q(\lfsr_reg_n_0_[24] ));
  FDPE \lfsr_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[24] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[25] ));
  FDCE \lfsr_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[25] ),
        .Q(\lfsr_reg_n_0_[26] ));
  FDCE \lfsr_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[26] ),
        .Q(\lfsr_reg_n_0_[27] ));
  FDPE \lfsr_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[27] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[28] ));
  FDCE \lfsr_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[28] ),
        .Q(\lfsr_reg_n_0_[29] ));
  FDCE \lfsr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[1] ),
        .Q(\lfsr_reg_n_0_[2] ));
  FDCE \lfsr_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[29] ),
        .Q(\lfsr_reg_n_0_[30] ));
  FDCE \lfsr_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[30] ),
        .Q(\lfsr_reg_n_0_[31] ));
  FDPE \lfsr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[2] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[3] ));
  FDPE \lfsr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[3] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[4] ));
  FDPE \lfsr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[4] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[5] ));
  FDPE \lfsr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[5] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[6] ));
  FDCE \lfsr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[6] ),
        .Q(\lfsr_reg_n_0_[7] ));
  FDCE \lfsr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\lfsr_reg_n_0_[7] ),
        .Q(\lfsr_reg_n_0_[8] ));
  FDPE \lfsr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\lfsr_reg_n_0_[8] ),
        .PRE(rst_n_0),
        .Q(\lfsr_reg_n_0_[9] ));
  CARRY4 signal_out1__18_carry
       (.CI(1'b0),
        .CO({NLW_signal_out1__18_carry_CO_UNCONNECTED[3:2],signal_out1__18_carry_n_2,signal_out1__18_carry_n_3}),
        .CYINIT(signal_out1__7_carry_n_3),
        .DI({1'b0,1'b0,signal_out1__7_carry_n_3,signal_out1__18_carry_i_1_n_0}),
        .O({NLW_signal_out1__18_carry_O_UNCONNECTED[3],signal_out1[0],signal_out1__18_carry_n_6,signal_out1__18_carry_n_7}),
        .S({1'b0,signal_out1__18_carry_i_2_n_0,signal_out1__18_carry_i_3_n_0,signal_out1__18_carry_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    signal_out1__18_carry_i_1
       (.I0(\lfsr_reg_n_0_[9] ),
        .O(signal_out1__18_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    signal_out1__18_carry_i_2
       (.I0(\lfsr_reg_n_0_[0] ),
        .I1(signal_out1__18_carry_n_2),
        .O(signal_out1__18_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    signal_out1__18_carry_i_3
       (.I0(signal_out1__7_carry_n_3),
        .I1(signal_out1__7_carry_n_7),
        .O(signal_out1__18_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    signal_out1__18_carry_i_4
       (.I0(signal_out1__7_carry_n_3),
        .I1(\lfsr_reg_n_0_[9] ),
        .O(signal_out1__18_carry_i_4_n_0));
  CARRY4 signal_out1__32_carry
       (.CI(1'b0),
        .CO({signal_out1__32_carry_n_0,NLW_signal_out1__32_carry_CO_UNCONNECTED[2],signal_out1__32_carry_n_2,signal_out1__32_carry_n_3}),
        .CYINIT(signal_out1__18_carry_n_2),
        .DI({1'b0,signal_out1__18_carry_n_2,signal_out1__18_carry_n_2,signal_out1__32_carry_i_1_n_0}),
        .O({NLW_signal_out1__32_carry_O_UNCONNECTED[3],signal_out1__32_carry_n_5,signal_out1__32_carry_n_6,signal_out1__32_carry_n_7}),
        .S({1'b1,signal_out1__32_carry_i_2_n_0,signal_out1__32_carry_i_3_n_0,signal_out1__32_carry_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    signal_out1__32_carry_i_1
       (.I0(\lfsr_reg_n_0_[8] ),
        .O(signal_out1__32_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    signal_out1__32_carry_i_2
       (.I0(signal_out1__18_carry_n_2),
        .I1(signal_out1__18_carry_n_6),
        .O(signal_out1__32_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    signal_out1__32_carry_i_3
       (.I0(signal_out1__18_carry_n_2),
        .I1(signal_out1__18_carry_n_7),
        .O(signal_out1__32_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    signal_out1__32_carry_i_4
       (.I0(signal_out1__18_carry_n_2),
        .I1(\lfsr_reg_n_0_[8] ),
        .O(signal_out1__32_carry_i_4_n_0));
  CARRY4 signal_out1__7_carry
       (.CI(1'b0),
        .CO({NLW_signal_out1__7_carry_CO_UNCONNECTED[3:1],signal_out1__7_carry_n_3}),
        .CYINIT(\lfsr_reg_n_0_[11] ),
        .DI({1'b0,1'b0,1'b0,\lfsr_reg_n_0_[10] }),
        .O({NLW_signal_out1__7_carry_O_UNCONNECTED[3:2],signal_out1__7_carry_n_6,signal_out1__7_carry_n_7}),
        .S({1'b0,1'b0,signal_out1__7_carry_i_1_n_0,signal_out1__7_carry_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    signal_out1__7_carry_i_1
       (.I0(\lfsr_reg_n_0_[1] ),
        .I1(signal_out1__7_carry_n_3),
        .O(signal_out1__7_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    signal_out1__7_carry_i_2
       (.I0(\lfsr_reg_n_0_[11] ),
        .I1(\lfsr_reg_n_0_[10] ),
        .O(signal_out1__7_carry_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    signal_out3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_signal_out3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,decay_counter_reg}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_signal_out3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_signal_out3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_signal_out3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_signal_out3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_signal_out3_OVERFLOW_UNCONNECTED),
        .P({NLW_signal_out3_P_UNCONNECTED[47:20],signal_out3_n_86,signal_out3_n_87,signal_out3_n_88,signal_out3_n_89,signal_out3_n_90,signal_out3_n_91,signal_out3_n_92,signal_out3_n_93,signal_out3_n_94,signal_out3_n_95,signal_out3_n_96,signal_out3_n_97,signal_out3_n_98,signal_out3_n_99,signal_out3_n_100,signal_out3_n_101,signal_out3_n_102,signal_out3_n_103,signal_out3_n_104,signal_out3_n_105}),
        .PATTERNBDETECT(NLW_signal_out3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_signal_out3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_signal_out3_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_signal_out3_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h88B8)) 
    \signal_out[0]_i_1 
       (.I0(signal_out01_in[0]),
        .I1(\signal_out[11]_i_3_n_0 ),
        .I2(signal_out1[0]),
        .I3(cycle_counter1_carry__2_n_0),
        .O(\signal_out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \signal_out[10]_i_1 
       (.I0(signal_out01_in[10]),
        .I1(\signal_out[11]_i_3_n_0 ),
        .I2(signal_out1[10]),
        .I3(cycle_counter1_carry__2_n_0),
        .O(\signal_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \signal_out[10]_i_2 
       (.I0(signal_out1__32_carry_n_5),
        .I1(signal_out1__32_carry_n_7),
        .I2(signal_out1__32_carry_n_0),
        .I3(signal_out1__32_carry_n_6),
        .O(signal_out1[10]));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \signal_out[11]_i_1 
       (.I0(signal_out01_in[11]),
        .I1(\signal_out[11]_i_3_n_0 ),
        .I2(cycle_counter1_carry__2_n_0),
        .I3(\signal_out[11]_i_4_n_0 ),
        .O(\signal_out[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \signal_out[11]_i_3 
       (.I0(decay_counter_reg[4]),
        .I1(decay_counter_reg[5]),
        .I2(decay_counter_reg[6]),
        .I3(\decay_counter[6]_i_3_n_0 ),
        .O(\signal_out[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \signal_out[11]_i_4 
       (.I0(signal_out1__32_carry_n_0),
        .I1(signal_out1__32_carry_n_6),
        .I2(signal_out1__32_carry_n_5),
        .I3(signal_out1__32_carry_n_7),
        .O(\signal_out[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \signal_out[11]_i_5 
       (.I0(signal_out1__32_carry_n_0),
        .I1(signal_out1__32_carry_n_6),
        .I2(signal_out1__32_carry_n_5),
        .I3(signal_out1__32_carry_n_7),
        .O(\signal_out[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \signal_out[11]_i_6 
       (.I0(signal_out1__32_carry_n_5),
        .I1(signal_out1__32_carry_n_7),
        .I2(signal_out1__32_carry_n_0),
        .I3(signal_out1__32_carry_n_6),
        .O(\signal_out[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \signal_out[11]_i_7 
       (.I0(signal_out1__32_carry_n_6),
        .I1(signal_out1__32_carry_n_0),
        .I2(signal_out1__32_carry_n_7),
        .O(signal_out1[9]));
  LUT2 #(
    .INIT(4'h9)) 
    \signal_out[11]_i_8 
       (.I0(signal_out1__32_carry_n_0),
        .I1(signal_out1__32_carry_n_7),
        .O(\signal_out[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \signal_out[1]_i_1 
       (.I0(signal_out01_in[1]),
        .I1(\signal_out[11]_i_3_n_0 ),
        .I2(signal_out1__7_carry_n_6),
        .I3(cycle_counter1_carry__2_n_0),
        .O(\signal_out[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC0CA)) 
    \signal_out[2]_i_1 
       (.I0(\lfsr_reg_n_0_[2] ),
        .I1(signal_out01_in[2]),
        .I2(\signal_out[11]_i_3_n_0 ),
        .I3(cycle_counter1_carry__2_n_0),
        .O(\signal_out[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC0CA)) 
    \signal_out[3]_i_1 
       (.I0(\lfsr_reg_n_0_[3] ),
        .I1(signal_out01_in[3]),
        .I2(\signal_out[11]_i_3_n_0 ),
        .I3(cycle_counter1_carry__2_n_0),
        .O(\signal_out[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \signal_out[3]_i_3 
       (.I0(signal_out3_n_95),
        .I1(\lfsr_reg_n_0_[3] ),
        .O(\signal_out[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \signal_out[3]_i_4 
       (.I0(signal_out3_n_96),
        .I1(\lfsr_reg_n_0_[2] ),
        .O(\signal_out[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \signal_out[3]_i_5 
       (.I0(signal_out3_n_97),
        .I1(signal_out1__7_carry_n_6),
        .O(\signal_out[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \signal_out[3]_i_6 
       (.I0(signal_out3_n_98),
        .I1(signal_out1[0]),
        .O(\signal_out[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC0CA)) 
    \signal_out[4]_i_1 
       (.I0(\lfsr_reg_n_0_[4] ),
        .I1(signal_out01_in[4]),
        .I2(\signal_out[11]_i_3_n_0 ),
        .I3(cycle_counter1_carry__2_n_0),
        .O(\signal_out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC0CA)) 
    \signal_out[5]_i_1 
       (.I0(\lfsr_reg_n_0_[5] ),
        .I1(signal_out01_in[5]),
        .I2(\signal_out[11]_i_3_n_0 ),
        .I3(cycle_counter1_carry__2_n_0),
        .O(\signal_out[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC0CA)) 
    \signal_out[6]_i_1 
       (.I0(\lfsr_reg_n_0_[6] ),
        .I1(signal_out01_in[6]),
        .I2(\signal_out[11]_i_3_n_0 ),
        .I3(cycle_counter1_carry__2_n_0),
        .O(\signal_out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC0CA)) 
    \signal_out[7]_i_1 
       (.I0(\lfsr_reg_n_0_[7] ),
        .I1(signal_out01_in[7]),
        .I2(\signal_out[11]_i_3_n_0 ),
        .I3(cycle_counter1_carry__2_n_0),
        .O(\signal_out[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \signal_out[7]_i_3 
       (.I0(\lfsr_reg_n_0_[7] ),
        .O(\signal_out[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \signal_out[7]_i_4 
       (.I0(\lfsr_reg_n_0_[6] ),
        .O(\signal_out[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \signal_out[7]_i_5 
       (.I0(\lfsr_reg_n_0_[5] ),
        .O(\signal_out[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \signal_out[7]_i_6 
       (.I0(signal_out3_n_94),
        .I1(\lfsr_reg_n_0_[4] ),
        .O(\signal_out[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8888B88B)) 
    \signal_out[8]_i_1 
       (.I0(signal_out01_in[8]),
        .I1(\signal_out[11]_i_3_n_0 ),
        .I2(signal_out1__32_carry_n_7),
        .I3(signal_out1__32_carry_n_0),
        .I4(cycle_counter1_carry__2_n_0),
        .O(\signal_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BB8B88B8)) 
    \signal_out[9]_i_1 
       (.I0(signal_out01_in[9]),
        .I1(\signal_out[11]_i_3_n_0 ),
        .I2(signal_out1__32_carry_n_7),
        .I3(signal_out1__32_carry_n_0),
        .I4(signal_out1__32_carry_n_6),
        .I5(cycle_counter1_carry__2_n_0),
        .O(\signal_out[9]_i_1_n_0 ));
  FDCE \signal_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[0]_i_1_n_0 ),
        .Q(signal_out[0]));
  FDCE \signal_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[10]_i_1_n_0 ),
        .Q(signal_out[10]));
  FDPE \signal_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\signal_out[11]_i_1_n_0 ),
        .PRE(rst_n_0),
        .Q(signal_out[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \signal_out_reg[11]_i_2 
       (.CI(\signal_out_reg[7]_i_2_n_0 ),
        .CO({\NLW_signal_out_reg[11]_i_2_CO_UNCONNECTED [3],\signal_out_reg[11]_i_2_n_1 ,\signal_out_reg[11]_i_2_n_2 ,\signal_out_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(signal_out01_in[11:8]),
        .S({\signal_out[11]_i_5_n_0 ,\signal_out[11]_i_6_n_0 ,signal_out1[9],\signal_out[11]_i_8_n_0 }));
  FDCE \signal_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[1]_i_1_n_0 ),
        .Q(signal_out[1]));
  FDCE \signal_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[2]_i_1_n_0 ),
        .Q(signal_out[2]));
  FDCE \signal_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[3]_i_1_n_0 ),
        .Q(signal_out[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \signal_out_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\signal_out_reg[3]_i_2_n_0 ,\signal_out_reg[3]_i_2_n_1 ,\signal_out_reg[3]_i_2_n_2 ,\signal_out_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({signal_out3_n_95,signal_out3_n_96,signal_out3_n_97,signal_out3_n_98}),
        .O(signal_out01_in[3:0]),
        .S({\signal_out[3]_i_3_n_0 ,\signal_out[3]_i_4_n_0 ,\signal_out[3]_i_5_n_0 ,\signal_out[3]_i_6_n_0 }));
  FDCE \signal_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[4]_i_1_n_0 ),
        .Q(signal_out[4]));
  FDCE \signal_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[5]_i_1_n_0 ),
        .Q(signal_out[5]));
  FDCE \signal_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[6]_i_1_n_0 ),
        .Q(signal_out[6]));
  FDCE \signal_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[7]_i_1_n_0 ),
        .Q(signal_out[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \signal_out_reg[7]_i_2 
       (.CI(\signal_out_reg[3]_i_2_n_0 ),
        .CO({\signal_out_reg[7]_i_2_n_0 ,\signal_out_reg[7]_i_2_n_1 ,\signal_out_reg[7]_i_2_n_2 ,\signal_out_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,signal_out3_n_94}),
        .O(signal_out01_in[7:4]),
        .S({\signal_out[7]_i_3_n_0 ,\signal_out[7]_i_4_n_0 ,\signal_out[7]_i_5_n_0 ,\signal_out[7]_i_6_n_0 }));
  FDCE \signal_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[8]_i_1_n_0 ),
        .Q(signal_out[8]));
  FDCE \signal_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\signal_out[9]_i_1_n_0 ),
        .Q(signal_out[9]));
  FDCE signal_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(1'b1),
        .Q(signal_valid));
  LUT2 #(
    .INIT(4'h8)) 
    state1_carry__0_i_1
       (.I0(signal_out[10]),
        .I1(signal_out[11]),
        .O(\signal_out_reg[10]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    state1_carry__0_i_2
       (.I0(signal_out[8]),
        .I1(signal_out[9]),
        .O(\signal_out_reg[10]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    state1_carry__0_i_3
       (.I0(signal_out[11]),
        .I1(signal_out[10]),
        .O(\signal_out_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_4
       (.I0(signal_out[8]),
        .I1(signal_out[9]),
        .O(\signal_out_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    state1_carry_i_1
       (.I0(signal_out[6]),
        .I1(signal_out[7]),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'hE)) 
    state1_carry_i_2
       (.I0(signal_out[4]),
        .I1(signal_out[5]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'hE)) 
    state1_carry_i_3
       (.I0(signal_out[2]),
        .I1(signal_out[3]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hE)) 
    state1_carry_i_4
       (.I0(signal_out[0]),
        .I1(signal_out[1]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_5
       (.I0(signal_out[6]),
        .I1(signal_out[7]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_6
       (.I0(signal_out[4]),
        .I1(signal_out[5]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_7
       (.I0(signal_out[2]),
        .I1(signal_out[3]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_8
       (.I0(signal_out[0]),
        .I1(signal_out[1]),
        .O(S[0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
