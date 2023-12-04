# Python
export PATH="$HOME/.local/bin:$PATH"
source ~/dotfiles/setups/python/envs/default/bin/activate
# export PIPENV_IGNORE_VIRTUALENVS=1

# node
eval "$(fnm env --use-on-cd)"

# ログインシェル時にvenvチェックを実行する（このactivateは最後に実行する）
auto_venv_activate
