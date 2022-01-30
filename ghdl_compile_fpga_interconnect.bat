echo off

FOR /F "tokens=* USEBACKQ" %%F IN (`git rev-parse --show-toplevel`) DO (
SET project_root=%%F
)
SET source=%project_root%

ghdl -a --ieee=synopsys --std=08 %source%/../fpga_interconnect/fpga_interconnect_pkg.vhd
