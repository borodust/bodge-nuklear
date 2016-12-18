# Install
BIN = libnuklear.1.dylib

# Flags
CFLAGS = -std=c99 -pedantic -O2

SRC = main.c
OBJ = $(SRC:.c=.o)

ifeq ($(OS),Windows_NT)
BIN := $(BIN).exe
LIBS = -lglfw3 -lopengl32 -lm -lGLU32 -lGLEW32
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		LIBS = -lglfw -framework OpenGL -lm -lGLEW
	else
		LIBS = -lglfw -lGL -lm -lGLU -lGLEW
	endif
endif

$(BIN):
	rm -f $(BIN) $(OBJS)
	$(CC) -shared $(SRC) $(CFLAGS) -o $(BIN) $(LIBS)
