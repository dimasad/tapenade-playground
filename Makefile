
TAPENADE_INCLUDE = -I $(TAPENADE_HOME)/ADFirstAidKit
TAPENADE = $(TAPENADE_HOME)/bin/tapenade

%.o: %.c
	gcc -c -o $@ $< $(TAPENADE_INCLUDE)


test1: test1_main.o test1_b.o test1.o
	gcc -o $@ $^

test1_main.o: test1.h test1_b.h
test1.o: test1.h
test1_b.o: test1.h test1_b.h

test1_b.c test1_b.h: test1.c
	$(TAPENADE) -b $< $(TAPENADE_INCLUDE) -head f

clean:
	rm -f *~ *_b.c *_b.h *_d.c *_d.h *_bv.c *_bv.h *_dv.c *_dv.h *.o *.msg
	rm -f test1
