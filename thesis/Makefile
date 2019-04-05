all: build/thesis.pdf


TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build
                                                                                
build/thesis.pdf: uofathesis.cls thesis.tex content/*.tex bib/* figures/* | build
	latexmk $(TeXOptions) thesis.tex
	

build:
	mkdir -p build/

clean:
	rm -rf build
