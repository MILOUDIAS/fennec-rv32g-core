SIM ?= verilator
TOPLEVEL_LANG ?= verilog
EXTRA_ARGS += --trace --trace-structs
WAVES = 1

VERILOG_SOURCES += $(PWD)/../../src/regfile.sv
TOPLEVEL = regfile
MODULE = test_regfile
include $(shell cocotb-config --makefiles)/Makefile.sim
