#!/bin/sh
echo "build i2c_test"
g++ -c -o main.o main.cpp
g++ -o i2c_test.app ../../raspi/i2c/btz_i2c.o main.o