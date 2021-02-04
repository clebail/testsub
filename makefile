CC=gcc
CFLGAS=-fPIC -wall
LDFLAGS=-shared
ALL=libtest.so

all: $(ALL)

$(ALL): lib.o flib.o
	$(CC) -o $@ $(LDFLAGS) $^

%.o: %.c
	$(CC) -o $@ $(CFLAGS) -c $<

clean:
	rm -f $(ALL)
	rm -f *.o
