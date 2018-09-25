CWD := $(shell pwd)

.PHONY: test
test:
	qemu-system-x86_64 src/boot
