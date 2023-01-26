.PHONY: all

all: build

build:
	tectonic cv.tex

xelatex:
	xelatex -synctex=1 -interaction=nonstopmode cv.tex

watch:
	find -name 'cv.*' -type f | entr make tectonic

clean:
	@rm cv.{aux,bbl,blg,log,out,pdf,synctex.gz} texput.log ||:
