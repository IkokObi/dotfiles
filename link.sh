#!/bin/sh

DOT_DIRECTORY="${HOME}/dotfiles"

## === zsh ===
# ln -snfv ${DOT_DIRECTORY}/.zshrc ${HOME}/.zshrc
# ln -snfv ${DOT_DIRECTORY}/.zprofile ${HOME}/.zprofile


## === bash ===
# ln -snfv ${DOT_DIRECTORY}/.bash_profile ${HOME}/.bash_profile
# ln -snfv ${DOT_DIRECTORY}/.bashrc ${HOME}/.bashrc
# ln -snfv ${DOT_DIRECTORY}/.inputrc ${HOME}/.inputrc


## === git ===
# ln -snfv ${DOT_DIRECTORY}/.git_commit_template ${HOME}/.git_commit_template
# ln -snfv ${DOT_DIRECTORY}/.gitconfig ${HOME}/.gitconfig
# ln -snfv ${DOT_DIRECTORY}/.gitignore_global ${HOME}/.gitignore_global


## === others ===
# ln -snfv ${DOT_DIRECTORY}/.ctags ${HOME}/.ctags
# ln -snfv ${DOT_DIRECTORY}/.latexmkrc ${HOME}/.latexmkrc
# ln -snfv ${DOT_DIRECTORY}/.vimrc ${HOME}/.vimrc


echo $(tput setaf 2)Deploy dotfiles complete!. $(tput sgr0)
