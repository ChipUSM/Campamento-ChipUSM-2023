v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -930 -590 -920 -590 {
lab=y1}
N -980 -590 -930 -590 {
lab=y1}
C {/foss/designs/ProyectoChipUSM/TIA.sym} -1060 -590 0 0 {name=x1}
C {sky130_fd_pr/res_generic_l1.sym} -1170 -590 1 0 {name=R11
W=48.8
L=\{4*R11\}
model=res_generic_l1
mult=1}
C {devices/lab_pin.sym} -980 -590 1 0 {name=p4 sig_type=std_logic lab=y1}
C {devices/vsource.sym} -1245 -750 1 0 {name=Vdd value=2.5 savecurrent=false}
C {devices/vsource.sym} -1245 -675 1 0 {name=Vss value=-2.5 savecurrent=false}
C {devices/code_shown.sym} -790 -665 0 0 {name=CODE only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt
.param V1=0.1
.param R11=20000

.control
dc V1 0 1 1m
plot v(y1)
plot i(VR11)
.endc

.save all

"}
C {devices/vsource.sym} -1290 -590 1 0 {name=V1 value=\{V1\} savecurrent=false}
C {devices/gnd.sym} -1320 -590 1 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -1215 -750 2 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -1215 -675 2 0 {name=p2 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} -1090 -640 1 0 {name=p3 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -1090 -540 3 0 {name=p6 sig_type=std_logic lab=Vss}
C {devices/vsource.sym} -1230 -590 1 0 {name=VR11 value=0 savecurrent=false}
C {sky130_fd_pr/res_generic_l1.sym} -920 -560 0 0 {name=R1
W=1
L=100
model=res_generic_l1
mult=1}
C {devices/gnd.sym} -920 -530 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} -970 -560 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/gnd.sym} -970 -530 0 0 {name=l2 lab=GND}
