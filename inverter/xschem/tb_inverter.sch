v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 90 -360 890 40 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
y"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=/home/asic/workspace/magic-layout/inverter/ngspice/tb_inverter.raw
autoload=1
x2=40n}
N -60 -120 -60 -80 {lab=VDD}
N -180 -120 -60 -120 {lab=VDD}
N -170 -20 -90 -20 {lab=A}
N -0 -20 60 -20 {lab=Y}
N 0 -20 80 -20 {lab=Y}
C {inverter.sym} 60 0 0 0 {name=x1}
C {lab_pin.sym} 60 -20 2 0 {name=p1 sig_type=std_logic lab=Y}
C {lab_pin.sym} -170 -20 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} -60 -90 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} -60 40 0 0 {name=l1 lab=GND}
C {vsource.sym} -180 -90 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -170 10 0 0 {name=V2 value="pulse(0 1.8 0 0.1n 0.1n 10n 20n)" savecurrent=false}
C {gnd.sym} -170 40 0 0 {name=l2 lab=GND}
C {gnd.sym} -180 -60 0 0 {name=l3 lab=GND}
C {code.sym} -350 -120 0 0 {name=TT only_toplevel=false value=".lib /foss/pdks/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
}
C {code_shown.sym} -360 40 0 0 {name=spice only_toplevel=false value=".tran 1n 40n
.control
run
write ~/workspace/magic-layout/inverter/ngspice/tb_inverter.raw
.endc"}
C {launcher.sym} 140 60 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read /home/asic/workspace/magic-layout/inverter/ngspice/tb_inverter.raw tran"
}
