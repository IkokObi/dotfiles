# Python
# export PATH="$HOME/.poetry/bin:$PATH"
source ~/dotfiles/setups/python/envs/default/bin/activate
export PIPENV_IGNORE_VIRTUALENVS=1

# ログインシェル時にvenvチェックを実行する
auto_venv_activate

# misc
curl "wttr.in/Tokyo?lang=ja&format=v2"
