module nand_gate(
    input logic a,
    input logic b,
    output logic y
);

    always_comb begin
        y = ~(a & b);     //NAND operation negation of AND
    end

endmodule