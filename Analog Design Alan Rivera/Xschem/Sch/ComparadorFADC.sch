v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -280 200 -220 {
lab=#net9}
N 240 -310 320 -310 {
lab=#net9}
N 200 -250 280 -250 {
lab=#net9}
N 280 -310 280 -250 {
lab=#net9}
N 200 -370 200 -340 {
lab=#net10}
N 200 -370 360 -370 {
lab=#net10}
N 360 -370 360 -340 {
lab=#net10}
N 360 -280 360 -220 {
lab=#net11}
N 360 -390 360 -370 {
lab=#net10}
N 200 -220 200 -200 {
lab=#net9}
N 360 -220 360 -200 {
lab=#net11}
N 200 -140 200 -120 {
lab=#net12}
N 200 -120 200 -110 {
lab=#net12}
N 200 -110 360 -110 {
lab=#net12}
N 360 -140 360 -110 {
lab=#net12}
N 290 -110 290 -90 {
lab=#net12}
N 160 -60 250 -60 {
lab=Vbias}
N 190 -310 200 -310 {
lab=#net10}
N 360 -310 370 -310 {
lab=#net10}
N 370 -340 370 -310 {
lab=#net10}
N 360 -340 370 -340 {
lab=#net10}
N 190 -340 190 -310 {
lab=#net10}
N 190 -340 200 -340 {
lab=#net10}
N 200 -170 210 -170 {
lab=#net12}
N 210 -170 210 -140 {
lab=#net12}
N 200 -140 210 -140 {
lab=#net12}
N 350 -170 360 -170 {
lab=#net12}
N 350 -170 350 -140 {
lab=#net12}
N 350 -140 360 -140 {
lab=#net12}
N 290 -30 290 -10 {
lab=GND}
N 290 -60 320 -60 {
lab=GND}
N 320 -60 320 -10 {
lab=GND}
N 120 -170 160 -170 {
lab=Vin}
N 400 -170 420 -170 {
lab=Vref}
N 360 -240 470 -240 {
lab=#net11}
N 360 -370 510 -370 {
lab=#net10}
N 510 -370 510 -270 {
lab=#net10}
N 510 -240 530 -240 {
lab=#net10}
N 530 -270 530 -240 {
lab=#net10}
N 510 -270 530 -270 {
lab=#net10}
N 510 -30 510 -10 {
lab=GND}
N 510 -210 510 -90 {
lab=Cout}
N 510 -160 640 -160 {
lab=Cout}
N 250 -70 250 -60 {
lab=Vbias}
N 250 -70 470 -70 {
lab=Vbias}
N 470 -70 470 -60 {
lab=Vbias}
N 510 -60 520 -60 {
lab=GND}
N 520 -60 520 -30 {
lab=GND}
N 510 -30 520 -30 {
lab=GND}
N 290 -10 320 -10 {
lab=GND}
N 320 -10 510 -10 {
lab=GND}
N 400 -10 400 10 {
lab=GND}
C {devices/ipin.sym} 120 -170 0 0 {name=p6 lab=Vin}
C {devices/opin.sym} 640 -160 0 0 {name=p8 lab=Cout}
C {devices/iopin.sym} 360 -390 2 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 420 -170 2 0 {name=p2 lab=Vref}
C {devices/iopin.sym} 400 10 1 0 {name=p3 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 180 -170 0 0 {name=M8
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 380 -170 0 1 {name=M9
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 340 -310 0 0 {name=M10
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 220 -310 0 1 {name=M11
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 270 -60 0 0 {name=M12
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 490 -240 0 0 {name=M13
L=0.5
W=9
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 490 -60 0 0 {name=M14
L=0.5
W=0.42
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
C {devices/iopin.sym} 160 -60 2 0 {name=p12 lab=Vbias}
