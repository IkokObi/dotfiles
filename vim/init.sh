#!/bin/sh

DOTFILES=${HOME}/dotfiles

mkdir -p ${HOME}/.vim/after
ln -snfv ${DOTFILES}/vim/.vimrc ${HOME}/.vimrc
ln -snfv ${DOTFILES}/vim/after/ftplugin ${HOME}/.vim/after/ftplugin
ln -snfv ${DOTFILES}/vim/ftdetect ${HOME}/.vim/ftdetect
