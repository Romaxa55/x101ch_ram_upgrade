#!/bin/bash

if [ -d "build" ]; then rm -rf build; fi

mkdir build && cd build
cmake .. && make && cp spd-tool ../.. && cd .. && rm -rf build && chmod +x ../spd-tool
gcc -o ../ddr3spd ddr3spd.c
