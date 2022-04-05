all: test.o
	gcc test.o -o test -fno-pie -no-pie

test.o: test.asm
	yasm -f elf64 test.asm -o test.o

clean:
	rm test.o test
