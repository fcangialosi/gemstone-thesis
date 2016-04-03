all: thesis

thesis: *.tex
	pdflatex -interaction=nonstopmode main && makeglossaries -interaction=nonstopmode main && bibtex -interaction=nonstopmode main && pdflatex -interaction=nonstopmode main && pdflatex -interaction=nonstopmode main

clean:
	rm -rf *.log *.aux *.bbl *.blg *.acn *.acr *.glg *.glo *.gls *.glsdefs *.fmt *.out *.lof *.lot *.toc *.ist
