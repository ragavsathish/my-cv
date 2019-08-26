From ubuntu:latest
LABEL maintainer "Sathish Narayanan <ragav.sathish@gmail.com>"

# Required packages.
RUN apt-get update &&  apt-get install --no-install-recommends texlive-fonts-recommended  \
texlive-latex-extra texlive-fonts-extra texlive-xetex tex-gyre texlive-latex-recommended  \
 dvipng
WORKDIR /resume
ENTRYPOINT ["pdflatex -interaction=nonstopmode -halt-on-error -output-directory pdf "]