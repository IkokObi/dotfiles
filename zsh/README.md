# zsh

## ディレクトリ構成
- .zshrc: 個別の設定を各ファイルから読み込む
- .zprofile: zprofileで設定すべき内容をこちらに記載
- basic.zsh: zshの基本設定
- prompt.zsh: プロンプトの見た目設定
- application.zsh: 各種アプリケーションに関する設定
- alias.zsh: コマンドのエイリアス、ショートカット設定
- users/: 使用PCごとの設定
  - (pc-name)/setting.zsh

## .zshrc, .zprofile
zshの起動時に読み込まれるファイル。zprofileはログインシェルでのみ、zshrcはログインシェル及びインタラクティブシェルで読み込まれる。

zshrcに記載する内容を分割して`*.zsh`に定義し、zshrcから読み込んでいる。
