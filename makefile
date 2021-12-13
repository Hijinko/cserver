CMD = cc -Wall -Wextra
SRC = ./src/
INC = ./include/
BIN = ./bin/

$(BIN)cserver.o: $(SRC)cserver.c $(INC)cserver.h
	$(CMD) -c $< -o $@

test: $(BIN)cserver.o test.c
	$(CMD) $^ -o $@

clean:
	find . -type f -iname *.o -exec rm -rf {} \;
	find . -type f -iname test -exec rm -rf {} \;
