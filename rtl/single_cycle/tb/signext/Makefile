SIM ?= verilator
TOPLEVEL_LANG ?= verilog
EXTRA_ARGS += --trace --trace-structs
WAVES = 1

VERILOG_SOURCES += $(PWD)/../../src/signext.sv
TOPLEVEL = signext
MODULE = test_signext

include $(shell cocotb-config --makefiles)/Makefile.sim
