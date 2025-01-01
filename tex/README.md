# TeX環境の構築

## DockerによるTeX環境の構築
ここの構成を参考に、TeXで執筆するプロジェクトごとにDockerfile, latexmkrc, Makefileを準備する。PDFビューアはSkimを使用する。
```sh
make build # (初回のみ) Dockerイメージのビルド
make example # TeXファイルのコンパイル(ファイル変更時に自動でコンパイル)
```

## texlabのインストール（vim-lsp用）
texlabのリポジトリからコンパイル済みのmac用バイナリをインストールする。インストールは[releasesから](https://github.com/latex-lsp/texlab/releases)行える。
ダウンロードした圧縮ファイル及び実行バイナリは`dotfiles/tex/`配下に置いておけばgitignoreの対象になる。
