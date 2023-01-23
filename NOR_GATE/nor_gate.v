module nor_gate (a, b, c);
    input a, b;
    output c;
    nor nor1(c, a, b);
endmodule