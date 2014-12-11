

THESISMAIN = diss

all: $(THESISMAIN).pdf

$(THESISMAIN).pdf : $(THESISMAIN).tex body/*.tex ref.bib *.cls *.cfg
	xelatex -no-pdf --interaction=nonstopmode diss
#	bibtex diss
	xelatex -no-pdf --interaction=nonstopmode diss
	xelatex --interaction=nonstopmode diss

.PHONY: clean open

open:
	make
	open diss.pdf
	
clean:
	-@rm diss.aux diss.log diss.xdv diss.bbl diss.blg diss.out diss.toc diss.synctex.gz diss.pdf
	-@rm body/*.aux body/*.log

