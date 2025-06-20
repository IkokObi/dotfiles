#!/bin/sh

# 共通設定を読み込み
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
. "${SCRIPT_DIR}/../scripts/common.sh"

set -e

# 使用方法表示
usage() {
    echo "Usage: $0 <environment_name> [python_version]"
    echo "Example: $0 myproject 3.11"
    echo "         $0 myproject     (uses system default python)"
    exit 1
}

# 引数チェック
[ $# -lt 1 ] && usage

ENV_NAME="$1"
PYTHON_VERSION="${2:-}"

log_info "Creating Python virtual environment: ${ENV_NAME}"

# pyenvが利用可能かチェック
if command -v pyenv >/dev/null 2>&1 && [ -n "$PYTHON_VERSION" ]; then
    log_info "pyenv detected. Installing Python ${PYTHON_VERSION} if needed..."
    pyenv install -s "$PYTHON_VERSION"
    pyenv local "$PYTHON_VERSION"
    log_success "Python ${PYTHON_VERSION} set for this directory"
fi

# 環境作成
ensure_dir_exists "envs"
cd envs

if [ -d "$ENV_NAME" ]; then
    log_warning "Environment ${ENV_NAME} already exists"
    read -p "Do you want to recreate it? (y/N): " response
    case "$response" in
        [yY]|[yY][eE][sS])
            log_info "Removing existing environment..."
            rm -rf "$ENV_NAME"
            ;;
        *)
            log_info "Aborted"
            exit 0
            ;;
    esac
fi

log_info "Creating virtual environment..."
python -m venv "$ENV_NAME"
cd "$ENV_NAME"

# requirements.txtを作成
if [ ! -f "requirements.txt" ]; then
    touch requirements.txt
    log_info "Created empty requirements.txt"
fi

# 仮想環境を有効化してpipを更新
log_info "Activating environment and updating pip..."
. bin/activate
pip install --upgrade pip

# デフォルトパッケージがあれば提案
DEFAULT_REQUIREMENTS="../default-requirements.txt"
if [ -f "$DEFAULT_REQUIREMENTS" ]; then
    log_info "Default requirements file found"
    read -p "Do you want to install default packages? (y/N): " response
    case "$response" in
        [yY]|[yY][eE][sS])
            log_info "Installing default packages..."
            pip install -r "$DEFAULT_REQUIREMENTS"
            cp "$DEFAULT_REQUIREMENTS" requirements.txt
            ;;
    esac
fi

log_success "✅ Virtual environment '${ENV_NAME}' created successfully!"
log_info "To activate: source envs/${ENV_NAME}/bin/activate"
log_info "To install packages: pip install -r requirements.txt"
