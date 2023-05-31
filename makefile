# Makefile

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra

# Source file
SRC = main.c

# Object file
OBJ = $(SRC:.c=.o)

# Target executable
TARGET = final.exe

# Default rule
all: $(TARGET)

# Rule to build the target executable
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

# Rule to compile the source file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean rule
clean:
	rm -f $(OBJ) $(TARGET)

