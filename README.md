# RISC-V RV32I Core with G Extension Implementation

## Overview

This repository contains a single-cycle RISC-V RV32I core written in SystemVerilog, with testbenches implemented in Python using Cocotb. The project has two main goals:

1. Implement the full G extension (RV32G) including M, A, F, D, Zicsr, and Zifencei extensions
2. Evolve the architecture from single-cycle to a 5-stage in-order pipeline (Fetch, Decode, Execute, Memory, Writeback)

## Features

### Current Implementation (Single-Cycle RV32I)

- Fully compliant single-cycle RV32I core
- Support for all base integer instructions

### Planned Improvements

1. **Pipeline Implementation** (5-stage in-order):

   - [ ] Fetch stage
   - [ ] Decode stage
   - [ ] Execute stage
   - [ ] Memory stage
   - [ ] Writeback stage
   - [ ] Hazard detection and forwarding logic
   - [ ] Basic CSR implementation
   - [ ] Simple memory interface

2. **G Extension Components**:
   - [ ] M Extension: Integer multiplication and division
   - [ ] A Extension: Atomic operations
   - [ ] F/D Extensions: Single/double-precision floating-point
   - [ ] Zicsr: Complete CSR operations
   - [ ] Zifencei: Instruction-fetch fence

## Getting Started

### Prerequisites

- Verilator or another SystemVerilog simulator
- Python 3.10+
- Cocotb (install with `pip install cocotb`)
- RISC-V toolchain (for compiling test programs)

### Installation

```bash
git clone https://github.com/yourusername/riscv-rv32g-core.git
cd riscv-rv32g-core
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

### Running Tests

Current single-cycle implementation tests:

```bash
cd rtl/single-cycle/tb && pytest test_runner.py -s
```

Future pipeline tests (when implemented maybe will use only make like this):

```bash
make test-pipeline
```

## Development Roadmap

1. **Phase 1**: Complete single-cycle RV32I with full test coverage
2. **Phase 2**: Design 5-stage pipeline architecture
   - Pipeline register interfaces
   - Basic hazard handling
3. **Phase 3**: Implement pipeline stages
4. **Phase 4**: Add forwarding and stall logic
5. **Phase 5**: Implement G extension components
6. **Phase 6**: Performance optimization

## Pipeline Design Notes

The planned 5-stage pipeline will implement:

- **Fetch**: Instruction memory access, PC calculation
- **Decode**: Register file read, instruction decoding
- **Execute**: ALU operations, branch resolution
- **Memory**: Data memory access
- **Writeback**: Register file write

Hazard handling will include:

- Data forwarding paths
- Load-use stalls
- Control hazard handling (branch prediction initially simple)

## Contributing

We welcome contributions! Please:

1. Check open issues for current development priorities
2. For pipeline work, coordinate through GitHub issues
3. Follow the existing coding style
4. Include comprehensive tests for new features

## License

MIT License - see [LICENSE](LICENSE) for details.
