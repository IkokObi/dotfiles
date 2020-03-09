# alias
alias ls='ls -FG'
alias la='ls -aFG'
alias ll='ls -l'
alias coa='conda activate'
### how to use: u2s (-c) spam.csv > spam-cp.csv
alias u2s='iconv -f UTF-8 -t cp932 ' # UTF-8 --> cp932(Microsoft Shift_JIS)
alias s2u='iconv -f cp932 -t UTF-8 '
alias jopen='jupyter-notebook > .jupyterlog 2>&1 &'
alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
alias simple_timer='open ~/Github/simple_timer/index.html'
alias gib='git branch'
alias gis='git status'

# Ctrl-wの削除範囲を直前のスラッシュまでに変更
stty werase undef
bind '"\C-w": unix-filename-rubout'

# git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# prompt config
export GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWDIRTYSTATE=1
p_color_s1='\[\033[36m\]'
p_color_e='\[\033[0m\]'
p_time='\t '
p_py='(py:$(pyenv version-name)) '
p_user_host_dir='\u@\h:\w'
p_git='\n$(__git_ps1 "(%s)")'
p_exec='$ '
PS1=$p_color_s1$p_time$p_py$p_user_host_dir$p_git$p_color_e$p_exec


# comment out nvm settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ikokpro/Private/gcp/google-cloud-sdk/path.bash.inc' ]; then . '/Users/ikokpro/Private/gcp/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ikokpro/Private/gcp/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/ikokpro/Private/gcp/google-cloud-sdk/completion.bash.inc'; fi
