// Top-level module - simplified standalone version for PYNQ-Z2
module radiation_detector_top #(
    parameter ADC_WIDTH = 12,
    parameter HIST_ADDR_WIDTH = 10,
    parameter HIST_DATA_WIDTH = 32
) (
    // Essential signals only
    input wire clk,          // 100MHz clock
    input wire rst_n,        // Reset button
    output wire alert        // Status LED
);

    // Internal AXI-like interfaces (not exposed as pins)
    wire [5:0] s_axil_awaddr;
    wire s_axil_awvalid;
    wire s_axil_awready;
    wire [31:0] s_axil_wdata;
    wire [3:0] s_axil_wstrb;
    wire s_axil_wvalid;
    wire s_axil_wready;
    wire [1:0] s_axil_bresp;
    wire s_axil_bvalid;
    wire s_axil_bready;
    wire [5:0] s_axil_araddr;
    wire s_axil_arvalid;
    wire s_axil_arready;
    wire [31:0] s_axil_rdata;
    wire [1:0] s_axil_rresp;
    wire s_axil_rvalid;
    wire s_axil_rready;
    
    // Internal AXI Stream signals
    wire [31:0] m_axis_tdata;
    wire m_axis_tvalid;
    wire m_axis_tlast;
    wire m_axis_tready;
    
    // Internal debugging signals (not connected to pins)
    wire [31:0] event_counter;

    // Internal signals
    wire [ADC_WIDTH-1:0] simulated_signal;
    wire signal_valid;
    wire [ADC_WIDTH-1:0] threshold_value;
    wire [31:0] random_seed;
    wire [ADC_WIDTH-1:0] noise_amplitude;
    wire [31:0] spike_interval;
    wire [ADC_WIDTH-1:0] spike_amplitude;
    
    // Configuration registers
    reg [31:0] config_regs [0:7];
    
    // Register mapping
    localparam ADDR_THRESHOLD     = 6'h00;
    localparam ADDR_RANDOM_SEED   = 6'h04;
    localparam ADDR_NOISE_AMP     = 6'h08;
    localparam ADDR_SPIKE_INT     = 6'h0C;
    localparam ADDR_SPIKE_AMP     = 6'h10;
    
    // Simple internal configuration (no external AXI interface)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            config_regs[0] <= 32'h800;      // Default threshold
            config_regs[1] <= 32'h12345678; // Default seed
            config_regs[2] <= 32'h100;      // Default noise amplitude
            config_regs[3] <= 32'd100000;   // Default spike interval
            config_regs[4] <= 32'h1000;     // Default spike amplitude
            config_regs[5] <= 32'h0;
            config_regs[6] <= 32'h0;
            config_regs[7] <= 32'h0;
        end
        // Configuration is static for standalone version
    end
    
    // Tie off unused AXI Lite signals
    assign s_axil_awaddr = 6'h0;
    assign s_axil_awvalid = 1'b0;
    assign s_axil_wdata = 32'h0;
    assign s_axil_wstrb = 4'h0;
    assign s_axil_wvalid = 1'b0;
    assign s_axil_bready = 1'b1;
    assign s_axil_araddr = 6'h0;
    assign s_axil_arvalid = 1'b0;
    assign s_axil_rready = 1'b1;
    
    // AXI Lite dummy responses
    assign s_axil_awready = 1'b1;
    assign s_axil_wready = 1'b1;
    assign s_axil_bresp = 2'b00;
    assign s_axil_bvalid = 1'b1;
    assign s_axil_arready = 1'b1;
    assign s_axil_rdata = 32'h0;
    assign s_axil_rresp = 2'b00;
    assign s_axil_rvalid = 1'b1;
    
    // Tie off AXI Stream ready
    assign m_axis_tready = 1'b1;
    
    // Configuration assignments
    assign threshold_value = config_regs[0][ADC_WIDTH-1:0];
    assign random_seed = config_regs[1];
    assign noise_amplitude = config_regs[2][ADC_WIDTH-1:0];
    assign spike_interval = config_regs[3];
    assign spike_amplitude = config_regs[4][ADC_WIDTH-1:0];

    // Instantiate signal generator
    signal_generator #(
        .ADC_WIDTH(ADC_WIDTH)
    ) signal_gen (
        .clk(clk),
        .rst_n(rst_n),
        .random_seed(random_seed),
        .noise_amplitude(noise_amplitude),
        .spike_interval(spike_interval),
        .spike_amplitude(spike_amplitude),
        .signal_out(simulated_signal),
        .signal_valid(signal_valid)
    );

    // Generate tlast signal (simple implementation - high for every packet)
    assign m_axis_tlast = m_axis_tvalid;
    
    // Instantiate radiation detector core
    radiation_detector_core #(
        .ADC_WIDTH(ADC_WIDTH),
        .HIST_ADDR_WIDTH(HIST_ADDR_WIDTH),
        .HIST_DATA_WIDTH(HIST_DATA_WIDTH)
    ) detector_core (
        .clk(clk),
        .rst_n(rst_n),
        .adc_data(simulated_signal),
        .adc_valid(signal_valid),
        .threshold_value(threshold_value),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .alert(alert),
        .event_counter(event_counter)
    );

endmodule 