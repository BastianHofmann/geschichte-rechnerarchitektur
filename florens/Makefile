TEX_FILES = $(wildcard *.tex)
BIB_FILES = $(wildcard *.bib)
IMG_SRCS = $(wildcard Abbildungen/*.pdf)

all: Latex-Einfuehrung.pdf

Latex-Einfuehrung.pdf: $(TEX_FILES) $(BIB_FILES) $(IMG_SRCS) Makefile Ausarbeitung.sty
	pdflatex Latex-Einfuehrung.tex
	pdflatex Latex-Einfuehrung.tex
	bibtex Latex-Einfuehrung
	pdflatex Latex-Einfuehrung.tex
	pdflatex Latex-Einfuehrung.tex
clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf *.out *.toc
