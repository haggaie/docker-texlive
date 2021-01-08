FROM debian:buster

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
	biber \
	latexmk \
    lmodern \
	make \
	texlive-bibtex-extra \
	texlive-latex-recommended \
	texlive-font-utils \
	texlive-fonts-recommended \
	texlive-fonts-extra \
	texlive-latex-extra \
	texlive-lang-arabic \
	texlive-lang-cyrillic \
	texlive-lang-japanese \
	texlive-generic-recommended \
	texlive-generic-extra \
	texlive-publishers \
	texlive-science \
    texlive-xetex \
	ghostscript \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /document
