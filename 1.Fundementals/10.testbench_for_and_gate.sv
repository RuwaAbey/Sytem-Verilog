`timescale 1ns/1ps //Define the time unit and time precision

module tb_simple_logic;

    logic a;
    logic b;
    logic c;
    logic result;

    //Instantiate the simple_logic module
    simple_logic uut(
        .a(a),
        .b(b),
        .c(c),
        .result(result)
    );

    //Testbench procedure
    initial begin
        //Setup the VCD dump
        $dumpfile("dump.vcd");      //Specify the name of the VCD file
        $dumpvars(0, tb_simple_logic); //Dump all variables in the module tb_simple_logic
        //Display header
        $display("a b c | result");
        $display("--------------");

        #10; //wait for 10 time units
        //Test case 1: a= 0, b=0,c=0
        a = 0; b =0; c=0;
        $display("%0d %0d %0d | %0d", a, b, c, result);

        #10; //wait for 10 time units
      	//Test case 2: a= 1, b=0,c=0
        a = 1; b =0; c=0;
        $display("%0d %0d %0d | %0d", a, b, c, result);

        #10; //wait for 10 time units 
      	//Test case 3: a= 0, b=1,c=0
        a = 0; b =1; c=0;
        $display("%0d %0d %0d | %0d", a, b, c, result);

        #10; //wait for 10 time units
      	//Test case 4: a= 1, b=1,c=0
        a = 1; b =1; c=0;
        $display("%0d %0d %0d | %0d", a, b, c, result);

        #10; //wait for 10 time units
      	//Test case 5: a= 0, b=0,c=1
        a = 0; b =0; c=1;
        $display("%0d %0d %0d | %0d", a, b, c, result);

        #10; //wait for 10 time units
      	//Test case 6: a= 1, b=0,c=1
        a = 1; b =0; c=1;
        $display("%0d %0d %0d | %0d", a, b, c, result);

        #10; //wait for 10 time units
      	//Test case 7: a= 0, b=1,c=1
        a = 0; b =1; c=1;
        $display("%0d %0d %0d | %0d", a, b, c, result);

        #10; //wait for 10 time units
      	//Test case 8: a= 1, b=1,c=1
        a = 1; b =1; c=1;
        $display("%0d %0d %0d | %0d", a, b, c, result);
    end

endmodule