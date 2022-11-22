module nand_gate (a, b, c);
    input a, b;
    output c;
    nand nand1(c, a, b);
endmodule