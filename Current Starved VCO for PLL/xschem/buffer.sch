v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {} 300 10 0 0 0.4 0.4 {}
T {} 440 -130 0 0 0.4 0.4 {}
T {} 430 100 0 0 0.4 0.4 {}
T {} 620 -130 0 0 0.4 0.4 {}
N 270 0 330 0 {
lab=Vin}
N 730 0 760 0 {
lab=Vout}
N 410 -10 410 20 {
lab=#net1}
N 410 -20 410 -10 {
lab=#net1}
N 410 -100 410 -80 {
lab=Vdd}
N 410 -50 450 -50 {
lab=Vdd}
N 410 80 410 100 {
lab=Vss}
N 410 50 450 50 {
lab=Vss}
N 350 -50 370 -50 {
lab=Vin}
N 350 -50 350 50 {
lab=Vin}
N 350 50 370 50 {
lab=Vin}
N 330 0 350 0 {
lab=Vin}
N 450 -50 480 -50 {
lab=Vdd}
N 480 -90 480 -50 {
lab=Vdd}
N 410 -90 480 -90 {
lab=Vdd}
N 450 50 480 50 {
lab=Vss}
N 480 50 480 90 {
lab=Vss}
N 470 90 480 90 {
lab=Vss}
N 410 90 470 90 {
lab=Vss}
N 590 -10 590 20 {
lab=Vout}
N 590 -20 590 -10 {
lab=Vout}
N 590 -100 590 -80 {
lab=Vdd}
N 590 -50 630 -50 {
lab=Vdd}
N 590 80 590 100 {
lab=Vss}
N 590 50 630 50 {
lab=Vss}
N 530 -50 550 -50 {
lab=#net1}
N 530 -50 530 50 {
lab=#net1}
N 530 50 550 50 {
lab=#net1}
N 630 -50 660 -50 {
lab=Vdd}
N 660 -90 660 -50 {
lab=Vdd}
N 590 -90 660 -90 {
lab=Vdd}
N 630 50 660 50 {
lab=Vss}
N 660 50 660 90 {
lab=Vss}
N 650 90 660 90 {
lab=Vss}
N 590 90 650 90 {
lab=Vss}
N 590 0 730 0 {
lab=Vout}
N 410 0 530 0 {
lab=#net1}
N 410 100 410 110 {
lab=Vss}
N 410 110 590 110 {
lab=Vss}
N 590 100 590 110 {
lab=Vss}
N 410 110 410 130 {
lab=Vss}
N 590 -110 590 -100 {
lab=Vdd}
N 410 -110 590 -110 {
lab=Vdd}
N 410 -110 410 -100 {
lab=Vdd}
N 410 -120 410 -110 {
lab=Vdd}
C {devices/opin.sym} 760 0 0 0 {name=p1 lab=Vout}
C {devices/ipin.sym} 270 0 0 0 {name=p2 lab=Vin}
C {devices/iopin.sym} 410 130 1 0 {name=p7 lab=Vss}
C {devices/iopin.sym} 410 -120 3 0 {name=p3 lab=Vdd}
C {sky130_fd_pr/pfet_01v8.sym} 390 -50 0 0 {name=M2
L=0.15
W=4
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
C {sky130_fd_pr/pfet_01v8.sym} 570 -50 0 0 {name=M4
L=0.15
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 390 50 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 570 50 0 0 {name=M3
L=0.15
W=1
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
