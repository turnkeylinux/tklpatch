progname=tklpatch
prefix = /usr/local
INSTALL_PATH_BIN=$(prefix)/bin
INSTALL_PATH_SHARE=$(prefix)/share/$(progname)

all: usage

usage:
	@echo 'Usage: '
	@echo '    make install'
	@echo '    make uninstall'

install:
	cp bin/* $(INSTALL_PATH_BIN)
	mkdir -p $(INSTALL_PATH_SHARE)
	cp -a docs $(INSTALL_PATH_SHARE)

uninstall:
	rm $(INSTALL_PATH_BIN)/$(progname)*
	rm -rf $(INSTALL_PATH_SHARE)

.PHONY: all usage install uninstall
