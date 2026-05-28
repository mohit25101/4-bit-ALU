module alu_4bit (
    input  logic [3:0] A,
    input  logic [3:0] B,
    input  logic [2:0] opcode,
    output logic [3:0] Y,
    output logic carry
);

always_comb begin
    carry = 0;

    case (opcode)
        3'b000: {carry, Y} = A + B;   // Addition
        3'b001: {carry, Y} = A - B;   // Subtraction
        3'b010: Y = A & B;            // AND
        3'b011: Y = A | B;            // OR
        3'b100: Y = A ^ B;            // XOR
        3'b101: Y = ~A;               // NOT
        3'b110: Y = A << 1;           // Shift Left
        3'b111: Y = A >> 1;           // Shift Right
        default: Y = 4'b0000;
    endcase
end

endmodule