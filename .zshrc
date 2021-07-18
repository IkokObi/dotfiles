source ${HOME}/dotfiles/zsh/basic.zsh
source ${HOME}/dotfiles/zsh/prompt.zsh
source ${HOME}/dotfiles/zsh/alias.zsh

## path for vim
export PATH="/usr/local/bin:$PATH"

## pyenv settings => .zprofile

## for git completion
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

# path for fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ikokpro/Settings/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# Istio
export PATH=$PATH:$HOME/.istioctl/bin

# mtr
# sudo /usr/local/Cellar/mtr/0.94/sbin/mtr -rw google.com
export PATH=$HOME/.nodebrew/current/bin:$PATH

# misc
curl "wttr.in/Tokyo?lang=ja&format=v2"

export PATH="$HOME/.poetry/bin:$PATH"

# Python
source ~/Settings/python/default/bin/activate
export PIPENV_IGNORE_VIRTUALENVS=1
