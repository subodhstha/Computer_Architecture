
`include "full_adder.v"
module full_adder_tb;
    // Here, "reg" means register to standard value
    reg a, b, cin;
    // Here, "out" is output wire. So, wire data type
    wire sum, cout;
    full_adder full_adder1(a, b, cin, sum, cout);

    initial begin
        // Create a dumpfile to store output datat fnand graph
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_tb);    
        // Set value and add delay 
        a = 0; b = 0; cin = 0;
        #10
        a = 0; b = 1; cin = 1;
        #10
        a = 1; b = 0; cin = 0;
        #10
        a = 1; b = 1; cin = 1;
        $finish;
    end
endmodule