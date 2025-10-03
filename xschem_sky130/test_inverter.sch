v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -90 100 710 500 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.041307e-06
x2=8.958693e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="y
a"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
color="9 5"
rawfile=$netlist_dir/test_inverter.raw
linewidth_mult=.005}
N 140 -10 230 -10 {lab=Y}
N 140 50 140 60 {lab=GND}
N 100 -40 100 20 {lab=A}
N 30 -10 100 -10 {lab=A}
N 140 20 150 20 {lab=GND}
N 150 20 150 50 {lab=GND}
N 140 50 150 50 {lab=GND}
N 140 -40 150 -40 {lab=VDD}
N 150 -70 150 -40 {lab=VDD}
N 140 -70 150 -70 {lab=VDD}
N 140 -80 140 -70 {lab=VDD}
N 270 -70 270 -50 {lab=VDD}
N 330 -70 330 -50 {lab=A}
C {devices/code.sym} -160 -50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8.sym} 120 -40 0 0 {name=M1
W=2
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 120 20 0 0 {name=M2
W=1
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 140 60 0 0 {name=l1 lab=GND}
C {gnd.sym} 270 10 0 0 {name=l2 lab=GND}
C {gnd.sym} 330 10 0 0 {name=l3 lab=GND}
C {vsource.sym} 270 -20 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 330 -20 0 0 {name=V2 value="pulse(0 1.8 0 10n 10n 2u 4u)" savecurrent=false}
C {lab_pin.sym} 270 -70 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 -70 0 0 {name=p2 sig_type=std_logic lab=A}
C {code_shown.sym} 420 50 0 0 {name=s1 only_toplevel=false value=".tran 1u 10u
.save all"}
C {lab_pin.sym} 140 -80 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 30 -10 0 0 {name=p4 sig_type=std_logic lab=A}
C {lab_pin.sym} 210 -10 2 0 {name=p5 sig_type=std_logic lab=Y}
C {launcher.sym} 620 60 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/test_inverter.raw tran"
}
