ARG RELEASE=buster

FROM debian:$RELEASE

RUN --mount=type=cache,target=/var/cache/apt \
    --mount=type=cache,target=/var/lib/apt \
	apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
	biber \
	culmus \
	fonts-font-awesome \
	fonts-linuxlibertine \
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
	texlive-publishers \
	texlive-science \
	texlive-xetex \
	ghostscript && \
  if [ "$RELEASE" = "buster" || "$RELEASE" = "stretch" ] ; then \
	apt-get -y --no-install-recommends install \
	texlive-generic-recommended \
	texlive-generic-extra ; \
  fi \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /document
