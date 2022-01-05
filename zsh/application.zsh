# pyenv
# コマンドは.zprofileへ
# 2021/12/18 pyenvの更新で下記が.zshrcに必要になった
eval "$(pyenv init -)"

# git completion
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
