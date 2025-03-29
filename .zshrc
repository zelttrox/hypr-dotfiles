# Path to your oh-my-zsh installation (if using oh-my-zsh)
# Uncomment the following line if oh-my-zsh is installed
# export ZSH="$HOME/.oh-my-zsh"

# Set the default shell prompt theme
# Change 'robbyrussell' to another theme name if you want

export LS_COLORS='di=1;34:ln=1;36:so=1;35:pi=1;33:ex=1;32'

PROMPT='%B%F{red}%n@%m %F{cyan}%~ %F{reset}$ '

# Enable command auto-completion
autoload -Uz compinit
compinit

# Enable history search with arrow keys
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Alias definitions
alias all="ls -a"
alias back="cd .."
alias root="cd /"
alias gpt="./Scripts/chatgpt.sh"

alias setenv="./Scripts/env.sh"
alias editenv="code Scripts/env.sh"

# Path additions (example: add custom directories to PATH)
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Enable plugins (oh-my-zsh users can uncomment and edit this section)
# Example: Uncomment plugins and add your favorites
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Load oh-my-zsh plugins (uncomment if oh-my-zsh is installed)
# source $ZSH/oh-my-zsh.sh

# History configuration
HISTSIZE=1000         # Number of commands to keep in memory
SAVEHIST=2000         # Number of commands to save in history file
HISTFILE=~/.zsh_history

# Syntax highlighting (if installed)
# Uncomment these lines if you have `zsh-syntax-highlighting` installed
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Auto-suggestions (if installed)
# Uncomment these lines if you have `zsh-autosuggestions` installed
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable colored output for `ls`
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Default editor
export EDITOR=nano  # Change to your preferred editor (vim, nano, etc.)

# Enable case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Miscellaneous settings
setopt AUTOCD          # Change directory just by typing its name
setopt AUTOPUSHD       # Automatically pushd old directories
setopt HIST_IGNORE_DUPS  # Don't record duplicate entries in history
setopt SHARE_HISTORY     # Share history across all sessions

# End of file
# eval "$(starship init zsh)"
# export STARSHIP_CONFIG=/home/enzo/.config/straship.toml