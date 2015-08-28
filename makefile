RM = rm -rf
LATEX = lualatex
POSTER = poster.pdf
FIGURE_DIR = fig


.SUFFIXES: .tex .pdf
.tex.pdf:
	${LATEX} ${.IMPSRC}


.PHONY: all
all: ${POSTER}

${POSTER}: figure

.PHONY: clean
clean:
	${RM} *.pdf *.aux *.log *.out *.nav *.toc *.snm
	${.MAKE} -C ${FIGURE_DIR} ${.TARGET}

.PHONY: view
view: ${POSTER}
	mupdf -r 64 ${.ALLSRC}

.PHONY: figure
figure:
	${.MAKE} -C ${FIGURE_DIR}
