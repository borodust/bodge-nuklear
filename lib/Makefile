# Install
BIN = libnuklear

# Flags
ENV_CFLAGS := $(CFLAGS)
CFLAGS := $(ENV_CFLAGS) -std=c89 -pedantic -O2 -fPIC -Inuklear/ -I../

SRC = main.c cbv.c
OBJ = $(SRC:.c=.o)

ifeq ($(OS),Windows_NT)
	BIN := $(BIN).dll.bodged
	LIBS = -lm
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		BIN := $(BIN).dylib.bodged
		LIBS = -lm
	else
		BIN := $(BIN).so.bodged
		LIBS = -lm
	endif
endif

build: $(BIN)


$(BIN):
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) $(LIBS)


clean:
	rm -f $(BIN) $(OBJS)
