RM = rm -rf
LATEX = lualatex


.SUFFIXES: .tex .pdf
.tex.pdf:
	${LATEX} ${.IMPSRC}


.PHONY: all
all: poster.pdf

.PHONY: clean
clean:
	${RM} *.pdf *.aux *.log *.out *.nav *.toc *.snm
