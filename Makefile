# -*- mode: makefile -*-
UNAME	:= $(shell uname)
ifeq ($(UNAME), Darwin)
	EMACS	:= /Applications/MacPorts/Emacs.app/Contents/MacOS/Emacs
else
	EMACS	:= /usr/bin/emacs
endif
__ALLSRC__	:= $(wildcard *.el)
ELFILES		:= $(__ALLSRC__:%v.el=)
ELCFILES	:= $(ELFILES:%.el=%.elc)

all: $(ELCFILES)

%.elc: %.el
	@$(EMACS) -q -no-site-file --batch \
		-l ~/.emacs.d/init.el \
		-f batch-byte-compile $(CURDIR)/$<

clean:
	rm -f $(ELCFILES)

distclean: clean
