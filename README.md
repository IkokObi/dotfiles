# dotfiles
これは個人用に開発環境を整えるためのリポジトリです。汎用的に使えるようには考えていませんので、そのままの利用は推奨しません。

This is a repository to set up a development environment for personal use. It is not intended to be used generally, and is not recommended applying this repository to your environment as it is.

## 🚀 クイックスタート

1. リポジトリをクローン
   ```bash
   git clone --recursive git@github.com:IkokObi/dotfiles.git
   cd dotfiles
   ```

2. 初期セットアップを実行
   ```bash
   ./init.sh
   ```
   
   初回実行時は自動的に設定ファイルが作成されるので、指示に従って `DOTFILES_USER` を設定してください。

3. 再度セットアップを実行
   ```bash
   ./init.sh
   ```

## 📦 設定が管理されているアプリケーション一覧
- **zsh**
  - 基本設定、プロンプト、エイリアス、アプリケーション固有の設定を分割管理
  - ユーザー固有の設定はsubmoduleとして管理
- **vim**
  - dein.vimによるプラグイン管理
  - LSP、補完、リンター等の開発支援機能
  - ファイルタイプごとの設定
- **git**
  - コミットテンプレート
  - グローバルな.gitignore設定
- **python**
  - pyenvによるPythonのバージョン管理
  - venvによる仮想環境管理（改善されたスクリプト付き）
- **tex**
  - Docker環境
  - LSP (texlab)による補完
- **karabiner**
  - キーマッピングのカスタマイズ
  - hjklによる矢印キー操作
  - アプリケーション固有のショートカット

その他のツールなどは`setups`ディレクトリに記載

## 🔧 主な改善点

### 自動化されたセットアップ
- **一括初期化**: `./init.sh` で全ての設定を自動適用
- **設定ファイル自動生成**: 初回実行時に設定テンプレートから自動作成
- **エラーハンドリング**: 各段階でエラーチェックと分かりやすいメッセージ

### Python環境管理の改善
```bash
# 仮想環境の作成（pyenvサポート付き）
./python/create.sh myproject 3.11

# 仮想環境の削除（安全性チェック付き）
./python/delete.sh myproject
```

### ログ出力の改善
- カラー出力によるわかりやすいログ
- 成功/警告/エラーの明確な区別
- 各設定の適用状況を詳細表示

## 🏗️ 主な開発環境
- **Python**
  - pyenv + venv による環境管理
  - jedi-language-serverによる補完
  - 改善されたcreate/deleteスクリプト
- **Node.js**
  - fnmによるバージョン管理
- **TeX**
  - Dockerによる環境構築

## 📁 ディレクトリ構造
```
├── init.sh              # メイン初期化スクリプト（改善済み）
├── scripts/
│   └── common.sh        # 共通設定と関数
├── config/
│   ├── _config.sh       # 設定テンプレート
│   └── config.sh        # ユーザー設定（自動生成）
├── zsh/                 # zsh設定
├── vim/                 # vim設定
├── git/                 # git設定
├── python/              # Python環境管理（改善済み）
├── karabiner/           # Karabiner-Elements設定
├── tex/                 # LaTeX環境
└── setups/              # 初期セットアップ
```

## 🔄 従来からの変更点
- **設定ファイルの自動管理**: `config.sh`の存在チェックと自動生成
- **共通化**: 重複コードを`scripts/common.sh`に集約
- **エラーハンドリング**: 各段階での適切なエラーチェック
- **ユーザビリティ**: カラーログとわかりやすいメッセージ
- **Python環境**: より柔軟で安全な仮想環境管理

詳細なセットアップ手順は `setups/README.md` を参照してください。
