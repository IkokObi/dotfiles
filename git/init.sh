#!/bin/sh

DOTFILES=${HOME}/dotfiles
source ${DOTFILES}/config/config.sh # Set DOTFILES_USER variables

ln -snfv ${DOTFILES}/git/.git_commit_template ${HOME}/.git_commit_template
ln -snfv ${DOTFILES}/git/.gitignore_global ${HOME}/.gitignore_global

if [ -f ${DOTFILES}/users/${DOTFILES_USER}/.gitconfig.user ]; then
    ln -snfv ${DOTFILES}/users/${DOTFILES_USER}/.gitconfig.user ${HOME}/.gitconfig.user
fi
