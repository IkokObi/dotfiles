# vim
# 下記不要？
# export PATH="/usr/local/bin:$PATH"

# pyenv  => .zprofile

# git completion
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
