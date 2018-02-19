# Install
BIN = libnuklear

WORK_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

# Flags
ENV_CFLAGS := $(CFLAGS)
CFLAGS := $(ENV_CFLAGS) -std=c89 -pedantic -O2 -fPIC -Inuklear/ -I../ -Iglad/glad/include/ -L./

SRC = main.c cbv.c
OBJ = $(SRC:.c=.o)
LIBS = -lm -lglad

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
	cd glad/ && make build
	ln -sf $(WORK_DIR)/glad/libglad.$(EXTENSION).bodged libglad.$(EXTENSION)
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) $(LIBS)


clean:
	cd glad/ && make clean
	rm -f $(BIN) $(OBJS)
