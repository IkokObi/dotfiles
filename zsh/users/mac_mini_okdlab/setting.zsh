# Python環境は切り替えることが多いので、先に以下のコマンドを実行する
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/obi-macmini/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/obi-macmini/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/obi-macmini/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/obi-macmini/google-cloud-sdk/completion.zsh.inc'; fi

# Python
export PATH="$HOME/.local/bin:$PATH"
source ~/dotfiles/setups/python/envs/default/bin/activate
export PIPENV_IGNORE_VIRTUALENVS=1

# ログインシェル時にvenvチェックを実行する
auto_venv_activate

# TeX
export PATH="/Users/obi-macmini/dotfiles/setups/tex:$PATH"

# misc
curl "wttr.in/Tokyo?lang=ja&format=v2"
