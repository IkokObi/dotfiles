# gcloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/obi-research/setups/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/obi-research/setups/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/obi-research/setups/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/obi-research/setups/google-cloud-sdk/completion.zsh.inc'; fi

# TeX
export PATH="/Users/obi-research/dotfiles/setups/tex:$PATH"


# Python
export PATH="$HOME/.poetry/bin:$PATH"
source ~/dotfiles/setups/python/envs/default/bin/activate
export PIPENV_IGNORE_VIRTUALENVS=1

# misc
curl "wttr.in/Tokyo?lang=ja&format=v2"
