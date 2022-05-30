# pyenv
# コマンドは.zprofileへ
# 2021/12/18 pyenvの更新で下記が.zshrcに必要になった
eval "$(pyenv init -)"


# python venv
# Python venv 環境をディレクトリ直下に見つけたら自動で有効化する
function auto_venv_activate {
	if [[ -d ./.venv ]] ; then
		. ./.venv/bin/activate
	fi
}

function cd() {
	builtin cd "$@"
	auto_venv_activate
}

# git completion
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

# fasd
eval "$(fasd --init auto)"

# fzf-extras
export OPENER=open
[[ -e "$HOME/.fzf-extras/fzf-extras.zsh" ]] \
  && source "$HOME/.fzf-extras/fzf-extras.zsh"
