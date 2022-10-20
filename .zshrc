source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen theme denysdovhan/spaceship-prompt

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias rm='rm -f'

if service docker status 2>&1 | grep -q "is not running"; then
    wsl.exe -d "${WSL_DISTRO_NAME}" -u root -e /usr/sbin/service docker start >/dev/null 2>&1
fi

[ -z "$TMUX"   ] && { tmux attach || exec tmux new-session; }

#wsl.exe -d wsl-vpnkit service wsl-vpnkit start

export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64

set PATH="$PATH:/mnt/d/BIN/"
