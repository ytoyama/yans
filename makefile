RM = rm -rf
LATEX = lualatex
POSTER = poster.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	${LATEX} ${.IMPSRC}


.PHONY: all
all: ${POSTER}

.PHONY: clean
clean:
	${RM} *.pdf *.aux *.log *.out *.nav *.toc *.snm

.PHONY: view
view: ${POSTER}
	mupdf -r 64 ${.ALLSRC}
