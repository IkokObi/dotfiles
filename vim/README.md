# vim

## ファイル構成
```
- .vimrc
- basic.vim
- colorscheme.vim
- dein.vim
- mapping.vim
- ftdetect/
  └ filetype.vim
- ftplugin/
- toml-files/
```

## ファイルの説明
### .vimrc
設定の読み込み元ファイル。詳細な設定は"source"で各々読み込む。

### basic.vim
全般設定。

### colorscheme.vim
カラースキーム設定。

### dein.vim
pluginの管理をするdeinの設定。読み込むpluginはtoml-filesに設定する。

### mapping.vim
キーマッピング設定。

### ftdetect/filetype.vim
ファイルタイプを検出ファイル。`${HOME}/.vim/ftdetect`に配置することで、vimの起動時に読み込まれてファイルタイプ検出に使われる。

### ftplugin/*.vim
ファイルタイプごとの設定。

### toml-files/
dein.vimで読み込まれるパッケージの管理フォルダ。dein.tomlは毎回読み込まれ、dein_lazy.tomlは条件に当てはまる際に読み込まれる。
