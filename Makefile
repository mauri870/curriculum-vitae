.PHONY: all

all: build

build:
	xelatex -synctex=1 -interaction=nonstopmode cv.tex

tectonic:
	tectonic cv.tex

watch:
	find -name 'cv.*' -type f | entr make tectonic

clean:
	@rm cv.{aux,bbl,blg,log,out,pdf,synctex.gz} texput.log ||:
