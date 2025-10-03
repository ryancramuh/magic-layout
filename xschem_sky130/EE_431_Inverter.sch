v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -40 120 -40 {lab=Y}
N 30 -70 40 -70 {lab=#net1}
N 30 -100 40 -100 {lab=#net1}
N 40 -100 40 -70 {lab=#net1}
N 30 -110 30 -100 {lab=#net1}
N 30 20 30 30 {lab=GND}
N -10 -70 -10 -10 {lab=A}
N -80 -40 -10 -40 {lab=A}
N 30 -10 40 -10 {lab=GND}
N 40 -10 40 20 {lab=GND}
N 30 20 40 20 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 10 -10 0 0 {name=M2
L=0.5
W=1
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 10 -70 0 0 {name=M1
W=2
L=.5
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
C {gnd.sym} 30 30 0 0 {name=l1 lab=GND}
C {vsource.sym} 30 -140 2 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} 30 -160 2 0 {name=l2 lab=GND}
C {lab_pin.sym} -80 -40 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 120 -40 2 0 {name=p2 sig_type=std_logic lab=Y}
C {vsource.sym} -80 -10 0 0 {name=V2 value=pulse(0 3 0 10n 10n 2u 4u) savecurrent=false}
C {gnd.sym} -80 20 0 0 {name=l3 lab=GND}
