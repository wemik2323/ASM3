all: test utest

test: test.o
	gcc test.o -o test -fno-pie -no-pie

test.o: test.asm
	yasm -f elf64 test.asm -o test.o

utest: utest.o
	gcc utest.o -o utest -fno-pie -no-pie

utest.o: utest.asm
	yasm -f elf64 utest.asm -o utest.o

clean:
	rm *test.o *test
