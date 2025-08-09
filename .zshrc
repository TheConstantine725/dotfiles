# Lines configured by zsh-newuser-install
# History
HISTFILE=~/.histfile
HISTSIZE=4000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Set Options
setopt beep extendedglob
# Bindkey
bindkey -v
bindkey '^e' history-search-forward
bindkey '^b' history-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kostas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

~/dotfiles/scripts/install_uv.sh
# Initialize Starship
eval "$(starship init zsh)"

# Stow custom alias -- unstow
alias unstow='stow --delete' 

#Antidote plugin manager
# Set up Antidote Home
ANTIDOTE_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/antidote"

# Check If the Antidote Home directory
if [ ! -d "$ANTIDOTE_HOME" ]; then
	mkdir -p "$(dirname ANTIDOTE_HOME)"
	git clone https://github.com/mattmc3/antidote.git "$ANTIDOTE_HOME"
fi

# Sourcing Antidote plugin manager
source "$ANTIDOTE_HOME"/antidote.zsh

zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins

# Ensure the .zsh_plugins.txt file exists so you can add plugins.
[[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt

# Lazy-load antidote from its functions directory.
fpath=("$ANTIDOTE_HOME/functions" $fpath)
autoload -Uz antidote

# Generate a new static file whenever .zsh_plugins.txt is updated.
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
fi

# Source your static plugins file.
source ${zsh_plugins}.zsh

# Sourcing Fuzzy Finder in ZSH
source <(fzf --zsh)

# zstyles
# zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Install UV

# SET UP UV for Python
eval "$(uvx --generate-shell-completion zsh)"
eval "$(uv generate-shell-completion zsh)"

# ZED 
alias zed="flatpak run dev.zed.Zed"

#DuckDB
alias duckdb="/home/kostas/.duckdb/cli/latest/duckdb"

# Set up Zoxide
eval "$(zoxide init zsh)"

# Change default Editor
export EDITOR="/usr/bin/nvim"
export VISUAL="$EDITOR"
