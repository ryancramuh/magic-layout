v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 20 0 50 {lab=Y}
N 0 50 0 60 {lab=Y}
N -0 40 40 40 {lab=Y}
N -40 -10 -40 90 {lab=#net1}
N -80 40 -40 40 {lab=#net1}
N -0 90 10 90 {lab=GND}
N 0 -10 10 -10 {lab=VDD}
N 10 -40 10 -10 {lab=VDD}
N 0 -40 10 -40 {lab=VDD}
N 0 -50 -0 -40 {lab=VDD}
N 10 90 10 120 {lab=GND}
N 0 120 10 120 {lab=GND}
N 0 120 -0 130 {lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -20 -10 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -20 90 0 0 {name=M2
W=1
L=0.15
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
C {iopin.sym} 0 130 0 0 {name=p1 lab=GND
}
C {iopin.sym} 0 -50 0 0 {name=p2 lab=VDD
}
C {opin.sym} 40 40 0 0 {name=p3 lab=Y
}
C {ipin.sym} -80 40 0 0 {name=p4 lab=A}
