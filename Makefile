lessons = $(wildcard lesson*.tex)
out = $(lessons:.tex=.pdf)

all:
	make $(out)

lesson%.pdf: lesson%.tex
	mkdir -p out
	latexmk -pdf -pdflatex="lualatex -interaction=nonstopmode" -use-make $^
	mv $@ out/$@

clean:
	latexmk -CA
	rm -rf out