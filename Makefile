.PHONY: all
all: bin/tim

bin obj:
	mkdir $@

bin/tim: obj/main.o | bin
	gcc -o $@ $^

obj/main.o: src/main.c | obj
	gcc -c -o $@ $^

.PHONY: clean
clean:
	rm -rf bin obj
