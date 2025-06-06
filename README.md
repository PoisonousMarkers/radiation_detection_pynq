# Real-Time Radiation Detection System on FPGA

**Advanced embedded systems project demonstrating FPGA-based signal processing, real-time data analysis, and hardware-software co-design.**

## Technical Overview

Designed and implemented a complete radiation detection system using Xilinx Zynq SoC architecture, combining custom Verilog modules with ARM-based Linux processing. The system performs real-time signal conditioning, threshold detection, and statistical analysis with microsecond-level response times.

### Key Technical Achievements

- **Custom FPGA Architecture**: Developed multi-clock domain system (100MHz/200MHz) with proper clock domain crossing
- **Real-Time Signal Processing**: Implemented hardware-accelerated pulse detection and histogram generation
- **Advanced AXI Infrastructure**: Designed complete AXI4-Lite control plane and AXI4 high-performance data paths
- **Hardware-Software Integration**: Created seamless interface between PL (Programmable Logic) and PS (Processing System)
- **Professional Development Workflow**: Automated bitstream generation and comprehensive system validation

## System Architecture

![Vivado Block Diagram](https://i.imgur.com/BT6dUu6.png)

### Core Technologies Demonstrated

**FPGA Design & Verification**
- Verilog HDL for custom IP development
- Xilinx Vivado toolchain for synthesis and implementation
- Multi-clock domain design with proper CDC (Clock Domain Crossing)
- AXI4 protocol implementation for system interconnect

**Embedded Software Development**
- ARM Cortex-A9 programming on Zynq platform
- Linux device driver integration
- Python-based system control and data visualization
- Real-time interrupt handling and DMA operations

**Signal Processing & Analytics**
- Hardware-implemented digital signal processing algorithms
- Real-time threshold detection and event classification
- Statistical analysis with histogram generation
- Low-latency alert system for critical events

### Technical Specifications

- **Processing Performance**: Sub-microsecond pulse detection latency
- **Data Throughput**: 200 MHz high-performance AXI interface to DDR memory
- **System Integration**: Complete hardware/software co-design with automated build process
- **Scalability**: Modular architecture supporting multiple detection channels

### Engineering Practices

- **Version Control**: Git-based development workflow with structured commits
- **Automation**: TCL scripting for reproducible FPGA builds and block diagram generation  
- **Documentation**: Comprehensive technical documentation and code commenting
- **Testing**: Hardware-in-the-loop validation with Python test frameworks

## License

This project is licensed under the MIT License - see the LICENSE file for details.
