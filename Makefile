ifneq ($(KERNELRELEASE),)
	obj-m := hwko.o
else
	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
	PWD := $(shell pwd)
.PHONY: default
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
endif

.PHONY: clean
clean:
	-rm *.o *.ko *.mod.* Module.symvers modules.order

