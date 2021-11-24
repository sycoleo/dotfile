#!/bin/sh
export ZDOTDIR=$HOME/.config/zsh

setopt appendhistory
setopt menucomplete
setopt interactive_comments

autoload -Uz compinit
compinit

source $ZDOTDIR/antigen.zsh
# fzf-tab needs to be loaded after compinit, but before plugins which will wrap widgets, such as zsh-autosuggestions or fast-syntax-highlighting!!
antigen bundle "zsh-users/zsh-completions"
antigen bundle "zsh-users/zsh-autosuggestions"
antigen bundle "zsh-users/zsh-syntax-highlighting"
antigen bundle "Aloxaf/fzf-tab"
antigen apply

# enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add functions
source "$ZDOTDIR/zsh-functions"

# Source configurations
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"
zsh_add_file "zsh-completions"
zsh_add_file "z.sh"
