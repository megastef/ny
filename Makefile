
PREFIX ?= /usr/local

install: bin/ny
	cp $< $(PREFIX)/$<

uninstall:
	rm -f $(PREFIX)/bin/ny

.PHONY: install uninstall