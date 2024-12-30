.PHONY: build
build:
	docker build -t local/tex:latest .

.PHONY: example
example:
	docker run --rm -it \
		--name tex \
		-v ${PWD}:/workdir \
		local/tex:latest \
		latexmk -pvc example.tex

.PHONY: install-texlab
install-texlab:
	curl -OL https://github.com/latex-lsp/texlab/releases/download/v3.3.1/texlab-x86_64-macos.tar.gz \
		&& tar xvfz texlab-x86_64-macos.tar.gz
