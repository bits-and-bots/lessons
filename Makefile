lessons = $(wildcard lesson*.tex)
out = $(lessons:.tex=.pdf)

all:
	make $(out)

lesson%.pdf: lesson%.tex
	mkdir -p out
	latexmk -xelatex $^
	mv $@ out/$@

clean:
	latexmk -CA
	rm -rf out