//8 bit ripple carry adder
module rca_8bit (x,y,ci,s,co);
  input logic[7:0] x,y;
  input logic ci;
  output logic [7:0] s;
  output logic co;
  logic w1, w2,w3,w4,w5,w6,w7;
  fa fa1 (.a(x[0]),.b(y[0]),.cin(ci),.sum(s[0]),.cout(w1));
  fa fa2 (.a(x[1]),.b(y[1]),.cin(w1),.sum(s[1]),.cout(w2));
  fa fa3 (.a(x[2]),.b(y[2]),.cin(w2),.sum(s[2]),.cout(w3));
  fa fa4 (.a(x[3]),.b(y[3]),.cin(w3),.sum(s[3]),.cout(w4));
  fa fa5 (.a(x[4]),.b(y[4]),.cin(w4),.sum(s[4]),.cout(w5));
  fa fa6 (.a(x[5]),.b(y[5]),.cin(w5),.sum(s[5]),.cout(w6));
  fa fa7 (.a(x[6]),.b(y[6]),.cin(w6),.sum(s[6]),.cout(w7));
  fa fa8 (.a(x[7]),.b(y[7]),.cin(w7),.sum(s[7]),.cout(co));
endmodule


//full adder module
module fa (a,b,cin,sum,cout);
  input logic a, b, cin;
  output logic sum, cout;
  logic x, y, z;
  ha ha1 (.a(a), .b(b), .sum(x), .cout(y));
  ha ha2 (.a(x), .b(cin), .sum(sum), .cout(z));
  assign cout = y|z;
endmodule


//half adder module
module ha ( a,b, sum, cout );
  input logic a,b;
  output logic sum,  cout;
  assign sum= a^b;
  assign cout= a & b;
endmodule



