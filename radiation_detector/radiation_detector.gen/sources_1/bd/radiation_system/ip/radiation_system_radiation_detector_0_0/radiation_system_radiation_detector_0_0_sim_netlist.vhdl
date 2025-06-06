-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Jun  6 15:58:05 2025
-- Host        : DESKTOP-UI9B5C1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Documents/Project/radiation_detection_pynq/radiation_detector/radiation_detector.gen/sources_1/bd/radiation_system/ip/radiation_system_radiation_detector_0_0/radiation_system_radiation_detector_0_0_sim_netlist.vhdl
-- Design      : radiation_system_radiation_detector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity radiation_system_radiation_detector_0_0_radiation_detector_core is
  port (
    alert : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    alert_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    alert_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    alert_reg_2 : in STD_LOGIC;
    signal_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of radiation_system_radiation_detector_0_0_radiation_detector_core : entity is "radiation_detector_core";
end radiation_system_radiation_detector_0_0_radiation_detector_core;

architecture STRUCTURE of radiation_system_radiation_detector_0_0_radiation_detector_core is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^alert\ : STD_LOGIC;
  signal alert_i_1_n_0 : STD_LOGIC;
  signal \state1_carry__0_n_2\ : STD_LOGIC;
  signal \state1_carry__0_n_3\ : STD_LOGIC;
  signal state1_carry_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:001,PULSE_DETECT:010,PROCESS:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:001,PULSE_DETECT:010,PROCESS:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "IDLE:001,PULSE_DETECT:010,PROCESS:100,";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of state1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \state1_carry__0\ : label is 11;
begin
  alert <= \^alert\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FAF2FA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \state1_carry__0_n_2\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => signal_valid,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAFA8A0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \state1_carry__0_n_2\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => signal_valid,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => signal_valid,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => alert_reg_2,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => alert_reg_2,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => alert_reg_2,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
alert_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => signal_valid,
      I1 => \state1_carry__0_n_2\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \^alert\,
      O => alert_i_1_n_0
    );
alert_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => alert_reg_2,
      D => alert_i_1_n_0,
      Q => \^alert\
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state1_carry_n_0,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state1_carry_n_0,
      CO(3 downto 2) => \NLW_state1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \state1_carry__0_n_2\,
      CO(0) => \state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => alert_reg_0(1 downto 0),
      O(3 downto 0) => \NLW_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1 downto 0) => alert_reg_1(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity radiation_system_radiation_detector_0_0_signal_generator is
  port (
    signal_valid : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    \signal_out_reg[11]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \signal_out_reg[10]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of radiation_system_radiation_detector_0_0_signal_generator : entity is "signal_generator";
end radiation_system_radiation_detector_0_0_signal_generator;

architecture STRUCTURE of radiation_system_radiation_detector_0_0_signal_generator is
  signal \cycle_counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_n_1\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_n_2\ : STD_LOGIC;
  signal \cycle_counter1_carry__0_n_3\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_n_1\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_n_2\ : STD_LOGIC;
  signal \cycle_counter1_carry__1_n_3\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_n_0\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_n_1\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_n_2\ : STD_LOGIC;
  signal \cycle_counter1_carry__2_n_3\ : STD_LOGIC;
  signal cycle_counter1_carry_i_1_n_0 : STD_LOGIC;
  signal cycle_counter1_carry_i_2_n_0 : STD_LOGIC;
  signal cycle_counter1_carry_i_3_n_0 : STD_LOGIC;
  signal cycle_counter1_carry_i_4_n_0 : STD_LOGIC;
  signal cycle_counter1_carry_i_5_n_0 : STD_LOGIC;
  signal cycle_counter1_carry_i_6_n_0 : STD_LOGIC;
  signal cycle_counter1_carry_i_7_n_0 : STD_LOGIC;
  signal cycle_counter1_carry_i_8_n_0 : STD_LOGIC;
  signal cycle_counter1_carry_n_0 : STD_LOGIC;
  signal cycle_counter1_carry_n_1 : STD_LOGIC;
  signal cycle_counter1_carry_n_2 : STD_LOGIC;
  signal cycle_counter1_carry_n_3 : STD_LOGIC;
  signal \cycle_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal cycle_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cycle_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \decay_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \decay_counter[6]_i_3_n_0\ : STD_LOGIC;
  signal decay_counter_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \lfsr_reg_n_0_[0]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[10]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[11]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[12]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[13]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[14]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[15]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[16]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[17]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[18]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[19]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[1]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[20]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[21]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[22]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[23]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[24]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[25]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[26]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[27]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[28]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[29]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[2]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[30]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[31]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[3]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[4]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[5]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[6]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[7]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[8]\ : STD_LOGIC;
  signal \lfsr_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rst_n_0\ : STD_LOGIC;
  signal signal_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal signal_out01_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal signal_out1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \signal_out1__18_carry_i_1_n_0\ : STD_LOGIC;
  signal \signal_out1__18_carry_i_2_n_0\ : STD_LOGIC;
  signal \signal_out1__18_carry_i_3_n_0\ : STD_LOGIC;
  signal \signal_out1__18_carry_i_4_n_0\ : STD_LOGIC;
  signal \signal_out1__18_carry_n_2\ : STD_LOGIC;
  signal \signal_out1__18_carry_n_3\ : STD_LOGIC;
  signal \signal_out1__18_carry_n_6\ : STD_LOGIC;
  signal \signal_out1__18_carry_n_7\ : STD_LOGIC;
  signal \signal_out1__32_carry_i_1_n_0\ : STD_LOGIC;
  signal \signal_out1__32_carry_i_2_n_0\ : STD_LOGIC;
  signal \signal_out1__32_carry_i_3_n_0\ : STD_LOGIC;
  signal \signal_out1__32_carry_i_4_n_0\ : STD_LOGIC;
  signal \signal_out1__32_carry_n_0\ : STD_LOGIC;
  signal \signal_out1__32_carry_n_2\ : STD_LOGIC;
  signal \signal_out1__32_carry_n_3\ : STD_LOGIC;
  signal \signal_out1__32_carry_n_5\ : STD_LOGIC;
  signal \signal_out1__32_carry_n_6\ : STD_LOGIC;
  signal \signal_out1__32_carry_n_7\ : STD_LOGIC;
  signal \signal_out1__7_carry_i_1_n_0\ : STD_LOGIC;
  signal \signal_out1__7_carry_i_2_n_0\ : STD_LOGIC;
  signal \signal_out1__7_carry_n_3\ : STD_LOGIC;
  signal \signal_out1__7_carry_n_6\ : STD_LOGIC;
  signal \signal_out1__7_carry_n_7\ : STD_LOGIC;
  signal signal_out3_n_100 : STD_LOGIC;
  signal signal_out3_n_101 : STD_LOGIC;
  signal signal_out3_n_102 : STD_LOGIC;
  signal signal_out3_n_103 : STD_LOGIC;
  signal signal_out3_n_104 : STD_LOGIC;
  signal signal_out3_n_105 : STD_LOGIC;
  signal signal_out3_n_86 : STD_LOGIC;
  signal signal_out3_n_87 : STD_LOGIC;
  signal signal_out3_n_88 : STD_LOGIC;
  signal signal_out3_n_89 : STD_LOGIC;
  signal signal_out3_n_90 : STD_LOGIC;
  signal signal_out3_n_91 : STD_LOGIC;
  signal signal_out3_n_92 : STD_LOGIC;
  signal signal_out3_n_93 : STD_LOGIC;
  signal signal_out3_n_94 : STD_LOGIC;
  signal signal_out3_n_95 : STD_LOGIC;
  signal signal_out3_n_96 : STD_LOGIC;
  signal signal_out3_n_97 : STD_LOGIC;
  signal signal_out3_n_98 : STD_LOGIC;
  signal signal_out3_n_99 : STD_LOGIC;
  signal \signal_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \signal_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \signal_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \signal_out[11]_i_6_n_0\ : STD_LOGIC;
  signal \signal_out[11]_i_8_n_0\ : STD_LOGIC;
  signal \signal_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \signal_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \signal_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \signal_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \signal_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \signal_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \signal_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \signal_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \signal_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \signal_out_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \signal_out_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \signal_out_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \signal_out_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \signal_out_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \signal_out_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \signal_out_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \signal_out_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \signal_out_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \signal_out_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \signal_out_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal NLW_cycle_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cycle_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cycle_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cycle_counter1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cycle_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_signal_out1__18_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_signal_out1__18_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_signal_out1__32_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_signal_out1__32_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_signal_out1__7_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_signal_out1__7_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_signal_out3_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_out3_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_out3_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_out3_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_out3_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_out3_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_out3_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_signal_out3_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_signal_out3_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_signal_out3_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 20 );
  signal NLW_signal_out3_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_signal_out_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of cycle_counter1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \cycle_counter1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cycle_counter1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cycle_counter1_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cycle_counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycle_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycle_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycle_counter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycle_counter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycle_counter_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycle_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycle_counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \decay_counter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \decay_counter[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \decay_counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \decay_counter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \decay_counter[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \decay_counter[6]_i_3\ : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of signal_out3 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \signal_out[10]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \signal_out[11]_i_4\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \signal_out_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \signal_out_reg[3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \signal_out_reg[7]_i_2\ : label is 35;
begin
  rst_n_0 <= \^rst_n_0\;
alert_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
cycle_counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cycle_counter1_carry_n_0,
      CO(2) => cycle_counter1_carry_n_1,
      CO(1) => cycle_counter1_carry_n_2,
      CO(0) => cycle_counter1_carry_n_3,
      CYINIT => '1',
      DI(3) => cycle_counter1_carry_i_1_n_0,
      DI(2) => cycle_counter1_carry_i_2_n_0,
      DI(1) => cycle_counter1_carry_i_3_n_0,
      DI(0) => cycle_counter1_carry_i_4_n_0,
      O(3 downto 0) => NLW_cycle_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cycle_counter1_carry_i_5_n_0,
      S(2) => cycle_counter1_carry_i_6_n_0,
      S(1) => cycle_counter1_carry_i_7_n_0,
      S(0) => cycle_counter1_carry_i_8_n_0
    );
\cycle_counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cycle_counter1_carry_n_0,
      CO(3) => \cycle_counter1_carry__0_n_0\,
      CO(2) => \cycle_counter1_carry__0_n_1\,
      CO(1) => \cycle_counter1_carry__0_n_2\,
      CO(0) => \cycle_counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_counter1_carry__0_i_1_n_0\,
      DI(2) => \cycle_counter1_carry__0_i_2_n_0\,
      DI(1) => cycle_counter_reg(11),
      DI(0) => \cycle_counter1_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_cycle_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cycle_counter1_carry__0_i_4_n_0\,
      S(2) => \cycle_counter1_carry__0_i_5_n_0\,
      S(1) => \cycle_counter1_carry__0_i_6_n_0\,
      S(0) => \cycle_counter1_carry__0_i_7_n_0\
    );
\cycle_counter1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_counter_reg(14),
      I1 => cycle_counter_reg(15),
      O => \cycle_counter1_carry__0_i_1_n_0\
    );
\cycle_counter1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(13),
      I1 => cycle_counter_reg(12),
      O => \cycle_counter1_carry__0_i_2_n_0\
    );
\cycle_counter1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_counter_reg(8),
      I1 => cycle_counter_reg(9),
      O => \cycle_counter1_carry__0_i_3_n_0\
    );
\cycle_counter1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(15),
      I1 => cycle_counter_reg(14),
      O => \cycle_counter1_carry__0_i_4_n_0\
    );
\cycle_counter1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(12),
      I1 => cycle_counter_reg(13),
      O => \cycle_counter1_carry__0_i_5_n_0\
    );
\cycle_counter1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(10),
      I1 => cycle_counter_reg(11),
      O => \cycle_counter1_carry__0_i_6_n_0\
    );
\cycle_counter1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(9),
      I1 => cycle_counter_reg(8),
      O => \cycle_counter1_carry__0_i_7_n_0\
    );
\cycle_counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter1_carry__0_n_0\,
      CO(3) => \cycle_counter1_carry__1_n_0\,
      CO(2) => \cycle_counter1_carry__1_n_1\,
      CO(1) => \cycle_counter1_carry__1_n_2\,
      CO(0) => \cycle_counter1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_counter1_carry__1_i_1_n_0\,
      DI(2) => \cycle_counter1_carry__1_i_2_n_0\,
      DI(1) => \cycle_counter1_carry__1_i_3_n_0\,
      DI(0) => cycle_counter_reg(17),
      O(3 downto 0) => \NLW_cycle_counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \cycle_counter1_carry__1_i_4_n_0\,
      S(2) => \cycle_counter1_carry__1_i_5_n_0\,
      S(1) => \cycle_counter1_carry__1_i_6_n_0\,
      S(0) => \cycle_counter1_carry__1_i_7_n_0\
    );
\cycle_counter1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(23),
      I1 => cycle_counter_reg(22),
      O => \cycle_counter1_carry__1_i_1_n_0\
    );
\cycle_counter1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(21),
      I1 => cycle_counter_reg(20),
      O => \cycle_counter1_carry__1_i_2_n_0\
    );
\cycle_counter1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(19),
      I1 => cycle_counter_reg(18),
      O => \cycle_counter1_carry__1_i_3_n_0\
    );
\cycle_counter1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(22),
      I1 => cycle_counter_reg(23),
      O => \cycle_counter1_carry__1_i_4_n_0\
    );
\cycle_counter1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(20),
      I1 => cycle_counter_reg(21),
      O => \cycle_counter1_carry__1_i_5_n_0\
    );
\cycle_counter1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(18),
      I1 => cycle_counter_reg(19),
      O => \cycle_counter1_carry__1_i_6_n_0\
    );
\cycle_counter1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(16),
      I1 => cycle_counter_reg(17),
      O => \cycle_counter1_carry__1_i_7_n_0\
    );
\cycle_counter1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter1_carry__1_n_0\,
      CO(3) => \cycle_counter1_carry__2_n_0\,
      CO(2) => \cycle_counter1_carry__2_n_1\,
      CO(1) => \cycle_counter1_carry__2_n_2\,
      CO(0) => \cycle_counter1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_counter1_carry__2_i_1_n_0\,
      DI(2) => \cycle_counter1_carry__2_i_2_n_0\,
      DI(1) => \cycle_counter1_carry__2_i_3_n_0\,
      DI(0) => \cycle_counter1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_cycle_counter1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \cycle_counter1_carry__2_i_5_n_0\,
      S(2) => \cycle_counter1_carry__2_i_6_n_0\,
      S(1) => \cycle_counter1_carry__2_i_7_n_0\,
      S(0) => \cycle_counter1_carry__2_i_8_n_0\
    );
\cycle_counter1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(31),
      I1 => cycle_counter_reg(30),
      O => \cycle_counter1_carry__2_i_1_n_0\
    );
\cycle_counter1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(29),
      I1 => cycle_counter_reg(28),
      O => \cycle_counter1_carry__2_i_2_n_0\
    );
\cycle_counter1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(27),
      I1 => cycle_counter_reg(26),
      O => \cycle_counter1_carry__2_i_3_n_0\
    );
\cycle_counter1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(25),
      I1 => cycle_counter_reg(24),
      O => \cycle_counter1_carry__2_i_4_n_0\
    );
\cycle_counter1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(30),
      I1 => cycle_counter_reg(31),
      O => \cycle_counter1_carry__2_i_5_n_0\
    );
\cycle_counter1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(28),
      I1 => cycle_counter_reg(29),
      O => \cycle_counter1_carry__2_i_6_n_0\
    );
\cycle_counter1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(26),
      I1 => cycle_counter_reg(27),
      O => \cycle_counter1_carry__2_i_7_n_0\
    );
\cycle_counter1_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(24),
      I1 => cycle_counter_reg(25),
      O => \cycle_counter1_carry__2_i_8_n_0\
    );
cycle_counter1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_counter_reg(6),
      I1 => cycle_counter_reg(7),
      O => cycle_counter1_carry_i_1_n_0
    );
cycle_counter1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => cycle_counter_reg(5),
      O => cycle_counter1_carry_i_2_n_0
    );
cycle_counter1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(3),
      I1 => cycle_counter_reg(2),
      O => cycle_counter1_carry_i_3_n_0
    );
cycle_counter1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cycle_counter_reg(1),
      I1 => cycle_counter_reg(0),
      O => cycle_counter1_carry_i_4_n_0
    );
cycle_counter1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(7),
      I1 => cycle_counter_reg(6),
      O => cycle_counter1_carry_i_5_n_0
    );
cycle_counter1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(5),
      I1 => cycle_counter_reg(4),
      O => cycle_counter1_carry_i_6_n_0
    );
cycle_counter1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(2),
      I1 => cycle_counter_reg(3),
      O => cycle_counter1_carry_i_7_n_0
    );
cycle_counter1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(0),
      I1 => cycle_counter_reg(1),
      O => cycle_counter1_carry_i_8_n_0
    );
\cycle_counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(0),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[0]_i_2_n_0\
    );
\cycle_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(3),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[0]_i_3_n_0\
    );
\cycle_counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(2),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[0]_i_4_n_0\
    );
\cycle_counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(1),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[0]_i_5_n_0\
    );
\cycle_counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter_reg(0),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[0]_i_6_n_0\
    );
\cycle_counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(15),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[12]_i_2_n_0\
    );
\cycle_counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(14),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[12]_i_3_n_0\
    );
\cycle_counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(13),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[12]_i_4_n_0\
    );
\cycle_counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(12),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[12]_i_5_n_0\
    );
\cycle_counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(19),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[16]_i_2_n_0\
    );
\cycle_counter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(18),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[16]_i_3_n_0\
    );
\cycle_counter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(17),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[16]_i_4_n_0\
    );
\cycle_counter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(16),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[16]_i_5_n_0\
    );
\cycle_counter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(23),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[20]_i_2_n_0\
    );
\cycle_counter[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(22),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[20]_i_3_n_0\
    );
\cycle_counter[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(21),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[20]_i_4_n_0\
    );
\cycle_counter[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(20),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[20]_i_5_n_0\
    );
\cycle_counter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(27),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[24]_i_2_n_0\
    );
\cycle_counter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(26),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[24]_i_3_n_0\
    );
\cycle_counter[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(25),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[24]_i_4_n_0\
    );
\cycle_counter[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(24),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[24]_i_5_n_0\
    );
\cycle_counter[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(31),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[28]_i_2_n_0\
    );
\cycle_counter[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(30),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[28]_i_3_n_0\
    );
\cycle_counter[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(29),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[28]_i_4_n_0\
    );
\cycle_counter[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(28),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[28]_i_5_n_0\
    );
\cycle_counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(7),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[4]_i_2_n_0\
    );
\cycle_counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(6),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[4]_i_3_n_0\
    );
\cycle_counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(5),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[4]_i_4_n_0\
    );
\cycle_counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(4),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[4]_i_5_n_0\
    );
\cycle_counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(11),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[8]_i_2_n_0\
    );
\cycle_counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(10),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[8]_i_3_n_0\
    );
\cycle_counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(9),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[8]_i_4_n_0\
    );
\cycle_counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_counter_reg(8),
      I1 => \cycle_counter1_carry__2_n_0\,
      O => \cycle_counter[8]_i_5_n_0\
    );
\cycle_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[0]_i_1_n_7\,
      Q => cycle_counter_reg(0)
    );
\cycle_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cycle_counter_reg[0]_i_1_n_0\,
      CO(2) => \cycle_counter_reg[0]_i_1_n_1\,
      CO(1) => \cycle_counter_reg[0]_i_1_n_2\,
      CO(0) => \cycle_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cycle_counter[0]_i_2_n_0\,
      O(3) => \cycle_counter_reg[0]_i_1_n_4\,
      O(2) => \cycle_counter_reg[0]_i_1_n_5\,
      O(1) => \cycle_counter_reg[0]_i_1_n_6\,
      O(0) => \cycle_counter_reg[0]_i_1_n_7\,
      S(3) => \cycle_counter[0]_i_3_n_0\,
      S(2) => \cycle_counter[0]_i_4_n_0\,
      S(1) => \cycle_counter[0]_i_5_n_0\,
      S(0) => \cycle_counter[0]_i_6_n_0\
    );
\cycle_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[8]_i_1_n_5\,
      Q => cycle_counter_reg(10)
    );
\cycle_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[8]_i_1_n_4\,
      Q => cycle_counter_reg(11)
    );
\cycle_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[12]_i_1_n_7\,
      Q => cycle_counter_reg(12)
    );
\cycle_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter_reg[8]_i_1_n_0\,
      CO(3) => \cycle_counter_reg[12]_i_1_n_0\,
      CO(2) => \cycle_counter_reg[12]_i_1_n_1\,
      CO(1) => \cycle_counter_reg[12]_i_1_n_2\,
      CO(0) => \cycle_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_counter_reg[12]_i_1_n_4\,
      O(2) => \cycle_counter_reg[12]_i_1_n_5\,
      O(1) => \cycle_counter_reg[12]_i_1_n_6\,
      O(0) => \cycle_counter_reg[12]_i_1_n_7\,
      S(3) => \cycle_counter[12]_i_2_n_0\,
      S(2) => \cycle_counter[12]_i_3_n_0\,
      S(1) => \cycle_counter[12]_i_4_n_0\,
      S(0) => \cycle_counter[12]_i_5_n_0\
    );
\cycle_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[12]_i_1_n_6\,
      Q => cycle_counter_reg(13)
    );
\cycle_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[12]_i_1_n_5\,
      Q => cycle_counter_reg(14)
    );
\cycle_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[12]_i_1_n_4\,
      Q => cycle_counter_reg(15)
    );
\cycle_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[16]_i_1_n_7\,
      Q => cycle_counter_reg(16)
    );
\cycle_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter_reg[12]_i_1_n_0\,
      CO(3) => \cycle_counter_reg[16]_i_1_n_0\,
      CO(2) => \cycle_counter_reg[16]_i_1_n_1\,
      CO(1) => \cycle_counter_reg[16]_i_1_n_2\,
      CO(0) => \cycle_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_counter_reg[16]_i_1_n_4\,
      O(2) => \cycle_counter_reg[16]_i_1_n_5\,
      O(1) => \cycle_counter_reg[16]_i_1_n_6\,
      O(0) => \cycle_counter_reg[16]_i_1_n_7\,
      S(3) => \cycle_counter[16]_i_2_n_0\,
      S(2) => \cycle_counter[16]_i_3_n_0\,
      S(1) => \cycle_counter[16]_i_4_n_0\,
      S(0) => \cycle_counter[16]_i_5_n_0\
    );
\cycle_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[16]_i_1_n_6\,
      Q => cycle_counter_reg(17)
    );
\cycle_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[16]_i_1_n_5\,
      Q => cycle_counter_reg(18)
    );
\cycle_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[16]_i_1_n_4\,
      Q => cycle_counter_reg(19)
    );
\cycle_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[0]_i_1_n_6\,
      Q => cycle_counter_reg(1)
    );
\cycle_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[20]_i_1_n_7\,
      Q => cycle_counter_reg(20)
    );
\cycle_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter_reg[16]_i_1_n_0\,
      CO(3) => \cycle_counter_reg[20]_i_1_n_0\,
      CO(2) => \cycle_counter_reg[20]_i_1_n_1\,
      CO(1) => \cycle_counter_reg[20]_i_1_n_2\,
      CO(0) => \cycle_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_counter_reg[20]_i_1_n_4\,
      O(2) => \cycle_counter_reg[20]_i_1_n_5\,
      O(1) => \cycle_counter_reg[20]_i_1_n_6\,
      O(0) => \cycle_counter_reg[20]_i_1_n_7\,
      S(3) => \cycle_counter[20]_i_2_n_0\,
      S(2) => \cycle_counter[20]_i_3_n_0\,
      S(1) => \cycle_counter[20]_i_4_n_0\,
      S(0) => \cycle_counter[20]_i_5_n_0\
    );
\cycle_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[20]_i_1_n_6\,
      Q => cycle_counter_reg(21)
    );
\cycle_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[20]_i_1_n_5\,
      Q => cycle_counter_reg(22)
    );
\cycle_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[20]_i_1_n_4\,
      Q => cycle_counter_reg(23)
    );
\cycle_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[24]_i_1_n_7\,
      Q => cycle_counter_reg(24)
    );
\cycle_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter_reg[20]_i_1_n_0\,
      CO(3) => \cycle_counter_reg[24]_i_1_n_0\,
      CO(2) => \cycle_counter_reg[24]_i_1_n_1\,
      CO(1) => \cycle_counter_reg[24]_i_1_n_2\,
      CO(0) => \cycle_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_counter_reg[24]_i_1_n_4\,
      O(2) => \cycle_counter_reg[24]_i_1_n_5\,
      O(1) => \cycle_counter_reg[24]_i_1_n_6\,
      O(0) => \cycle_counter_reg[24]_i_1_n_7\,
      S(3) => \cycle_counter[24]_i_2_n_0\,
      S(2) => \cycle_counter[24]_i_3_n_0\,
      S(1) => \cycle_counter[24]_i_4_n_0\,
      S(0) => \cycle_counter[24]_i_5_n_0\
    );
\cycle_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[24]_i_1_n_6\,
      Q => cycle_counter_reg(25)
    );
\cycle_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[24]_i_1_n_5\,
      Q => cycle_counter_reg(26)
    );
\cycle_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[24]_i_1_n_4\,
      Q => cycle_counter_reg(27)
    );
\cycle_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[28]_i_1_n_7\,
      Q => cycle_counter_reg(28)
    );
\cycle_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cycle_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cycle_counter_reg[28]_i_1_n_1\,
      CO(1) => \cycle_counter_reg[28]_i_1_n_2\,
      CO(0) => \cycle_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_counter_reg[28]_i_1_n_4\,
      O(2) => \cycle_counter_reg[28]_i_1_n_5\,
      O(1) => \cycle_counter_reg[28]_i_1_n_6\,
      O(0) => \cycle_counter_reg[28]_i_1_n_7\,
      S(3) => \cycle_counter[28]_i_2_n_0\,
      S(2) => \cycle_counter[28]_i_3_n_0\,
      S(1) => \cycle_counter[28]_i_4_n_0\,
      S(0) => \cycle_counter[28]_i_5_n_0\
    );
\cycle_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[28]_i_1_n_6\,
      Q => cycle_counter_reg(29)
    );
\cycle_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[0]_i_1_n_5\,
      Q => cycle_counter_reg(2)
    );
\cycle_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[28]_i_1_n_5\,
      Q => cycle_counter_reg(30)
    );
\cycle_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[28]_i_1_n_4\,
      Q => cycle_counter_reg(31)
    );
\cycle_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[0]_i_1_n_4\,
      Q => cycle_counter_reg(3)
    );
\cycle_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[4]_i_1_n_7\,
      Q => cycle_counter_reg(4)
    );
\cycle_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter_reg[0]_i_1_n_0\,
      CO(3) => \cycle_counter_reg[4]_i_1_n_0\,
      CO(2) => \cycle_counter_reg[4]_i_1_n_1\,
      CO(1) => \cycle_counter_reg[4]_i_1_n_2\,
      CO(0) => \cycle_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_counter_reg[4]_i_1_n_4\,
      O(2) => \cycle_counter_reg[4]_i_1_n_5\,
      O(1) => \cycle_counter_reg[4]_i_1_n_6\,
      O(0) => \cycle_counter_reg[4]_i_1_n_7\,
      S(3) => \cycle_counter[4]_i_2_n_0\,
      S(2) => \cycle_counter[4]_i_3_n_0\,
      S(1) => \cycle_counter[4]_i_4_n_0\,
      S(0) => \cycle_counter[4]_i_5_n_0\
    );
\cycle_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[4]_i_1_n_6\,
      Q => cycle_counter_reg(5)
    );
\cycle_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[4]_i_1_n_5\,
      Q => cycle_counter_reg(6)
    );
\cycle_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[4]_i_1_n_4\,
      Q => cycle_counter_reg(7)
    );
\cycle_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[8]_i_1_n_7\,
      Q => cycle_counter_reg(8)
    );
\cycle_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter_reg[4]_i_1_n_0\,
      CO(3) => \cycle_counter_reg[8]_i_1_n_0\,
      CO(2) => \cycle_counter_reg[8]_i_1_n_1\,
      CO(1) => \cycle_counter_reg[8]_i_1_n_2\,
      CO(0) => \cycle_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_counter_reg[8]_i_1_n_4\,
      O(2) => \cycle_counter_reg[8]_i_1_n_5\,
      O(1) => \cycle_counter_reg[8]_i_1_n_6\,
      O(0) => \cycle_counter_reg[8]_i_1_n_7\,
      S(3) => \cycle_counter[8]_i_2_n_0\,
      S(2) => \cycle_counter[8]_i_3_n_0\,
      S(1) => \cycle_counter[8]_i_4_n_0\,
      S(0) => \cycle_counter[8]_i_5_n_0\
    );
\cycle_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cycle_counter_reg[8]_i_1_n_6\,
      Q => cycle_counter_reg(9)
    );
\decay_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \signal_out[11]_i_3_n_0\,
      I1 => decay_counter_reg(0),
      O => p_0_in(0)
    );
\decay_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \signal_out[11]_i_3_n_0\,
      I1 => decay_counter_reg(1),
      I2 => decay_counter_reg(0),
      O => p_0_in(1)
    );
\decay_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => decay_counter_reg(2),
      I1 => decay_counter_reg(1),
      I2 => decay_counter_reg(0),
      O => p_0_in(2)
    );
\decay_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80002"
    )
        port map (
      I0 => \signal_out[11]_i_3_n_0\,
      I1 => decay_counter_reg(2),
      I2 => decay_counter_reg(1),
      I3 => decay_counter_reg(0),
      I4 => decay_counter_reg(3),
      O => p_0_in(3)
    );
\decay_counter[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FE0"
    )
        port map (
      I0 => decay_counter_reg(5),
      I1 => decay_counter_reg(6),
      I2 => \decay_counter[6]_i_3_n_0\,
      I3 => decay_counter_reg(4),
      O => p_0_in(4)
    );
\decay_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => decay_counter_reg(5),
      I1 => decay_counter_reg(4),
      I2 => decay_counter_reg(1),
      I3 => decay_counter_reg(0),
      I4 => decay_counter_reg(3),
      I5 => decay_counter_reg(2),
      O => p_0_in(5)
    );
\decay_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cycle_counter1_carry__2_n_0\,
      I1 => \signal_out[11]_i_3_n_0\,
      O => \decay_counter[6]_i_1_n_0\
    );
\decay_counter[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => decay_counter_reg(6),
      I1 => decay_counter_reg(4),
      I2 => decay_counter_reg(5),
      I3 => \decay_counter[6]_i_3_n_0\,
      O => p_0_in(6)
    );
\decay_counter[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => decay_counter_reg(1),
      I1 => decay_counter_reg(0),
      I2 => decay_counter_reg(3),
      I3 => decay_counter_reg(2),
      O => \decay_counter[6]_i_3_n_0\
    );
\decay_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \decay_counter[6]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => p_0_in(0),
      Q => decay_counter_reg(0)
    );
\decay_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \decay_counter[6]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => p_0_in(1),
      Q => decay_counter_reg(1)
    );
\decay_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \decay_counter[6]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => p_0_in(2),
      Q => decay_counter_reg(2)
    );
\decay_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \decay_counter[6]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => p_0_in(3),
      Q => decay_counter_reg(3)
    );
\decay_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \decay_counter[6]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => p_0_in(4),
      Q => decay_counter_reg(4)
    );
\decay_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \decay_counter[6]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => p_0_in(5),
      Q => decay_counter_reg(5)
    );
\decay_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \decay_counter[6]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => p_0_in(6),
      Q => decay_counter_reg(6)
    );
\lfsr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \lfsr_reg_n_0_[21]\,
      I1 => \lfsr_reg_n_0_[31]\,
      I2 => \lfsr_reg_n_0_[0]\,
      I3 => \lfsr_reg_n_0_[1]\,
      O => p_0_out(0)
    );
\lfsr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(0),
      Q => \lfsr_reg_n_0_[0]\
    );
\lfsr_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[9]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[10]\
    );
\lfsr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[10]\,
      Q => \lfsr_reg_n_0_[11]\
    );
\lfsr_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[11]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[12]\
    );
\lfsr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[12]\,
      Q => \lfsr_reg_n_0_[13]\
    );
\lfsr_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[13]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[14]\
    );
\lfsr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[14]\,
      Q => \lfsr_reg_n_0_[15]\
    );
\lfsr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[15]\,
      Q => \lfsr_reg_n_0_[16]\
    );
\lfsr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[16]\,
      Q => \lfsr_reg_n_0_[17]\
    );
\lfsr_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[17]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[18]\
    );
\lfsr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[18]\,
      Q => \lfsr_reg_n_0_[19]\
    );
\lfsr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[0]\,
      Q => \lfsr_reg_n_0_[1]\
    );
\lfsr_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[19]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[20]\
    );
\lfsr_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[20]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[21]\
    );
\lfsr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[21]\,
      Q => \lfsr_reg_n_0_[22]\
    );
\lfsr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[22]\,
      Q => \lfsr_reg_n_0_[23]\
    );
\lfsr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[23]\,
      Q => \lfsr_reg_n_0_[24]\
    );
\lfsr_reg[25]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[24]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[25]\
    );
\lfsr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[25]\,
      Q => \lfsr_reg_n_0_[26]\
    );
\lfsr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[26]\,
      Q => \lfsr_reg_n_0_[27]\
    );
\lfsr_reg[28]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[27]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[28]\
    );
\lfsr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[28]\,
      Q => \lfsr_reg_n_0_[29]\
    );
\lfsr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[1]\,
      Q => \lfsr_reg_n_0_[2]\
    );
\lfsr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[29]\,
      Q => \lfsr_reg_n_0_[30]\
    );
\lfsr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[30]\,
      Q => \lfsr_reg_n_0_[31]\
    );
\lfsr_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[2]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[3]\
    );
\lfsr_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[3]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[4]\
    );
\lfsr_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[4]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[5]\
    );
\lfsr_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[5]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[6]\
    );
\lfsr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[6]\,
      Q => \lfsr_reg_n_0_[7]\
    );
\lfsr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \lfsr_reg_n_0_[7]\,
      Q => \lfsr_reg_n_0_[8]\
    );
\lfsr_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \lfsr_reg_n_0_[8]\,
      PRE => \^rst_n_0\,
      Q => \lfsr_reg_n_0_[9]\
    );
\signal_out1__18_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_signal_out1__18_carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \signal_out1__18_carry_n_2\,
      CO(0) => \signal_out1__18_carry_n_3\,
      CYINIT => \signal_out1__7_carry_n_3\,
      DI(3 downto 2) => B"00",
      DI(1) => \signal_out1__7_carry_n_3\,
      DI(0) => \signal_out1__18_carry_i_1_n_0\,
      O(3) => \NLW_signal_out1__18_carry_O_UNCONNECTED\(3),
      O(2) => signal_out1(0),
      O(1) => \signal_out1__18_carry_n_6\,
      O(0) => \signal_out1__18_carry_n_7\,
      S(3) => '0',
      S(2) => \signal_out1__18_carry_i_2_n_0\,
      S(1) => \signal_out1__18_carry_i_3_n_0\,
      S(0) => \signal_out1__18_carry_i_4_n_0\
    );
\signal_out1__18_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lfsr_reg_n_0_[9]\,
      O => \signal_out1__18_carry_i_1_n_0\
    );
\signal_out1__18_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_reg_n_0_[0]\,
      I1 => \signal_out1__18_carry_n_2\,
      O => \signal_out1__18_carry_i_2_n_0\
    );
\signal_out1__18_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \signal_out1__7_carry_n_3\,
      I1 => \signal_out1__7_carry_n_7\,
      O => \signal_out1__18_carry_i_3_n_0\
    );
\signal_out1__18_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \signal_out1__7_carry_n_3\,
      I1 => \lfsr_reg_n_0_[9]\,
      O => \signal_out1__18_carry_i_4_n_0\
    );
\signal_out1__32_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \signal_out1__32_carry_n_0\,
      CO(2) => \NLW_signal_out1__32_carry_CO_UNCONNECTED\(2),
      CO(1) => \signal_out1__32_carry_n_2\,
      CO(0) => \signal_out1__32_carry_n_3\,
      CYINIT => \signal_out1__18_carry_n_2\,
      DI(3) => '0',
      DI(2) => \signal_out1__18_carry_n_2\,
      DI(1) => \signal_out1__18_carry_n_2\,
      DI(0) => \signal_out1__32_carry_i_1_n_0\,
      O(3) => \NLW_signal_out1__32_carry_O_UNCONNECTED\(3),
      O(2) => \signal_out1__32_carry_n_5\,
      O(1) => \signal_out1__32_carry_n_6\,
      O(0) => \signal_out1__32_carry_n_7\,
      S(3) => '1',
      S(2) => \signal_out1__32_carry_i_2_n_0\,
      S(1) => \signal_out1__32_carry_i_3_n_0\,
      S(0) => \signal_out1__32_carry_i_4_n_0\
    );
\signal_out1__32_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lfsr_reg_n_0_[8]\,
      O => \signal_out1__32_carry_i_1_n_0\
    );
\signal_out1__32_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \signal_out1__18_carry_n_2\,
      I1 => \signal_out1__18_carry_n_6\,
      O => \signal_out1__32_carry_i_2_n_0\
    );
\signal_out1__32_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \signal_out1__18_carry_n_2\,
      I1 => \signal_out1__18_carry_n_7\,
      O => \signal_out1__32_carry_i_3_n_0\
    );
\signal_out1__32_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \signal_out1__18_carry_n_2\,
      I1 => \lfsr_reg_n_0_[8]\,
      O => \signal_out1__32_carry_i_4_n_0\
    );
\signal_out1__7_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => \NLW_signal_out1__7_carry_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \signal_out1__7_carry_n_3\,
      CYINIT => \lfsr_reg_n_0_[11]\,
      DI(3 downto 1) => B"000",
      DI(0) => \lfsr_reg_n_0_[10]\,
      O(3 downto 2) => \NLW_signal_out1__7_carry_O_UNCONNECTED\(3 downto 2),
      O(1) => \signal_out1__7_carry_n_6\,
      O(0) => \signal_out1__7_carry_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \signal_out1__7_carry_i_1_n_0\,
      S(0) => \signal_out1__7_carry_i_2_n_0\
    );
\signal_out1__7_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_reg_n_0_[1]\,
      I1 => \signal_out1__7_carry_n_3\,
      O => \signal_out1__7_carry_i_1_n_0\
    );
\signal_out1__7_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \lfsr_reg_n_0_[11]\,
      I1 => \lfsr_reg_n_0_[10]\,
      O => \signal_out1__7_carry_i_2_n_0\
    );
signal_out3: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_signal_out3_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 7) => B"00000000000",
      B(6 downto 0) => decay_counter_reg(6 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_signal_out3_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_signal_out3_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_signal_out3_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_signal_out3_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_signal_out3_OVERFLOW_UNCONNECTED,
      P(47 downto 20) => NLW_signal_out3_P_UNCONNECTED(47 downto 20),
      P(19) => signal_out3_n_86,
      P(18) => signal_out3_n_87,
      P(17) => signal_out3_n_88,
      P(16) => signal_out3_n_89,
      P(15) => signal_out3_n_90,
      P(14) => signal_out3_n_91,
      P(13) => signal_out3_n_92,
      P(12) => signal_out3_n_93,
      P(11) => signal_out3_n_94,
      P(10) => signal_out3_n_95,
      P(9) => signal_out3_n_96,
      P(8) => signal_out3_n_97,
      P(7) => signal_out3_n_98,
      P(6) => signal_out3_n_99,
      P(5) => signal_out3_n_100,
      P(4) => signal_out3_n_101,
      P(3) => signal_out3_n_102,
      P(2) => signal_out3_n_103,
      P(1) => signal_out3_n_104,
      P(0) => signal_out3_n_105,
      PATTERNBDETECT => NLW_signal_out3_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_signal_out3_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_signal_out3_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_signal_out3_UNDERFLOW_UNCONNECTED
    );
\signal_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => signal_out01_in(0),
      I1 => \signal_out[11]_i_3_n_0\,
      I2 => signal_out1(0),
      I3 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[0]_i_1_n_0\
    );
\signal_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => signal_out01_in(10),
      I1 => \signal_out[11]_i_3_n_0\,
      I2 => signal_out1(10),
      I3 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[10]_i_1_n_0\
    );
\signal_out[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \signal_out1__32_carry_n_5\,
      I1 => \signal_out1__32_carry_n_7\,
      I2 => \signal_out1__32_carry_n_0\,
      I3 => \signal_out1__32_carry_n_6\,
      O => signal_out1(10)
    );
\signal_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => signal_out01_in(11),
      I1 => \signal_out[11]_i_3_n_0\,
      I2 => \cycle_counter1_carry__2_n_0\,
      I3 => \signal_out[11]_i_4_n_0\,
      O => \signal_out[11]_i_1_n_0\
    );
\signal_out[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => decay_counter_reg(4),
      I1 => decay_counter_reg(5),
      I2 => decay_counter_reg(6),
      I3 => \decay_counter[6]_i_3_n_0\,
      O => \signal_out[11]_i_3_n_0\
    );
\signal_out[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \signal_out1__32_carry_n_0\,
      I1 => \signal_out1__32_carry_n_6\,
      I2 => \signal_out1__32_carry_n_5\,
      I3 => \signal_out1__32_carry_n_7\,
      O => \signal_out[11]_i_4_n_0\
    );
\signal_out[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \signal_out1__32_carry_n_0\,
      I1 => \signal_out1__32_carry_n_6\,
      I2 => \signal_out1__32_carry_n_5\,
      I3 => \signal_out1__32_carry_n_7\,
      O => \signal_out[11]_i_5_n_0\
    );
\signal_out[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \signal_out1__32_carry_n_5\,
      I1 => \signal_out1__32_carry_n_7\,
      I2 => \signal_out1__32_carry_n_0\,
      I3 => \signal_out1__32_carry_n_6\,
      O => \signal_out[11]_i_6_n_0\
    );
\signal_out[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \signal_out1__32_carry_n_6\,
      I1 => \signal_out1__32_carry_n_0\,
      I2 => \signal_out1__32_carry_n_7\,
      O => signal_out1(9)
    );
\signal_out[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \signal_out1__32_carry_n_0\,
      I1 => \signal_out1__32_carry_n_7\,
      O => \signal_out[11]_i_8_n_0\
    );
\signal_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => signal_out01_in(1),
      I1 => \signal_out[11]_i_3_n_0\,
      I2 => \signal_out1__7_carry_n_6\,
      I3 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[1]_i_1_n_0\
    );
\signal_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CA"
    )
        port map (
      I0 => \lfsr_reg_n_0_[2]\,
      I1 => signal_out01_in(2),
      I2 => \signal_out[11]_i_3_n_0\,
      I3 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[2]_i_1_n_0\
    );
\signal_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CA"
    )
        port map (
      I0 => \lfsr_reg_n_0_[3]\,
      I1 => signal_out01_in(3),
      I2 => \signal_out[11]_i_3_n_0\,
      I3 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[3]_i_1_n_0\
    );
\signal_out[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => signal_out3_n_95,
      I1 => \lfsr_reg_n_0_[3]\,
      O => \signal_out[3]_i_3_n_0\
    );
\signal_out[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => signal_out3_n_96,
      I1 => \lfsr_reg_n_0_[2]\,
      O => \signal_out[3]_i_4_n_0\
    );
\signal_out[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => signal_out3_n_97,
      I1 => \signal_out1__7_carry_n_6\,
      O => \signal_out[3]_i_5_n_0\
    );
\signal_out[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => signal_out3_n_98,
      I1 => signal_out1(0),
      O => \signal_out[3]_i_6_n_0\
    );
\signal_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CA"
    )
        port map (
      I0 => \lfsr_reg_n_0_[4]\,
      I1 => signal_out01_in(4),
      I2 => \signal_out[11]_i_3_n_0\,
      I3 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[4]_i_1_n_0\
    );
\signal_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CA"
    )
        port map (
      I0 => \lfsr_reg_n_0_[5]\,
      I1 => signal_out01_in(5),
      I2 => \signal_out[11]_i_3_n_0\,
      I3 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[5]_i_1_n_0\
    );
\signal_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CA"
    )
        port map (
      I0 => \lfsr_reg_n_0_[6]\,
      I1 => signal_out01_in(6),
      I2 => \signal_out[11]_i_3_n_0\,
      I3 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[6]_i_1_n_0\
    );
\signal_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CA"
    )
        port map (
      I0 => \lfsr_reg_n_0_[7]\,
      I1 => signal_out01_in(7),
      I2 => \signal_out[11]_i_3_n_0\,
      I3 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[7]_i_1_n_0\
    );
\signal_out[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lfsr_reg_n_0_[7]\,
      O => \signal_out[7]_i_3_n_0\
    );
\signal_out[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lfsr_reg_n_0_[6]\,
      O => \signal_out[7]_i_4_n_0\
    );
\signal_out[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lfsr_reg_n_0_[5]\,
      O => \signal_out[7]_i_5_n_0\
    );
\signal_out[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => signal_out3_n_94,
      I1 => \lfsr_reg_n_0_[4]\,
      O => \signal_out[7]_i_6_n_0\
    );
\signal_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B88B"
    )
        port map (
      I0 => signal_out01_in(8),
      I1 => \signal_out[11]_i_3_n_0\,
      I2 => \signal_out1__32_carry_n_7\,
      I3 => \signal_out1__32_carry_n_0\,
      I4 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[8]_i_1_n_0\
    );
\signal_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BB8B88B8"
    )
        port map (
      I0 => signal_out01_in(9),
      I1 => \signal_out[11]_i_3_n_0\,
      I2 => \signal_out1__32_carry_n_7\,
      I3 => \signal_out1__32_carry_n_0\,
      I4 => \signal_out1__32_carry_n_6\,
      I5 => \cycle_counter1_carry__2_n_0\,
      O => \signal_out[9]_i_1_n_0\
    );
\signal_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[0]_i_1_n_0\,
      Q => signal_out(0)
    );
\signal_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[10]_i_1_n_0\,
      Q => signal_out(10)
    );
\signal_out_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \signal_out[11]_i_1_n_0\,
      PRE => \^rst_n_0\,
      Q => signal_out(11)
    );
\signal_out_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \signal_out_reg[7]_i_2_n_0\,
      CO(3) => \NLW_signal_out_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \signal_out_reg[11]_i_2_n_1\,
      CO(1) => \signal_out_reg[11]_i_2_n_2\,
      CO(0) => \signal_out_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => signal_out01_in(11 downto 8),
      S(3) => \signal_out[11]_i_5_n_0\,
      S(2) => \signal_out[11]_i_6_n_0\,
      S(1) => signal_out1(9),
      S(0) => \signal_out[11]_i_8_n_0\
    );
\signal_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[1]_i_1_n_0\,
      Q => signal_out(1)
    );
\signal_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[2]_i_1_n_0\,
      Q => signal_out(2)
    );
\signal_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[3]_i_1_n_0\,
      Q => signal_out(3)
    );
\signal_out_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \signal_out_reg[3]_i_2_n_0\,
      CO(2) => \signal_out_reg[3]_i_2_n_1\,
      CO(1) => \signal_out_reg[3]_i_2_n_2\,
      CO(0) => \signal_out_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => signal_out3_n_95,
      DI(2) => signal_out3_n_96,
      DI(1) => signal_out3_n_97,
      DI(0) => signal_out3_n_98,
      O(3 downto 0) => signal_out01_in(3 downto 0),
      S(3) => \signal_out[3]_i_3_n_0\,
      S(2) => \signal_out[3]_i_4_n_0\,
      S(1) => \signal_out[3]_i_5_n_0\,
      S(0) => \signal_out[3]_i_6_n_0\
    );
\signal_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[4]_i_1_n_0\,
      Q => signal_out(4)
    );
\signal_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[5]_i_1_n_0\,
      Q => signal_out(5)
    );
\signal_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[6]_i_1_n_0\,
      Q => signal_out(6)
    );
\signal_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[7]_i_1_n_0\,
      Q => signal_out(7)
    );
\signal_out_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \signal_out_reg[3]_i_2_n_0\,
      CO(3) => \signal_out_reg[7]_i_2_n_0\,
      CO(2) => \signal_out_reg[7]_i_2_n_1\,
      CO(1) => \signal_out_reg[7]_i_2_n_2\,
      CO(0) => \signal_out_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => signal_out3_n_94,
      O(3 downto 0) => signal_out01_in(7 downto 4),
      S(3) => \signal_out[7]_i_3_n_0\,
      S(2) => \signal_out[7]_i_4_n_0\,
      S(1) => \signal_out[7]_i_5_n_0\,
      S(0) => \signal_out[7]_i_6_n_0\
    );
\signal_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[8]_i_1_n_0\,
      Q => signal_out(8)
    );
\signal_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \signal_out[9]_i_1_n_0\,
      Q => signal_out(9)
    );
signal_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => '1',
      Q => signal_valid
    );
\state1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => signal_out(10),
      I1 => signal_out(11),
      O => \signal_out_reg[10]_0\(1)
    );
\state1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => signal_out(8),
      I1 => signal_out(9),
      O => \signal_out_reg[10]_0\(0)
    );
\state1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_out(11),
      I1 => signal_out(10),
      O => \signal_out_reg[11]_0\(1)
    );
\state1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => signal_out(8),
      I1 => signal_out(9),
      O => \signal_out_reg[11]_0\(0)
    );
state1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => signal_out(6),
      I1 => signal_out(7),
      O => DI(3)
    );
state1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => signal_out(4),
      I1 => signal_out(5),
      O => DI(2)
    );
state1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => signal_out(2),
      I1 => signal_out(3),
      O => DI(1)
    );
state1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => signal_out(0),
      I1 => signal_out(1),
      O => DI(0)
    );
state1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => signal_out(6),
      I1 => signal_out(7),
      O => S(3)
    );
state1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => signal_out(4),
      I1 => signal_out(5),
      O => S(2)
    );
state1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => signal_out(2),
      I1 => signal_out(3),
      O => S(1)
    );
state1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => signal_out(0),
      I1 => signal_out(1),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity radiation_system_radiation_detector_0_0_radiation_detector_top is
  port (
    alert : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of radiation_system_radiation_detector_0_0_radiation_detector_top : entity is "radiation_detector_top";
end radiation_system_radiation_detector_0_0_radiation_detector_top;

architecture STRUCTURE of radiation_system_radiation_detector_0_0_radiation_detector_top is
  signal signal_gen_n_1 : STD_LOGIC;
  signal signal_gen_n_10 : STD_LOGIC;
  signal signal_gen_n_11 : STD_LOGIC;
  signal signal_gen_n_12 : STD_LOGIC;
  signal signal_gen_n_13 : STD_LOGIC;
  signal signal_gen_n_2 : STD_LOGIC;
  signal signal_gen_n_3 : STD_LOGIC;
  signal signal_gen_n_4 : STD_LOGIC;
  signal signal_gen_n_5 : STD_LOGIC;
  signal signal_gen_n_6 : STD_LOGIC;
  signal signal_gen_n_7 : STD_LOGIC;
  signal signal_gen_n_8 : STD_LOGIC;
  signal signal_gen_n_9 : STD_LOGIC;
  signal signal_valid : STD_LOGIC;
begin
detector_core: entity work.radiation_system_radiation_detector_0_0_radiation_detector_core
     port map (
      DI(3) => signal_gen_n_8,
      DI(2) => signal_gen_n_9,
      DI(1) => signal_gen_n_10,
      DI(0) => signal_gen_n_11,
      S(3) => signal_gen_n_4,
      S(2) => signal_gen_n_5,
      S(1) => signal_gen_n_6,
      S(0) => signal_gen_n_7,
      alert => alert,
      alert_reg_0(1) => signal_gen_n_12,
      alert_reg_0(0) => signal_gen_n_13,
      alert_reg_1(1) => signal_gen_n_2,
      alert_reg_1(0) => signal_gen_n_3,
      alert_reg_2 => signal_gen_n_1,
      clk => clk,
      signal_valid => signal_valid
    );
signal_gen: entity work.radiation_system_radiation_detector_0_0_signal_generator
     port map (
      DI(3) => signal_gen_n_8,
      DI(2) => signal_gen_n_9,
      DI(1) => signal_gen_n_10,
      DI(0) => signal_gen_n_11,
      S(3) => signal_gen_n_4,
      S(2) => signal_gen_n_5,
      S(1) => signal_gen_n_6,
      S(0) => signal_gen_n_7,
      clk => clk,
      rst_n => rst_n,
      rst_n_0 => signal_gen_n_1,
      \signal_out_reg[10]_0\(1) => signal_gen_n_12,
      \signal_out_reg[10]_0\(0) => signal_gen_n_13,
      \signal_out_reg[11]_0\(1) => signal_gen_n_2,
      \signal_out_reg[11]_0\(0) => signal_gen_n_3,
      signal_valid => signal_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity radiation_system_radiation_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    alert : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of radiation_system_radiation_detector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of radiation_system_radiation_detector_0_0 : entity is "radiation_system_radiation_detector_0_0,radiation_detector_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of radiation_system_radiation_detector_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of radiation_system_radiation_detector_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of radiation_system_radiation_detector_0_0 : entity is "radiation_detector_top,Vivado 2022.2";
end radiation_system_radiation_detector_0_0;

architecture STRUCTURE of radiation_system_radiation_detector_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN radiation_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.radiation_system_radiation_detector_0_0_radiation_detector_top
     port map (
      alert => alert,
      clk => clk,
      rst_n => rst_n
    );
end STRUCTURE;
