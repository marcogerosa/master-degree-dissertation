FILENAME = dissertacao
DIR = /usr/local/texlive/2015/bin/x86_64-darwin/

all: clean build clean view

view:
	open $(FILENAME).pdf 

quickbuild:
	$(DIR)/pdflatex $(FILENAME).tex 
	open $(FILENAME).pdf 

latex:
	$(DIR)/latex $(FILENAME)
	$(DIR)/dvips -o $(FILENAME).ps $(FILENAME).dvi
	ps2pdf $(FILENAME).ps $(FILENAME).pdf
	open $(FILENAME).pdf

pdflatex:
	# PdfLaTeX + BibTex + (2x) PdfLaTeX
	$(DIR)/pdflatex $(FILENAME).tex 
	$(DIR)/bibtex $(FILENAME).aux
	$(DIR)/pdflatex $(FILENAME).tex 
	$(DIR)/pdflatex $(FILENAME).tex 

build:
	# LaTex + BibiTex + (2x) LaTeX + dvips + ps2pdf
	$(DIR)/latex $(FILENAME).tex
	$(DIR)/bibtex $(FILENAME).aux
	$(DIR)/latex $(FILENAME).tex
	$(DIR)/latex $(FILENAME).tex
	$(DIR)/makeindex $(FILENAME).tex
	$(DIR)/latex $(FILENAME).tex
	$(DIR)/dvips -o $(FILENAME).ps $(FILENAME).dvi
	ps2pdf $(FILENAME).ps $(FILENAME).pdf

clean:
	mkdir -p .trash;
	
	mv *.aux .trash/ 2> /dev/null; true
	mv *.dvi .trash/ 2> /dev/null; true
	mv *.ps .trash/ 2> /dev/null; true
	mv *.idx .trash/ 2> /dev/null; true
	mv *.loa .trash/ 2> /dev/null; true
	mv *.lof .trash/ 2> /dev/null; true
	mv *.log .trash/ 2> /dev/null; true
	mv *.toc .trash/ 2> /dev/null; true
	mv *.out .trash/ 2> /dev/null; true
	mv *.snm .trash/ 2> /dev/null; true
	mv *.tex~ .trash/ 2> /dev/null; true
	mv *.ind .trash/ 2> /dev/null; true
	mv *.bak .trash/ 2> /dev/null; true
	mv *.bbl .trash/ 2> /dev/null; true
	mv *.bbl~ .trash/ 2> /dev/null; true
	mv *.blg .trash/ 2> /dev/null; true
	mv *.bib~ .trash/ 2> /dev/null; true
	mv *.brf .trash/ 2> /dev/null; true
	mv *.ilg .trash/ 2> /dev/null; true
	mv *.nav .trash/ 2> /dev/null; true
	mv *.vrb .trash/ 2> /dev/null; true
	mv *.backup .trash/ 2> /dev/null; true
	
	chmod -x *.tex 
	chmod +x *.pdf 
