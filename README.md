# Radiation Detection System with PYNQ-Z2

A hardware-accelerated embedded system that filters and analyzes radiation data using Verilog modules on FPGA. Features real-time threshold alerts, interrupt handling, and Python-based visualization on the PS side.

## Setup Instructions

1. Hardware Requirements:
   - PYNQ-Z2 board
   - Radiation detector with analog output
   - ADC interface (PMOD or custom)

2. Software Requirements:
   - Vivado 2022.1 or later
   - PYNQ 3.0.1 or later
   - Python 3.9+

3. Development Environment Setup:
   ```bash
   # Clone the repository
   git clone https://github.com/yourusername/radiation_detection_pynq.git
   cd radiation_detection_pynq

   # Install Python dependencies
   pip install -r requirements.txt

   # Build FPGA bitstream (requires Vivado)
   vivado -mode batch -source project_config.tcl
   ```

4. PYNQ Board Setup:
   - Copy the generated `.bit` and `.hwh` files to the PYNQ board
   - Place them in the same directory as the Jupyter notebooks

## Project Structure

- `/notebooks/` - Jupyter notebooks for controlling and visualizing the system
- `/verilog/` - HDL source files for FPGA implementation
- `/overlays/` - Generated FPGA bitstreams and hardware handoff files
- `project_config.tcl` - Vivado project configuration
- `create_block_diagram.tcl` - Automated script for generating Vivado block diagrams

## Block Diagram

The project includes an automated TCL script to generate a Vivado block diagram:

![Vivado Block Diagram](https://i.imgur.com/BT6dUu6.png)

To generate the block diagram:
```tcl
source create_block_diagram.tcl
```

## Usage

1. Connect your radiation detector to the PYNQ board
2. Open the Jupyter notebook interface
3. Navigate to `/notebooks/pynq_radiation_interface.ipynb`
4. Follow the notebook instructions for system configuration and monitoring

## Features

- Real-time radiation level monitoring
- Configurable detection thresholds
- Hardware-accelerated pulse processing
- Event histogram generation
- Alert system for radiation level spikes
- Data logging and visualization

## License

This project is licensed under the MIT License - see the LICENSE file for details.
