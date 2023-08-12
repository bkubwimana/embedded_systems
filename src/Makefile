#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# 
# A makefile for 2 target platforms using their specific compilers
# These two platforms: HOST and the MSP432.
# The host embedded system uses native compiler, gcc.
# The target embedded system uses the cross compiler: arm-none-eabi-gcc.
#author: Benjamin Kubwimana
# June 30th 2023
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
# example: $ make build PLATFORM=HOST
#
# Build Targets:
#     <FILE>.i - Generate <FILE>.i preprocessed output
#      <FILE>.asm - Generate <FILE>.asm assembly output
#      <FILE>.o - Builds <FILE>.o object file
#      compile-all - Compile all object files, but DO NOT link
#      build - Builds and links all source files
#      clean - Removes all generated files
#
# Platform Overrides:
#       PLATFORM=HOST - Compile for HOST using gcc
#       PLATFORM=MSP432 - Compile for MSP432 using arm-none-eabi-gcc
#------------------------------------------------------------------------------
include sources.mk
PLATFORM = HOST

# Architectures Specific Flags
LINKER_FILE = ../msp432p401r.lds
CPU = cortex-m4
ARCH = thumb
SPECS = nosys.specs

# General Flags (Both Platforms)
CFLAGS = -Wall -Werror -g -O0 -std=c99

# Compiler Flags and Defines
TARGET = c1m2

ifeq ($(PLATFORM), HOST)
	# Configuration for the HOST platform
	CFLAGS_ARCH = -DHOST 
	CC = gcc
	LD = ld
	OBJDMP = objdump
	SIZE = size
	CPU = x86_64
	ARCH:=$(shell arch)
	LDFLAGS = -Wl,-Map=$(TARGET).map
else
	# Configuration for the MSP432 platform
	CFLAGS_ARCH = -DMSP432
	CC = arm-none-eabi-gcc
	LD = arm-none-eabi-ld
	SIZE = arm-none-eabi-size
	OBJDMP = arm-none-eabi-objdump
	LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
	CFLAGS = -mcpu=$(CPU) -m$(ARCH) --specs=$(SPECS) -Wall -DMSP432
	CFLAGS += -mcpu=cortex-m4 -march=armv7e-m -mfloat-abi=hard -mfpu=fpv4-sp-d16
endif

# Pattern rule for generating object files from source files
OBJS = $(SOURCES:.c=.o)
DEPS = $(SOURCES:.c=.d)

%.o : %.c
	$(CC) $(CFLAGS_ARCH) -c $< $(CFLAGS)  $(INCLUDES) -o $@

%.i : %.c
	$(CC) $(CFLAGS_ARCH) -E $< $(CFLAGS) $(INCLUDES) -o $@

%.asm : %.c
	$(CC) $(CFLAGS_ARCH) -S $< $(CFLAGS)  $(INCLUDES) -o $@
	objdump $(OBJS) -D
%.d : %.c
		$(CC) $(CFLAGS_ARCH) -M $< $(INCLUDES)  $(CFLAGS) -o $@


.PHONY: compile-all
compile-all: $(OBJS) $(DEPS)

.PHONY: build
build: compile-all
	$(CC) $(CFLAGS_ARCH) $(OBJS) $(CFLAGS) $(CPPFLAGS)  $(INCLUDES) $(LDFLAGS) -o $(TARGET).out
	$(SIZE) -Atd $(OBJS) $(TARGET).out
	$(OBJDMP) -d $(TARGET).out > $(TARGET).asm

$(TARGET).asm: | build
	$(OBJDMP) -d $(TARGET).out > $(TARGET).asm

.PHONY: clean
clean:	
	rm -f *.o *.out *.map *.asm *.i *.d
	rm -f src/*.o src/*.out src/*.map src/*.asm src/*.i src/*.d
