module nor_gate(
    input logic a,
    input logic b,
    output logic y
);

    always_comb begin
        y = ~(a | b);   //NOR operation (negation of OR)
    end

endmodule