################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
INO_SRCS += \
../UniBoardBase/UniBoardBase.ino 

CPP_SRCS += \
../UniBoardBase/.ino.cpp 

LINK_OBJ += \
./UniBoardBase/.ino.cpp.o 

INO_DEPS += \
./UniBoardBase/UniBoardBase.ino.d 

CPP_DEPS += \
./UniBoardBase/.ino.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
UniBoardBase/.ino.cpp.o: ../UniBoardBase/.ino.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/cores/arduino" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/variants/standard" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire/src" -I"/home/jonas/Arduino/libraries/Encoder" -I"/home/jonas/Arduino/libraries/Encoder/utility" -I"/home/jonas/Arduino/libraries/MCPDAC" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

UniBoardBase/UniBoardBase.o: ../UniBoardBase/UniBoardBase.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/cores/arduino" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/variants/standard" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/Wire/src" -I"/home/jonas/Arduino/libraries/Encoder" -I"/home/jonas/Arduino/libraries/Encoder/utility" -I"/home/jonas/Arduino/libraries/MCPDAC" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI" -I"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.15/libraries/SPI/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '


