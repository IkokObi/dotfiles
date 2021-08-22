# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# Istio
export PATH=$PATH:$HOME/.istioctl/bin

# Python
export PATH="$HOME/.poetry/bin:$PATH"
source ~/Settings/python/envs/default/bin/activate
export PIPENV_IGNORE_VIRTUALENVS=1

# misc
curl "wttr.in/Tokyo?lang=ja&format=v2"