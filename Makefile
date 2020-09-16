PWD := $(shell pwd)
#KVERSION := $(shell uname -r)
KERNEL_DIR = /home/charles-chang/pilinux

MODULE_NAME = hello
obj-m := $(MODULE_NAME).o

all:
	make V=1 CROSS_COMPILE=arm-linux-gnueabihf- ARCH=arm -C $(KERNEL_DIR) M=$(PWD) 


