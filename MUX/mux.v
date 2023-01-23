// "a", "b", "sum", "carry" are userdefined port names
module mux (a, b, s, out);
    input a, b, s;
    output out;
    assign out = ((!s) & a) | (s & b);
endmodule