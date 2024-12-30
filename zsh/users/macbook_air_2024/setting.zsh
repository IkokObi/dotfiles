# Created by `pipx` on 2024-10-21 16:57:05
export PATH="$PATH:/Users/obi/.local/bin"

# node: fnm
FNM_PATH="/Users/obi/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/obi/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi
eval "$(fnm env --use-on-cd --shell zsh)"
