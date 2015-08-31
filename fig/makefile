RM = rm -rf
INKSCAPE = inkscape
DPI = 360
CONVERTED_FIGURES = vectors.png architecture.png

.SUFFIXES: .svg .png
.svg.png:
	${INKSCAPE} -zD -d ${DPI} -e ${.TARGET} ${.IMPSRC}

.PHONY: all
all: ${CONVERTED_FIGURES}

.PHONY: clean
clean:
	${RM} ${CONVERTED_FIGURES}
