RM = rm -rf
INKSCAPE = inkscape
DPI = 360

.SUFFIXES: .svg .png
.svg.png:
	${INKSCAPE} -zD -d ${DPI} -e ${.TARGET} ${.IMPSRC}

.PHONY: all
all: vectors.png architecture.png

.PHONY: clean
clean:
	${RM} *.png
