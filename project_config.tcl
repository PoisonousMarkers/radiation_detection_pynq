# Vivado Project Configuration for PYNQ Radiation Detector
set project_name "radiation_detector"
set script_dir [file dirname [file normalize [info script]]]
set project_dir $script_dir

puts "🚀 Creating PYNQ-ready radiation detector project..."
puts "Script directory: $script_dir"

# Remove existing project if it exists
if {[file exists "${project_dir}/${project_name}"]} {
    puts "🗑️ Removing existing project..."
    file delete -force "${project_dir}/${project_name}"
}

# Create project
create_project ${project_name} ${project_dir}/${project_name} -part xc7z020clg400-1

# Set project properties
set_property target_language Verilog [current_project]
set_property default_lib work [current_project]

# Add source files first
puts "📄 Adding source files..."

# Add Verilog files if they exist
set verilog_dir "${project_dir}/verilog"
puts "   Looking for Verilog files in: $verilog_dir"
set verilog_files [glob -nocomplain "${verilog_dir}/*.v"]
puts "   Found files: $verilog_files"
if {[llength $verilog_files] > 0} {
    add_files -norecurse $verilog_files
    puts "   Added [llength $verilog_files] Verilog files"
    # Make sure radiation_detector_top is set as top module for reference
    foreach file $verilog_files {
        puts "   Added: [file tail $file]"
    }
} else {
    puts "   No Verilog files found in verilog/ directory"
}

# Add constraint files if they exist
set constraint_files [glob -nocomplain "${project_dir}/constraints/*.xdc"]
if {[llength $constraint_files] > 0} {
    add_files -fileset constrs_1 $constraint_files
    puts "   Added [llength $constraint_files] constraint files"
} else {
    puts "   No constraint files found in constraints/ directory"
}

update_compile_order -fileset sources_1

# Create block design for PYNQ compatibility
puts "🎯 Creating block design..."
create_bd_design "radiation_system"

# Add Zynq Processing System
puts "➕ Adding Zynq Processing System..."
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0

# Configure PS for PYNQ-Z2
set_property -dict [list \
    CONFIG.PCW_USE_M_AXI_GP0 {1} \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.0} \
    CONFIG.PCW_EN_CLK0_PORT {1} \
    CONFIG.PCW_EN_RST0_PORT {1} \
] [get_bd_cells processing_system7_0]

# Apply PS automation
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {
    make_external "FIXED_IO, DDR" 
    Master "Disable" 
    Slave "Disable" 
} [get_bd_cells processing_system7_0]

# Add AXI Interconnect
puts "🔗 Adding AXI Interconnect..."
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_0]

# Add AXI GPIO for simple control interface
puts "💡 Adding AXI GPIO..."
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {4} \
    CONFIG.C_ALL_OUTPUTS {1} \
] [get_bd_cells axi_gpio_0]

# Add radiation detector module (only if Verilog files were found)
if {[llength $verilog_files] > 0} {
    puts "🔬 Adding radiation detector module..."
    if {[catch {
        create_bd_cell -type module -reference radiation_detector_top radiation_detector_0
        puts "   ✅ Radiation detector module added successfully"
    } result]} {
        puts "   ⚠️  Could not add radiation detector module: $result"
        puts "   Continuing with basic block design..."
    }
} else {
    puts "⚠️  Skipping radiation detector module - no Verilog files found"
}

# Create external ports
create_bd_port -dir O -from 3 -to 0 status_leds

# Only create alert port if radiation detector will be present
if {[llength $verilog_files] > 0} {
    create_bd_port -dir O alert_led
}

# Connect clocks
puts "🔌 Connecting system..."
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_0/ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_0/S00_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_interconnect_0/M00_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_gpio_0/s_axi_aclk]

# Connect resets
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_0/ARESETN]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_0/S00_ARESETN]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_interconnect_0/M00_ARESETN]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins axi_gpio_0/s_axi_aresetn]

# Connect AXI interfaces
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]

# Connect the missing M_AXI_GP0_ACLK clock
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK]

# Connect radiation detector if it exists
if {[llength [get_bd_cells -quiet radiation_detector_0]] > 0} {
    puts "🔗 Connecting radiation detector..."
    connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins radiation_detector_0/clk]
    connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins radiation_detector_0/rst_n]
    
    # Connect external signals
    connect_bd_net [get_bd_pins radiation_detector_0/alert] [get_bd_ports alert_led]
    connect_bd_net [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_ports status_leds]
} else {
    puts "⚠️  Radiation detector not present - creating basic GPIO output"
    connect_bd_net [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_ports status_leds]
}

# Assign addresses and validate
puts "📍 Assigning addresses..."
assign_bd_address
validate_bd_design
save_bd_design

# Generate output products
puts "⚙️ Generating output products..."
generate_target all [get_files radiation_system.bd]

# Create HDL wrapper
puts "📝 Creating HDL wrapper..."
make_wrapper -files [get_files radiation_system.bd] -top

# Find the generated wrapper file
set wrapper_file [get_files -filter {FILE_TYPE == Verilog && NAME =~ "*radiation_system_wrapper.v"}]
if {[llength $wrapper_file] > 0} {
    puts "   Found wrapper: $wrapper_file"
    set_property top radiation_system_wrapper [current_fileset]
} else {
    puts "   ⚠️ Wrapper file not found, adding manually..."
    set wrapper_path "${project_dir}/${project_name}/${project_name}.gen/sources_1/bd/radiation_system/hdl/radiation_system_wrapper.v"
    if {[file exists $wrapper_path]} {
        add_files -norecurse $wrapper_path
        set_property top radiation_system_wrapper [current_fileset]
        puts "   ✅ Added wrapper from: $wrapper_path"
    } else {
        puts "   ❌ Could not find wrapper file at: $wrapper_path"
    }
}

puts "✅ Project setup complete!"
puts "📁 Project location: ${project_dir}/${project_name}"
puts "🎯 Block diagram created: radiation_system"
puts ""
puts "Next steps:"
puts "  1. Review the block diagram in Vivado"
puts "  2. Run synthesis when ready (or use 'launch_runs synth_1')"
puts "  3. The .hwh file will be generated automatically with bitstream" 