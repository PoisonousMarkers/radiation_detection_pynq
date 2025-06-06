# Clock signal (100 MHz) - will come from PS in block design
# For standalone testing, use external clock pin
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -period 10.000 -name sys_clk [get_ports clk]

# Reset signal (active low) - use button
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports rst_n]

# Status LEDs for debugging
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports alert]

# False paths
set_false_path -from [get_ports rst_n]

# Timing constraints - simplified for essential signals only
set_input_delay -clock sys_clk -min 0.000 [get_ports rst_n]
set_input_delay -clock sys_clk -max 1.000 [get_ports rst_n]
set_output_delay -clock sys_clk -min 0.000 [get_ports alert]
set_output_delay -clock sys_clk -max 1.000 [get_ports alert] 