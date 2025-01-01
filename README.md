# dotfiles
これは個人用に開発環境を整えるためのリポジトリです。汎用的に使えるようには考えていませんので、そのままの利用は推奨しません。

This is a repository to set up a development environment for personal use. It is not intended to be used generally, and is not recommended applying this repository to your environment as it is.

## 環境の構築手順
[setupsディレクトリ](./setups/README.md)に手順を記載

## 設定が管理されているアプリケーション一覧
- zsh
  - 基本設定、プロンプト、エイリアス、アプリケーション固有の設定を分割管理
  - ユーザー固有の設定はsubmoduleとして管理
- vim
  - dein.vimによるプラグイン管理
  - LSP、補完、リンター等の開発支援機能
  - ファイルタイプごとの設定
- git
  - コミットテンプレート
  - グローバルな.gitignore設定
- tex
  - Docker環境
  - LSP (texlab)による補完
- karabiner
  - キーマッピングのカスタマイズ
  - hjklによる矢印キー操作
  - アプリケーション固有のショートカット

## 主な開発環境
- Python
  - pyenv + venv による環境管理
  - ruff, black等による自動フォーマット
  - jedi-language-serverによる補完
- Node.js
  - fnmによるバージョン管理
- TeX
  - Dockerによる環境構築
  - latexmkによるビルド

## 使われなくなった設定
- bash: macのOSアップデートに伴いzshに移行したため
