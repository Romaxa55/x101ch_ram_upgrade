#!/bin/bash

if [ -d "build" ]; then rm -rf build; fi

mkdir build && cd build
cmake .. && make && cp spd-tool ../.. && cd .. && rm -rf build && chmod +x ../spd-tool

../spd-tool -i ../BIOS/X101CH-ASUS-1203.ROM
../spd-tool -i ../dump_spd_1931704
