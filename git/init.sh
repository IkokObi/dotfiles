#!/bin/sh

# 共通設定を読み込み
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
. "${SCRIPT_DIR}/../scripts/common.sh"

set -e

log_info "Setting up git configuration..."

# 設定ファイルの読み込み
CONFIG_FILE="${DOTFILES_CONFIG}/config.sh"
if ! check_file_exists "$CONFIG_FILE"; then
    exit 1
fi

. "$CONFIG_FILE" # Set DOTFILES_USER variables

# Git設定ファイルのシンボリックリンクを作成
create_symlink "${DOTFILES}/git/.git_commit_template" "${HOME}/.git_commit_template"
create_symlink "${DOTFILES}/git/.gitignore_global" "${HOME}/.gitignore_global"
create_symlink "${DOTFILES}/git/.gitconfig" "${HOME}/.gitconfig"

# ユーザー固有のgitconfig設定
GITCONFIG_USER="${DOTFILES}/users/${DOTFILES_USER}/.gitconfig.user"
if [ -f "$GITCONFIG_USER" ]; then
    create_symlink "$GITCONFIG_USER" "${HOME}/.gitconfig.user"
    log_success "User-specific git config linked"
else
    log_warning "User-specific git config not found: ${GITCONFIG_USER}"
    log_info "Create this file if you need user-specific git settings"
fi

log_success "git configuration completed"
