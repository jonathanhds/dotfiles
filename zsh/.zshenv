# Global
export CLICOLOR=1
export HISTFILESIZE=10000

# Editor
export EDITOR="nvim"
export VISUAL="subl"

# Local bins
export PATH="$HOME/.local/bin:$PATH"

# GPG
export GPG_TTY=$(tty)

# Terminal
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# Local env vars
if [[ -f ~/.zshenv.local ]]; then
  source ~/.zshenv.local
fi

