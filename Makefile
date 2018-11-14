KVERS = $(shell uname -r)

# kernel modules
obj-m += hello.o

# hello-objs := file1.o file2.o

#Specify flags for the module compilation
#EXTRA_CFLAGS=-g -OO

build:kernel_modules

kernel_modules:
	make -C /lib/modules/$(KVERS)/build M=$(CURDIR) modules
clean:
	make -C /lib/modules/$(KVERS)/build M=$(CURDIR) clean