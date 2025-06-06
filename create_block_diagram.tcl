#!/usr/bin/tclsh
# Vivado Block Diagram Creation Script
# Run this in Vivado TCL Console: source create_block_diagram.tcl

puts "Creating detailed block diagram for radiation detector..."

# Create the block design
create_bd_design "radiation_system_bd"

# Create Processing System 7
puts "Adding Zynq Processing System..."
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0

# Configure PS7 with all necessary interfaces
set_property -dict [list \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
    CONFIG.PCW_USE_S_AXI_HP1 {1} \
    CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
    CONFIG.PCW_IRQ_F2P_INTR {1} \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
    CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {200} \
    CONFIG.PCW_USE_M_AXI_GP0 {1} \
    CONFIG.PCW_USE_M_AXI_GP1 {0} \
    CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
    CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
    CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
    CONFIG.PCW_GPIO_EMIO_GPIO_IO {8} \
] [get_bd_cells processing_system7_0]

# Apply automation for PS7
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {
    make_external "FIXED_IO, DDR" 
    Master "Disable" 
    Slave "Disable" 
} [get_bd_cells processing_system7_0]

# Create Clocking Wizard
puts "Adding Clocking Wizard..."
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0
set_property -dict [list \
    CONFIG.PRIM_IN_FREQ {100.000} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} \
    CONFIG.CLKOUT2_USED {true} \
    CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200.000} \
    CONFIG.CLKOUT3_USED {true} \
    CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {50.000} \
    CONFIG.RESET_TYPE {ACTIVE_LOW} \
    CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
    CONFIG.MMCM_CLKOUT1_DIVIDE {5} \
    CONFIG.MMCM_CLKOUT2_DIVIDE {20} \
    CONFIG.NUM_OUT_PORTS {3} \
] [get_bd_cells clk_wiz_0]

# Create AXI Interconnect for GP0
puts "Adding AXI Interconnect..."
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_gp0
set_property -dict [list \
    CONFIG.NUM_MI {3} \
    CONFIG.NUM_SI {1} \
] [get_bd_cells axi_interconnect_gp0]

# Create AXI Interconnect for HP0 (High Performance)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_hp0
set_property -dict [list \
    CONFIG.NUM_MI {1} \
    CONFIG.NUM_SI {2} \
] [get_bd_cells axi_interconnect_hp0]

# Create AXI DMA for data streaming
puts "Adding AXI DMA..."
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
set_property -dict [list \
    CONFIG.c_include_sg {0} \
    CONFIG.c_sg_include_stscntrl_strm {0} \
    CONFIG.c_sg_length_width {23} \
    CONFIG.c_include_mm2s {1} \
    CONFIG.c_include_s2mm {1} \
    CONFIG.c_mm2s_burst_size {16} \
    CONFIG.c_s2mm_burst_size {16} \
    CONFIG.c_addr_width {32} \
] [get_bd_cells axi_dma_0]

# Create AXI GPIO for LEDs and buttons
puts "Adding AXI GPIO..."
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {8} \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_GPIO2_WIDTH {4} \
    CONFIG.C_IS_DUAL {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
] [get_bd_cells axi_gpio_0]

# Create AXI Timer for precision timing
puts "Adding AXI Timer..."
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0
set_property -dict [list \
    CONFIG.enable_timer2 {1} \
    CONFIG.mode_64bit {1} \
] [get_bd_cells axi_timer_0]

# Add custom radiation detector module
puts "Adding custom radiation detector module..."
add_files -norecurse [glob verilog/*.v]
update_compile_order -fileset sources_1

# Create custom IP wrapper if needed
create_bd_cell -type module -reference radiation_detector_top radiation_detector_0

# Create external port connections
puts "Creating external ports..."
create_bd_port -dir O alert_led
create_bd_port -dir I -type clk sys_clock
create_bd_port -dir I sys_reset
create_bd_port -dir O -type intr radiation_interrupt

# Connect clocks
puts "Connecting clock network..."
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins clk_wiz_0/clk_in1]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins radiation_detector_0/clk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins axi_interconnect_gp0/ACLK]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins axi_interconnect_gp0/S00_ACLK]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins axi_interconnect_gp0/M00_ACLK]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins axi_interconnect_gp0/M01_ACLK]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins axi_interconnect_gp0/M02_ACLK]

# Connect HP interconnect clocks
connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins axi_interconnect_hp0/ACLK]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins axi_interconnect_hp0/S00_ACLK]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins axi_interconnect_hp0/S01_ACLK]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins axi_interconnect_hp0/M00_ACLK]

# Connect IP clocks
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins axi_dma_0/s_axi_lite_aclk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins axi_dma_0/m_axi_sg_aclk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins axi_gpio_0/s_axi_aclk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins axi_timer_0/s_axi_aclk]

# Connect resets
puts "Connecting reset network..."
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins clk_wiz_0/resetn]
connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins radiation_detector_0/rst_n]

# Create reset for interconnects
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_100m
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_200m

connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins proc_sys_reset_100m/slowest_sync_clk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins proc_sys_reset_200m/slowest_sync_clk]
connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_100m/dcm_locked]
connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_200m/dcm_locked]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins proc_sys_reset_100m/ext_reset_in]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins proc_sys_reset_200m/ext_reset_in]

# Connect AXI interfaces
puts "Connecting AXI interfaces..."
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins axi_interconnect_gp0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_gp0/M00_AXI] [get_bd_intf_pins radiation_detector_0/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_gp0/M01_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_gp0/M02_AXI] [get_bd_intf_pins axi_timer_0/S_AXI]

# Connect HP interconnect
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_hp0/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_interconnect_hp0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_interconnect_hp0/S01_AXI]

# Connect GPIO and external signals
connect_bd_net [get_bd_pins radiation_detector_0/alert] [get_bd_ports alert_led]
connect_bd_net [get_bd_pins radiation_detector_0/alert] [get_bd_ports radiation_interrupt]

# Connect reset networks to interconnects
connect_bd_net [get_bd_pins proc_sys_reset_100m/peripheral_aresetn] [get_bd_pins axi_interconnect_gp0/ARESETN]
connect_bd_net [get_bd_pins proc_sys_reset_100m/peripheral_aresetn] [get_bd_pins axi_interconnect_gp0/S00_ARESETN]
connect_bd_net [get_bd_pins proc_sys_reset_100m/peripheral_aresetn] [get_bd_pins axi_interconnect_gp0/M00_ARESETN]
connect_bd_net [get_bd_pins proc_sys_reset_100m/peripheral_aresetn] [get_bd_pins axi_interconnect_gp0/M01_ARESETN]
connect_bd_net [get_bd_pins proc_sys_reset_100m/peripheral_aresetn] [get_bd_pins axi_interconnect_gp0/M02_ARESETN]

connect_bd_net [get_bd_pins proc_sys_reset_200m/peripheral_aresetn] [get_bd_pins axi_interconnect_hp0/ARESETN]
connect_bd_net [get_bd_pins proc_sys_reset_200m/peripheral_aresetn] [get_bd_pins axi_interconnect_hp0/S00_ARESETN]
connect_bd_net [get_bd_pins proc_sys_reset_200m/peripheral_aresetn] [get_bd_pins axi_interconnect_hp0/S01_ARESETN]
connect_bd_net [get_bd_pins proc_sys_reset_200m/peripheral_aresetn] [get_bd_pins axi_interconnect_hp0/M00_ARESETN]

# Assign addresses
puts "Assigning addresses..."
assign_bd_address [get_bd_addr_segs {radiation_detector_0/S_AXI/Reg }]
assign_bd_address [get_bd_addr_segs {axi_gpio_0/S_AXI/Reg }]
assign_bd_address [get_bd_addr_segs {axi_timer_0/S_AXI/Reg }]
assign_bd_address [get_bd_addr_segs {processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM }]

# Validate design
puts "Validating block design..."
regenerate_bd_layout
validate_bd_design

# Save the design
save_bd_design

# Create HDL wrapper
puts "Creating HDL wrapper..."
make_wrapper -files [get_files radiation_system_bd.bd] -top
add_files -norecurse [file normalize "radiation_system_bd_wrapper.v"]

puts "Block diagram creation complete!"
puts "You can now view the diagram in Vivado by opening the Block Design tab."
puts "The diagram shows:"
puts "  - Processing System with GP0 and HP0 interfaces"
puts "  - Multi-clock domain (100MHz, 200MHz, 50MHz)"
puts "  - AXI interconnects for control and data"
puts "  - Custom radiation detector IP"
puts "  - GPIO, Timer, and DMA IP blocks"
puts "  - Complete reset network"
puts "  - Address mapping and external interfaces" 