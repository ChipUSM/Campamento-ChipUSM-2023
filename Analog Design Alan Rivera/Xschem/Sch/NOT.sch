v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -280 -170 -260 -170 {
lab=Nin}
N -280 -170 -280 -70 {
lab=Nin}
N -280 -70 -260 -70 {
lab=Nin}
N -220 -230 -220 -200 {
lab=VDD}
N -220 -140 -220 -100 {
lab=Nout}
N -220 -40 -220 -20 {
lab=GND}
N -220 -120 -90 -120 {
lab=Nout}
N -330 -120 -280 -120 {
lab=Nin}
N -220 -170 -210 -170 {
lab=VDD}
N -210 -210 -210 -170 {
lab=VDD}
N -220 -210 -210 -210 {
lab=VDD}
N -220 -70 -210 -70 {
lab=GND}
N -210 -70 -210 -30 {
lab=GND}
N -220 -30 -210 -30 {
lab=GND}
C {devices/ipin.sym} -330 -120 0 0 {name=p3 lab=Nin}
C {devices/iopin.sym} -220 -230 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -220 -20 0 0 {name=p6 lab=GND}
C {devices/opin.sym} -90 -120 0 0 {name=p7 lab=Nout}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -240 -70 0 0 {name=M3
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -240 -170 0 0 {name=M5
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
