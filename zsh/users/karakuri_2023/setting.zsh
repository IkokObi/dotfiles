# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/k.obinata/dotfiles/setups/private-tools/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/k.obinata/dotfiles/setups/private-tools/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/k.obinata/dotfiles/setups/private-tools/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/k.obinata/dotfiles/setups/private-tools/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# node
eval "$(fnm env --use-on-cd)"

# === Python ===
# pyenv settings
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$HOME/.local/bin:$PATH" # Poetry
export PIPENV_IGNORE_VIRTUALENVS=1 # venvを無視してpipenvを使う

source ~/dotfiles/python/envs/default/bin/activate
auto_venv_activate # ログインシェル時にvenvチェックを実行する
# === End of Python settings ===

# misc
# curl "wttr.in/Tokyo?lang=ja&format=v2"
