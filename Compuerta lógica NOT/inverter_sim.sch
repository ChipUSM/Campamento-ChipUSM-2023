v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -40 -260 -30 {
lab=VDD}
N -260 30 -260 40 {
lab=GND}
N 140 10 140 20 {
lab=GND}
N 140 -40 140 -30 {
lab=VDD}
N 140 -10 220 -10 {
lab=VOUT}
N 190 -10 190 60 {
lab=VOUT}
C {/foss/designs/Inverter.sym} -10 -10 0 0 {name=x1}
C {devices/vsource.sym} -260 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -260 40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 140 20 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -260 -40 0 0 {name=l3 lab=VDD}
C {devices/vdd.sym} 140 -40 0 0 {name=l4 lab=VDD}
C {devices/ipin.sym} -160 -30 0 0 {name=p1 lab=VIN}
C {devices/opin.sym} 220 -10 0 0 {name=p2 lab=VOUT}
C {devices/capa.sym} 190 90 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 190 120 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -390 -340 0 0 {name=NGSPICE only_toplevel=false value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
vin VIN 0 PULSE(0 1.8 1ns 0ns 0ns 2ns 4ns)
.control
save all
tran 0.01n 8n
plot V(VIN) v(VOUT)
meas tran tpHL_in FIND time WHEN v(VIN)=0.9 TD=0 FALL=1
meas tran tpHL_fin FIND time WHEN v(VOUT)=0.9 TD=0 RISE=1
print tpHL_fin - tpHL_in
.endc
"}
