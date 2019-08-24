# Install
BIN = libnuklear

WORK_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

# Flags
ENV_CFLAGS := $(CFLAGS)
CFLAGS := $(ENV_CFLAGS) -std=c99 -pedantic -O2 -fPIC -Inuklear/ -I../ -L./

SRC = main.c adapter.c
OBJ = $(SRC:.c=.o)
LIBS = -lm

ifeq ($(OS),Windows_NT)
	EXTENSION := dll
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		EXTENSION := dylib
	else
		EXTENSION := so
	endif
endif

BIN := $(BIN).$(EXTENSION).bodged

build: $(BIN)

$(BIN):
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) $(LIBS)

clean:
	rm -f $(BIN) $(OBJS)
