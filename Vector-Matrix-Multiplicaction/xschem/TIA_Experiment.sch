v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} -770 -830 0 0 {name=CODE only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt

.param Vdd=2.5

.control
dc Ii -0.3m 0.3m 1u
plot v(Vo)
plot i(Vdd) i(Vss)
.endc

.save all
"}
C {devices/vsource.sym} -910 -790 2 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {devices/gnd.sym} -910 -820 2 0 {name=l1 lab=GND}
C {devices/vsource.sym} -910 -630 0 0 {name=Vss value=\{-Vdd\} savecurrent=false}
C {devices/isource.sym} -990 -710 3 0 {name=Ii value=0.3m}
C {devices/gnd.sym} -1020 -710 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} -910 -600 0 0 {name=l3 lab=GND}
C {/foss/designs/ProyectoChipUSM/TIA.sym} -880 -710 0 0 {name=x1}
C {devices/lab_pin.sym} -800 -710 2 0 {name=p1 sig_type=std_logic lab=Vo}
