module xor_gate(
    input logic a,
    input logic b,
    output logic y
);

    always_comb begin
        y = a ^ b;         //XOR operation
    end

endmodule