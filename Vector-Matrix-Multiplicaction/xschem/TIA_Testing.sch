v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} -180 -150 0 0 {name=CODE only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control

dc Ii 0 50u 1u
gaw i(Vdd) i(Vss) v(Vo)

.endc

.save all

"}
C {devices/isource.sym} 40 -290 2 0 {name=Ii value=25u}
C {devices/gnd.sym} 40 -260 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 90 -240 0 0 {name=Vss value=-2.5 savecurrent=true}
C {devices/gnd.sym} 90 -210 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 90 -400 2 0 {name=Vdd value=2.5 savecurrent=true}
C {devices/gnd.sym} 90 -430 2 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 190 -320 2 0 {name=p2 sig_type=std_logic lab=Vo}
C {/foss/designs/ProyectoChipUSM/TIA.sym} 350 -180 0 0 {name=x1}
