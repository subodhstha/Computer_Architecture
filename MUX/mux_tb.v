`include "mux.v"
module mux_tb;
    // Here, "reg" means register to standard value
    reg a, b, s;
    // Here, "out" is output wire. So, wire data type
    wire out;
    mux mux1(a, b, s, out);

    initial begin
        // Create a dumpfile to store output datat fnand graph
        $dumpfile("mux.vcd");
        $dumpvars(0, mux_tb);    
        // Set value and add delay 
        a = 0; b = 0; s = 0;
        #10
        a = 0; b = 1; s = 1;
        #10
        a = 1; b = 0; s = 1;
        #10
        a = 1; b = 1; s = 0;
        $finish;
    end
endmodule