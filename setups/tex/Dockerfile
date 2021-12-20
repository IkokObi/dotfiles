FROM paperist/texlive-ja:latest

RUN apt update \
	&& apt install -y texlive-science \
	&& cp -r /usr/share/texlive/texmf-dist/tex/latex/* /usr/local/texlive/2021/texmf-dist/tex/latex/ \
	&& mktexlsr
