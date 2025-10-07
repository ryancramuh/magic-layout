.PHONY: xschemrc

xschemrc:

	@ find /foss/pdks/volare/sky130/versions \
	 -path "*/sky130A/libs.tech/*" \
	 -name "xschemrc" \
	 -not -path "*/xschem_verilog_import/*"

.PHONY: magicdeps

magicdeps:
	
	@ find /foss/pdks/volare/sky130/versions \
	 -path "*/sky130A/libs.tech/*" \
	 -name "sky130A.magicrc"

	@ find /foss/pdks/volare/sky130/versions \
	-path "*/sky130A/libs.tech/*" \
	-name "sky130A.tech"

.PHONY: carpmagic

carpmagic:

	magic -rcfile $(shell find /foss/pdks/volare/sky130/versions \
		-path "*/sky130A/libs.tech/*" \
		-name "sky130A.magicrc" | head -n 1) \
	      $(shell find /foss/pdks/volare/sky130/versions \
		-path "*/sky130A/libs.tech/*" \
		-name "sky130A.tech" | head -n 1)
	
	
.PHONY: ttdeps

ttdeps:

	@ find /foss/pdks/volare/sky130/versions \
	-path "*sky130A/libs.tech/ngspice/corners*" \
	-name "tt.spice"

PROJECT ?= project

.PHONY: layout

layout: 
	
	@ mkdir -p $(PROJECT)/scripts
	@ mkdir -p $(PROJECT)/xschem
	@ mkdir -p $(PROJECT)/ngspice
	@ mkdir -p $(PROJECT)/magic
	@ mkdir -p $(PROJECT)/netgen
	@ cp Makefile $(PROJECT)/
	@ cp -r scripts/ $(PROJECT)/
	@ cp scripts/xschemrc $(PROJECT)/xschem

