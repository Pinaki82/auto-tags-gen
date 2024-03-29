# =========================================================================
#     This makefile was generated by
#     Bakefile 0.2.9 (http://www.bakefile.org)
#     Do not modify, all changes will be overwritten!
# =========================================================================



# -------------------------------------------------------------------------
# These are configurable options:
# -------------------------------------------------------------------------

# Compiler flags to link shared library 
LINK_DLL_FLAGS ?= -shared

# C compiler 
CC = gcc

# Standard flags for CC 
CFLAGS ?= 

# Standard preprocessor flags (common for CC and CXX) 
CPPFLAGS ?= 

# Standard linker flags 
LDFLAGS ?= 



# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

### Variables: ###

CPPDEPS = -MT$@ -MF$@.d -MD -MP
AUTO_TAG_GEN_CFLAGS = -W -Wall -DBUILD_DLL -DBUILDING_DLL -D_WINDLL -Wall -Wextra \
	-pedantic -fopenmp -O -O1 -O2 -O3 -O4 -Os -fexpensive-optimizations -m64 \
	$(CPPFLAGS) $(CFLAGS)
AUTO_TAG_GEN_OBJECTS =  \
	auto_tag_gen_cmdline_ctags.o

### Conditionally set variables: ###



### Targets: ###

all: auto_tag_gen.dll

clean: 
	-if exist .\*.o del .\*.o
	-if exist .\*.d del .\*.d
	-if exist auto_tag_gen.dll del auto_tag_gen.dll
	-if exist libauto_tag_gen.a del libauto_tag_gen.a

auto_tag_gen.dll: $(AUTO_TAG_GEN_OBJECTS)
	$(CC) $(LINK_DLL_FLAGS) -fPIC -o $@ $(AUTO_TAG_GEN_OBJECTS)  -Wl,--out-implib=libauto_tag_gen.a -mwindows -s -mwindows -m64 -s $(LDFLAGS)  -luser32 -lkernel32 -lshell32 -lgdi32 -lcomctl32 -lole32  -m64

auto_tag_gen_cmdline_ctags.o: ./cmdline_ctags.c
	$(CC) -c -o $@ $(AUTO_TAG_GEN_CFLAGS) $(CPPDEPS) $<

.PHONY: all clean


SHELL := $(COMSPEC)

# Dependencies tracking:
-include ./*.d
