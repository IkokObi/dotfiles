## 補完
## completion for lower and upper case
autoload -U compinit
compinit -u

## 大文字小文字を無視（大文字を入力した際は小文字の候補を表示しない）
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' special-dirs true


setopt no_beep # ベル無し
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>' # Ctrl-wの範囲変更

## history settings
HISTFILE=${HOME}/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt share_history
setopt hist_ignore_all_dups

# setopt nonomatch # curl時に?を入れてもエラーにならないようにする
