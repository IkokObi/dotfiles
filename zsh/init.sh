#!/bin/sh

# 共通設定を読み込み
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
. "${SCRIPT_DIR}/../scripts/common.sh"

set -e

log_info "Setting up zsh configuration..."

# zshrcのシンボリックリンクを作成
create_symlink "${DOTFILES}/zsh/.zshrc" "${HOME}/.zshrc"

log_success "zsh configuration completed"
