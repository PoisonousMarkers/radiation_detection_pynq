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

# Set overlay as the current fileset
current_fileset -blockset [get_filesets overlay]

# Add source files
add_files -fileset sources_1 [glob -nocomplain "${project_dir}/verilog/*.v"]

# Create BD (Block Design)
create_bd_design "radiation_processing"

# Add processing system
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]

# Save block design
save_bd_design

puts "Project setup complete!" 