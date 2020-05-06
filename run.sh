#!/bin/bash
rm -rf *.cf
ghdl -a --ieee=synopsys alu.vhd
ghdl -e --ieee=synopsys ALU
ghdl -r --ieee=synopsys ALU