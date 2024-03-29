# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# Istio
export PATH=$PATH:$HOME/.istioctl/bin

# tfenv
export PATH="$HOME/.tfenv/bin:$PATH"

# Python
export PATH="$HOME/.poetry/bin:$PATH"
source ~/dotfiles/setups/python/envs/default/bin/activate
export PIPENV_IGNORE_VIRTUALENVS=1

# ログインシェル時にvenvチェックを実行する
auto_venv_activate

# TeX
export PATH="/Users/ikokpro/dotfiles/setups/tex:$PATH"

# misc
curl "wttr.in/Tokyo?lang=ja&format=v2"

# zsh-syntax-highlighting
# source /Users/ikokpro/Settings/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
