# Path to your oh-my-zsh installation.
# Reevaluate the prompt string each time it's displaying a prompt
setopt prompt_subst
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload bashcompinit && bashcompinit
autoload -Uz compinit
compinit

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^L' vi-forward-word
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search

# Starship
eval "$(starship init zsh)"

# Rbenv
eval "$(rbenv init - zsh)"

# Nodenv
eval "$(nodenv init -)"

# pyenv
eval "$(pyenv init -)"

# Atuin
eval "$(atuin init zsh)"

# Aliases
source $HOME/.aliases
