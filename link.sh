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
# ln -snfv ${DOT_DIRECTORY}/tex/.latexmkrc ${HOME}/.latexmkrc
# ln -snfv ${DOT_DIRECTORY}/vim/.vimrc ${HOME}/.vimrc
# ln -snfv ${DOT_DIRECTORY}/karabiner/karabiner.json ${HOME}/.config/karabiner/karabiner.json
# ln -snfv ${DOT_DIRECTORY}/karabiner/assets/complex_modifications/mapping.json ${HOME}/.config/karabiner/assets/complex_modifications/mapping.json


echo $(tput setaf 2)Deploy dotfiles complete!. $(tput sgr0)
