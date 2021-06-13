point.o:
	gcc -c point.h point.c

namedPoint.o:
	gcc -c namedPoint.h namedPoint.c

encapsulation_example: point.o
	gcc main_encapsulation.c point.o -o encapsulation_example.out -lm

inheritance_example: point.o namedPoint.o
	gcc main_inheritance.c point.o namedPoint.o -o inheritance_example.out -lm

