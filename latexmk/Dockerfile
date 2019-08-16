FROM haggaie/texlive:stretch

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
	latexmk \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["latexmk"]
