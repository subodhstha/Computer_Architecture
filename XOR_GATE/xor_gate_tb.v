`include "xor_gate.v"
module xor_gate_tb;
    reg a, b;
    wire c;
    xor_gate xor1(a, b, c);
    initial begin
        $dumpfile("xor_gate.vcd");
        $dumpvars(0, xor_gate_tb);
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