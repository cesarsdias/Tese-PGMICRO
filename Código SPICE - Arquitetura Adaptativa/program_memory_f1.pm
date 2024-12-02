*	Memoria de Programa

.subckt MEMORIA_PROGRAMA e3 e2 e1 e0 d23 d22 d21 d20 d19 d18 d17 d16 d15 d14 d13 d12 d11 d10 d9 d8 d7 d6 d5 d4 d3 d2 d1 d0


E1  Sel_1  0 vol = '(v(e3)<0.5 && v(e2)<0.5 && v(e1)<0.5 && v(e0)<0.5) ? {1.0} : {0.0}' ; 
E2  Sel_2  0 vol = '(v(e3)<0.5 && v(e2)<0.5 && v(e1)<0.5 && v(e0)>0.5) ? {1.0} : {0.0}' ; 
E3  Sel_3  0 vol = '(v(e3)<0.5 && v(e2)<0.5 && v(e1)>0.5 && v(e0)<0.5) ? {1.0} : {0.0}' ; 
E4  Sel_4  0 vol = '(v(e3)<0.5 && v(e2)<0.5 && v(e1)>0.5 && v(e0)>0.5) ? {1.0} : {0.0}' ; 
E5  Sel_5  0 vol = '(v(e3)<0.5 && v(e2)>0.5 && v(e1)<0.5 && v(e0)<0.5) ? {1.0} : {0.0}' ; 
E6  Sel_6  0 vol = '(v(e3)<0.5 && v(e2)>0.5 && v(e1)<0.5 && v(e0)>0.5) ? {1.0} : {0.0}' ; 
E7  Sel_7  0 vol = '(v(e3)<0.5 && v(e2)>0.5 && v(e1)>0.5 && v(e0)<0.5) ? {1.0} : {0.0}' ; 
E8  Sel_8  0 vol = '(v(e3)<0.5 && v(e2)>0.5 && v(e1)>0.5 && v(e0)>0.5) ? {1.0} : {0.0}' ; 
E9  Sel_9  0 vol = '(v(e3)>0.5 && v(e2)<0.5 && v(e1)<0.5 && v(e0)<0.5) ? {1.0} : {0.0}' ; 
E10 Sel_10 0 vol = '(v(e3)>0.5 && v(e2)<0.5 && v(e1)<0.5 && v(e0)>0.5) ? {1.0} : {0.0}' ; 
E11 Sel_11 0 vol = '(v(e3)>0.5 && v(e2)<0.5 && v(e1)>0.5 && v(e0)<0.5) ? {1.0} : {0.0}' ; 
E12 Sel_12 0 vol = '(v(e3)>0.5 && v(e2)<0.5 && v(e1)>0.5 && v(e0)>0.5) ? {1.0} : {0.0}' ; 
E13 Sel_13 0 vol = '(v(e3)>0.5 && v(e2)>0.5 && v(e1)<0.5 && v(e0)<0.5) ? {1.0} : {0.0}' ; 
E14 Sel_14 0 vol = '(v(e3)>0.5 && v(e2)>0.5 && v(e1)<0.5 && v(e0)>0.5) ? {1.0} : {0.0}' ; 
E15 Sel_15 0 vol = '(v(e3)>0.5 && v(e2)>0.5 && v(e1)>0.5 && v(e0)<0.5) ? {1.0} : {0.0}' ; 
E16 Sel_16 0 vol = '(v(e3)>0.5 && v(e2)>0.5 && v(e1)>0.5 && v(e0)>0.5) ? {1.0} : {0.0}' ; 


S1_0   m1_0  d0   Sel_1 0 switch1 OFF
S1_1   m1_1  d1   Sel_1 0 switch1 OFF
S1_2   m1_2  d2   Sel_1 0 switch1 OFF
S1_3   m1_3  d3   Sel_1 0 switch1 OFF
S1_4   m1_4  d4   Sel_1 0 switch1 OFF
S1_5   m1_5  d5   Sel_1 0 switch1 OFF
S1_6   m1_6  d6   Sel_1 0 switch1 OFF
S1_7   m1_7  d7   Sel_1 0 switch1 OFF
S1_8   m1_8  d8   Sel_1 0 switch1 OFF
S1_9   m1_9  d9   Sel_1 0 switch1 OFF
S1_10  m1_10 d10  Sel_1 0 switch1 OFF
S1_11  m1_11 d11  Sel_1 0 switch1 OFF
S1_12  m1_12 d12  Sel_1 0 switch1 OFF
S1_13  m1_13 d13  Sel_1 0 switch1 OFF
S1_14  m1_14 d14  Sel_1 0 switch1 OFF
S1_15  m1_15 d15  Sel_1 0 switch1 OFF
S1_16  m1_16 d16  Sel_1 0 switch1 OFF
S1_17  m1_17 d17  Sel_1 0 switch1 OFF
S1_18  m1_18 d18  Sel_1 0 switch1 OFF
S1_19  m1_19 d19  Sel_1 0 switch1 OFF
S1_20  m1_20 d20  Sel_1 0 switch1 OFF
S1_21  m1_21 d21  Sel_1 0 switch1 OFF
S1_22  m1_22 d22  Sel_1 0 switch1 OFF
S1_23  m1_23 d23  Sel_1 0 switch1 OFF

S2_0   m2_0  d0   Sel_2 0 switch1 OFF
S2_1   m2_1  d1   Sel_2 0 switch1 OFF
S2_2   m2_2  d2   Sel_2 0 switch1 OFF
S2_3   m2_3  d3   Sel_2 0 switch1 OFF
S2_4   m2_4  d4   Sel_2 0 switch1 OFF
S2_5   m2_5  d5   Sel_2 0 switch1 OFF
S2_6   m2_6  d6   Sel_2 0 switch1 OFF
S2_7   m2_7  d7   Sel_2 0 switch1 OFF
S2_8   m2_8  d8   Sel_2 0 switch1 OFF
S2_9   m2_9  d9   Sel_2 0 switch1 OFF
S2_10  m2_10 d10  Sel_2 0 switch1 OFF
S2_11  m2_11 d11  Sel_2 0 switch1 OFF
S2_12  m2_12 d12  Sel_2 0 switch1 OFF
S2_13  m2_13 d13  Sel_2 0 switch1 OFF
S2_14  m2_14 d14  Sel_2 0 switch1 OFF
S2_15  m2_15 d15  Sel_2 0 switch1 OFF
S2_16  m2_16 d16  Sel_2 0 switch1 OFF
S2_17  m2_17 d17  Sel_2 0 switch1 OFF
S2_18  m2_18 d18  Sel_2 0 switch1 OFF
S2_19  m2_19 d19  Sel_2 0 switch1 OFF
S2_20  m2_20 d20  Sel_2 0 switch1 OFF
S2_21  m2_21 d21  Sel_2 0 switch1 OFF
S2_22  m2_22 d22  Sel_2 0 switch1 OFF
S2_23  m2_23 d23  Sel_2 0 switch1 OFF

S3_0   m3_0  d0   Sel_3 0 switch1 OFF
S3_1   m3_1  d1   Sel_3 0 switch1 OFF
S3_2   m3_2  d2   Sel_3 0 switch1 OFF
S3_3   m3_3  d3   Sel_3 0 switch1 OFF
S3_4   m3_4  d4   Sel_3 0 switch1 OFF
S3_5   m3_5  d5   Sel_3 0 switch1 OFF
S3_6   m3_6  d6   Sel_3 0 switch1 OFF
S3_7   m3_7  d7   Sel_3 0 switch1 OFF
S3_8   m3_8  d8   Sel_3 0 switch1 OFF
S3_9   m3_9  d9   Sel_3 0 switch1 OFF
S3_10  m3_10 d10  Sel_3 0 switch1 OFF
S3_11  m3_11 d11  Sel_3 0 switch1 OFF
S3_12  m3_12 d12  Sel_3 0 switch1 OFF
S3_13  m3_13 d13  Sel_3 0 switch1 OFF
S3_14  m3_14 d14  Sel_3 0 switch1 OFF
S3_15  m3_15 d15  Sel_3 0 switch1 OFF
S3_16  m3_16 d16  Sel_3 0 switch1 OFF
S3_17  m3_17 d17  Sel_3 0 switch1 OFF
S3_18  m3_18 d18  Sel_3 0 switch1 OFF
S3_19  m3_19 d19  Sel_3 0 switch1 OFF
S3_20  m3_20 d20  Sel_3 0 switch1 OFF
S3_21  m3_21 d21  Sel_3 0 switch1 OFF
S3_22  m3_22 d22  Sel_3 0 switch1 OFF
S3_23  m3_23 d23  Sel_3 0 switch1 OFF

S4_0   m4_0  d0   Sel_4 0 switch1 OFF
S4_1   m4_1  d1   Sel_4 0 switch1 OFF
S4_2   m4_2  d2   Sel_4 0 switch1 OFF
S4_3   m4_3  d3   Sel_4 0 switch1 OFF
S4_4   m4_4  d4   Sel_4 0 switch1 OFF
S4_5   m4_5  d5   Sel_4 0 switch1 OFF
S4_6   m4_6  d6   Sel_4 0 switch1 OFF
S4_7   m4_7  d7   Sel_4 0 switch1 OFF
S4_8   m4_8  d8   Sel_4 0 switch1 OFF
S4_9   m4_9  d9   Sel_4 0 switch1 OFF
S4_10  m4_10 d10  Sel_4 0 switch1 OFF
S4_11  m4_11 d11  Sel_4 0 switch1 OFF
S4_12  m4_12 d12  Sel_4 0 switch1 OFF
S4_13  m4_13 d13  Sel_4 0 switch1 OFF
S4_14  m4_14 d14  Sel_4 0 switch1 OFF
S4_15  m4_15 d15  Sel_4 0 switch1 OFF
S4_16  m4_16 d16  Sel_4 0 switch1 OFF
S4_17  m4_17 d17  Sel_4 0 switch1 OFF
S4_18  m4_18 d18  Sel_4 0 switch1 OFF
S4_19  m4_19 d19  Sel_4 0 switch1 OFF
S4_20  m4_20 d20  Sel_4 0 switch1 OFF
S4_21  m4_21 d21  Sel_4 0 switch1 OFF
S4_22  m4_22 d22  Sel_4 0 switch1 OFF
S4_23  m4_23 d23  Sel_4 0 switch1 OFF

S5_0   m5_0  d0   Sel_5 0 switch1 OFF
S5_1   m5_1  d1   Sel_5 0 switch1 OFF
S5_2   m5_2  d2   Sel_5 0 switch1 OFF
S5_3   m5_3  d3   Sel_5 0 switch1 OFF
S5_4   m5_4  d4   Sel_5 0 switch1 OFF
S5_5   m5_5  d5   Sel_5 0 switch1 OFF
S5_6   m5_6  d6   Sel_5 0 switch1 OFF
S5_7   m5_7  d7   Sel_5 0 switch1 OFF
S5_8   m5_8  d8   Sel_5 0 switch1 OFF
S5_9   m5_9  d9   Sel_5 0 switch1 OFF
S5_10  m5_10 d10  Sel_5 0 switch1 OFF
S5_11  m5_11 d11  Sel_5 0 switch1 OFF
S5_12  m5_12 d12  Sel_5 0 switch1 OFF
S5_13  m5_13 d13  Sel_5 0 switch1 OFF
S5_14  m5_14 d14  Sel_5 0 switch1 OFF
S5_15  m5_15 d15  Sel_5 0 switch1 OFF
S5_16  m5_16 d16  Sel_5 0 switch1 OFF
S5_17  m5_17 d17  Sel_5 0 switch1 OFF
S5_18  m5_18 d18  Sel_5 0 switch1 OFF
S5_19  m5_19 d19  Sel_5 0 switch1 OFF
S5_20  m5_20 d20  Sel_5 0 switch1 OFF
S5_21  m5_21 d21  Sel_5 0 switch1 OFF
S5_22  m5_22 d22  Sel_5 0 switch1 OFF
S5_23  m5_23 d23  Sel_5 0 switch1 OFF

S6_0   m6_0  d0   Sel_6 0 switch1 OFF
S6_1   m6_1  d1   Sel_6 0 switch1 OFF
S6_2   m6_2  d2   Sel_6 0 switch1 OFF
S6_3   m6_3  d3   Sel_6 0 switch1 OFF
S6_4   m6_4  d4   Sel_6 0 switch1 OFF
S6_5   m6_5  d5   Sel_6 0 switch1 OFF
S6_6   m6_6  d6   Sel_6 0 switch1 OFF
S6_7   m6_7  d7   Sel_6 0 switch1 OFF
S6_8   m6_8  d8   Sel_6 0 switch1 OFF
S6_9   m6_9  d9   Sel_6 0 switch1 OFF
S6_10  m6_10 d10  Sel_6 0 switch1 OFF
S6_11  m6_11 d11  Sel_6 0 switch1 OFF
S6_12  m6_12 d12  Sel_6 0 switch1 OFF
S6_13  m6_13 d13  Sel_6 0 switch1 OFF
S6_14  m6_14 d14  Sel_6 0 switch1 OFF
S6_15  m6_15 d15  Sel_6 0 switch1 OFF
S6_16  m6_16 d16  Sel_6 0 switch1 OFF
S6_17  m6_17 d17  Sel_6 0 switch1 OFF
S6_18  m6_18 d18  Sel_6 0 switch1 OFF
S6_19  m6_19 d19  Sel_6 0 switch1 OFF
S6_20  m6_20 d20  Sel_6 0 switch1 OFF
S6_21  m6_21 d21  Sel_6 0 switch1 OFF
S6_22  m6_22 d22  Sel_6 0 switch1 OFF
S6_23  m6_23 d23  Sel_6 0 switch1 OFF

S7_0   m7_0  d0   Sel_7 0 switch1 OFF
S7_1   m7_1  d1   Sel_7 0 switch1 OFF
S7_2   m7_2  d2   Sel_7 0 switch1 OFF
S7_3   m7_3  d3   Sel_7 0 switch1 OFF
S7_4   m7_4  d4   Sel_7 0 switch1 OFF
S7_5   m7_5  d5   Sel_7 0 switch1 OFF
S7_6   m7_6  d6   Sel_7 0 switch1 OFF
S7_7   m7_7  d7   Sel_7 0 switch1 OFF
S7_8   m7_8  d8   Sel_7 0 switch1 OFF
S7_9   m7_9  d9   Sel_7 0 switch1 OFF
S7_10  m7_10 d10  Sel_7 0 switch1 OFF
S7_11  m7_11 d11  Sel_7 0 switch1 OFF
S7_12  m7_12 d12  Sel_7 0 switch1 OFF
S7_13  m7_13 d13  Sel_7 0 switch1 OFF
S7_14  m7_14 d14  Sel_7 0 switch1 OFF
S7_15  m7_15 d15  Sel_7 0 switch1 OFF
S7_16  m7_16 d16  Sel_7 0 switch1 OFF
S7_17  m7_17 d17  Sel_7 0 switch1 OFF
S7_18  m7_18 d18  Sel_7 0 switch1 OFF
S7_19  m7_19 d19  Sel_7 0 switch1 OFF
S7_20  m7_20 d20  Sel_7 0 switch1 OFF
S7_21  m7_21 d21  Sel_7 0 switch1 OFF
S7_22  m7_22 d22  Sel_7 0 switch1 OFF
S7_23  m7_23 d23  Sel_7 0 switch1 OFF

S8_0   m8_0  d0   Sel_8 0 switch1 OFF
S8_1   m8_1  d1   Sel_8 0 switch1 OFF
S8_2   m8_2  d2   Sel_8 0 switch1 OFF
S8_3   m8_3  d3   Sel_8 0 switch1 OFF
S8_4   m8_4  d4   Sel_8 0 switch1 OFF
S8_5   m8_5  d5   Sel_8 0 switch1 OFF
S8_6   m8_6  d6   Sel_8 0 switch1 OFF
S8_7   m8_7  d7   Sel_8 0 switch1 OFF
S8_8   m8_8  d8   Sel_8 0 switch1 OFF
S8_9   m8_9  d9   Sel_8 0 switch1 OFF
S8_10  m8_10 d10  Sel_8 0 switch1 OFF
S8_11  m8_11 d11  Sel_8 0 switch1 OFF
S8_12  m8_12 d12  Sel_8 0 switch1 OFF
S8_13  m8_13 d13  Sel_8 0 switch1 OFF
S8_14  m8_14 d14  Sel_8 0 switch1 OFF
S8_15  m8_15 d15  Sel_8 0 switch1 OFF
S8_16  m8_16 d16  Sel_8 0 switch1 OFF
S8_17  m8_17 d17  Sel_8 0 switch1 OFF
S8_18  m8_18 d18  Sel_8 0 switch1 OFF
S8_19  m8_19 d19  Sel_8 0 switch1 OFF
S8_20  m8_20 d20  Sel_8 0 switch1 OFF
S8_21  m8_21 d21  Sel_8 0 switch1 OFF
S8_22  m8_22 d22  Sel_8 0 switch1 OFF
S8_23  m8_23 d23  Sel_8 0 switch1 OFF

S9_0   m9_0  d0   Sel_9 0 switch1 OFF
S9_1   m9_1  d1   Sel_9 0 switch1 OFF
S9_2   m9_2  d2   Sel_9 0 switch1 OFF
S9_3   m9_3  d3   Sel_9 0 switch1 OFF
S9_4   m9_4  d4   Sel_9 0 switch1 OFF
S9_5   m9_5  d5   Sel_9 0 switch1 OFF
S9_6   m9_6  d6   Sel_9 0 switch1 OFF
S9_7   m9_7  d7   Sel_9 0 switch1 OFF
S9_8   m9_8  d8   Sel_9 0 switch1 OFF
S9_9   m9_9  d9   Sel_9 0 switch1 OFF
S9_10  m9_10 d10  Sel_9 0 switch1 OFF
S9_11  m9_11 d11  Sel_9 0 switch1 OFF
S9_12  m9_12 d12  Sel_9 0 switch1 OFF
S9_13  m9_13 d13  Sel_9 0 switch1 OFF
S9_14  m9_14 d14  Sel_9 0 switch1 OFF
S9_15  m9_15 d15  Sel_9 0 switch1 OFF
S9_16  m9_16 d16  Sel_9 0 switch1 OFF
S9_17  m9_17 d17  Sel_9 0 switch1 OFF
S9_18  m9_18 d18  Sel_9 0 switch1 OFF
S9_19  m9_19 d19  Sel_9 0 switch1 OFF
S9_20  m9_20 d20  Sel_9 0 switch1 OFF
S9_21  m9_21 d21  Sel_9 0 switch1 OFF
S9_22  m9_22 d22  Sel_9 0 switch1 OFF
S9_23  m9_23 d23  Sel_9 0 switch1 OFF

S10_0   m10_0  d0   Sel_10 0 switch1 OFF
S10_1   m10_1  d1   Sel_10 0 switch1 OFF
S10_2   m10_2  d2   Sel_10 0 switch1 OFF
S10_3   m10_3  d3   Sel_10 0 switch1 OFF
S10_4   m10_4  d4   Sel_10 0 switch1 OFF
S10_5   m10_5  d5   Sel_10 0 switch1 OFF
S10_6   m10_6  d6   Sel_10 0 switch1 OFF
S10_7   m10_7  d7   Sel_10 0 switch1 OFF
S10_8   m10_8  d8   Sel_10 0 switch1 OFF
S10_9   m10_9  d9   Sel_10 0 switch1 OFF
S10_10  m10_10 d10  Sel_10 0 switch1 OFF
S10_11  m10_11 d11  Sel_10 0 switch1 OFF
S10_12  m10_12 d12  Sel_10 0 switch1 OFF
S10_13  m10_13 d13  Sel_10 0 switch1 OFF
S10_14  m10_14 d14  Sel_10 0 switch1 OFF
S10_15  m10_15 d15  Sel_10 0 switch1 OFF
S10_16  m10_16 d16  Sel_10 0 switch1 OFF
S10_17  m10_17 d17  Sel_10 0 switch1 OFF
S10_18  m10_18 d18  Sel_10 0 switch1 OFF
S10_19  m10_19 d19  Sel_10 0 switch1 OFF
S10_20  m10_20 d20  Sel_10 0 switch1 OFF
S10_21  m10_21 d21  Sel_10 0 switch1 OFF
S10_22  m10_22 d22  Sel_10 0 switch1 OFF
S10_23  m10_23 d23  Sel_10 0 switch1 OFF

Vm1_0  m1_0  0 0
Vm1_1  m1_1  0 3.3
Vm1_2  m1_2  0 0
Vm1_3  m1_3  0 3.3
Vm1_4  m1_4  0 0
Vm1_5  m1_5  0 3.3
Vm1_6  m1_6  0 0
Vm1_7  m1_7  0 3.3
Vm1_8  m1_8  0 0
Vm1_9  m1_9  0 3.3
Vm1_10 m1_10 0 0
Vm1_11 m1_11 0 3.3
Vm1_12 m1_12 0 0
Vm1_13 m1_13 0 3.3
Vm1_14 m1_14 0 0
Vm1_15 m1_15 0 3.3
Vm1_16 m1_16 0 0
Vm1_17 m1_17 0 0
Vm1_18 m1_18 0 0
Vm1_19 m1_19 0 0
Vm1_20 m1_20 0 0
Vm1_21 m1_21 0 0
Vm1_22 m1_22 0 0
Vm1_23 m1_23 0 0

* 1) !c!d!e 2) !ac!d  3) ade  4)!bc!e  5)!a!b!c  6) abd  7) ab!c 8)!bc!d  9)!abce 

*!c!d!e
Vm2_0  m2_0  0  0
Vm2_1  m2_1  0  3.3  
Vm2_2  m2_2  0  0  
Vm2_3  m2_3  0  3.3
Vm2_4  m2_4  0  3.3  
Vm2_5  m2_5  0  0  
Vm2_6  m2_6  0  3.3
Vm2_7  m2_7  0  0
Vm2_8  m2_8  0  3.3  
Vm2_9  m2_9  0  0
Vm2_10 m2_10 0  0  
Vm2_11 m2_11 0  3.3
Vm2_12 m2_12 0  0  
Vm2_13 m2_13 0  3.3
Vm2_14 m2_14 0  3.3  
Vm2_15 m2_15 0  3.3
Vm2_16 m2_16 0  0
Vm2_17 m2_17 0  0  
Vm2_18 m2_18 0  0  
Vm2_19 m2_19 0  3.3  
Vm2_20 m2_20 0  0  
Vm2_21 m2_21 0  0  
Vm2_22 m2_22 0  0  
Vm2_23 m2_23 0  0 

*!ac!d 
Vm3_0  m3_0  0  3.3
Vm3_1  m3_1  0  0 
Vm3_2  m3_2  0  0 
Vm3_3  m3_3  0  3.3
Vm3_4  m3_4  0  0 
Vm3_5  m3_5  0  0 
Vm3_6  m3_6  0  3.3
Vm3_7  m3_7  0  0 
Vm3_8  m3_8  0  0 
Vm3_9  m3_9  0  3.3
Vm3_10 m3_10 0  0 
Vm3_11 m3_11 0  3.3
Vm3_12 m3_12 0  0 
Vm3_13 m3_13 0  3.3
Vm3_14 m3_14 0  3.3
Vm3_15 m3_15 0  3.3
Vm3_16 m3_16 0  3.3
Vm3_17 m3_17 0  0 
Vm3_18 m3_18 0  0 
Vm3_19 m3_19 0  3.3
Vm3_20 m3_20 0  0 
Vm3_21 m3_21 0  0 
Vm3_22 m3_22 0  0 
Vm3_23 m3_23 0  0 

* ade
Vm4_0  m4_0  0  0 
Vm4_1  m4_1  0  0 
Vm4_2  m4_2  0  0 
Vm4_3  m4_3  0  3.3 
Vm4_4  m4_4  0  0
Vm4_5  m4_5  0  3.3
Vm4_6  m4_6  0  0  
Vm4_7  m4_7  0  0
Vm4_8  m4_8  0  0
Vm4_9  m4_9  0  0  
Vm4_10 m4_10 0  0
Vm4_11 m4_11 0  3.3 
Vm4_12 m4_12 0  0
Vm4_13 m4_13 0  3.3 
Vm4_14 m4_14 0  3.3 
Vm4_15 m4_15 0  3.3 
Vm4_16 m4_16 0  3.3 
Vm4_17 m4_17 0  3.3
Vm4_18 m4_18 0  0
Vm4_19 m4_19 0  3.3 
Vm4_20 m4_20 0  0
Vm4_21 m4_21 0  0
Vm4_22 m4_22 0  0
Vm4_23 m4_23 0  0

*!bc!e
Vm5_0  m5_0  0  0
Vm5_1  m5_1  0  3.3 
Vm5_2  m5_2  0  3.3 
Vm5_3  m5_3  0  0
Vm5_4  m5_4  0  0
Vm5_5  m5_5  0  0
Vm5_6  m5_6  0  0 
Vm5_7  m5_7  0  3.3
Vm5_8  m5_8  0  3.3
Vm5_9  m5_9  0  0 
Vm5_10 m5_10 0  0
Vm5_11 m5_11 0  3.3  
Vm5_12 m5_12 0  0
Vm5_13 m5_13 0  3.3  
Vm5_14 m5_14 0  3.3
Vm5_15 m5_15 0  3.3  
Vm5_16 m5_16 0  3.3 
Vm5_17 m5_17 0  0
Vm5_18 m5_18 0  0
Vm5_19 m5_19 0  3.3
Vm5_20 m5_20 0  0
Vm5_21 m5_21 0  0
Vm5_22 m5_22 0  0
Vm5_23 m5_23 0  0

*!a!b!c
Vm6_0  m6_0  0  3.3
Vm6_1  m6_1  0  0
Vm6_2  m6_2  0  3.3
Vm6_3  m6_3  0  0
Vm6_4  m6_4  0  3.3
Vm6_5  m6_5  0  0
Vm6_6  m6_6  0  0
Vm6_7  m6_7  0  3.3
Vm6_8  m6_8  0  0
Vm6_9  m6_9  0  3.3
Vm6_10 m6_10 0  0
Vm6_11 m6_11 0  3.3  
Vm6_12 m6_12 0  0
Vm6_13 m6_13 0  3.3  
Vm6_14 m6_14 0  3.3
Vm6_15 m6_15 0  3.3  
Vm6_16 m6_16 0  0  
Vm6_17 m6_17 0  0
Vm6_18 m6_18 0  0
Vm6_19 m6_19 0  3.3
Vm6_20 m6_20 0  0
Vm6_21 m6_21 0  0
Vm6_22 m6_22 0  0
Vm6_23 m6_23 0  0

* abd
Vm7_0  m7_0  0  0
Vm7_1  m7_1  0  0
Vm7_2  m7_2  0  0
Vm7_3  m7_3  0  0
Vm7_4  m7_4  0  0
Vm7_5  m7_5  0  3.3
Vm7_6  m7_6  0  0
Vm7_7  m7_7  0  0
Vm7_8  m7_8  0  0
Vm7_9  m7_9  0  3.3
Vm7_10 m7_10 0  0
Vm7_11 m7_11 0  3.3  
Vm7_12 m7_12 0  0
Vm7_13 m7_13 0  3.3  
Vm7_14 m7_14 0  3.3
Vm7_15 m7_15 0  3.3  
Vm7_16 m7_16 0  3.3 
Vm7_17 m7_17 0  3.3
Vm7_18 m7_18 0  0
Vm7_19 m7_19 0  3.3
Vm7_20 m7_20 0  0
Vm7_21 m7_21 0  0
Vm7_22 m7_22 0  0
Vm7_23 m7_23 0  0

* ab!c
Vm8_0  m8_0  0  0
Vm8_1  m8_1  0  0
Vm8_2  m8_2  0  0
Vm8_3  m8_3  0  0
Vm8_4  m8_4  0  3.3
Vm8_5  m8_5  0  0
Vm8_6  m8_6  0  0
Vm8_7  m8_7  0  3.3
Vm8_8  m8_8  0  0
Vm8_9  m8_9  0  3.3
Vm8_10 m8_10 0  0
Vm8_11 m8_11 0  3.3 
Vm8_12 m8_12 0  0
Vm8_13 m8_13 0  3.3 
Vm8_14 m8_14 0  3.3
Vm8_15 m8_15 0  3.3 
Vm8_16 m8_16 0  0  
Vm8_17 m8_17 0  3.3
Vm8_18 m8_18 0  0
Vm8_19 m8_19 0  3.3
Vm8_20 m8_20 0  0
Vm8_21 m8_21 0  0
Vm8_22 m8_22 0  0
Vm8_23 m8_23 0  0

* !bc!d
Vm9_0  m9_0   0  0
Vm9_1  m9_1   0  3.3
Vm9_2  m9_2   0  3.3
Vm9_3  m9_3   0  0
Vm9_4  m9_4   0  0
Vm9_5  m9_5   0  0
Vm9_6  m9_6   0  3.3
Vm9_7  m9_7   0  0
Vm9_8  m9_8   0  0
Vm9_9  m9_9   0  3.3
Vm9_10 m9_10  0  0
Vm9_11 m9_11  0  3.3 
Vm9_12 m9_12  0  0
Vm9_13 m9_13  0  3.3 
Vm9_14 m9_14  0  3.3
Vm9_15 m9_15  0  3.3 
Vm9_16 m9_16  0  3.3
Vm9_17 m9_17  0  0
Vm9_18 m9_18  0  0
Vm9_19 m9_19  0  3.3
Vm9_20 m9_20  0  0
Vm9_21 m9_21  0  0
Vm9_22 m9_22  0  0
Vm9_23 m9_23  0  0

*!abce
Vm10_0   m10_0   0  3.3
Vm10_1   m10_1   0  0
Vm10_2   m10_2   0  0
Vm10_3   m10_3   0  0 
Vm10_4   m10_4   0  0
Vm10_5   m10_5   0  0 
Vm10_6   m10_6   0  0
Vm10_7   m10_7   0  3.3
Vm10_8   m10_8   0  0 
Vm10_9   m10_9   0  0
Vm10_10  m10_10  0  0 
Vm10_11  m10_11  0  3.3 
Vm10_12  m10_12  0  0 
Vm10_13  m10_13  0  3.3 
Vm10_14  m10_14  0  3.3
Vm10_15  m10_15  0  3.3 
Vm10_16  m10_16  0  3.3
Vm10_17  m10_17  0  3.3
Vm10_18  m10_18  0  0 
Vm10_19  m10_19  0  3.3
Vm10_20  m10_20  0  0 
Vm10_21  m10_21  0  0 
Vm10_22  m10_22  0  0 
Vm10_23  m10_23  0  0 

c0  d0  0  1e-12
c23 d23 0  1e-12

.model switch1 sw vt=0.5 ron=10 roff=1e9

.ends MEMORIA_PROGRAMA
