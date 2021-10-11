CXX := clang++
CFLAGS := -c $(pkg-config --cflags sfml)
LFLAGS := $(pkg-config --libs sfml)
SHOW_LABELS := @

all: main
	${SHOW_LABELS} ${CXX} ${LFLAGS} main.o -o out

main: main.cpp
	${SHOW_LABELS} ${CXX} ${CFLAGS} main.cpp -o main.o

clean:
	@echo "Cleaning..."
	@rm -rf obj/*
	@echo "Cleaned!"
