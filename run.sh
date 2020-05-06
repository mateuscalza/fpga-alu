#!/bin/bash
rm -rf *.cf
ghdl -a --ieee=synopsys alu.vhd
ghdl -a --ieee=synopsys alu_testbench.vhd
ghdl -e --ieee=synopsys alu_testbench
ghdl -r --ieee=synopsys alu_testbench