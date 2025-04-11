`timescale 1ns/1ps

module alu (
    // IN
    input logic [3:0] alu_control,
    input logic [31:0] src1,
    input logic [31:0] src2,
    // OUT
    output logic [31:0] alu_result,
    output logic zero,
    output logic last_bit
);

import core_pkg::*;

wire [4:0] shamt = src2[4:0];

always_comb begin
    case (alu_control)
        ALU_ADD : alu_result = src1 + src2;
        ALU_AND : alu_result = src1 & src2;
        ALU_OR : alu_result = src1 | src2;
        ALU_SUB : alu_result = src1 + (~src2 + 1'b1);
        ALU_SLT : alu_result = {31'b0, $signed(src1) < $signed(src2)};
        ALU_SLTU : alu_result = {31'b0, src1 < src2};
        ALU_XOR : alu_result = src1 ^ src2;
        ALU_SLL : alu_result = src1 << shamt;
        ALU_SRL : alu_result = src1 >> shamt;
        ALU_SRA : alu_result = $signed(src1) >>> shamt;
        default : alu_result = 32'd0;
    endcase
end

assign zero = alu_result == 32'b0;
assign last_bit = alu_result[0];
    
endmodule
