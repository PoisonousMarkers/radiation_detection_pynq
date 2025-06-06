// Radiation Signal Generator Module
module signal_generator #(
    parameter ADC_WIDTH = 12,          // ADC resolution
    parameter COUNTER_WIDTH = 32,      // Counter width for timing
    parameter BACKGROUND_LEVEL = 12'd2048  // Background radiation level
) (
    // Clock and reset
    input wire clk,
    input wire rst_n,
    
    // Configuration
    input wire [31:0] random_seed,        // Seed for pseudo-random generator
    input wire [ADC_WIDTH-1:0] noise_amplitude,  // Amplitude of random noise
    input wire [31:0] spike_interval,     // Clock cycles between spikes
    input wire [ADC_WIDTH-1:0] spike_amplitude,  // Amplitude of radiation spikes
    
    // Output interface
    output reg [ADC_WIDTH-1:0] signal_out,
    output reg signal_valid
);

    // Internal registers
    reg [31:0] lfsr;           // Linear feedback shift register for random numbers
    reg [31:0] cycle_counter;  // Counter for timing spikes
    reg [7:0] decay_counter;   // Counter for spike decay
    
    // LFSR for pseudo-random number generation
    wire feedback = lfsr[31] ^ lfsr[21] ^ lfsr[1] ^ lfsr[0];
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            lfsr <= random_seed;  // Initialize with seed
            cycle_counter <= 32'd0;
            decay_counter <= 8'd0;
            signal_out <= BACKGROUND_LEVEL;
            signal_valid <= 1'b0;
        end else begin
            // Update LFSR
            lfsr <= {lfsr[30:0], feedback};
            
            // Generate base signal with noise
            if (decay_counter == 0) begin
                signal_out <= BACKGROUND_LEVEL + (lfsr[ADC_WIDTH-1:0] % noise_amplitude);
            end
            
            // Handle spike generation
            if (cycle_counter >= spike_interval) begin
                cycle_counter <= 32'd0;
                decay_counter <= 8'd100;  // Start decay counter
                signal_out <= BACKGROUND_LEVEL + spike_amplitude;
            end else begin
                cycle_counter <= cycle_counter + 1;
            end
            
            // Handle spike decay
            if (decay_counter > 0) begin
                decay_counter <= decay_counter - 1;
                signal_out <= BACKGROUND_LEVEL + 
                            ((spike_amplitude * decay_counter) >> 7) +
                            (lfsr[ADC_WIDTH-1:0] % noise_amplitude);
            end
            
            signal_valid <= 1'b1;  // Output is always valid
        end
    end

endmodule 