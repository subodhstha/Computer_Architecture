`include "nor_gate.v"
module nor_gate_tb;
    reg a, b;
    wire c;
    nor_gate nor1(a, b, c);
    initial begin
        $dumpfile("nor_gate.vcd");
        $dumpvars(0, nor_gate_tb);
        a = 0;
        b = 0;
        #10
        a = 0;
        b = 1;
        #10
        a = 1;
        b = 0;
        #10
        a = 1;
        b = 1;
        $finish;
    end
endmodule