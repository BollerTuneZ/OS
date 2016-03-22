#!/bin/sh
g++ -c -o  gpio.o gpio.cpp -L/usr/local/lib -lwiringPi -lwiringPiDev -lpthread -lm
