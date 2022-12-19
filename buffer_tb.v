//Testbench
module buffer_tb();
reg t1, t2,c_tb;
wire a_tb, b_tb;
integer i;
 assign a_tb=c_tb?t1:1'bz;
 assign b_tb=(~c_tb)?t2:1'bz;
 buffer DUT(a_tb,c_tb,b_tb);
initial
begin
 for(i=0;i<8;i=i+1)
 begin
 {t1,t2,c_tb}=i;
 #10;
 end
end

initial
 $monitor("a=%b,c=%b,b=%b",a_tb,c_tb,b_tb);

initial
 #100 $finish;
endmodule
