source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen theme denysdovhan/spaceship-prompt

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias rm='rm -f'

set PATH="$PATH:/mnt/d/BIN/"
