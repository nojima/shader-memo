TEX_FILES = $(wildcard *.tex)
PDF_FILES = $(patsubst %.tex,out/%.pdf,$(TEX_FILES))

all: out $(PDF_FILES)

out:
	mkdir out

out/%.pdf: %.tex
	latexmk -outdir=out $<
