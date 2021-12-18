#!/bin/sh

DOT_DIRECTORY="${HOME}/dotfiles"

## === zsh ===
# ln -snfv ${DOT_DIRECTORY}/zsh/.zshrc ${HOME}/.zshrc
# ln -snfv ${DOT_DIRECTORY}/zsh/.zprofile ${HOME}/.zprofile


## === git ===
## NOTE: Please set .gitconfig by yourself
# ln -snfv ${DOT_DIRECTORY}/git/.git_commit_template ${HOME}/.git_commit_template
# ln -snfv ${DOT_DIRECTORY}/git/.gitignore_global ${HOME}/.gitignore_global


## === vim ===
# ln -snfv ${DOT_DIRECTORY}/vim/.vimrc ${HOME}/.vimrc
# mkdir -p ${HOME}/.vim
# ln -snfv ${DOT_DIRECTORY}/vim/ftplugin ${HOME}/.vim/ftplugin
# ln -snfv ${DOT_DIRECTORY}/vim/ftdetect ${HOME}/.vim/ftdetect


## === others ===
# ln -snfv ${DOT_DIRECTORY}/tex/.latexmkrc ${HOME}/.latexmkrc
# ln -snfv ${DOT_DIRECTORY}/karabiner/assets/complex_modifications/mapping.json ${HOME}/.config/karabiner/assets/complex_modifications/mapping.json


echo $(tput setaf 2)Deploy dotfiles complete!. $(tput sgr0)
