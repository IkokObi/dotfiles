## basic information
local p_time=$'%F{044}%*%f '  # hh:mm:ss
local p_user_host=$'%F{044}%n@%m%f '  # user@host
local p_dir=$'%F{044}[%~]%f\n'  # [directory]
local p_exec=$'$ '  # last execution line

## git information
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{044}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a] '
precmd () { vcs_info }
local p_git='$vcs_info_msg_0_'

## Total prompt
PROMPT=$p_time$p_user_host$p_dir$p_git$p_exec

## Appearance: you are in `${HOME}/dir1/dir2` with `main` branch
##
##   12:34:56 ikokpro@Ikok [~/dir1/dir2]
##   [main]$
##
## Command: show all colors
##   for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo
