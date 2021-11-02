#!/bin/bash

if [ -d "build" ]; then rm -rf build; fi

mkdir build && cd build
cmake .. && make && cp spd-tool ../.. && cd .. && rm build -rf && chmod +x ../spd-tool && ../spd-tool
