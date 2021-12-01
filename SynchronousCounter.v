module SynchronusCounter(Q,clr,clk,mod);
	input clr,clk,mod;
	output [2:0]Q;
	wire [2:0]Qbar;
	wire j,k,nott,a1,a2,a3,a4;
	wire o1,o2;

	
	assign j=1;
	assign k=1;
	JKFF jk0(Q[0],Qbar[0],j,k,clr,clk);
	not no(nott,mod);
	
	and Q1(a1,Q[0],mod);
        and Q2(a2,Qbar[0],nott);
	or O1(o1,a1,a2);
	JKFF jk1(Q[1],Qbar[1],o1,o1,clr,clk);
        and Q3(a3,Q[1],a1);
	and Q4(a4,Qbar[1],a2);
	or O2(o2,a3,a4);
	JKFF jk2(Q[2],Qbar[2],o2,o2,clr,clk);



endmodule 