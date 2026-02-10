# Makefile for xpad kernel module
# DKMS compatible

ifneq ($(KERNELRELEASE),)
    obj-m += xpad.o
else
    KDIR ?= /lib/modules/$(shell uname -r)/build
    default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
    clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
endif
