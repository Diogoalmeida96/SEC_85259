rom: rom.v rom_tb.v
	iverilog -W all -o rom rom.v rom_tb.v -g2005-sv
	./rom

clean: 
	rm -f rom *~ *.vcd

.PHONY: clean all
