# 環境セットアップ

# 開発環境セットアップ手順(mac用)
1. App StoreからXcodeをインストール（最新の情報を要参照）
1. Homebrewをインストール
	- [公式のインストール方法](https://brew.sh/index_ja)に従う
1. [Homebrewによる各種ツールのインストール](#Homebrewによる各種ツールのインストール)
1. dotfilesリポジトリをclone
	- `git clone https://github.com/IkokObi/dotfiles.git`
1. [フォントのインストール](#フォントのインストール)
1. [fzf-extrasのインストール](#fzf-extrasのインストール)
1. Karabiner Elementsをインストール
	- [公式ページ](https://karabiner-elements.pqrs.org/)からOSに対応したバージョンをインストール
1. [dotfilesの設定](#dotfilesの設定)
1. Karabinerのcomplex modificationsを設定
1. その他のアプリケーションのインストール
	- Docker (for Mac)
1. [Python環境の構築](#Python環境の構築)
1. [Tex環境の構築](#TeX環境の構築)


# セットアップ手順詳細
## Homebrewによる各種ツールのインストール
`homebrew-install.sh`を実行し、必要なツールをHomebrewでインストールする。


## フォントのインストール
`install-fonts.sh`を実行することでvimやターミナルに必要なフォントをインストールする。
```
source install-fonts.sh
```

## fzf-extrasのインストール
`install-fzf-extras.sh`を実行することでfzfを使った拡張コマンドの設定をします。
```
source install-fzf-extras.sh
```

## dotfilesの設定
### 1. configの設定
`config/_config.sh`を`config/config.sh`という名前でコピーし、ファイル内の`DOTFILES_USER="xxx"`の`xxx`を端末のユーザー名に変更する。

### 2. シンボリックリンクの適用
`link.sh`の中からコメントを外して各種シンボリックリンクを適用する。
```sh
$ source link.sh
```

### 3. vimのwakatime設定
コーディング状況を可視化するWakaTimeを有効化するため、トークンを設定する。[ユーザー設定画面](https://wakatime.com/settings/account)からSecret API Keyをコピーし、vim起動時に入力する。


## Python環境の構築
### 1. pyenvのインストール
設定方法の変更が度々発生するので[公式ドキュメント](https://github.com/pyenv/pyenv)を読む。大抵はpyenvのリポジトリのcloneとzshrc, zprofileへの設定を行う。

### 2. pythonのインストールに必要な外部ツールのインストール
[pyenvのwiki](https://github.com/pyenv/pyenv/wiki#suggested-build-environment)などを参照する。

### 3. pythonのインストール
```
pyenv install 3.x.y
```

### 4. venv環境の構築
`dotfiles/setups/python`にて下記を実行してvenv環境を構築する。
```
source ./create.sh env-name
```

### 5. venv環境の削除
`dotfiles/setups/python`にて下記を実行してvenv環境を削除する。
```
source ./delete.sh env-name
```

### 6. プロジェクトごとのvenv環境
`cd`で移動した際、カレントディレクトリ直下に`.venv`がある場合は自動で有効化される。

venv環境は下記コマンド（自作関数）で作成可能。
```sh
venv-create (env-name)
```


## TeX環境の構築
`dotfiles/setups/tex`へ移動する。
### 1. DockerによるTeX環境の構築
```
make build
```

### 2. texlabのインストール（vim-lsp用）
texlabのリポジトリからコンパイル済みのmac用バイナリをインストールする。インストールは[releasesから](https://github.com/latex-lsp/texlab/releases)行える。
ダウンロードした圧縮ファイル及び実行バイナリは`dotfiles/setups/tex/`配下に置いておけばgitignoreの対象になる。

### 3. TeXファイルのコンパイル方法
latexmkをzshrcなどにエイリアスを設定している場合はパス指定なしでOK。`.latexmkrc`は`~/dotfiles/tex/.latexmkrc`を参照している。
```
~/dotfiles/setups/tex/latexmk file.tex
```


# その他の環境セットアップ（備忘録）
- Googleアカウント
- Slack
- Google IME
- Dropbox
