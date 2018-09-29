# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"


if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# ikokproの場合はコメントアウト
# jumanpp
export PATH=$PATH:/Users/koki/Downloads/jumanpp-2.0.0-rc2/bin



