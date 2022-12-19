///6. Write a verilog design for a bidirectional buffer and verify the same using testbench
module buffer1(input a1,c1,output reg b1);
 always@*
 begin
 if(c1)
 b1=a1;
 else
 b1=1'bz;
 end

endmodule

module buffer2(input a2,c2,output reg b2);
//Active low control
 always@*
 begin
 if(!c2)
 b2=a2;
 else
 b2=1'bz;
 end
endmodule
module buffer(a,c,b);
  input c;
  inout a,b;
     buffer1 b1(a,c,b);
     buffer2 b2(b,c,a);
endmodule
