# Install
BIN = libnuklear

# Flags
CFLAGS = -std=c99 -pedantic -O2 -fPIC -Inuklear/

SRC = main.c
OBJ = $(SRC:.c=.o)

ifeq ($(OS),Windows_NT)
	BIN := $(BIN).dll
	LIBS = -lm
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		BIN := $(BIN).dylib
		LIBS = -lm
	else
		BIN := $(BIN).so
		LIBS = -lm
	endif
endif

build: $(BIN)


$(BIN):
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) $(LIBS)


clean:
	rm -f $(BIN) $(OBJS)
