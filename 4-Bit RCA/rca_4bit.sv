//4 bit ripple carry adder
module rca_4bit (x,y,ci,s,co);
  input logic [3:0] x,y;
  input logic ci;
  output logic [3:0] s;
  output logic co;
  Logic w1, w2,w3;
  fa fa1 (.a(x[0]),.b(y[0]),.cin(ci),.sum(s[0]),.cout(w1));
  fa fa2 (.a(x[1]),.b(y[1]),.cin(w1),.sum(s[1]),.cout(w2));
  fa fa3 (.a(x[2]),.b(y[2]),.cin(w2),.sum(s[2]),.cout(w3));
  fa fa4 (.a(x[3]),.b(y[3]),.cin(w3),.sum(s[3]),.cout(co));
endmodule


//full adder module
module fa (a,b,cin,sum,cout);
  input a, b, cin;
  output sum, cout;
  Logic x, y, z;
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
