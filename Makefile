CC = g++
CFLAGS = -Wall -Wextra -fPIC
SRC = calculator.cpp main.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = calculator_app
LIB = libcalculator.a

.PHONY: all clean

all: $(TARGET) $(LIB)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^

$(LIB): calculator.o
	ar rcs $@ $^

%.o: %.cpp calculator.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJ) $(TARGET) $(LIB)
