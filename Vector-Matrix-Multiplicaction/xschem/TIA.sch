v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 330 160 330 200 {
lab=Out}
N 330 260 330 280 {
lab=Vss}
N 330 -40 330 -20 {
lab=Vdd}
N 330 80 410 80 {
lab=Out}
N 160 80 190 80 {
lab=In}
N 310 80 330 80 {
lab=Out}
N 250 10 290 10 {
lab=In}
N 250 230 290 230 {
lab=In}
N 220 80 250 80 {
lab=In}
N 190 80 220 80 {
lab=In}
N 220 230 250 230 {
lab=In}
N 200 230 220 230 {
lab=In}
N 200 160 200 230 {
lab=In}
N 200 10 250 10 {
lab=In}
N 330 80 330 160 {
lab=Out}
N 200 80 200 160 {
lab=In}
N 330 60 330 80 {
lab=Out}
N 200 60 200 80 {
lab=In}
N 200 10 200 50 {
lab=In}
N 200 50 200 60 {
lab=In}
N 330 40 330 60 {
lab=Out}
N 330 10 340 10 {
lab=Vdd}
N 340 -20 340 10 {
lab=Vdd}
N 330 -20 340 -20 {
lab=Vdd}
N 330 230 340 230 {
lab=Vss}
N 340 230 340 260 {
lab=Vss}
N 330 260 340 260 {
lab=Vss}
C {devices/title.sym} -30 -190 0 0 {name=l2 author="Pablo Jimenez"}
C {devices/ipin.sym} 160 80 0 0 {name=p1 lab=In}
C {devices/opin.sym} 410 80 0 0 {name=p2 lab=Out}
C {devices/iopin.sym} 330 -40 2 0 {name=p3 lab=Vdd}
C {devices/iopin.sym} 330 280 2 0 {name=p4 lab=Vss}
C {sky130_fd_pr/res_generic_l1.sym} 280 80 1 0 {name=Rf1
W=48.8
L=20000
model=res_generic_l1
mult=1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 310 10 0 0 {name=Mp
L=1
W=15
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 310 230 0 0 {name=Mn
L=1
W=5
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
