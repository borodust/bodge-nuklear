# Install
BIN = libnuklear

WORK_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

# Flags
ENV_CFLAGS := $(CFLAGS)
CFLAGS := $(ENV_CFLAGS) -std=c99 -pedantic -O2 -fPIC -Inuklear/ -I../ -L./

PLATFORM=
ifeq ($(OS),Windows_NT)
	EXTENSION := dll
	PLATFORM=x86_64-w64-mingw32
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		EXTENSION := dylib
		PLATFORM := x86_64-apple-darwin-gnu
	else
		EXTENSION := so
		PLATFORM := x86_64-pc-linux-gnu
	endif
endif

SRC = main.c adapter/adapter.$(PLATFORM).c
OBJ = $(SRC:.c=.o)
LIBS = -lm

BIN := $(BIN).$(EXTENSION).bodged

build: $(BIN)

$(BIN):
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) $(LIBS)

clean:
	rm -f $(BIN) $(OBJS)
