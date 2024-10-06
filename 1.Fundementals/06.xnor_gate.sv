module xnor_gate(
    input logic a,
    input logic b,
    output logic y
);

    alaways_comb begin
        y = ~(a ^ b);
    end


endmodule