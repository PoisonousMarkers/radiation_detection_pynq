// Radiation Detector Core Module
module radiation_detector_core #(
    parameter ADC_WIDTH = 12,          // ADC resolution
    parameter THRESHOLD = 12'h800,     // Detection threshold
    parameter HIST_ADDR_WIDTH = 10,    // Histogram memory address width
    parameter HIST_DATA_WIDTH = 32     // Histogram bin counter width
) (
    // Clock and reset
    input wire clk,
    input wire rst_n,
    
    // ADC interface
    input wire [ADC_WIDTH-1:0] adc_data,
    input wire adc_valid,
    
    // AXI-Stream interface for processed data
    output reg [31:0] m_axis_tdata,
    output reg m_axis_tvalid,
    input wire m_axis_tready,
    
    // Control and status
    input wire [ADC_WIDTH-1:0] threshold_value,
    output reg alert,
    output reg [31:0] event_counter
);

    // Internal registers
    reg [HIST_DATA_WIDTH-1:0] histogram [0:(1<<HIST_ADDR_WIDTH)-1];
    reg [31:0] sample_counter;
    
    // Pulse detection state machine
    localparam IDLE = 2'b00;
    localparam PULSE_DETECT = 2'b01;
    localparam PROCESS = 2'b10;
    reg [1:0] state;
    
    // Pulse processing
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            alert <= 1'b0;
            event_counter <= 32'h0;
            sample_counter <= 32'h0;
            m_axis_tvalid <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    if (adc_valid && adc_data > threshold_value) begin
                        state <= PULSE_DETECT;
                        alert <= 1'b1;
                    end
                end
                
                PULSE_DETECT: begin
                    if (adc_valid) begin
                        // Update histogram
                        histogram[adc_data[HIST_ADDR_WIDTH-1:0]] <= 
                            histogram[adc_data[HIST_ADDR_WIDTH-1:0]] + 1;
                        
                        // Prepare data for transmission
                        m_axis_tdata <= {16'h0, adc_data};
                        m_axis_tvalid <= 1'b1;
                        
                        event_counter <= event_counter + 1;
                        state <= PROCESS;
                    end
                end
                
                PROCESS: begin
                    if (m_axis_tready) begin
                        m_axis_tvalid <= 1'b0;
                        alert <= 1'b0;
                        state <= IDLE;
                    end
                end
                
                default: state <= IDLE;
            endcase
            
            if (adc_valid) begin
                sample_counter <= sample_counter + 1;
            end
        end
    end

endmodule 