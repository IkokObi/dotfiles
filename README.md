# dotfiles

## 設定の適用手順
### 1. リポジトリのクローン
ホームディレクトリ直下にこのdotfilesディレクトリを配置してください。

### 2. configの設定
`config/_config.sh`を`config/config.sh`という名前でコピーし、ファイル内の`DOTFILES_USER="xxx"`の`xxx`を端末のユーザー名に変更してください。

### 3. シンボリックリンクの適用
`link.sh`の中からコメントを外して各種シンボリックリンクを適用します。
```sh
$ source link.sh
```

## 管理されているアプリケーション一覧
- zsh
- vim
- git
- tex
- karabiner

## 使われなくなった設定
- bash
