module or_gate(
    input logic,      //First input
    output logic y    //Output of the AND gate
);

    //Combinational logic using always_comb
    always_comb begin
        y = ~a;         
    end

endmodule

