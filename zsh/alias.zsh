alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias l='ls -FG'
# alias ls='ls -FG'
alias la='ls -aFG'
alias ll='ls -l'

alias so='source'

### how to use: u2s (-c) spam.csv > spam-cp.csv
alias u2s='iconv -f UTF-8 -t cp932 ' # UTF-8 --> cp932(Microsoft Shift_JIS)
alias s2u='iconv -f cp932 -t UTF-8 '

alias gib='git branch'
alias gis='git status'
alias gic='git commit'
alias gil='git log'

alias jopen='jupyter-notebook > .jupyterlog 2>&1 &'
alias pcp="pwd | tr -d '\n' | pbcopy"
alias note="vim `date +%Y%m%d`.md"
