v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -530 450 -530 { lab=DIFFOUT_N}
N 730 -530 830 -530 { lab=ADJ}
N 530 -530 730 -530 { lab=ADJ}
C {/foss/designs/opamp/xschme_designs/Comparer.sym} 730 -290 0 0 {name=x1}
C {devices/title.sym} 160 -60 0 0 {name=l1 author="Cristobal Cordova"}
C {devices/lab_pin.sym} 580 -350 0 0 {name=p1 lab=PLUS}
C {devices/lab_pin.sym} 580 -330 0 0 {name=p2 lab=MINUS}
C {devices/lab_pin.sym} 580 -310 0 0 {name=p3 lab=ENABLE_NO}
C {devices/lab_pin.sym} 580 -290 0 0 {name=p4 lab=VCC}
C {devices/lab_pin.sym} 580 -270 0 0 {name=p5 lab=VSS}
C {devices/lab_pin.sym} 580 -250 0 0 {name=p6 lab=ADJ}
C {devices/lab_pin.sym} 580 -230 0 0 {name=p7 lab=DIFFOUT_N}
C {sky130_tests/passgate.sym} 490 -530 0 0 {name=x6 W_N=0.5 L_N=0.15 W_P=0.5 L_P=0.15 VCCBPIN=VCC VSSBPIN=VSS m=1}
C {devices/lab_pin.sym} 490 -500 0 0 {name=l34 sig_type=std_logic lab=START_N}
C {devices/lab_pin.sym} 490 -560 0 0 {name=l37 sig_type=std_logic lab=START}
C {devices/lab_pin.sym} 830 -530 0 1 {name=l255 lab=ADJ}
C {devices/lab_pin.sym} 600 -470 0 0 {name=l40 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_2.sym} 600 -500 0 0 {name=C1 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X }
C {devices/lab_pin.sym} 430 -530 0 0 {name=p9 lab=DIFFOUT_N}
C {sky130_tests/not.sym} 700 -690 0 0 {name=x2 m=1 VCCPIN=VCC VSSPIN=VSS W_N=1 L_N=0.15 W_P=2 L_P=0.15}
C {devices/lab_pin.sym} 660 -690 0 0 {name=p15 lab=START}
C {devices/lab_pin.sym} 740 -690 0 1 {name=p16 lab=START_N}
C {sky130_fd_pr/corner.sym} 60 -360 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/code.sym} 50 -520 0 0 {name=STIMULI 
only_toplevel=true
place=end
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
* .option SCALE=1e-6 
.option method=gear

* this experimental option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1 


.param VCCGAUSS = agauss(1.8, 0.05, 1)
.param VCC = 'VCCGAUSS'
** use following line to remove VCC variations
* .param VCC = 1.8

.param TEMPGAUSS = agauss(40, 30, 1)
.option temp = 'TEMPGAUSS'
** use following line to remove temperature variations
* .option temp = 25

*.include stimuli_tb_comparer.cir
.control
  option seed=9
  let run=0
  dowhile run <= 100
    save all
    tran 1n 4000n uic
    remzerovec
    write tb_comparer.raw
    set appendwrite
    reset
    let run = run + 1
  end
.endc
"}
