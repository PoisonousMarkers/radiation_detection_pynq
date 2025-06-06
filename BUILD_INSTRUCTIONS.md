# PYNQ Radiation Detector - Build Instructions

## Quick Build Process

1. **Open Vivado** (any version 2018.2 or later)

2. **Run the main script:**
   ```tcl
   source project_config.tcl
   ```

3. **Review and build:** The script will:
   - Create the project with proper block design
   - Add all Verilog source files
   - Configure Zynq Processing System for PYNQ-Z2
   - Add AXI interfaces for PYNQ compatibility
   - Set up the project ready for synthesis

4. **Run synthesis when ready:**
   - Review the block diagram in Vivado
   - Click "Generate Bitstream" (runs synthesis → implementation → bitstream)
   - **The .hwh file is automatically generated** with the bitstream

## Output Files

After successful build, you'll find:
- **Bitstream:** `radiation_detector.runs/impl_1/radiation_system_wrapper.bit`
- **Hardware Handoff:** `radiation_detector.runs/impl_1/radiation_system_wrapper.hwh`

## Using with PYNQ

The Jupyter notebook automatically looks for the generated files at the correct locations. Simply run the notebook cells after building.

## Why This Works

The key was creating a **proper block design** with IP Integrator from the start. PYNQ requires block designs with AXI interfaces to generate the `.hwh` file - standalone Verilog modules won't work.

The script now:
- Wraps your Verilog in a Zynq block design
- Adds proper AXI interfaces
- Automatically generates both `.bit` and `.hwh` files during bitstream creation

No separate scripts needed - everything happens in one step! 