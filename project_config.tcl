# Vivado Project Configuration
set project_name "radiation_detector"
set project_dir "[file normalize "."]"
set overlay_name "radiation_overlay"

# Create project
create_project ${project_name} ${project_dir}/${project_name} -part xc7z020clg400-1

# Set project properties
set_property board_part www.digilentinc.com:pynq-z2:part0:1.0 [current_project]
set_property target_language Verilog [current_project]
set_property default_lib work [current_project]

# Create filesets
create_fileset -blockset -define_from sources_1 overlay

# Add source files
add_files -fileset sources_1 [glob -nocomplain "${project_dir}/verilog/*.v"]
add_files -fileset constrs_1 [glob -nocomplain "${project_dir}/constraints/*.xdc"]

# Create block design
create_bd_design "radiation_processing"

# Instantiate processing system
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0

# Configure PS
set_property -dict [list \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
    CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
    CONFIG.PCW_USE_M_AXI_GP0 {1} \
] [get_bd_cells processing_system7_0]

# Apply PS automation
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {
    make_external "FIXED_IO, DDR" 
    Master "Disable" 
    Slave "Disable" 
} [get_bd_cells processing_system7_0]

# Create and configure clock wizard
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0
set_property -dict [list \
    CONFIG.PRIM_IN_FREQ {100.000} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} \
] [get_bd_cells clk_wiz_0]

# Connect PS clock to clock wizard
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins clk_wiz_0/clk_in1]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins clk_wiz_0/resetn]

# Create AXI Interconnect
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_0]

# Create radiation detector instance
create_bd_cell -type module -reference radiation_detector_top radiation_detector_0

# Connect clocks and resets
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins radiation_detector_0/clk]
connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins radiation_detector_0/rst_n]

# Connect AXI interfaces
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins radiation_detector_0/S_AXI]

# Assign addresses
assign_bd_address

# Validate and save block design
validate_bd_design
save_bd_design

# Create HDL wrapper
make_wrapper -files [get_files ${project_dir}/${project_name}/${project_name}.srcs/sources_1/bd/radiation_processing/radiation_processing.bd] -top
add_files -norecurse ${project_dir}/${project_name}/${project_name}.srcs/sources_1/bd/radiation_processing/hdl/radiation_processing_wrapper.v

# Set top level
set_property top radiation_processing_wrapper [current_fileset]

# Generate output products
generate_target all [get_files ${project_dir}/${project_name}/${project_name}.srcs/sources_1/bd/radiation_processing/radiation_processing.bd]

puts "Project setup complete!" 