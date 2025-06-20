#!/bin/sh

# 共通設定を読み込み
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
. "${SCRIPT_DIR}/scripts/common.sh"

set -e  # エラー時に停止

log_info "🚀 Dotfiles setup starting..."

# 前提条件チェック
check_config_setup() {
    local config_file="${DOTFILES_CONFIG}/config.sh"
    local template_file="${DOTFILES_CONFIG}/_config.sh"
    
    if [ ! -f "$config_file" ]; then
        log_warning "config.sh not found. Setting up from template..."
        
        if [ ! -f "$template_file" ]; then
            log_error "Template file not found: $template_file"
            exit 1
        fi
        
        cp "$template_file" "$config_file"
        log_info "Created config.sh from template"
        log_warning "Please edit ${config_file} and set DOTFILES_USER variable"
        log_warning "Then run this script again"
        exit 0
    fi
    
    # DOTFILES_USER が設定されているかチェック
    . "$config_file"
    if [ "$DOTFILES_USER" = "xxx" ]; then
        log_error "Please edit ${config_file} and set DOTFILES_USER variable"
        exit 1
    fi
    
    log_success "Configuration file validated"
}

# 各コンポーネントのセットアップ
setup_components() {
    local components="zsh git vim karabiner"
    
    for component in $components; do
        local init_script="${DOTFILES}/${component}/init.sh"
        
        if [ -f "$init_script" ]; then
            log_info "📦 Setting up ${component}..."
            if ! sh "$init_script"; then
                log_error "Failed to setup ${component}"
                exit 1
            fi
            log_success "${component} setup completed"
        else
            log_warning "Init script not found: $init_script"
        fi
    done
}

# セットアップ実行
main() {
    check_config_setup
    setup_components
    log_success "✅ Dotfiles setup completed!"
    log_info "You may need to restart your shell to apply all changes"
}

# スクリプト実行
main "$@"
