# nodebrew setting
export PATH=$HOME/.nodebrew/current/bin:$PATH

# pyenv setting
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
