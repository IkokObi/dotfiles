# 開発環境セットアップ手順
1. App StoreからXcodeをインストール（最新の情報を要参照）
1. Homebrewをインストール
	- [公式のインストール方法](https://brew.sh/index_ja)に従う
1. [Homebrewによる各種ツールのインストール](#Homebrewによる各種ツールのインストール)
1. GitHubの認証設定
1. dotfilesリポジトリをclone
	- `git clone --recursive git@github.com:IkokObi/dotfiles.git`
1. [フォントのインストール](#フォントのインストール)
1. [fzf-extrasのインストール](#fzf-extrasのインストール)
1. Karabiner Elementsをインストール
	- [公式ページ](https://karabiner-elements.pqrs.org/)からOSに対応したバージョンをインストール
1. [dotfilesの設定](#dotfilesの設定)
1. Karabinerのcomplex modificationsを設定
1. その他のアプリケーションのインストール
	- Docker (for Mac)
1.  [Node.js環境の構築](#Node.js環境の構築)


# セットアップ手順詳細
## Homebrewによる各種ツールのインストール
`homebrew-install.sh`を実行し、必要なツールをHomebrewでインストールする。


## フォントのインストール
`install-fonts.sh`を実行することでvimやターミナルに必要なフォントをインストールする。
```sh
source install-fonts.sh
```

## fzf-extrasのインストール
`install-fzf-extras.sh`を実行することでfzfを使った拡張コマンドの設定をします。
```sh
source install-fzf-extras.sh
```

## dotfilesの設定
### 1. configの設定
`config/_config.sh`を`config/config.sh`という名前でコピーし、ファイル内の`DOTFILES_USER="xxx"`の`xxx`を端末のユーザー名に変更する。

### 2. シンボリックリンクの適用
`init.sh`の中からコメントを外して各種シンボリックリンクを適用する。
```sh
source init.sh
```

## Node.js環境の構築
Homebrewでfnmをインストールしておく。
```sh
# インストール可能なバージョンの一覧取得
fnm ls-remote

# インストール
fnm install v.x.y.z

# 有効化
fnm use v.x.y.z

# インストールしたバージョンの一覧取得
fnm ls
```
