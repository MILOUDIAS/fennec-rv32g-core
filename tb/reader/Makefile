SIM ?= verilator
TOPLEVEL_LANG ?= verilog
EXTRA_ARGS += --trace --trace-structs
WAVES = 1

VERILOG_SOURCES += $(PWD)/../../src/reader.sv
EXTRA_ARGS += --trace $(PWD)/../../packages/core_pkg.sv
TOPLEVEL = reader
MODULE = test_reader

include $(shell cocotb-config --makefiles)/Makefile.sim
