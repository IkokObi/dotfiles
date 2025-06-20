#!/bin/sh

# 共通設定
export DOTFILES="${DOTFILES:-${HOME}/dotfiles}"
export DOTFILES_CONFIG="${DOTFILES}/config"

# カラー出力用の定数
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ログ出力関数
log_info() {
    echo "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo "${RED}[ERROR]${NC} $1"
}

# ファイル存在チェック関数
check_file_exists() {
    if [ ! -f "$1" ]; then
        log_error "Required file not found: $1"
        return 1
    fi
    return 0
}

# ディレクトリ作成関数（必要に応じて）
ensure_dir_exists() {
    if [ ! -d "$1" ]; then
        log_info "Creating directory: $1"
        mkdir -p "$1"
    fi
}

# シンボリックリンク作成関数
create_symlink() {
    local source="$1"
    local target="$2"
    
    if [ ! -f "$source" ] && [ ! -d "$source" ]; then
        log_error "Source does not exist: $source"
        return 1
    fi
    
    log_info "Creating symlink: $target -> $source"
    ln -snfv "$source" "$target"
}