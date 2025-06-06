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

## Block Diagram Generation

This project includes an automated TCL script to generate a comprehensive block diagram in Vivado showing all IP blocks, interconnections, and signal flows.

### Generated Block Diagram
![Vivado Block Diagram](https://imgur.com/BT6dUu6)

The automatically generated block diagram includes:
- **Zynq Processing System 7** with GP0 (control) and HP0 (high-performance data) interfaces
- **Multi-clock domains**: 100MHz (control), 200MHz (data), 50MHz (auxiliary)
- **AXI Interconnects** for both control and high-throughput data paths
- **Custom Radiation Detector IP** with signal generation and detection cores
- **AXI DMA** for efficient memory-mapped data transfers
- **AXI GPIO** and **AXI Timer** for peripheral control
- **Complete reset network** with proper synchronization
- **External interfaces** for LEDs, interrupts, and system I/O

### How to Generate the Block Diagram

1. **Open Vivado** and create/open your project
2. **Run the automation script** in the TCL Console:
   ```tcl
   source create_block_diagram.tcl
   ```
3. **View the diagram**: Go to Sources → Design Sources → radiation_system_bd
4. **Double-click** to open the visual block diagram editor

### Block Diagram Features
- **Visual IP representation** with all interface pins displayed
- **Color-coded connections** showing different signal types (clocks, resets, AXI buses)
- **Bus width annotations** on all data connections
- **Address space mapping** with base addresses for each peripheral
- **Clock domain indicators** showing timing relationships
- **Reset network topology** ensuring proper startup sequencing

The block diagram provides a complete visual overview of the radiation detection system architecture, making it easy to understand data flow, control paths, and system interconnections.

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
