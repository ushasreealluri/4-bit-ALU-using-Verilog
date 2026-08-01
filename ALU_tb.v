`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2026 20:53:44
// Design Name: 
// Module Name: ALU_tb
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


`timescale 1ns / 1ps

module ALU_tb;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] Sel;

    // Outputs
    wire [3:0] Result;
    wire Carry;

    // Instantiate the ALU
    ALU uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .Result(Result),
        .Carry(Carry)
    );

    initial begin

        // Test Addition
        A = 4'b0101; B = 4'b0011; Sel = 3'b000;
        #10;

        // Test Subtraction
        A = 4'b0101; B = 4'b0011; Sel = 3'b001;
        #10;

        // Test AND
        Sel = 3'b010;
        #10;

        // Test OR
        Sel = 3'b011;
        #10;

        // Test XOR
        Sel = 3'b100;
        #10;

        // Test NOT
        Sel = 3'b101;
        #10;

        // Test Left Shift
        Sel = 3'b110;
        #10;

        // Test Right Shift
        Sel = 3'b111;
        #10;

        $finish;

    end

endmodule