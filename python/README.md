# Python環境の構築

## Pythonのインストール
### 1. pyenvのインストール
設定方法の変更が度々発生しているので[公式ドキュメント](https://github.com/pyenv/pyenv)を読む。大抵はpyenvのリポジトリのcloneとzshrc, zprofileへの設定を行う。

### 2. pythonのビルドに必要な外部ツールのインストール
[pyenvのwiki](https://github.com/pyenv/pyenv/wiki#suggested-build-environment)などを参照する。

### 3. pythonのインストール
```sh
pyenv install 3.x.y
```

## 仮想環境の構築
### venv環境の構築
`dotfiles/python`にて下記を実行してvenv環境を構築する。
```sh
source ./create.sh env-name
```

移動したディレクトリに`.venv-name`ファイルがある場合、そのファイルに記載の環境`env-name`に対して`~/dotfiles/python/envs/{env-name}`が有効化される。（ref. `dotfiles/zsh/application.zsh`の`auto_venv_activate`関数）

また、下記コマンド（自作関数）を実行すると、実行したディレクトリの直下に`.venv_private`という仮想環境が作成され、そのディレクトリ移動時に自動で有効化される。
```sh
venv-create (env-name)
```

### venv環境の削除
`dotfiles/python`にて下記を実行してvenv環境を削除する。
```sh
source ./delete.sh env-name
```

`venv-create` で作成した環境は手動で削除する必要がある。
