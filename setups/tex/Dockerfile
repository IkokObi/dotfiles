FROM paperist/texlive-ja:latest

RUN apt-get update \
	&& apt-get install -y texlive-science \
	&& cp -r /usr/share/texlive/texmf-dist/tex/latex/* /usr/local/texlive/2022/texmf-dist/tex/latex/ \
	&& mktexlsr
