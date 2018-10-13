FROM ubuntu

ENV PANDOC_VERSION "2.3.1"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \ 
    texlive-latex-base \
    texlive-full \
        latexmk \
        texlive-xetex \
        texlive-latex-extra \
        texlive-fonts-extra \
        texlive-bibtex-extra \
        fontconfig \
        lmodern wget build-essential graphviz

RUN wget https://github.com/jgm/pandoc/releases/download/2.3.1/pandoc-${PANDOC_VERSION}-1-amd64.deb -O /pandoc.deb \ 
        && dpkg -i /pandoc.deb && rm /pandoc.deb
