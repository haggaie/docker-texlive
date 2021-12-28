# Sample makefile to use with the texlive containers

LATEXMK=docker run --rm -v `readlink -f $${PWD}`:/document haggaie/texlive latexmk
XELATEX=docker run --rm -v `readlink -f $${PWD}`:/document haggaie/texlive xelatex

%.pdf: %.tex
	$(LATEXMK) -pdf $< -shell-escape

%.cls:   %.ins %.dtx
	$(XELATEX) $<

