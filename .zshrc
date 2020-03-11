# Basic and package settings
## for git completion
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

## completion for lower and upper case
autoload -U compinit
compinit -u
## 大文字小文字を無視（大文字を入力した際は小文字の候補を表示しない）
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

## ベル無し
setopt no_beep

## Ctrl-wの範囲変更
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

## path for vim
export PATH="/usr/local/bin:$PATH"

## pyenv settings
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


# Prompt
## cf: show all colors
##   for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo
local p_time=$'%F{044}%*%f '  # hh:mm:ss
local p_user_host=$'%F{044}%n@%m%f '  # user@host
local p_dir=$'%F{044}[%~]%f\n'  # [directory]
local p_exec=$'> '  # last execution line

## prompt git info
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{044}%c%u[%b]%f "
zstyle ':vcs_info:*' actionformats '[%b|%a] '
precmd () { vcs_info }
local p_git='$vcs_info_msg_0_'

## Total prompt
PROMPT=$p_time$p_user_host$p_dir$p_git$p_exec


# Aliases
alias ls='ls -FG'
alias la='ls -aFG'
alias ll='ls -l'
alias coa='conda activate'
### how to use: u2s (-c) spam.csv > spam-cp.csv
alias u2s='iconv -f UTF-8 -t cp932 ' # UTF-8 --> cp932(Microsoft Shift_JIS)
alias s2u='iconv -f cp932 -t UTF-8 '
alias jopen='jupyter-notebook > .jupyterlog 2>&1 &'
alias gib='git branch'
alias gis='git status'
alias pcp="pwd | tr -d '\n' | pbcopy"
