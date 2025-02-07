@echo off
where /q deno
if errorlevel 1 (
    echo Deno is not installed. Please install it from https://deno.com/ or using this command:
    echo irm https://deno.land/install.ps1 ^| iex
    exit /b 1
)

echo Compiling Deno
mkdir dist > nul 2>&1
deno compile test.js
move test.exe ./dist/test_deno.exe