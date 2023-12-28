v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 -400 710 -400 {
lab=C1}
N 480 -400 480 -310 {
lab=C1}
N 480 -310 480 -300 {
lab=C1}
N 480 -300 540 -300 {
lab=C1}
N 480 -220 540 -220 {
lab=C2}
N 480 -220 480 -100 {
lab=C2}
N 730 -260 800 -260 {
lab=#net1}
N 710 -400 810 -400 {
lab=C1}
N 810 -400 810 -380 {
lab=C1}
N 810 -380 860 -380 {
lab=C1}
N 800 -260 810 -260 {
lab=#net1}
N 810 -300 810 -260 {
lab=#net1}
N 810 -300 860 -300 {
lab=#net1}
N 810 -260 810 -180 {
lab=#net1}
N 810 -180 860 -180 {
lab=#net1}
N 710 -100 860 -100 {
lab=C2}
N 1050 -340 1110 -340 {
lab=#net2}
N 1110 -340 1110 -280 {
lab=#net2}
N 1110 -280 1190 -280 {
lab=#net2}
N 1050 -140 1110 -140 {
lab=#net3}
N 1110 -200 1110 -140 {
lab=#net3}
N 1110 -200 1190 -200 {
lab=#net3}
N 1380 -240 1470 -240 {
lab=#net4}
N 1660 -240 1780 -240 {
lab=#net5}
N 0 -480 200 -480 {
lab=C1}
N 200 -480 200 -400 {
lab=C1}
N 200 -400 370 -400 {
lab=C1}
N 0 0 200 -0 {
lab=C2}
N 200 -100 200 -0 {
lab=C2}
N 200 -100 380 -100 {
lab=C2}
N 730 280 770 280 {
lab=#net6}
N 200 -0 200 240 {
lab=C2}
N 200 240 540 240 {
lab=C2}
N 0 580 200 580 {
lab=C3}
N 200 340 200 580 {
lab=C3}
N 200 320 200 340 {
lab=C3}
N 200 320 540 320 {
lab=C3}
N 960 280 2100 280 {
lab=b1}
N 2160 -140 2200 -140 {
lab=#net7}
N 1780 -240 1860 -240 {
lab=#net5}
N 1860 -240 1860 -180 {
lab=#net5}
N 1860 -180 1970 -180 {
lab=#net5}
N 380 -100 710 -100 {
lab=C2}
N 480 100 480 240 {
lab=C2}
N 480 100 1860 100 {
lab=C2}
N 1860 -100 1860 100 {
lab=C2}
N 1860 -100 1970 -100 {
lab=C2}
N 2100 280 2640 280 {
lab=b1}
N 2390 -140 2640 -140 {
lab=b0}
N 0 -240 40 -240 {
lab=VDD}
N 500 -270 540 -270 {
lab=VDD}
N 820 -350 860 -350 {
lab=VDD}
N 820 -150 860 -150 {
lab=VDD}
N 1150 -250 1190 -250 {
lab=VDD}
N 1430 -280 1470 -280 {
lab=VDD}
N 1930 -150 1970 -150 {
lab=VDD}
N 500 270 540 270 {
lab=VDD}
N 0 -190 40 -190 {
lab=GND}
N 500 -250 540 -250 {
lab=GND}
N 0 -190 40 -190 {
lab=GND}
N 820 -330 860 -330 {
lab=GND}
N 1150 -230 1190 -230 {
lab=GND}
N 820 -130 860 -130 {
lab=GND}
N 1430 -200 1470 -200 {
lab=GND}
N 1930 -130 1970 -130 {
lab=GND}
N 2160 -100 2200 -100 {
lab=GND}
N 730 320 770 320 {
lab=GND}
N 500 290 540 290 {
lab=GND}
N 730 240 770 240 {
lab=VDD}
N 2160 -180 2200 -180 {
lab=VDD}
N 2150 -140 2160 -140 {}
C {devices/ipin.sym} 0 -480 0 0 {name=p1 lab=C1}
C {devices/ipin.sym} 0 0 0 0 {name=p2 lab=C2}
C {devices/ipin.sym} 0 580 0 0 {name=p3 lab=C3}
C {devices/opin.sym} 2640 -140 0 0 {name=p4 lab=b0}
C {devices/opin.sym} 2640 280 0 0 {name=p5 lab=b1}
C {devices/ipin.sym} 0 -240 0 0 {name=p6 lab=VDD}
C {devices/lab_pin.sym} 40 -240 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -270 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 820 -350 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 820 -150 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1150 -250 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1430 -280 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1930 -150 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 270 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 0 -190 0 0 {name=p17 lab=GND}
C {devices/lab_pin.sym} 40 -190 0 1 {name=p18 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 500 -250 0 0 {name=p19 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 40 -190 0 1 {name=p20 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 820 -330 0 0 {name=p21 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1150 -230 0 0 {name=p22 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 820 -130 0 0 {name=p23 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1430 -200 0 0 {name=p24 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1930 -130 0 0 {name=p25 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 2160 -100 0 0 {name=p26 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 730 320 0 0 {name=p27 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 500 290 0 0 {name=p28 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 730 240 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2160 -180 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {/foss/designs/NOT.sym} 790 170 0 0 {name=x9}
C {/foss/designs/nand.sym} 540 280 0 0 {name=x5}
C {/foss/designs/nand.sym} 1970 -140 0 0 {name=x2}
C {/foss/designs/NOT.sym} 2220 -250 0 0 {name=x6}
C {/foss/designs/NOT.sym} 1490 -350 0 0 {name=x7}
C {/foss/designs/nand.sym} 1190 -240 0 0 {name=x4}
C {/foss/designs/nand.sym} 860 -340 0 0 {name=x3}
C {/foss/designs/nand.sym} 860 -140 0 0 {name=x8}
C {/foss/designs/nand.sym} 540 -260 0 0 {name=x1}
