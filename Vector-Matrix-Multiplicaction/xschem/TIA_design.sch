v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -440 -230 -440 -190 {
lab=Vo}
N -460 -110 -440 -110 {
lab=Vss}
N -460 -310 -440 -310 {
lab=Vo}
N -520 -380 -480 -380 {
lab=#net1}
N -520 -160 -480 -160 {
lab=#net1}
N -550 -160 -520 -160 {
lab=#net1}
N -620 -160 -600 -160 {
lab=#net1}
N -620 -230 -620 -160 {
lab=#net1}
N -570 -380 -520 -380 {
lab=#net1}
N -440 -310 -440 -230 {
lab=Vo}
N -620 -310 -620 -230 {
lab=#net1}
N -440 -330 -440 -310 {
lab=Vo}
N -620 -330 -620 -310 {
lab=#net1}
N -620 -380 -620 -340 {
lab=#net1}
N -620 -340 -620 -330 {
lab=#net1}
N -440 -350 -440 -330 {
lab=Vo}
N -440 -380 -430 -380 {
lab=Vdd}
N -430 -410 -430 -380 {
lab=Vdd}
N -440 -160 -430 -160 {
lab=Vss}
N -430 -160 -430 -130 {
lab=Vss}
N -440 -130 -430 -130 {
lab=Vss}
N -440 -130 -440 -110 {
lab=Vss}
N -440 -310 -400 -310 {
lab=Vo}
N -500 -440 -440 -440 {
lab=Vdd}
N -440 -440 -440 -420 {
lab=Vdd}
N -500 -110 -460 -110 {
lab=Vss}
N -440 -410 -430 -410 {
lab=Vdd}
N -600 -160 -550 -160 {
lab=#net1}
N -620 -380 -570 -380 {
lab=#net1}
N -660 -310 -620 -310 {
lab=#net1}
N -620 -310 -600 -310 {
lab=#net1}
N -540 -310 -520 -310 {
lab=#net1}
N -440 -420 -440 -410 {
lab=Vdd}
N -600 -310 -540 -310 {
lab=#net1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -460 -380 0 0 {name=Mp
L=\{L\}
W=\{Wp\}
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -460 -160 0 0 {name=Mn
L=\{L\}
W=\{Wn\}
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
C {devices/code_shown.sym} -340 -380 0 0 {name=CODE only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt

.param Vdd=2.5
.param Rf=5000
.param L=1
.param Wn=5
.param Wp=Wn*3

.control
dc Ii -0.3m 0.3m 1u
plot v(Vo)
plot i(Vdd) i(Vss)
.endc

.save all
"}
C {devices/vsource.sym} -530 -440 1 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {devices/gnd.sym} -560 -440 1 0 {name=l5 lab=GND}
C {devices/vsource.sym} -530 -110 1 0 {name=Vss value=\{-Vdd\} savecurrent=false}
C {devices/isource.sym} -660 -280 2 0 {name=Ii value=0.3m}
C {devices/gnd.sym} -660 -250 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -400 -310 2 0 {name=p2 sig_type=std_logic lab=Vo}
C {devices/gnd.sym} -560 -110 1 0 {name=l6 lab=GND}
C {sky130_fd_pr/res_generic_l1.sym} -490 -310 1 0 {name=Rf
W=48.8
L=\{4*Rf\}
model=res_generic_l1
mult=1}
C {devices/lab_pin.sym} -440 -440 2 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -440 -110 2 0 {name=p3 sig_type=std_logic lab=Vss}
