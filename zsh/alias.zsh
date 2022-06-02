alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias l='ls -FG'
# alias ls='ls -FG'
alias la='ls -aFG'
alias ll='ls -lFG'

### how to use: u2s (-c) spam.csv > spam-cp.csv
alias u2s='iconv -f UTF-8 -t cp932 ' # UTF-8 --> cp932(Microsoft Shift_JIS)
alias s2u='iconv -f cp932 -t UTF-8 '

alias gib='git branch'
alias gis='git status'
alias gic='git commit'
alias gil='git log'

alias jopen='jupyter-notebook > .jupyterlog 2>&1 &'
alias pcp="pwd | tr -d '\n' | pbcopy"
alias note="vim notes-`date +%Y%m%d`.md"

function _venv_create() {
	python -m venv .venv_private --prompt "$@"
	source ./.venv_private/bin/activate
	pip install --upgrade pip
}
alias venv-create=_venv_create

# fzf-extras
function __zz() {
  _zz
  precmd # used in prompt.zsh
  zle reset-prompt
  return 0
}

zle -N __zz
bindkey '^O' __zz
alias e='fez' # Edit from frecency files
alias j='_zz' # Jump to frecency directory
