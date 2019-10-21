top: Full_adder.v multiplier.v multiplier_tb.v
	iverilog -o multiplier Full_adder.v multiplier.v multiplier_tb.v
	./multiplier

clean: 
	rm -f multiplier *~ *.vcd

.PHONY: clean all
