# python venv
# Python venv 環境をディレクトリ直下に見つけたら自動で有効化する
function auto_venv_activate {
	if [[ -d ./.venv_private ]] ; then
		. ./.venv_private/bin/activate
	fi

	if [[ -f ./.venv-name ]] ; then
		name=$(cat ./.venv-name)
		. ~/dotfiles/python/envs/${name}/bin/activate
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

# fzf-extras(fasd依存)
export OPENER=open
[[ -e ${HOME}/dotfiles/zsh/plugins/fzf-extras/fzf-extras.zsh ]] \
    && source ${HOME}/dotfiles/zsh/plugins/fzf-extras/fzf-extras.zsh
