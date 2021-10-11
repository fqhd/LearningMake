CXX := clang++
CFLAGS := -c $(pkg-config --cflags sfml)
LFLAGS := $(pkg-config --libs sfml)
SHOW_COMMANDS := @

all: main
	${SHOW_COMMANDS} ${CXX} ${LFLAGS} main.o -o out

main: main.cpp
	${SHOW_COMMANDS} ${CXX} ${CFLAGS} main.cpp -o main.o

clean:
	@echo "Cleaning..."
	@rm -rf obj/*
	@echo "Cleaned!"
