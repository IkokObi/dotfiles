.PHONY: build
build:
	docker build -t local/tex:latest .

.PHONY: enter
enter:
	docker run --rm -it -v $PWD:/workdir -v ~/dotfiles/tex/.latexmkrc:/root/.latexmkrc local/tex:latest

.PHONY: install-texlab
install-texlab:
	curl -OL https://github.com/latex-lsp/texlab/releases/download/v3.3.1/texlab-x86_64-macos.tar.gz \
		&& tar xvfz texlab-x86_64-macos.tar.gz
