lessons = $(wildcard lesson*.tex)
out = $(lessons:.tex=.pdf)

all:
	make $(out)

lesson%.pdf: lesson%.tex
	mkdir -p out
	xelatex $^ -halt-on-error > /dev/null
	mv $@ out/$@
	rm *.aux
	rm *.log
	rm *.out

clean:
	rm -rf out