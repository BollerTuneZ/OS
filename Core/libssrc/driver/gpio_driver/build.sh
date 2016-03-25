#!/bin/sh
g++ -c -o  gpio_btz.o gpio_btz.cpp -L/usr/local/lib -lwiringPi -lwiringPiDev -lpthread -lm
