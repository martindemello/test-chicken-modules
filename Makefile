default: test

test: outer cprog
	csc -L. -lcprog test.scm

outer:
	csc -sJ outer.scm

cprog:
	gcc -c -fPIC -o cprog.o cprog.c
	gcc -shared -o libcprog.so cprog.o

direct-load:
	csc -c direct-load.scm 
	csc -L. -lcprog direct-load.o

clean:
	rm *.so *.o test direct-load
