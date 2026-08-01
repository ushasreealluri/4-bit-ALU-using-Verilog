`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2026 20:52:57
// Design Name: 
// Module Name: ALU
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


module ALU (
    input [3:0] A,
    input [3:0] B,
    input [2:0] Sel,
    output reg [3:0] Result,
    output reg Carry
);

always @(*) begin
    Carry = 0;

    case (Sel)

        3'b000: begin
            {Carry, Result} = A + B;      // Addition
        end

        3'b001: begin
            {Carry, Result} = A - B;      // Subtraction
        end

        3'b010: begin
            Result = A & B;               // AND
        end

        3'b011: begin
            Result = A | B;               // OR
        end

        3'b100: begin
            Result = A ^ B;               // XOR
        end

        3'b101: begin
            Result = ~A;                  // NOT A
        end

        3'b110: begin
            Result = A << 1;              // Left Shift
        end

        3'b111: begin
            Result = A >> 1;              // Right Shift
        end

        default: begin
            Result = 4'b0000;
            Carry = 0;
        end

    endcase
end

endmodule
