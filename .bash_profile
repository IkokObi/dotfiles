# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# pyenv-virtualenv
# eval "$(pyenv virtualenv-init -)"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export PATH=$PATH:$HOME/.nodebrew/current/bin

# jumanpp
# Homebrewでjumanをインストールした場合はコメントアウト
# export PATH=$PATH:/Users/koki/Downloads/jumanpp-2.0.0-rc2/bin

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/ikokpro/.pyenv/versions/anaconda3-5.3.0/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/ikokpro/.pyenv/versions/anaconda3-5.3.0/etc/profile.d/conda.sh" ]; then
#         . "/Users/ikokpro/.pyenv/versions/anaconda3-5.3.0/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/ikokpro/.pyenv/versions/anaconda3-5.3.0/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

. /Users/ikokpro/.pyenv/versions/anaconda3-5.3.0/etc/profile.d/conda.sh
# conda activate normal
