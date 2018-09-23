# dotfileの管理

## ここだけは読んでください
これはIkokのドットファイルをまとめたリポジトリです。
vimrcの設定のみ利用したい場合には ".bash_profile"
などを誤ってご自身のファイルに上書きしないように注意してください。

## List
- link.sh
- .vimrc
- .bash_profile

## Vimの設定
### 使い方
- vimの最新版をインストール
- neocompleteを使うためにvimを"--with lua"オプションでインストールしてください。


### 配置の仕方 
ホームディレクトリにこの"dotfiles"ディレクトリを配置し、dotfilesに入って
```sh:title
$ bash link.sh
```
を実行してください。これによりdotfiles内に存在する全てのドットファイルに対してシンボリックリンクが作成されます。


### それぞれのファイルの内容
#### vimrc
vimの設定を読み込む元ファイル。詳細な設定は"source"で各々読み込む。
#### basic.vim
vimの基本設定。これだけあれば割と使える。
#### neobundle.vim
pluginの管理をするneobundleの基本設定。deinに移行したのでコメントアウトされています。
#### dein.vim
pluginの管理をするdeinの基本設定。読み込むpluginは"toml-files"に設定する。プラグインが不要の場合にはコメントアウトしてください。
#### plugin.vim
pluginの個別の設定。プラグインをインストールしない場合にはコメントアウトしてください。
#### init.vim
vimrcで最初に設定する内容が書かれている
#### post.vim
vimrcで最後に設定する内容が書かれている
#### toml-files
toml形式で記述するファイル。dein.tomlは毎回読み込まれ、dein_lazy.tomlは特定の条件で読み込まれる

### 追記
~~deinからプラグインを読み込むとcaw.vimが動作しないので、とりあえずのところneobundleを使うようにしている~~<br>
&rarr; filetypeの設定をしたらdeinで動くようになった

