v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -370 290 -350 {
lab=VDD}
N 240 140 240 160 {
lab=GND}
N 290 -350 290 -280 {
lab=VDD}
N 290 -280 320 -280 {
lab=VDD}
N 320 -280 320 -250 {
lab=VDD}
N 160 -280 290 -280 {
lab=VDD}
N 160 -280 160 -250 {
lab=VDD}
N 240 100 240 140 {
lab=GND}
N 240 -20 240 40 {
lab=#net1}
N -60 -100 160 -100 {
lab=In}
N 160 -50 200 -50 {
lab=In}
N 160 -100 160 -50 {
lab=In}
N 220 -220 280 -220 {
lab=In}
N 220 -220 220 -100 {
lab=In}
N 160 -100 220 -100 {
lab=In}
N -60 -20 80 -20 {
lab=In2}
N 80 -20 80 70 {
lab=In2}
N 80 70 200 70 {
lab=In2}
N 80 -220 80 -20 {
lab=In2}
N 80 -220 120 -220 {
lab=In2}
N 320 -190 320 -160 {
lab=Out}
N 160 -160 320 -160 {
lab=Out}
N 160 -190 160 -160 {
lab=Out}
N 320 -160 320 -80 {
lab=Out}
N 240 -80 320 -80 {
lab=Out}
N 320 -120 470 -120 {
lab=Out}
N 240 70 250 70 {
lab=GND}
N 250 70 250 100 {
lab=GND}
N 240 100 250 100 {
lab=GND}
N 240 -50 250 -50 {
lab=GND}
N 250 -50 250 70 {
lab=GND}
N 160 -220 170 -220 {
lab=VDD}
N 170 -250 170 -220 {
lab=VDD}
N 160 -250 170 -250 {
lab=VDD}
N 320 -220 330 -220 {
lab=VDD}
N 330 -250 330 -220 {
lab=VDD}
N 320 -250 330 -250 {
lab=VDD}
C {devices/ipin.sym} -60 -100 0 0 {name=p1 lab=In}
C {devices/iopin.sym} 290 -370 0 0 {name=p2 lab=VDD}
C {devices/opin.sym} 470 -120 0 0 {name=p3 lab=Out}
C {devices/ipin.sym} -60 -20 0 0 {name=p4 lab=In2}
C {devices/iopin.sym} 240 160 0 0 {name=p5 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 220 70 0 0 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 220 -50 0 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 140 -220 0 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 300 -220 0 0 {name=M4
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
