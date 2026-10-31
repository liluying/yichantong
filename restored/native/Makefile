CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -Werror -std=c11 -fPIC -ffp-contract=off
all: build/libexcavator_recovered.so build/libgnss_transform_recovered.so
build/libexcavator_recovered.so: recovered/excavator_recovered.c recovered/excavator_geometry.c recovered/excavator_recovered.h
	mkdir -p build
	$(CC) $(CFLAGS) -shared recovered/excavator_recovered.c recovered/excavator_geometry.c -lm -o $@
build/libgnss_transform_recovered.so: recovered/gnss_transform.c recovered/gnss_transform.h
	mkdir -p build
	$(CC) $(CFLAGS) -shared recovered/gnss_transform.c -lm -o $@
clean:
	rm -rf build
.PHONY: all clean
