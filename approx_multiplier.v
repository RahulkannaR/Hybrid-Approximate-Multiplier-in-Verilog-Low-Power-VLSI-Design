`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2025 14:40:51
// Design Name: 
// Module Name: approx_multiplier
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


module approx_multiplier #(parameter N = 8)(
input  [N-1:0] A, B,
    output [2*N-1:0] P
    );
    
    wire [2*N-1:0] approx_p;

    // Approximate using only upper 4 bits of A and B
    assign approx_p = {((A[7:4]) * (B[7:4])), 8'b0};

    assign P = approx_p;
endmodule
