include make/Makefile.dirs


DIRS = piqirun piqic-ocaml


.PHONY: install uninstall clean distclean


install:
	$(MAKE) -C piqirun install
	-install -d $(DESTDIR)/bin
	install piqic-ocaml/piqic-ocaml $(DESTDIR)/bin


uninstall:
	$(MAKE) -C piqirun uninstall
	rm -f $(DESTDIR)/bin/piqic-ocaml


distclean: clean