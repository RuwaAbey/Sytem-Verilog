module or_gate(
    input logic a,     //Input A
    input logic b,     //Input B
    output logic y    //Output Y
);
    //combinational logic using always_comb
    always_comb begin 
        y = a | b;
    end
endmodule


