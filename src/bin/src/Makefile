
ARCH=pc

CROSS_COMPILE =
AS		= $(CROSS_COMPILE)as
LD		= $(CROSS_COMPILE)ld
CC		= $(CROSS_COMPILE)gcc
CPP		= $(CC) -E
AR		= $(CROSS_COMPILE)ar
NM		= $(CROSS_COMPILE)nm

STRIP		= $(CROSS_COMPILE)strip
OBJCOPY		= $(CROSS_COMPILE)objcopy
OBJDUMP		= $(CROSS_COMPILE)objdump

export AS LD CC CPP AR NM
export STRIP OBJCOPY OBJDUMP

export CFLAGS LDFLAGS
export TEST_CFLAGS TEST_LDFLAGS

TOPDIR := $(shell pwd)
export TOPDIR

CFLAGS := -Wall -O0 -g3 -gdwarf-2 -DDEBUG

#include
CFLAGS+=$(shell gen-include.sh)

LDFLAGS += -lrt -lpthread -lnsl -ldl
LDFLAGS += -luv


TEST_CFLAGS :=$(CFLAGS)
TEST_LDFLAGS := $(LDFLAGS)

LDSTATICLIB :=

ifeq ($(ARCH),$(PC))
	LDSTATICLIB =
else
	LDSTATICLIB =
endif


TARGET := main.out


 obj-y += main.o
 obj-y += src/

all :
	make -C ./ -f $(TOPDIR)/Makefile.build
	$(CC) -o $(TARGET)  built-in.o $(LDSTATICLIB) $(LDFLAGS)
test:
	@make -C ./src -f $(TOPDIR)/Makefile.test
clean:
	rm -f $(shell find  -name "*.o")
	rm -f $(shell find  -name "*.d")
	rm -f $(shell find  -name "*.out")
	rm -f $(TARGET)
.PHONY:all clean test
