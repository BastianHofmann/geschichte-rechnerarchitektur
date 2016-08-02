TEX_FILES = $(wildcard *.tex)
BIB_FILES = $(wildcard *.bib)
IMG_SRCS = $(wildcard Abbildungen/*.pdf)

all: Roehrenrechner.pdf

Roehrenrechner.pdf: $(TEX_FILES) $(BIB_FILES) $(IMG_SRCS) Makefile Ausarbeitung.sty
	pdflatex Roehrenrechner.tex
	pdflatex Roehrenrechner.tex
	bibtex Roehrenrechner
	pdflatex Roehrenrechner.tex
	pdflatex Roehrenrechner.tex
clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf *.out *.toc
