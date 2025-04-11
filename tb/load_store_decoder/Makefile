SIM ?= verilator
TOPLEVEL_LANG ?= verilog
EXTRA_ARGS += --trace --trace-structs
WAVES = 1

VERILOG_SOURCES += $(PWD)/../../src/load_store_decoder.sv
EXTRA_ARGS += --trace $(PWD)/../../packages/core_pkg.sv
TOPLEVEL = load_store_decoder
MODULE = test_load_store_decoder

include $(shell cocotb-config --makefiles)/Makefile.sim
