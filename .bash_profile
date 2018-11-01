# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export PATH=$PATH:$HOME/.nodebrew/current/bin

# jumanpp
# Homebrewでjumanをインストールした場合はコメントアウト
# export PATH=$PATH:/Users/koki/Downloads/jumanpp-2.0.0-rc2/bin

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


