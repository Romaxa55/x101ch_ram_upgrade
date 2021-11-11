#!/bin/bash
cd ../src/
if [ -d "build" ]; then rm -rf build; fi

mkdir build && cd build
cmake .. && make && cp spd-tool ../../tools/ && cd .. && rm -rf build && chmod +x ../tools/spd-tool
gcc -o ../tools/ddr3spd ddr3spd.c 
