# Makefile

# defaults
SIM ?= verilator
TOPLEVEL_LANG ?= verilog
EXTRA_ARGS += --trace --trace-structs
WAVES = 1

VERILOG_SOURCES += $(wildcard $(PWD)/../../src/*.sv)
TOPLEVEL = cpu
MODULE = test_cpu

include $(shell cocotb-config --makefiles)/Makefile.sim
