### ZSH HOME
export ZSH=$HOME/.zsh
export ZK_NOTEBOOK_DIR=/data/knowledge/my-notes
export EDITOR=nvim
export DOTFILES_REPO=$HOME/dotfiles_repo

export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

setopt histignorealldups histfindnodups
# setopt autocd

# autoload -U compinit
# compinit -d $ZSH/.zsh_compdump

source $ZSH/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $ZSH/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting needs to be sourced last
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Aliases
alias l="exa -alh --grid --icons"
alias v="nvim"
alias dotfiles="git --git-dir $DOTFILES_REPO --work-tree $HOME"
# Override env variables
export PATH=$PATH:/home/dimitris/.cargo/bin

source /home/dimitris/.config/broot/launcher/bash/br
