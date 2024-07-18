obj-m += charhello.o
EXTRA_CFLAGS = -Wall -g
PWD := $(CURDIR)
Release:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
test:
	insmod charhello.ko
	rmmod charhello.ko
