#Makefile to build  analyse allocated  memory segments using gcc utilities

# Use: make [TARGET] [OVERRIDES]
#
# Build Targets:
#      <FILE>.o - Builds <FILE>.o object file
#      build - Builds and links all source files
#      all - Same as build
#      clean - removes all generated files
#
# Overrides:
#      CPU - ARM Cortex Architecture (cortex-m4)
#      ARCH - ARM Architecture (arm, thumb)
#      SPECS - Specs file to give the linker (nosys.specs, nano.specs)
#

# Architecture Specific Flags
include sources.mk

CPU = cortex-m4
ARCH = thumb
SPECS = nosys.specs

# Platform Specific Flags
LINKER_FILE = msp432p401r.lds 

# Compile Defines
CFLAGS_ARCH = -DMSP432
CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
NM = arm-none-eabi-nm
SIZE = arm-none-eabi-size
OBJDUMP = arm-none-eabi-objdump
TARGET = c1m3
LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
CFLAGS = -mcpu=$(CPU) -m$(ARCH) --specs=$(SPECS) -Wall


OBJS = $(SOURCES:.c=.o)
ASMS = $(SOURCES:.c=.s)


%.o : %.c
	$(CC) -c $< $(CFLAGS) -o $@
%.s : %.c
	$(CC) -S $< -o $@


.PHONY: compile-all
compile-all: $(OBJS) $(ASMS) $(TARGET).out $(TARGET).asm
	$(NM) $(NMFLAGS) $(TARGET).out


.PHONY: build
build: compile-all
	$(CC) $(CFLAGS_ARCH) $(OBJS) $(CFLAGS) $(CPPFLAGS) $(INCLUDES) $(LDFLAGS) -o $(TARGET).out
	$(SIZE) -Atd $(OBJS) $(TARGET).out

$(TARGET).out: $(OBJS)
	 $(CC) $(OBJS) $(CFLAGS) $(LDFLAGS) -o $@ 


$(TARGET).asm : $(TARGET).out
	$(OBJDUMP) -d $(TARGET).out >> $@

.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET).out $(TARGET).map
	rm -f *.o *.s
