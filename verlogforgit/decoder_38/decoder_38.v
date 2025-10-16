`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/16 22:29:40
// Design Name: 
// Module Name: decoder_38
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder_38 (
    input  wire [2:0] en,
    input  wire [2:0] data_in,
    output reg  [7:0] data_out
);

always @ (*) begin
    if (en == 3'b100) begin
        case (data_in)
            3'h0 : data_out = 8'hfe;
            3'h1 : data_out = 8'hfd;
            3'h2 : data_out = 8'hfb;
            3'h3 : data_out = 8'hf7;
            3'h4 : data_out = 8'hef;
            3'h5 : data_out = 8'hdf;
            3'h6 : data_out = 8'hbf;
            3'h7 : data_out = 8'h7f;
            default : data_out = 8'hff;
        endcase
    end
    else data_out = 8'hff;
end

endmodule
