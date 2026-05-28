module alu_tb;

    logic [3:0] A, B;
    logic [2:0] opcode;
    logic [3:0] Y;
    logic carry;

    // Instantiate DUT
    alu_4bit dut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .Y(Y),
        .carry(carry)
    );

    initial begin
        $display("A  B  opcode | Y carry");

        A = 4'd5; B = 4'd3;

        for (int i = 0; i < 8; i++) begin
            opcode = i;
            #5;
            $display("%0d %0d   %0b   | %0d  %0b", A, B, opcode, Y, carry);
        end

        $finish;
    end

endmodule