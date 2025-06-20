#!/bin/sh

# 共通設定を読み込み
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
. "${SCRIPT_DIR}/../scripts/common.sh"

set -e

log_info "Setting up Karabiner-Elements configuration..."

# Karabinerの設定ディレクトリを作成
KARABINER_CONFIG_DIR="${HOME}/.config/karabiner/assets/complex_modifications"
ensure_dir_exists "$KARABINER_CONFIG_DIR"

# Karabinerのマッピング設定をリンク
create_symlink "${DOTFILES}/karabiner/mapping.json" "${KARABINER_CONFIG_DIR}/mapping.json"

log_success "Karabiner-Elements configuration completed"
log_info "Please restart Karabiner-Elements to apply the new settings"
