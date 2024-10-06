module and_gate{
  input logic a;    //First input
  input logic b;	//Second input
  output logic y; 	//Output of the AND gate
};
  
 //Combinational logic using always_comb
  always_comb begin
    y =  a & b;
  end
endmodule