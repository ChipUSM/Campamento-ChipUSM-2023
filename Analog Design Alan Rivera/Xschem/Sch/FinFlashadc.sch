v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -460 -820 -460 -770 {
lab=Vin}
N -640 -820 -640 -800 {
lab=#net1}
N -640 -820 -560 -820 {
lab=#net1}
N -460 -40 -320 -40 {
lab=Vin}
N -460 -300 -320 -300 {
lab=Vin}
N -460 -560 -320 -560 {
lab=Vin}
N -420 -820 -420 -800 {
lab=Vin}
N -460 -820 -420 -820 {
lab=Vin}
N -560 -500 -320 -500 {
lab=#net2}
N -560 -820 -560 -660 {
lab=#net1}
N -560 -600 -560 -510 {
lab=#net2}
N -560 -510 -560 -400 {
lab=#net2}
N -560 -340 -560 -270 {
lab=#net3}
N -560 -240 -320 -240 {
lab=#net3}
N -560 -80 -560 -20 {
lab=#net4}
N -560 -270 -560 -140 {
lab=#net3}
N -560 20 -320 20 {
lab=#net4}
N -560 -20 -560 120 {
lab=#net4}
N -80 -530 -20 -530 {
lab=#net5}
N -80 -270 -20 -270 {
lab=#net6}
N -80 -10 -20 -10 {
lab=#net7}
N -200 -80 -180 -80 {
lab=Vbias}
N -200 -80 -200 -60 {
lab=Vbias}
N -200 -340 -180 -340 {
lab=Vbias}
N -200 -340 -200 -320 {
lab=Vbias}
N -200 -600 -180 -600 {
lab=Vbias}
N -200 -600 -200 -580 {
lab=Vbias}
N -240 -600 -240 -580 {
lab=vdd}
N -240 -340 -240 -320 {
lab=vdd}
N -240 -80 -240 -60 {
lab=vdd}
N -240 40 -240 70 {
lab=GND}
N -240 -220 -240 -190 {
lab=GND}
N -240 -480 -240 -450 {
lab=GND}
N -640 -740 -640 480 {
lab=GND}
N -640 480 -640 530 {
lab=GND}
N -1300 460 -1300 480 {
lab=Vbias}
N -1210 460 -1210 480 {
lab=vdd}
N -1110 510 -1110 540 {
lab=GND}
N -560 180 -560 260 {
lab=GND}
N -640 260 -560 260 {
lab=GND}
N -20 -270 240 -270 {
lab=#net6}
N -20 -10 0 -10 {
lab=#net7}
N 0 -130 0 -10 {
lab=#net7}
N 0 -130 240 -130 {
lab=#net7}
N -20 -530 -0 -530 {
lab=#net5}
N -0 -530 0 -430 {
lab=#net5}
N 0 -430 240 -430 {
lab=#net5}
N 220 -330 240 -330 {
lab=vdd}
N 220 -210 240 -210 {
lab=GND}
N 560 -290 710 -290 {
lab=b0}
N 560 -250 710 -250 {
lab=b1}
N -260 -340 -240 -340 {
lab=vdd}
N -460 -770 -460 -40 {
lab=Vin}
C {devices/vsource.sym} -640 -770 0 0 {name=Vref value=5 savecurrent=false}
C {devices/lab_pin.sym} -460 -820 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} -420 -770 0 0 {name=Vin value="pulse(0 5 0 700n 100n 300n)" savecurrent=false}
C {devices/gnd.sym} -420 -740 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -180 -80 0 1 {name=p24 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} -180 -340 0 1 {name=p25 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} -180 -600 0 1 {name=p26 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} -240 -600 0 0 {name=p36 sig_type=std_logic lab=	vdd	}
C {devices/lab_pin.sym} 220 -330 0 0 {name=p37 sig_type=std_logic lab=	vdd	}
C {devices/lab_pin.sym} -240 -80 0 0 {name=p38 sig_type=std_logic lab=	vdd	}
C {devices/lab_pin.sym} -240 70 0 0 {name=p62 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 220 -210 0 0 {name=p63 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -240 -450 0 0 {name=p64 sig_type=std_logic lab=GND}
C {devices/vsource.sym} -1300 510 0 0 {name=V1 value=0.8 savecurrent=false}
C {devices/gnd.sym} -1300 540 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -1300 460 0 0 {name=p1 sig_type=std_logic lab=Vbias}
C {devices/gnd.sym} -1110 540 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -1110 510 0 0 {name=p2 sig_type=std_logic lab=GND}
C {devices/vsource.sym} -1210 510 0 0 {name=V2 value=5 savecurrent=false}
C {devices/gnd.sym} -1210 540 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -1210 460 0 0 {name=p5 sig_type=std_logic lab=	vdd	}
C {devices/gnd.sym} -640 530 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -1610 -1180 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
save all
*dc vin 0 5 0.05
tran 1n 3u
plot v(b0)
plot v(b1)


.endc
"}
C {devices/lab_pin.sym} 710 -290 0 1 {name=p3 sig_type=std_logic lab=b0}
C {devices/lab_pin.sym} 710 -250 0 1 {name=p6 sig_type=std_logic lab=b1}
C {devices/lab_pin.sym} -260 -340 0 0 {name=p7 sig_type=std_logic lab=	vdd	}
C {devices/lab_pin.sym} -240 -190 0 0 {name=p8 sig_type=std_logic lab=GND}
C {/foss/designs/2BITENCODER.sym} 400 -270 0 0 {name=x1}
C {/foss/designs/ComparadorFADC.sym} -170 -10 0 0 {name=x2}
C {/foss/designs/ComparadorFADC.sym} -170 -270 0 0 {name=x3}
C {/foss/designs/ComparadorFADC.sym} -170 -530 0 0 {name=x4}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} -560 -630 0 0 {name=R1
L=0.524
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} -560 -370 0 0 {name=R2
L=1.237
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} -560 -110 0 0 {name=R3
L=1.237
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} -560 150 0 0 {name=R4
L=0.524
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
