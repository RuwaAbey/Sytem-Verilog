module ALU_tb;


localparam N = 8;
logic [N-1:0] A, B, s;
logic [N-1:0] ALU_out;


ALU #(.N(N)) dut (.*);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, dut);

    #5 A <= 8'd5; B <= 8'd23;   s <= 0;
    #5 A <= 8'd100; B <= 8'd200; s <= 0;
  	#5 A <= 8'd10; B <= 8'd12; s <= 1;
  	#5 A <= 8'd24; B <= 8'd30; s <= 0;
    #5 A <= 8'D255; B <= 8'D255; s <= 1;

    #5 $finish();
end

endmodule