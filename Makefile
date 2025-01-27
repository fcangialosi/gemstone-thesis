all: thesis

thesis: *.tex
	pdflatex -interaction=nonstopmode main && makeglossaries main && bibtex main && pdflatex -interaction=nonstopmode main && pdflatex -interaction=nonstopmode main

interact:
	pdflatex main && makeglossaries main && bibtex main && pdflatex main && pdflatex main

clean:
	rm -rf *.log *.aux *.bbl *.blg *.acn *.acr *.glg *.glo *.gls *.glsdefs *.fmt *.out *.lof *.lot *.toc *.ist
