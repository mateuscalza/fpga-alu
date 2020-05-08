#!/bin/bash
rm -rf *.cf
ghdl -a --ieee=synopsys --std=08 alu.vhd
ghdl -a --ieee=synopsys --std=08 alu_testbench.vhd
ghdl -e --ieee=synopsys --std=08 alu_testbench
ghdl -r --ieee=synopsys --std=08 alu_testbench