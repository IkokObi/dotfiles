# 環境セットアップ

# 開発環境セットアップ手順(mac用)
1. App StoreからXcodeをインストール（最新の情報を要参照）
1. Homebrewをインストール
	- [公式のインストール方法](https://brew.sh/index_ja)に従う
1. Homebrewで各種インストール
1. dotfilesリポジトリをclone
	- `git clone https://github.com/IkokObi/dotfiles.git`
1. フォントをインストール
	- `dotfiles/setups/install-fonts.sh`を実行する
1. Karabiner Elementsをインストール
	- [公式ページ](https://karabiner-elements.pqrs.org/)からOSに対応したバージョンをインストール
1. dotfilesのシンボリックリンクを設定
	- `dotfiles/link.sh`を実行
	- vimでwakatimeのキーを入力
1. Karabinerのcomplex modificationsを設定
1. その他のアプリケーションのインストール
	- Docker (for Mac)
1. [Python環境の構築](#Python環境の構築)
1. [Tex環境の構築](#TeX環境の構築)



# セットアップ手順詳細
## Homebrewによる各種ツールのインストール
- `brew install git vim fzf the_silver_searcher`

## フォントのインストール
`install-fonts.sh`を実行するだけです。これでvimやターミナルに必要なフォントをインストールすることが出来ます。
```
source install-fonts.sh
```

## Python環境の構築
- pyenvのインストール
  - 設定方法の変更が度々発生するので[公式ドキュメント](https://github.com/pyenv/pyenv)を読む
  - 大抵はpyenvのリポジトリのcloneとzshrc, zprofileへの設定を行う
- pythonのインストールに必要な外部ツールのインストール
  - [pyenvのwiki](https://github.com/pyenv/pyenv/wiki#suggested-build-environment)などを参照
- pythonのインストール


## TeX環境の構築


# その他の環境セットアップ（備忘録）
- Googleアカウント
- Slack
- Google IME
- Dropbox
