main: main.c lib/libcal.a include/add.h include/sub.h
	gcc -Wall -Wextra -Iinclude main.c lib/libcal.a -o main

lib/add.o: src/add.c include/add.h
	gcc -Wall -Wextra -Iinclude -c src/add.c -o lib/add.o

lib/sub.o: src/sub.c include/sub.h
	gcc -Wall -Wextra -Iinclude -c src/sub.c -o lib/sub.o

lib/libcal.a: lib/add.o lib/sub.o
	ar rcs lib/libcal.a lib/add.o lib/sub.o

clean:
	rm -f lib/*.o main
