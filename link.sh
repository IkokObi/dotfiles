#!/bin/sh

DOT_DIRECTORY="${HOME}/dotfiles"

## === zsh ===
# ln -snfv ${DOT_DIRECTORY}/zsh/.zshrc ${HOME}/.zshrc
# ln -snfv ${DOT_DIRECTORY}/zsh/.zprofile ${HOME}/.zprofile

## === vim ===
# ln -snfv ${DOT_DIRECTORY}/vim/.vimrc ${HOME}/.vimrc
# mkdir -p ${HOME}/.vim
# mkdir -p ${HOME}/.vim/after
# ln -snfv ${DOT_DIRECTORY}/vim/after/ftplugin ${HOME}/.vim/after/ftplugin
# ln -snfv ${DOT_DIRECTORY}/vim/ftdetect ${HOME}/.vim/ftdetect

## === git ===
## NOTE: Please set .gitconfig by yourself
# ln -snfv ${DOT_DIRECTORY}/git/.git_commit_template ${HOME}/.git_commit_template
# ln -snfv ${DOT_DIRECTORY}/git/.gitignore_global ${HOME}/.gitignore_global

## === Karabiner ===
# ln -snfv ${DOT_DIRECTORY}/karabiner/assets/complex_modifications/mapping.json ${HOME}/.config/karabiner/assets/complex_modifications/mapping.json


echo $(tput setaf 2)Deploy dotfiles complete!. $(tput sgr0)
