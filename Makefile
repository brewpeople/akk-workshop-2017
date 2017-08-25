NAME=workshop
TEX=$(NAME).tex
PDF=$(NAME).pdf
CLEAN_PATTERN = *.aux *.bbl *.bcf *.log *.nav *.out *.snm *.toc $(PDF)

.PHONY: all clean

all: $(PDF)

clean:
	@rm -f $(CLEAN_PATTERN)

%.pdf: %.tex
	xelatex -shell-escape $<
