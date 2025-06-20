#!/bin/sh

# 共通設定を読み込み
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
. "${SCRIPT_DIR}/../scripts/common.sh"

set -e

# 使用方法表示
usage() {
    echo "Usage: $0 <environment_name>"
    echo "Example: $0 myproject"
    exit 1
}

# 引数チェック
[ $# -lt 1 ] && usage

ENV_NAME="$1"
ENV_PATH="envs/${ENV_NAME}"

log_info "Preparing to delete Python virtual environment: ${ENV_NAME}"

# 環境の存在確認
if [ ! -d "$ENV_PATH" ]; then
    log_error "Environment '${ENV_NAME}' does not exist"
    log_info "Available environments:"
    if [ -d "envs" ]; then
        ls -1 envs/ 2>/dev/null || log_info "No environments found"
    else
        log_info "No envs directory found"
    fi
    exit 1
fi

# 現在アクティブな環境かチェック
if [ -n "${VIRTUAL_ENV:-}" ] && [ "$(basename "$VIRTUAL_ENV")" = "$ENV_NAME" ]; then
    log_warning "The environment '${ENV_NAME}' is currently active"
    log_info "Please deactivate it first by running: deactivate"
    exit 1
fi

# 確認プロンプト
log_warning "This will permanently delete the environment: ${ENV_NAME}"
log_info "Path: $(pwd)/${ENV_PATH}"
read -p "Are you sure you want to delete it? (y/N): " response

case "$response" in
    [yY]|[yY][eE][sS])
        log_info "Deleting environment..."
        rm -rf "$ENV_PATH"
        log_success "✅ Environment '${ENV_NAME}' deleted successfully"
        ;;
    *)
        log_info "Deletion cancelled"
        exit 0
        ;;
esac
