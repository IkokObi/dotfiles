#!/bin/sh

# 共通設定を読み込み
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
. "${SCRIPT_DIR}/../scripts/common.sh"

set -e

log_info "Setting up vim configuration..."

# 必要なディレクトリを作成
ensure_dir_exists "${HOME}/.vimundo"
ensure_dir_exists "${HOME}/.vim/after"
ensure_dir_exists "${HOME}/.vim/spell"

# Vimの設定ファイルとディレクトリのシンボリックリンクを作成
create_symlink "${DOTFILES}/vim/.vimrc" "${HOME}/.vimrc"
create_symlink "${DOTFILES}/vim/after/ftplugin" "${HOME}/.vim/after/ftplugin"
create_symlink "${DOTFILES}/vim/ftdetect" "${HOME}/.vim/ftdetect"

log_success "vim configuration completed"
