# Makefile -- main

SHELL=/bin/bash
NAME=$(shell grep -H ^[^%].*\\documentclass *.tex | cut -d: -f1 | cut -d. -f1)

DEPENDENCIES=images $(NAME).tex

ifeq ($(strip $(wildcard $(NAME).bib) ),)
HAVE_BIB=no
else
HAVE_BIB=yes
endif

ifeq '$(HAVE_BIB)' 'yes'
DEPENDENCIES+= $(strip $(wildcard $(NAME).bib) )
endif

all: $(NAME).pdf

$(NAME).pdf: $(DEPENDENCIES)
	pdflatex -halt-on-error $(NAME)
	echo "   Compiling references..."; \
	bibtex $(NAME); \
	pdflatex $(NAME); \
	pdflatex $(NAME)

images:
	make -C images all

clean:
	-rm -f $(NAME).{aux,toc,lot,log,tmp,dvi,idx,ilg,ind,bbl,blg,out}
	make -C images clean

distclean: clean
	-rm -f $(NAME).pdf
#	make -C images distclean

k: $(NAME).pdf
	@echo "   Opening $(NAME).pdf with kpdf..."
	@kpdf $(NAME).pdf &> /dev/null &

x: $(NAME).pdf
	@echo "   Opening $(NAME).pdf with xpdf..."
	@xpdf $(NAME).pdf &> /dev/null &

e: $(NAME).pdf
	@echo "   Opening $(NAME).pdf with evince..."
	@evince $(NAME).pdf &> /dev/null &

.PHONY: all images clean distclean
