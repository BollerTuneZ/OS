CC = gcc
CFLAGS = -Wall
DEPS = btz_i2c.h
OBJ = go.o btz_i2c.o

%.o: %.c $(DEPS)
        $(CC) $(CFLAGS) -c -o $@ $<

go: $(OBJ)
        gcc $(CFLAGS) -o $@ $^
