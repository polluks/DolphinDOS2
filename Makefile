all: kernal.asm
	acme -o rom/kernal.rom $<
