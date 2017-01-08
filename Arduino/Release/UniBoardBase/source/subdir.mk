################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../UniBoardBase/source/io_bootstrap.cpp \
../UniBoardBase/source/servo.cpp \
../UniBoardBase/source/util.cpp 

LINK_OBJ += \
./UniBoardBase/source/io_bootstrap.cpp.o \
./UniBoardBase/source/servo.cpp.o \
./UniBoardBase/source/util.cpp.o 

CPP_DEPS += \
./UniBoardBase/source/io_bootstrap.cpp.d \
./UniBoardBase/source/servo.cpp.d \
./UniBoardBase/source/util.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
UniBoardBase/source/io_bootstrap.cpp.o: ../UniBoardBase/source/io_bootstrap.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/cores/arduino" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/variants/standard" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire/src" -I"/home/jonas/Arduino/libraries/Encoder" -I"/home/jonas/Arduino/libraries/Encoder/utility" -I"/home/jonas/Arduino/libraries/MCPDAC" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

UniBoardBase/source/servo.cpp.o: ../UniBoardBase/source/servo.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/cores/arduino" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/variants/standard" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire/src" -I"/home/jonas/Arduino/libraries/Encoder" -I"/home/jonas/Arduino/libraries/Encoder/utility" -I"/home/jonas/Arduino/libraries/MCPDAC" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

UniBoardBase/source/util.cpp.o: ../UniBoardBase/source/util.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/cores/arduino" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/variants/standard" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire/src" -I"/home/jonas/Arduino/libraries/Encoder" -I"/home/jonas/Arduino/libraries/Encoder/utility" -I"/home/jonas/Arduino/libraries/MCPDAC" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '


