# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/k.obinata/dotfiles/setups/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/k.obinata/dotfiles/setups/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/k.obinata/dotfiles/setups/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/k.obinata/dotfiles/setups/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# Python
# export PATH="$HOME/.poetry/bin:$PATH"
source ~/dotfiles/setups/python/envs/default/bin/activate
export PIPENV_IGNORE_VIRTUALENVS=1

# ログインシェル時にvenvチェックを実行する
auto_venv_activate

# node
eval "$(fnm env --use-on-cd)"

# misc
curl "wttr.in/Tokyo?lang=ja&format=v2"
