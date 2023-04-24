# set variables
DOTFILES=${HOME}/dotfiles
source ${DOTFILES}/config/config.sh

# read user-dependent pre-setting
source ${DOTFILES}/zsh/users/${DOTFILES_USER}/pre-setting.zsh

# read common zsh files
source ${DOTFILES}/zsh/basic.zsh
source ${DOTFILES}/zsh/prompt.zsh
source ${DOTFILES}/zsh/alias.zsh
source ${DOTFILES}/zsh/application.zsh

# read user-dependent setting
source ${DOTFILES}/zsh/users/${DOTFILES_USER}/setting.zsh
