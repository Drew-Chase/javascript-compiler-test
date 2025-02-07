@echo off
echo Compiling All
call ./scripts/compile_deno.bat
call ./scripts/compile_bun.bat
call ./scripts/compile_c.bat