# -*- mode: makefile -*-
EMACS		:= $(shell which emacs)
__ALLSRC__	:= $(wildcard *.el)
ELFILES		:= $(__ALLSRC__:%v.el=)
ELCFILES	:= $(ELFILES:%.el=%.elc)

all: $(ELCFILES)

%.elc: %.el
	@$(EMACS) -q -no-site-file --batch \
		--eval '(setq max-specpdl-size 2000)' \
		--eval '(setq max-lisp-eval-depth 1000)' \
		-f batch-byte-compile $<
#		--eval '(setq max(-l COMPILE -batch -f batch-byte-compile $<

clean:
	rm -f $(ELCFILES)

distclean: clean
