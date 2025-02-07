@echo off
where /q bun
if errorlevel 1 (
    echo Bun is not installed. Please install it from https://bun.sh/ or using this command:
    echo irm bun.sh/install.ps1 ^| iex
    exit /b 1
)

echo Compiling Bun
mkdir dist > nul 2>&1
bun build .\test.js --compile --outfile dist/test_bun