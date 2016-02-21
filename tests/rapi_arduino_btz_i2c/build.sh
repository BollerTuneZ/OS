#!/bin/sh
echo "build i2c_test"
g++ -c -o main.o main.cpp
g++ -o myMain ../../raspi/i2c/btz_i2c.o main.o