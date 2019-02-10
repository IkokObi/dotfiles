# prompt config
PYENV_VERSION_NAME="py:"$(pyenv version-name)
PS1="\[\033[36m\]\t (${PYENV_VERSION_NAME}) \u@\h:\w\[\033[0m\]\n$ "

# alias
alias la='ls -aFG'
alias ll='ls -l'
alias u2s='iconv -f UTF-8 -t cp932 ' # UTF-8 --> cp932(Microsoft Shift_JIS)
alias s2u='iconv -f cp932 -t UTF-8 '
alias jopen='jupyter-notebook > .jupyterlog 2>&1 &'
alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
