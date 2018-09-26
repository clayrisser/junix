CWD := $(shell pwd)

.PHONY: build
build: boot_sect

boot_sect: src/boot_sect.asm
	@nasm src/boot_sect.asm -f bin -o boot_sect

.PHONY: clean
clean:
	-@rm -rf boot_sect 2>/dev/null || true

.PHONY: test
test: build
	@qemu-system-x86_64 boot_sect
