@echo off
where /q gcc
if errorlevel 1 (
    echo GCC is not installed. Please install it from https://gcc.gnu.org/ or using your package manager.
    exit /b 1
)

echo Compiling C
mkdir dist > nul 2>&1
gcc -o ./dist/test_c test.c
echo C finished compiling.