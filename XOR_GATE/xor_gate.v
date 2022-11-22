module xor_gate (a, b, c);
    input a, b;
    output c;
    xor xor1(c, a, b);
endmodule