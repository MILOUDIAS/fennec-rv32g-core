# Makefile

# defaults
SIM ?= verilator
TOPLEVEL_LANG ?= verilog
EXTRA_ARGS += --trace --trace-structs
WAVES = 1

VERILOG_SOURCES += $(PWD)/../../src/control.sv
EXTRA_ARGS += --trace $(PWD)/../../packages/core_pkg.sv
TOPLEVEL = control

MODULE = test_control

include $(shell cocotb-config --makefiles)/Makefile.sim
