FILENAME = dissertacao
LATEX     = latex
PDFLATEX  = pdflatex
BIBTEX    = bibtex
MAKEINDEX = makeindex

pdf:$(FILENAME).pdf

ps: $(FILENAME).ps

$(FILENAME).pdf: $(FILENAME).tex 
	$(PDFLATEX) $<
	$(BIBTEX) $(FILENAME) 
	$(MAKEINDEX) $(FILENAME) 
	$(PDFLATEX) $< 
	$(PDFLATEX) $<
	$(PDFLATEX) $<

$(FILENAME).ps: $(FILENAME).tex 
	$(LATEX) $<
	$(BIBTEX) $(FILENAME) 
	$(MAKEINDEX) $(FILENAME) 
	$(LATEX) $< 
	$(LATEX) $<
	$(LATEX) $<
	
clean:
	rm -f $(FILENAME)*.ps $(FILENAME)*.dvi *.log \
	      *.aux *.blg *.toc *.brf *.ilg *.ind \
	      missfont.log $(FILENAME)*.bbl $(FILENAME)*.pdf $(FILENAME)*.out \
		  $(FILENAME)*.lof $(FILENAME)*.lot 


# outros

# all: clean pdflatex clean view

view:
	open $(FILENAME).pdf 

# quickbuild:
# 	$(DIR_LATEX)pdflatex $(FILENAME).tex 
# 	open $(FILENAME).pdf 

# latex:
# 	$(DIR_LATEX)latex $(FILENAME)
# 	$(DIR_LATEX)dvips -o $(FILENAME).ps $(FILENAME).dvi
# 	ps2pdf $(FILENAME).ps $(FILENAME).pdf
# 	open $(FILENAME).pdf

# pdflatex:
# 	# PdfLaTeX + BibTex + (2x) PdfLaTeX 
# 	$(DIR_LATEX)pdflatex $(FILENAME).tex 
# 	$(DIR_LATEX)bibtex $(FILENAME).aux
# 	$(DIR_LATEX)pdflatex $(FILENAME).tex 
# 	$(DIR_LATEX)pdflatex $(FILENAME).tex 
	

# build:
# 	# LaTex + BibiTex + (2x) LaTeX + Makeindex + LaTeX + dvips + ps2pdf
# 	$(DIR_LATEX)latex $(FILENAME).tex
# 	$(DIR_LATEX)bibtex $(FILENAME).aux
# 	$(DIR_LATEX)latex $(FILENAME).tex
# 	$(DIR_LATEX)latex $(FILENAME).tex
# 	$(DIR_LATEX)makeindex $(FILENAME).tex
# 	$(DIR_LATEX)latex $(FILENAME).tex
# 	$(DIR_LATEX)dvips -o $(FILENAME).ps $(FILENAME).dvi
# 	ps2pdf $(FILENAME).ps $(FILENAME).pdf

# clean:
# 	mkdir -p .trash;
	
# 	mv *.aux .trash/ 2> /dev/null; true
# 	mv *.dvi .trash/ 2> /dev/null; true
# 	mv *.ps .trash/ 2> /dev/null; true
# 	mv *.idx .trash/ 2> /dev/null; true
# 	mv *.loa .trash/ 2> /dev/null; true
# 	mv *.lof .trash/ 2> /dev/null; true
# 	mv *.log .trash/ 2> /dev/null; true
# 	mv *.toc .trash/ 2> /dev/null; true
# 	mv *.out .trash/ 2> /dev/null; true
# 	mv *.snm .trash/ 2> /dev/null; true
# 	mv *.tex~ .trash/ 2> /dev/null; true
# 	mv *.ind .trash/ 2> /dev/null; true
# 	mv *.bak .trash/ 2> /dev/null; true
# 	mv *.bbl .trash/ 2> /dev/null; true
# 	mv *.bbl~ .trash/ 2> /dev/null; true
# 	mv *.blg .trash/ 2> /dev/null; true
# 	mv *.bib~ .trash/ 2> /dev/null; true
# 	mv *.brf .trash/ 2> /dev/null; true
# 	mv *.ilg .trash/ 2> /dev/null; true
# 	mv *.nav .trash/ 2> /dev/null; true
# 	mv *.vrb .trash/ 2> /dev/null; true
# 	mv *.backup .trash/ 2> /dev/null; true
	
# 	chmod -x *.tex 
# 	chmod +x *.pdf 
