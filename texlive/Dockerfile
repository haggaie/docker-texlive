ARG RELEASE=bookworm

FROM debian:$RELEASE

ARG TARGETARCH
ARG RELEASE

RUN --mount=type=cache,id=apt-cache-${TARGETARCH}-${RELEASE},target=/var/cache/apt,sharing=locked \
    --mount=type=cache,id=apt-lib-${TARGETARCH}-${RELEASE},target=/var/lib/apt,sharing=locked \
	apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
	biber \
	culmus \
	fonts-font-awesome \
	fonts-linuxlibertine \
	git \
	latexmk \
	latexdiff \
	lmodern \
	make \
	texlive-bibtex-extra \
	texlive-latex-recommended \
	texlive-extra-utils \
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
	ghostscript \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /document
