`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2025 14:40:23
// Design Name: 
// Module Name: exact_multiplier
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


module exact_multiplier #(parameter N = 8)(
input  [N-1:0] A, B,
    output [2*N-1:0] P
    );
    
    assign P = A * B;
endmodule
