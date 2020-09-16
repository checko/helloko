PWD := $(shell pwd)
#KVERSION := $(shell uname -r)
KERNEL_DIR = /tmp/linux-4.14

MODULE_NAME = hello
obj-m := $(MODULE_NAME).o

all:
	make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 -C $(KERNEL_DIR) M=$(PWD) 


