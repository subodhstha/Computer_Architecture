module xnor_gate (a, b, c);
    input a, b;
    output c;
    xnor xnor1(c, a, b);
endmodule