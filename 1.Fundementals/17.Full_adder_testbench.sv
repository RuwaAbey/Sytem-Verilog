module full_adder_tb;

timeunit 1ns;
timeprecision 1ps;

logic a=0,b,ci = 0,co, sum;

full_adder dut (.*);

initial begin //simualtion starts
    $dumpfile("dump.vcd"); $dumpvars(0,dut);

    #10 a <= 0; b <= 0; ci <= 0;
    #10 a <= 0; b <= 0; ci <= 0;
    #10 a <= 1; b <= 1; ci <= 0;
    #10 a <= 1; b <= 1; ci <= 1;

    #10 $finish(); //simulation ends

end

endmodule

