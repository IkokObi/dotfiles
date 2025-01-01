#!/bin/sh

DOTFILES=${HOME}/dotfiles

mkdir -p ${HOME}/.config/karabiner/assets/complex_modifications
ln -snfv ${DOTFILES}/karabiner/mapping.json ${HOME}/.config/karabiner/assets/complex_modifications/mapping.json
