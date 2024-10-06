module simple_logic(
    input logic a,
    input logic b,
    input logic c,
    output logic result

);

    logic wire_and_ab;
    logic wire_or_bc;
    logic wire_xor_result;

    //Combinational logic using gates
    always_comb begin
        //AND gate between a & b
        wire_and_ab = a & b;

        //OR gate between b and c
        wire_or_bc = b | c;

        //XOR gate between wire_and_ab and wire_or_ab
        wire_xor_result = wire_and_ab ^ wire_or_bc;

        //Final result is the XOR output
        result = wire_xor_result;
    
    end

endmodule

