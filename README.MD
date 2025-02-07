# JavaScript Runtime Comparison: Deno vs Bun

This project demonstrates the differences between Deno and Bun runtimes, particularly focusing on executable size and performance characteristics.

## Overview

The project includes simple build scripts to compile JavaScript code using both Deno and Bun runtimes, allowing for direct comparison of their outputs.

## Batch Files

The project includes three batch files for compilation:

### compile.bat
Main compilation script that runs both Deno and Bun compilation processes:
```batch
.\compile.bat
```
This script simply calls both `compile_deno.bat` and `compile_bun.bat` in sequence.

### compile_deno.bat
Handles Deno-specific compilation:
- Checks if Deno is installed
- Creates `dist` directory if it doesn't exist
- Compiles `test.js` using Deno
- Moves the compiled executable to `dist/test_deno.exe`

Usage:
```batch
.\compile_deno.bat
```

### compile_bun.bat
Handles Bun-specific compilation:
- Checks if Bun is installed
- Creates `dist` directory if it doesn't exist
- Compiles `test.js` using Bun's builder
- Outputs the compiled executable to `dist/test_bun`

Usage:
```batch
.\compile_bun.bat
```

### Error Handling
Each compilation script includes error checking:
- Verifies if the required runtime (Deno or Bun) is installed
- Provides installation instructions if the runtime is missing
- Creates the `dist` directory if it doesn't exist
- Returns error code 1 if the runtime is not found

### Output
All compiled executables are placed in the `dist` directory:
- `dist/test_deno.exe` - Deno compiled executable
- `dist/test_bun` - Bun compiled executable

## Runtime Comparison

### Deno
**Pros:**
- Smaller bundled executable size
- Built-in TypeScript support
- Enhanced security with explicit permissions
- Better compatibility with existing Node.js code
- Built-in testing and documentation tools

**Cons:**
- Generally slower execution compared to Bun
- Stricter security model may require additional configuration

### Bun
**Pros:**
- Significantly faster execution time
- Built-in bundler and package manager
- Drop-in replacement for Node.js
- Native support for various package managers
- Excellent performance for both development and production

**Cons:**
- Larger executable size
- Newer platform with potentially less stability
- Smaller ecosystem compared to Deno

## Installation

### Installing Deno

**Windows (PowerShell):**
```powershell
irm https://deno.land/install.ps1 | iex
```

**macOS/Linux:**
```shell script
curl -fsSL https://deno.land/install.sh | sh
```

For more installation options, visit: [Deno Installation Guide](https://deno.land/#installation)

### Installing Bun

**Windows (via Windows Subsystem for Linux):**
1. Install WSL if not already installed
2. Run within WSL:
```shell script
curl -fsSL https://bun.sh/install | bash
```

**macOS/Linux:**
```shell script
curl -fsSL https://bun.sh/install | bash
```

For more installation options, visit: [Bun Installation Guide](https://bun.sh/docs/installation)

## Project Structure
```
├── compile.bat         # Main compilation script
├── compile_deno.bat   # Deno-specific compilation
├── compile_bun.bat    # Bun-specific compilation
├── test.js           # Sample JavaScript code
└── dist/             # Output directory for compiled executables
```

## Usage

To compile executables for both runtimes:
```shell script
.\compile.bat
```

This will create two executables in the `dist` directory:
- `test_deno.exe` - Deno compiled executable
- `test_bun` - Bun compiled executable

## Notes

- Deno's executables are typically smaller due to its more focused runtime
- Bun's executables, while larger, offer superior execution performance
- Choose based on your specific needs: size constraints vs performance requirements

## Links
- [Deno Official Website](https://deno.land)
- [Bun Official Website](https://bun.sh)

## License

This project is open source and available under the MIT License.