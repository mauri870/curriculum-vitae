.PHONY: all

all: build

build:
	xelatex -synctex=1 -interaction=nonstopmode cv.tex

tectonic:
	tectonic cv.tex

clean:
	@rm cv.{aux,bbl,blg,log,out,pdf,synctex.gz} texput.log ||:
