# PiCompute

An educational, open-source implementation for computing Pi to billions of digits, showcasing modern parallel computing techniques with CPU and GPU acceleration.

## Overview

PiCompute demonstrates high-performance computing concepts through the lens of arbitrary-precision Pi calculation. The project emphasizes:

- **Educational clarity**: Clean, well-documented code that teaches fundamental algorithms
- **Modern architecture**: Swift orchestration with C++ compute kernels
- **Parallel computing**: From single-threaded to multi-core CPU to GPU acceleration
- **Cross-platform**: Designed for macOS (primary), Linux, and Windows

## Features

- Arbitrary precision arithmetic using custom BigFloat implementation
- Chudnovsky algorithm with binary splitting for Pi computation
- FFT-based large integer multiplication
- Progressive optimization examples showing performance improvements
- CPU parallelization using modern C++ threading
- GPU acceleration via Metal (macOS), CUDA, and OpenCL
- Comprehensive unit testing for algorithm verification

## Requirements

- **macOS**: Xcode 14+ with Swift 5.9+
- **Linux/Windows**: CMake 3.20+, C++20 compiler
- **Memory**: 16GB+ RAM recommended for billion-digit computations

## Building

### macOS (Xcode)
```bash
open PiCompute.xcodeproj
# Build and run tests in Xcode
```

### Cross-platform (CMake)
```bash
mkdir build && cd build
cmake ..
make
make test
```

## Architecture

The project follows a modular design:

```
PiCompute (Swift)           - High-level orchestration
    ↓
PiComputeBridge (C)        - Swift/C++ interop layer
    ↓
PiComputeCore (C++)        - Compute kernels and algorithms
    ↓
Platform Backends          - CPU threads, Metal, CUDA, OpenCL
```

## Educational Approach

This project builds on concepts from Alexander Yee's mini-pi, extending them with:
- Modern Swift integration
- GPU compute demonstrations
- Visual progress monitoring
- Extensive unit testing
- Cross-platform compatibility

## Performance

While this implementation prioritizes clarity over raw performance, it demonstrates:
- O(N log N) multiplication using FFT
- Near-linear scaling with CPU cores
- Significant GPU acceleration for suitable operations

## Contributing

Contributions are welcome! Please focus on:
- Maintaining code clarity and educational value
- Adding comprehensive tests for new features
- Documenting algorithmic choices

## License

MIT License - See LICENSE file for details

## Acknowledgments

- Alexander Yee (Mystical) for mini-pi and y-cruncher inspiration
- The computational mathematics community for algorithm development