v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 -50 -30 -50 {
lab=#net1}
N -150 70 -30 70 {
lab=#net1}
N -150 -110 90 -110 {
lab=#net2}
N -350 -110 -150 -110 {
lab=#net2}
N -150 10 90 10 {
lab=#net3}
N -350 10 -150 10 {
lab=#net3}
N 90 -50 210 -50 {
lab=#net4}
N 90 70 210 70 {
lab=#net4}
N -30 -50 -30 70 {
lab=#net1}
N 210 -50 210 70 {
lab=#net4}
N -30 70 -30 140 {
lab=#net1}
N 210 70 210 140 {
lab=#net4}
C {/foss/designs/ProyectoChipUSM/TIA.sym} -30 220 1 0 {name=x1}
C {sky130_fd_pr/res_generic_l1.sym} -150 -80 2 0 {name=R11
W=48.8
L=\{4*R11\}
model=res_generic_l1
mult=1}
C {sky130_fd_pr/res_generic_l1.sym} 90 -80 2 0 {name=R12
W=48.8
L=\{4*R12\}
model=res_generic_l1
mult=1}
C {sky130_fd_pr/res_generic_l1.sym} -150 40 2 0 {name=R21
W=48.8
L=\{4*R21\}
model=res_generic_l1
mult=1}
C {sky130_fd_pr/res_generic_l1.sym} 90 40 2 0 {name=R22
W=48.8
L=\{4*R22\}
model=res_generic_l1
mult=1}
C {/foss/designs/ProyectoChipUSM/TIA.sym} 210 220 1 0 {name=x2
lab=y2}
C {devices/lab_pin.sym} -30 300 0 0 {name=p4 sig_type=std_logic lab=y1}
C {devices/lab_pin.sym} 210 300 0 0 {name=p5 sig_type=std_logic lab=y2}
C {devices/vsource.sym} -385 140 1 0 {name=Vdd value=2.5 savecurrent=false}
C {devices/vsource.sym} -385 215 1 0 {name=Vss value=-2.5 savecurrent=false}
C {devices/gnd.sym} -415 140 1 0 {name=l1 lab=GND}
C {devices/gnd.sym} -415 215 1 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 320 -85 0 0 {name=CODE only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt
.param V1=0.1
.param V2=0.1
.param R11=10000
.param R12=20000
.param R21=11000
.param R22=15000

.control
dc V1 0 1 1m
plot v(y1) v(y2)
.endc

.save all

"}
C {devices/vsource.sym} -380 -110 1 0 {name=V1 value=\{V1\} savecurrent=false}
C {devices/gnd.sym} -410 -110 1 0 {name=l3 lab=GND}
C {devices/vsource.sym} -380 10 1 0 {name=V2 value=\{V2\} savecurrent=false}
C {devices/gnd.sym} -410 10 1 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -355 140 2 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -355 215 2 0 {name=p2 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 20 190 2 0 {name=p3 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -80 190 0 0 {name=p6 sig_type=std_logic lab=Vss}
C {devices/lab_pin.sym} 260 190 2 0 {name=p7 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 160 190 0 0 {name=p8 sig_type=std_logic lab=Vss}
