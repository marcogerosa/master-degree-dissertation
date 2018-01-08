BASE_NAME = dissertation

LATEX     = latex
PDFLATEX  = pdflatex
BIBTEX    = bibtex
MAKEINDEX = makeindex

all: pdflatex clean view

pdflatex:
	# PdfLaTeX + BibTex + (2x) PdfLaTeX 
	pdflatex $(BASE_NAME).tex 
	bibtex $(BASE_NAME).aux
	pdflatex $(BASE_NAME).tex 
	pdflatex $(BASE_NAME).tex 

clean:
	rm -f $(BASE_NAME)*.ps $(BASE_NAME)*.dvi *.log \
	      */*.aux *.aux .log *.idx *.blg *.toc *.brf *.ilg *.ind \
	      missfont.log $(BASE_NAME)*.bbl $(BASE_NAME)*.out \
		  $(BASE_NAME)*.lof $(BASE_NAME)*.lot 

view:
	open -a Skim $(BASE_NAME).pdf 