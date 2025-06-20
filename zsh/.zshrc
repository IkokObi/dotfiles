DOTFILES=${HOME}/dotfiles

# 設定ファイルの存在確認と読み込み
CONFIG_FILE="${DOTFILES}/config/config.sh"
if [ -f "$CONFIG_FILE" ]; then
    source "$CONFIG_FILE" # Set DOTFILES_USER variables
else
    echo "Warning: config.sh not found. Please run the main init.sh script first."
    return 1
fi

# read user-dependent pre-setting
USER_PRE_SETTING="${DOTFILES}/users/${DOTFILES_USER}/pre-setting.zsh"
if [ -f "$USER_PRE_SETTING" ]; then
    source "$USER_PRE_SETTING"
fi

# read common zsh files
source ${DOTFILES}/zsh/basic.zsh
source ${DOTFILES}/zsh/prompt.zsh
source ${DOTFILES}/zsh/alias.zsh
source ${DOTFILES}/zsh/application.zsh

# read user-dependent setting
USER_SETTING="${DOTFILES}/users/${DOTFILES_USER}/setting.zsh"
if [ -f "$USER_SETTING" ]; then
    source "$USER_SETTING"
fi
