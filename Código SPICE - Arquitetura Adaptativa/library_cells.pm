* Biblioteca de Células
* PGMICRO - UFRGS - Cesar Dias

.param wt = 300n
.model switch1 sw vt=0.5 ron=10 roff=1e9

.subckt ANALOG_MUX_2X1 e0 e1 sel out

	E0 act_0 0 vol = 'v(sel)<0.5  ? {1.0} : {0.0}' ; 
	E1 act_1 0 vol = 'v(sel)>0.5  ? {1.0} : {0.0}' ; 
	S0  e0  out   act_0 0 switch1 OFF
	S1  e1  out   act_1 0 switch1 OFF

.ends ANALOG_MUX_2X1

.subckt ANALOG_MUX_4X1 e0 e1 e2 e3 sel1 Sel0 out

	E0 act_0 0 vol = '(v(sel1)<0.5 && v(sel0)<0.5) ? {1.0} : {0.0}' ; 
	E1 act_1 0 vol = '(v(sel1)<0.5 && v(sel0)>0.5) ? {1.0} : {0.0}' ; 
	E2 act_2 0 vol = '(v(sel1)>0.5 && v(sel0)<0.5) ? {1.0} : {0.0}' ; 
	E3 act_3 0 vol = '(v(sel1)>0.5 && v(sel0)>0.5) ? {1.0} : {0.0}' ; 
	S0  e0  out   act_0 0 switch1 OFF
	S1  e1  out   act_1 0 switch1 OFF
	S2  e2  out   act_2 0 switch1 OFF
	S3  e3  out   act_3 0 switch1 OFF

.ends ANALOG_MUX_4X1

.subckt ANALOG_MUX_8X1 e0 e1 e2 e3 e4 e5 e6 e7 sel2 sel1 sel0 out

	E0 act_0 0 vol = '(v(sel2)<0.5 && v(sel1)<0.5 && v(sel0)<0.5) ? {1.0} : {0.0}' ; 
	E1 act_1 0 vol = '(v(sel2)<0.5 && v(sel1)<0.5 && v(sel0)>0.5) ? {1.0} : {0.0}' ; 
	E2 act_2 0 vol = '(v(sel2)<0.5 && v(sel1)>0.5 && v(sel0)<0.5) ? {1.0} : {0.0}' ; 
	E3 act_3 0 vol = '(v(sel2)<0.5 && v(sel1)>0.5 && v(sel0)>0.5) ? {1.0} : {0.0}' ; 
	E4 act_4 0 vol = '(v(sel2)>0.5 && v(sel1)<0.5 && v(sel0)<0.5) ? {1.0} : {0.0}' ; 
	E5 act_5 0 vol = '(v(sel2)>0.5 && v(sel1)<0.5 && v(sel0)>0.5) ? {1.0} : {0.0}' ; 
	E6 act_6 0 vol = '(v(sel2)>0.5 && v(sel1)>0.5 && v(sel0)<0.5) ? {1.0} : {0.0}' ; 
	E7 act_7 0 vol = '(v(sel2)>0.5 && v(sel1)>0.5 && v(sel0)>0.5) ? {1.0} : {0.0}' ; 
	S0  e0  out   act_0 0 switch1 OFF
	S1  e1  out   act_1 0 switch1 OFF
	S2  e2  out   act_2 0 switch1 OFF
	S3  e3  out   act_3 0 switch1 OFF
	S4  e4  out   act_4 0 switch1 OFF
	S5  e5  out   act_5 0 switch1 OFF
	S6  e6  out   act_6 0 switch1 OFF
	S7  e7  out   act_7 0 switch1 OFF

.ends ANALOG_MUX_8X1


.subckt ANALOG_BUF in vdd vss out

Bout out vss v = {v(in)} 

.ends ANALOG_BUF

.subckt 	OR2	a  b  vdd   vss 	out	

Mp1   1   a   vdd  vdd 		PMOS350 w=700n l=350n
Mp2   s   b    1   vdd 		PMOS350 w=700n l=350n
Mn1   s   a   vss  vss 		NMOS350 w=560n l=350n
Mn2   s   b   vss  vss 		NMOS350 w=560n l=350n

Mpi out s vdd vdd PMOS350 w=700n l=350n
Mni out s vss vss NMOS350 w=700n l=350n
 
.ends OR2

.subckt  XNOR2  a  b  vdd   vss  out	

Mp1   1    a   vdd  vdd  PMOS350  w=1.4u l=350n
Mp2   out  b   1    vdd  PMOS350  w=1.4u l=350n
Mp3   2    an  vdd  vdd  PMOS350  w=1.4u l=350n
Mp4   out  bn  2    vdd  PMOS350  w=1.4u l=350n
						    
Mn1   out  a   3    vss  NMOS350  w=700n l=350n
Mn2   3    bn  vss  vss  NMOS350  w=700n l=350n
Mn3   out  an   4   vss  NMOS350  w=700n l=350n
Mn4   4    b   vss  vss  NMOS350  w=700n l=350n

Mpi_a an  a  vdd  vdd PMOS350 w=1u   l=350n
Mni_a an  a  vss  vss NMOS350 w=1u   l=350n
Mpi_b bn  b  vdd  vdd PMOS350 w=1u   l=350n
Mni_b bn  b  vss  vss NMOS350 w=1u   l=350n

.ends XNOR2

.subckt 	NAND2	a  b  vdd   gnd 	out	

Mp1   out    a   vdd   vdd	PMOS350 w=560n l=350n
Mp2   out    b   vdd   vdd 	PMOS350 w=560n l=350n
Mn1   out    a    x    gnd 	NMOS350 w=700n l=350n
Mn2    x     b   gnd   gnd 	NMOS350 w=700n l=350n

.ends NAND2

.subckt 	NAND2b	a  b  vdd   gnd 	out	

Mp1   out    a   vdd   vdd	PMOS350 w=2u l=350n
Mp2   out    b   vdd   vdd 	PMOS350 w=2u l=350n
Mn1   out    a    x    gnd 	NMOS350 w=2u l=350n
Mn2    x     b   gnd   gnd 	NMOS350 w=2u l=350n

.ends NAND2b
	
.subckt 	AND2	a  b  vdd   vss 	out	

Mp1   s    a   vdd   vdd  PMOS350 w=700n l=350n
Mp2   s    b   vdd   vdd  PMOS350 w=700n l=350n
Mn1   s    a    x    vss  NMOS350 w=700n l=350n
Mn2   x    b   vss   vss  NMOS350 w=700n l=350n

Mpi out s vdd vdd PMOS350 w=700n l=350n
Mni out s vss vss NMOS350 w=700n l=350n

.ends AND2

.subckt 	AND3	a  b  c vdd   vss 	out	

Mp1   s    a   vdd   vdd	PMOS350 w=700n l=350n
Mp2   s    b   vdd   vdd 	PMOS350 w=700n l=350n
Mp3   s    c   vdd   vdd	PMOS350 w=700n l=350n									  
										  
Mn1   s    a    x    vss 	NMOS350 w=1u l=350n
Mn2   x    b    y    vss 	NMOS350 w=1u l=350n
Mn3   y    c   vss   vss 	NMOS350 w=1u l=350n

Mpi out s vdd vdd PMOS350 w=700n l=350n
Mni out s vss vss NMOS350 w=700n l=350n

.ends AND3
	

.subckt 	NAND_TRISTATE 	a  b  clk   clkn  vdd   gnd 	out	

Mp1   s    a   vdd   vdd	PMOS350 w=560n l=350n
Mp2   s    b   vdd   vdd 	PMOS350 w=560n l=350n
Mn1   s    a    x    gnd 	NMOS350 w=700n l=350n
Mn2   x    b   gnd   gnd 	NMOS350 w=700n l=350n

X1    s   clk  clkn  vdd  gnd  out  tgate2 

.ends NAND_TRISTATE

.subckt 	NOT2 	ia 	ivdd 	i0 	out		
								
Mpi 	out   ia 	ivdd 	ivdd 	PMOS350 w=700n  l=350n	
Mni 	out	  ia 	i0 	    i0 	    NMOS350 w=700n  l=350n
								
.ends NOT2	

.subckt  FF_D    D 	rst   clk    vdd 	gnd   Q  QN
* Reset ativo em 0

Mpi 	clkn    clk    vdd 	 vdd 	PMOS350  w=560n l=350n	
Mni 	clkn    clk    gnd	 gnd    NMOS350  w=560n l=350n

x1 	D 	vdd 	gnd     1 					NOT2 
x2 	1 	clkn 	clk    vdd   gnd   2		tgate2 
x3 	2 	vdd 	gnd 	3 					NOT2
x4  3   rst     clk   clkn   vdd   gnd  2   NAND_TRISTATE
x5 	3 	clk 	clkn   vdd   gnd   4		tgate2 
x6  4   rst     vdd    gnd   QN             NAND2 
x7 	QN 	clkn 	clk    vdd   gnd   4 	    tristate 
x8 	QN 	vdd 	gnd 	Q 					NOT2

Cq Q gnd 1f
								
.ends FF_D	

.subckt  FF_D2   D  set  rst  clk  vdd  gnd  Q  QN
* Entradas Set e Reset

Mpi 	clkn    clk    vdd 	 vdd 	PMOS350  w=560n l=350n	
Mni 	clkn    clk    gnd	 gnd    NMOS350  w=560n l=350n

x1 	D 	vdd 	gnd     1 					NOT2 
x2 	1 	clkn 	clk    vdd   gnd   2		tgate2 
x3 	2 	set     vdd    gnd 	 3 				NAND2
x4  3   rst     clk   clkn   vdd   gnd  2   NAND_TRISTATE
x5 	3 	clk 	clkn   vdd   gnd   4		tgate2 
x6  4   rst     vdd    gnd   QN             NAND2 
x7 	QN 	set    clkn    clk   vdd   gnd  4 	NAND_tristate 
x8 	QN 	vdd 	gnd 	Q 					NOT2
								
.ends FF_D2	

.subckt  FF_JK  J  K  rst  clk  vdd  gnd  Q  Qn

X1    J   Qn    vdd   gnd    j1    	    NAND2
X2    K   vdd   gnd   Kn         	    NOT2   
X3    Kn  Q     vdd   gnd    k1    	    NAND2
X4    j1  k1    vdd   gnd    D     	    NAND2
X5    D   rst   clk   vdd   vss  Q  Qn  FF_D

.ends FF_JK


.subckt  FF_JK2  J  K  set rst  clk  vdd  gnd  Q  Qn

X1    J   Qn    vdd   gnd    j1    	    NAND2
X2    K   vdd   gnd   Kn         	    NOT2   
X3    Kn  Q     vdd   gnd    k1    	    NAND2
X4    j1  k1    vdd   gnd    D     	    NAND2
X5    D   set   rst   clk   vdd   vss  Q  Qn  FF_D2

.ends FF_JK2

.subckt   CONTADOR_SINC  Q3  Q2  Q1  Q0  ld d3 d2 d1 d0 clk vdd vss 

Xn0 d0 vdd vss d0n NOT2
Xn1 d1 vdd vss d1n NOT2
Xn2 d2 vdd vss d2n NOT2
Xn3 d3 vdd vss d3n NOT2

Xo1_a ld d0  vdd vss rst0 OR2
Xo2_a ld d0n vdd vss set0 OR2
Xo1_b ld d1  vdd vss rst1 OR2
Xo2_b ld d1n vdd vss set1 OR2
Xo1_c ld d2  vdd vss rst2 OR2
Xo2_c ld d2n vdd vss set2 OR2
Xo1_d ld d3  vdd vss rst3 OR2
Xo2_d ld d3n vdd vss set3 OR2

X0  vdd  vdd  set0 rst0  clk  vdd  vss  Q0x  Q0n  FF_JK2
X1  Q0   Q0   set1 rst1  clk  vdd  vss  Q1x  Q1n  FF_JK2
X2  Qa1  Qa1  set2 rst2  clk  vdd  vss  Q2x  Q2n  FF_JK2
X3  Qa2  Qa2  set3 rst3  clk  vdd  vss  Q3x  Q3n  FF_JK2

Xa1 Q0  Q1 vdd vss Qa1 AND2
Xa2 Qa1 Q2 vdd vss Qa2 AND2

B1 Q0 vss v = {v(Q0x) > 1.0 ? 3.3 : 0}
B2 Q1 vss v = {v(Q1x) > 1.0 ? 3.3 : 0}
B3 Q2 vss v = {v(Q2x) > 1.0 ? 3.3 : 0}
B4 Q3 vss v = {v(Q3x) > 1.0 ? 3.3 : 0}

.ends CONTADOR_SINC

.subckt   CONTADOR_7b  Q6 Q5 Q4 Q3  Q2  Q1  Q0  clk rst vdd vss 

X1  vdd  vdd  rst  clk  vdd  vss  Q0x  Q0nx  FF_JK
X2  vdd  vdd  rst  Q0n  vdd  vss  Q1x  Q1nx  FF_JK
X3  vdd  vdd  rst  Q1n  vdd  vss  Q2x  Q2nx  FF_JK
X4  vdd  vdd  rst  Q2n  vdd  vss  Q3x  Q3nx  FF_JK
X5  vdd  vdd  rst  Q3n  vdd  vss  Q4x  Q4nx  FF_JK
X6  vdd  vdd  rst  Q4n  vdd  vss  Q5x  Q5nx  FF_JK
X7  vdd  vdd  rst  Q5n  vdd  vss  Q6x  Q6nx  FF_JK

B0n Q0n vss v = {v(Q0nx) > 1.5 ? 3.3 : 0}
B1n Q1n vss v = {v(Q1nx) > 1.5 ? 3.3 : 0}
B2n Q2n vss v = {v(Q2nx) > 1.5 ? 3.3 : 0}
B3n Q3n vss v = {v(Q3nx) > 1.5 ? 3.3 : 0}
B4n Q4n vss v = {v(Q4nx) > 1.5 ? 3.3 : 0}
B5n Q5n vss v = {v(Q5nx) > 1.5 ? 3.3 : 0}
B6n Q6n vss v = {v(Q6nx) > 1.5 ? 3.3 : 0}

B0 Q0 vss v = {v(Q0x) > 1.5 ? 3.3 : 0}
B1 Q1 vss v = {v(Q1x) > 1.5 ? 3.3 : 0}
B2 Q2 vss v = {v(Q2x) > 1.5 ? 3.3 : 0}
B3 Q3 vss v = {v(Q3x) > 1.5 ? 3.3 : 0}
B4 Q4 vss v = {v(Q4x) > 1.5 ? 3.3 : 0}
B5 Q5 vss v = {v(Q5x) > 1.5 ? 3.3 : 0}
B6 Q6 vss v = {v(Q6x) > 1.5 ? 3.3 : 0}

.ends CONTADOR_7b


.subckt 	tgate2 	ia	iclk   iclkn   vdd   vss    out 		
								
Mpi 	out  iclkn 	ia 	vdd   PMOS350 w=560n l=350n	
Mni 	out  iclk 	ia 	vss   NMOS350 w=560n l=350n
				
.ends tgate2

.subckt 	MUX2x1		id0 	id1 	is 	ivdd 	ignd 	out
													
Mpi 	ivdd	is 		isn		ivdd	PMOS350  w=700n  l=350n		
Mni 	isn		is 		ignd	ignd	NMOS350  w=700n  l=350n	
					
Mpi11 	id0 	is 		out 	ivdd	PMOS350  w=700n  l=350n		
Mni12 	id0 	isn 	out 	ignd 	NMOS350  w=700n  l=350n	
Mpi21 	id1 	isn 	out 	ivdd 	PMOS350  w=700n  l=350n		
Mni22 	id1 	is  	out 	ignd 	NMOS350  w=700n  l=350n

Cout out ignd 0.01f ic = {0}
								
.ends MUX2x1

.subckt OPAMP plus minus vdd vss out

Rin  plus minus 300e6
Bout x vss v = {300e3*v(plus,minus) > v(vdd) ? {v(vdd)} : 300e3*v(plus,minus) < 0 ? {0}:300e3*v(plus,minus)}
Ro x out 50
Co out vss 1f ic = {0}

.ends OPAMP

.subckt VCOMP plus minus vdd vss out

*Rin  plus minus 1e50
Eout out vss vol = ' v(plus,minus) > 0 ? {v(vdd)} : v(plus,minus) < 0 ? {v(vss)}: 0'
*Ro x out1 50

.ends VCOMP

.subckt  AMP_SUB in1 in2 vdd vss out

Bout out vss v = {v(in1,in2) > v(vdd) ? {v(vdd)} : v(in1,in2) < 0 ? {v(vss)}: v(in1)-v(in2)}

.ends AMP_SUB
						
.subckt 	tristate 	ia 	 clk 	clkn  vdd  	gnd 	out 
							
Mp1 	vdd 	ia 		ino1  vdd  PMOS350 w=880n l=350n	
Mp2 	ino1 	clkn 	out   vdd  PMOS350 w=880n l=350n	
Mn1 	out 	clk 	ino2  gnd  NMOS350 w=700n l=350n	 
Mn2 	ino2 	ia 		gnd   gnd  NMOS350 w=700n l=350n	
								
.ends tristate	

.subckt decod_2_to_4 a b vdd vss d0 d1 d2 d3

Xn0 a vdd vss an NOT2
Xn1 b vdd vss bn NOT2

Xa1 an  bn  vdd vss d0 AND2
Xa2 an  b   vdd vss d1 AND2
Xa3 a   bn  vdd vss d2 AND2
Xa4 a   b   vdd vss d3 AND2

.ends decod_2_to_4

.subckt  MUX4x1  d0  d1  d2  d3  sel1  sel0  vdd   vss  out

Xmux1	d0  d1  sel0  vdd  vss  s1 	 MUX2x1
Xmux2   d2	d3	sel0  vdd  vss  s2   MUX2x1
Xmux3   s1  s2  sel1  vdd  vss  out  MUX2x1

Cout out vss 0.01f ic = {0}

.ends   MUX4x1