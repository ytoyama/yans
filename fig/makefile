RM = rm -rf
INKSCAPE = inkscape
DPI = 360
CONVERTED_FIGURES = vectors.png architecture.png reviewcomment.png

.SUFFIXES: .svg .png
.svg.png:
	${INKSCAPE} -zD -d ${DPI} -e ${.TARGET} ${.IMPSRC}

.SUFFIXES: .csv .png
.csv.png:
	python3 bar_chart.py ${.IMPSRC} ${.TARGET}

.PHONY: all
all: ${CONVERTED_FIGURES}

.PHONY: clean
clean:
	${RM} ${CONVERTED_FIGURES}
