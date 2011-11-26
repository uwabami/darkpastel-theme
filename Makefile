# -*- mode: makefile -*-
EMACS		:= $(shell which emacs)
__ALLSRC__	:= $(wildcard *.el)
ELFILES		:= $(__ALLSRC__:%v.el=)
ELCFILES	:= $(ELFILES:%.el=%.elc)

all: $(ELCFILES)

%.elc: %.el
	@$(EMACS) -q -no-site-file --batch \
		-f batch-byte-compile $<

clean:
	rm -f $(ELCFILES)

distclean: clean
