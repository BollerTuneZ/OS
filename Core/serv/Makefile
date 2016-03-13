
all: prog
prog: main.o driver_test.o
	g++ -c main.cpp -o main.o
	g++ -o main.app ../driver/i2c_base_cpp/i2c_base.o ../driver/SoftDriver/light/light.o main.o ../driver/SoftDriver/EncoderClient/encoder_client.o testing/driver_test.o
driver_test.o: testing/driver_test.cpp
	g++ -c testing/driver_test.cpp -o testing/driver_test.o
