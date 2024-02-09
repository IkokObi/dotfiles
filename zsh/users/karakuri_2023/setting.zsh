# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/k.obinata/dotfiles/setups/private-tools/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/k.obinata/dotfiles/setups/private-tools/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/k.obinata/dotfiles/setups/private-tools/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/k.obinata/dotfiles/setups/private-tools/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# node
eval "$(fnm env --use-on-cd)"

# Python
export PATH="$HOME/.local/bin:$PATH"
source ~/dotfiles/setups/python/envs/default/bin/activate
export PIPENV_IGNORE_VIRTUALENVS=1

# ログインシェル時にvenvチェックを実行する
auto_venv_activate

# misc
# curl "wttr.in/Tokyo?lang=ja&format=v2"
