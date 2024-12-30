# set variables
DOTFILES=${HOME}/dotfiles
source ${DOTFILES}/config/config.sh

# read user-dependent pre-setting
if [ -f ${DOTFILES}/users/${DOTFILES_USER}/pre-setting.zsh ]; then
    source ${DOTFILES}/users/${DOTFILES_USER}/pre-setting.zsh
fi

# read common zsh files
source ${DOTFILES}/zsh/basic.zsh
source ${DOTFILES}/zsh/prompt.zsh
source ${DOTFILES}/zsh/alias.zsh
source ${DOTFILES}/zsh/application.zsh

# read user-dependent setting
if [ -f ${DOTFILES}/users/${DOTFILES_USER}/setting.zsh ]; then
    source ${DOTFILES}/users/${DOTFILES_USER}/setting.zsh
fi
