
INITRD = initrd.img-5.10.0-14-686-pae

$(INITRD):
	cd initrd ; find . | cpio -v -H newc -o | gzip -c > ../$(INITRD)

extract:
	mkdir -p initrd
	cd initrd ; gzip -cd < ../$(INITRD)-orig | cpio -iv

clean:
	rm -f $(INITRD)

.PHONY: clean extract

