v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -440 300 -370 {
lab=G1}
N 300 -520 300 -500 {
lab=#net1}
N 300 -520 530 -520 {
lab=#net1}
N 530 -520 530 -500 {
lab=#net1}
N 400 -540 400 -520 {
lab=#net1}
N 530 -440 530 -370 {
lab=G2}
N 460 -340 490 -340 {
lab=G2}
N 340 -400 340 -340 {
lab=G1}
N 300 -400 340 -400 {
lab=G1}
N 530 -310 530 -270 {
lab=VSS}
N 300 -270 530 -270 {
lab=VSS}
N 300 -310 300 -270 {
lab=VSS}
N 420 -270 420 -240 {
lab=VSS}
N 400 -620 400 -600 {
lab=VCC}
N 240 -470 260 -470 {
lab=MINUS}
N 570 -470 600 -470 {
lab=PLUS}
N 260 -340 300 -340 {
lab=VSS}
N 530 -340 610 -340 {
lab=VSS}
N 230 -340 260 -340 {
lab=VSS}
N 300 -470 380 -470 {
lab=VCC}
N 470 -470 540 -470 {
lab=VCC}
N 1030 -810 1030 -770 {
lab=VCC}
N 800 -600 990 -600 {
lab=#net2}
N 1030 -650 1030 -630 {
lab=#net3}
N 760 -570 760 -500 {
lab=#net2}
N 840 -430 840 -410 {
lab=VSS}
N 760 -540 840 -540 {
lab=#net2}
N 840 -600 840 -540 {
lab=#net2}
N 700 -600 760 -600 {
lab=VCC}
N 760 -640 760 -630 {
lab=#net3}
N 760 -640 1030 -640 {
lab=#net3}
N 840 -460 920 -460 {
lab=VSS}
N 730 -340 990 -340 {
lab=G2}
N 730 -390 730 -340 {
lab=G2}
N 730 -400 730 -390 {
lab=G2}
N 530 -400 730 -400 {
lab=G2}
N 1030 -570 1030 -370 {
lab=DIFFOUT}
N 1200 -470 1200 -330 {
lab=DIFFOUT}
N 1030 -470 1200 -470 {
lab=DIFFOUT}
N 1200 -470 1330 -470 {
lab=DIFFOUT}
N 1200 -300 1270 -300 {
lab=VSS}
N 1030 -340 1110 -340 {
lab=VSS}
N 530 -270 530 -240 {
lab=VSS}
N 530 -240 1200 -240 {
lab=VSS}
N 1200 -270 1200 -240 {
lab=VSS}
N 1030 -250 1030 -240 {
lab=VSS}
N 460 -380 460 -340 {
lab=G2}
N 460 -380 530 -380 {
lab=G2}
N 1030 -600 1110 -600 {
lab=VCC}
N 760 -500 840 -500 {
lab=#net2}
N 840 -500 840 -490 {
lab=#net2}
N 510 -690 590 -690 {
lab=VSS}
N 510 -790 590 -790 {
lab=VSS}
N 510 -760 510 -720 {
lab=#net4}
N 510 -860 510 -820 {
lab=G1}
N 510 -890 590 -890 {
lab=VCC}
N 510 -960 510 -920 {
lab=#net5}
N 510 -1060 510 -1020 {
lab=VCC}
N 440 -790 470 -790 {
lab=ADJ}
N 440 -890 440 -790 {
lab=ADJ}
N 440 -890 470 -890 {
lab=ADJ}
N 510 -830 640 -830 {
lab=G1}
C {devices/title.sym} 130 -40 0 0 {name=l1 author="Cristobal Cordova"}
C {devices/ipin.sym} 90 -500 0 0 {name=p1 lab=PLUS}
C {devices/ipin.sym} 90 -470 0 0 {name=p2 lab=MINUS}
C {devices/ipin.sym} 90 -360 0 0 {name=p3 lab=VCC}
C {devices/ipin.sym} 90 -330 0 0 {name=p4 lab=VSS}
C {devices/ipin.sym} 90 -430 0 0 {name=p5 lab=ENABLE_NO}
C {sky130_fd_pr/pfet3_01v8.sym} 380 -570 0 0 {name=M1
L=8
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 280 -470 0 0 {name=M2
L=2
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 550 -470 0 1 {name=M3
L=2
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 320 -340 0 1 {name=M4
L=4
W=2
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 510 -340 0 0 {name=M5
L=4
W=2
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 420 -240 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 -620 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 240 -470 0 0 {name=p9 sig_type=std_logic lab=MINUS}
C {devices/lab_pin.sym} 600 -470 0 1 {name=p10 sig_type=std_logic lab=PLUS}
C {devices/lab_pin.sym} 230 -340 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 -340 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -470 0 0 {name=p13 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 360 -570 0 0 {name=p15 sig_type=std_logic lab=ENABLE_NO}
C {sky130_fd_pr/pfet3_01v8.sym} 1010 -740 0 0 {name=M7
L=0.5
W=5
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 780 -600 0 1 {name=M8
L=4
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1010 -600 0 0 {name=M9
L=4
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 820 -460 0 0 {name=M10
L=4
W=2
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/ammeter.sym} 1030 -680 0 0 {name=V17 savecurrent=true}
C {devices/lab_pin.sym} 380 -470 0 1 {name=p16 sig_type=std_logic lab=VCC}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1010 -340 0 0 {name=M11
L=4
W=2
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1180 -300 0 0 {name=M12
L=0.5
W=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 840 -410 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1270 -300 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1160 -300 0 0 {name=p19 sig_type=std_logic lab=ENABLE_NO}
C {devices/lab_pin.sym} 1110 -340 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} 1030 -280 0 0 {name=V4 savecurrent=true}
C {devices/lab_pin.sym} 530 -380 0 1 {name=p21 sig_type=std_logic lab=G2}
C {devices/lab_pin.sym} 920 -460 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1110 -600 0 1 {name=p24 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 1030 -810 0 1 {name=p25 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 990 -740 0 0 {name=p26 sig_type=std_logic lab=ENABLE_NO}
C {devices/lab_pin.sym} 1330 -470 0 1 {name=p27 sig_type=std_logic lab=DIFFOUT}
C {devices/lab_pin.sym} 700 -600 0 0 {name=p28 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 800 -460 0 0 {name=p22 sig_type=std_logic lab=G1}
C {devices/capa.sym} 1110 -440 0 0 {name=C5
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1110 -410 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 90 -290 0 0 {name=p6 lab=ADJ}
C {devices/lab_pin.sym} 300 -400 0 0 {name=p14 sig_type=std_logic lab=G1}
C {devices/ipin.sym} 90 -250 0 0 {name=p29 lab=DIFFOUT}
C {sky130_fd_pr/pfet3_01v8.sym} 490 -990 0 0 {name=M6
L=8
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 490 -890 0 0 {name=M13
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 490 -790 0 0 {name=M14
L=1
W=0.5
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 490 -690 0 0 {name=M15
L=8
W=0.5
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 510 -660 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -690 0 0 {name=p31 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 590 -690 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 590 -790 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 640 -830 0 1 {name=p34 sig_type=std_logic lab=G1}
C {devices/lab_pin.sym} 440 -850 0 0 {name=p35 sig_type=std_logic lab=ADJ}
C {devices/lab_pin.sym} 590 -890 0 1 {name=p36 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 470 -990 0 0 {name=p37 sig_type=std_logic lab=ENABLE_NO}
C {devices/lab_pin.sym} 510 -1060 0 1 {name=p38 sig_type=std_logic lab=VCC}
