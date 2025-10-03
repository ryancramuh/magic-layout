v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -20 -210 780 190 {flags=graph
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-8.9087556e-09
x2=9.109125e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
vcc
inv_out"
color="17 10 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/inverter.raw
sim_type=tran
autoload=1
hilight_wave=1
y1=-0.1}
N -120 -140 -120 -120 {lab=inv_out}
N -120 -60 -120 -50 {lab=GND}
N -120 -210 -120 -200 {lab=vcc}
N -190 -250 -120 -250 {lab=vcc}
N -120 -250 -120 -210 {lab=vcc}
N -160 -170 -160 -90 {lab=in}
N -190 -130 -160 -130 {lab=in}
N -120 -130 -90 -130 {lab=inv_out}
N -120 -170 -110 -170 {lab=vcc}
N -120 -200 -110 -200 {lab=vcc}
N -110 -200 -110 -170 {lab=vcc}
N -120 -90 -110 -90 {lab=GND}
N -110 -90 -110 -60 {lab=GND}
N -120 -60 -110 -60 {lab=GND}
N -270 -130 -190 -130 {lab=in}
C {vsource.sym} -190 -220 0 0 {name=vcc value=1.8 savecurrent=false}
C {gnd.sym} -120 -50 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -140 -170 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -140 -90 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} -190 -190 0 1 {name=l2 lab=GND}
C {lab_wire.sym} -190 -130 0 0 {name=p1 sig_type=std_logic lab=in
}
C {lab_wire.sym} -90 -130 0 1 {name=p2 sig_type=std_logic lab=inv_out
}
C {vsource.sym} -270 -100 0 1 {name=vin value="pulse(0 1.8 0 1ns 1ns 5ns 10ns)" savecurrent=false}
C {gnd.sym} -270 -70 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -120 -250 0 1 {name=p3 sig_type=std_logic lab=vcc
}
C {code_shown.sym} -50 -270 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.tran 0.1n 1u
.save all"
}
C {title.sym} -320 -330 0 0 {name=Inverter author="Ryan Cramer"}
C {launcher.sym} -250 20 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inverter.raw tran"
}
