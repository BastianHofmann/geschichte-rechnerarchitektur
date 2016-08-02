TEX_FILES = $(wildcard *.tex)
BIB_FILES = $(wildcard *.bib)
IMG_SRCS = $(wildcard Abbildungen/*.pdf)

all: Röhrenrechner.pdf

Röhrenrechner.pdf: $(TEX_FILES) $(BIB_FILES) $(IMG_SRCS) Makefile Ausarbeitung.sty
	pdflatex Röhrenrechner.tex
	pdflatex Röhrenrechner.tex
	bibtex Röhrenrechner
	pdflatex Röhrenrechner.tex
	pdflatex Röhrenrechner.tex
clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf *.out *.toc
