#!/bin/sh
echo "build i2c_test"
g++ -c -o light.o light.cpp
g++ -o light.app ../../raspi/i2c/btz_i2c.o light.o