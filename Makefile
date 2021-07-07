all: cnatool.ps cnatool.pdf

cnatool.dvi: cnatool.tex references.bib
#	latex cnatool 
	pdflatex cnatool 
	bibtex cnatool
#	latex cnatool
	pdflatex cnatool
	pdflatex cnatool
	
cnatool.ps: cnatool.dvi
#	dvips -t a4 -o cnatool.ps cnatool
	
cnatool.pdf: cnatool.dvi
#	ps2pdf cnatool.ps cnatool.pdf

clean:
	rm -f *.aux *.bbl *.blg *.brf *.dvi *.loa *.lof *.log *.lot *.out *.pdf *.ps *.toc
	cd Appendices; rm -f *.aux *.bbl *.blg *.brf *.dvi *.loa *.lof *.log *.lot *.out *.pdf *.ps *.toc
	cd Chapters; rm -f *.aux *.bbl *.blg *.brf *.dvi *.loa *.lof *.log *.lot *.out *.pdf *.ps *.toc
	cd Others; rm -f *.aux *.bbl *.blg *.brf *.dvi *.loa *.lof *.log *.lot *.out *.pdf *.ps *.toc
	cd References; rm -f *.aux *.bbl *.blg *.brf *.dvi *.loa *.lof *.log *.lot *.out *.pdf *.ps *.toc

