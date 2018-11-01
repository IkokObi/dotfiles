
# prompt config
PYENV_VERSION_NAME="py:"$(pyenv version-name)
PS1="\[\033[36m\]\t (${PYENV_VERSION_NAME}) \u@\h:\w\[\033[0m\]\n$ "

# alias
alias la='ls -aFG'
alias u2s='iconv -f UTF-8 -t cp932 ' # UTF-8 --> cp932(Microsoft Shift_JIS)
alias s2u='iconv -f cp932 -t UTF-8 '
alias jupyteropen='jupyter-notebook > .jupyterlog 2>&1 &'

