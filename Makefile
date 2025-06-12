# Unix, using gcc

ifeq ($(WASM),1)
	CC = emcc
else
	CC = gcc
endif
TARGET =
TARGETEXTENSION =

CCOUT = -o $(DUMMY)
CFLAGS = -c -std=gnu90 -O2 -pedantic -Wno-long-long -Wno-shift-count-overflow -DUNIX $(OUTFMTS)

LD = $(CC)
LDOUT = $(CCOUT)
LDFLAGS = -lm

RM = rm -f

include make.rules
