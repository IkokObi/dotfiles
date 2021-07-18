#!/bin/sh

DOT_DIRECTORY="${HOME}/dotfiles"

## === zsh ===
# ln -snfv ${DOT_DIRECTORY}/zsh/.zshrc ${HOME}/.zshrc
# ln -snfv ${DOT_DIRECTORY}/zsh/.zprofile ${HOME}/.zprofile


## === bash ===
# ln -snfv ${DOT_DIRECTORY}/bash/.bash_profile ${HOME}/.bash_profile
# ln -snfv ${DOT_DIRECTORY}/bash/.bashrc ${HOME}/.bashrc
# ln -snfv ${DOT_DIRECTORY}/bash/.inputrc ${HOME}/.inputrc


## === git ===
## NOTE: Please set .gitconfig by yourself
# ln -snfv ${DOT_DIRECTORY}/git/.git_commit_template ${HOME}/.git_commit_template
# ln -snfv ${DOT_DIRECTORY}/git/.gitignore_global ${HOME}/.gitignore_global


## === others ===
# ln -snfv ${DOT_DIRECTORY}/.ctags ${HOME}/.ctags
# ln -snfv ${DOT_DIRECTORY}/.latexmkrc ${HOME}/.latexmkrc
# ln -snfv ${DOT_DIRECTORY}/.vimrc ${HOME}/.vimrc


echo $(tput setaf 2)Deploy dotfiles complete!. $(tput sgr0)
