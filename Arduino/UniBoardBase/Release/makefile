################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include source/subdir.mk
-include libraries/Wire/src/utility/subdir.mk
-include libraries/Wire/src/subdir.mk
-include libraries/SPI/src/subdir.mk
-include libraries/MCPDAC/subdir.mk
-include libraries/Encoder/subdir.mk
-include libraries/Arduino-PID-Library/subdir.mk
-include core/core/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
arduino.ar \

ELF += \
UniBoardBase.elf \

HEX += \
UniBoardBase.hex \


# All Target
all: UniBoardBase

# Tool invocations
UniBoardBase: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-size" -A "/home/jonas/git/OS/Arduino/UniBoardBase/Release/UniBoardBase.elf"
	@echo 'Finished building target: $@'
	@echo ' '

arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-gcc-ar" rcs "/home/jonas/git/OS/Arduino/UniBoardBase/Release/arduino.ar"  arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

UniBoardBase.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"/home/jonas/Documents/Programme/sloeber/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-gcc" -Os -flto -fuse-linker-plugin -Wl,--gc-sections -mmcu=atmega328p -o "/home/jonas/git/OS/Arduino/UniBoardBase/Release/UniBoardBase.elf"  $(LINK_OBJ) $(AR)  "-L/home/jonas/git/OS/Arduino/UniBoardBase/Release" -lm
	@echo 'Finished building: $@'
	@echo ' '

UniBoardBase.hex: $(ELF)
	@echo 'Create eeprom image'
	${A.RECIPE.OBJCOPY.HEX.PATTERN}
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
