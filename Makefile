all: test

link: test.o dft.o
	clang test.o dft.o -lm -o test

test: link
	./test


test.o: test.c
	clang -c test.c -o test.o

dft.o: dft.c
	clang -c dft.c -o dft.o

clean:
	rm test *.o
