`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/16 22:39:23
// Design Name: 
// Module Name: mux
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


module mux(
    input  wire       en,          // 1位使能
    input  wire       mux_sel,     // 1位选择信号
    input  wire [3:0] input_a,     // 4位输入数据a
    input  wire [3:0] input_b,     // 4位输入数据b
    output reg  [3:0] output_c     // 4位输出数据，驱动LED显示
    );
    always @ (*) begin
        if(en == 1'b1)begin
            case(mux_sel)
                1'b1 : output_c = input_a - input_b;
                1'b0 : output_c = input_a + input_b;
                default: output_c = 4'b0000;
            endcase
         end
         else output_c = 4'b1111;
     end    
endmodule
