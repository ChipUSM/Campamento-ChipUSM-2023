v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {} -10 -110 0 0 0.4 0.4 {}
T {} 140 -250 0 0 0.4 0.4 {}
T {} 210 -110 0 0 0.4 0.4 {}
T {} 130 -20 0 0 0.4 0.4 {}
N 110 -130 110 -100 {
lab=Vout}
N 110 -140 110 -130 {
lab=Vout}
N 110 -220 110 -200 {
lab=Vdd}
N 110 -170 150 -170 {
lab=Vdd}
N 110 -40 110 -20 {
lab=Vss}
N 110 -70 150 -70 {
lab=Vss}
N 50 -170 70 -170 {
lab=Vin}
N 50 -170 50 -70 {
lab=Vin}
N 50 -70 70 -70 {
lab=Vin}
N 30 -120 50 -120 {
lab=Vin}
N 110 -120 200 -120 {
lab=Vout}
N 150 -170 180 -170 {
lab=Vdd}
N 180 -210 180 -170 {
lab=Vdd}
N 110 -210 180 -210 {
lab=Vdd}
N 150 -70 180 -70 {
lab=Vss}
N 180 -70 180 -30 {
lab=Vss}
N 170 -30 180 -30 {
lab=Vss}
N 110 -30 170 -30 {
lab=Vss}
C {sky130_fd_pr/nfet_01v8.sym} 90 -70 0 0 {name=M1
L=0.45
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} 90 -170 0 0 {name=M2
L=0.45
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
C {devices/iopin.sym} 110 -220 3 0 {name=p1 lab=Vdd}
C {devices/opin.sym} 200 -120 0 0 {name=p2 lab=Vout}
C {devices/iopin.sym} 110 -20 1 0 {name=p3 lab=Vss}
C {devices/ipin.sym} 30 -120 0 0 {name=p4 lab=Vin}
