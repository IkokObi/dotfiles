#!/bin/sh

DOTFILES=${HOME}/dotfiles
source ${DOTFILES}/config/config.sh # Set DOTFILES_USER variables

ln -snfv ${DOTFILES}/git/.git_commit_template ${HOME}/.git_commit_template
ln -snfv ${DOTFILES}/git/.gitignore_global ${HOME}/.gitignore_global
ln -snfv ${DOTFILES}/git/.gitconfig ${HOME}/.gitconfig

GITCONFIG_USER=${DOTFILES}/users/${DOTFILES_USER}/.gitconfig.user
if [ -f ${GITCONFIG_USER} ]; then
    ln -snfv ${GITCONFIG_USER} ${HOME}/.gitconfig.user
else
    echo "Warning: ${GITCONFIG_USER} does not exist"
fi
