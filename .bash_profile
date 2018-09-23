# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"

#export PYTHONPATH=$PYTHONPATH:/usr/local/bin/python3.6/site-packages/

#export PATH=$PATH:/Library/TeX/texbin

# jumanpp
export PATH=$PATH:/Users/koki/Downloads/jumanpp-2.0.0-rc2/bin

export PATH=$PATH:$HOME/.nodebrew/current/bin
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


