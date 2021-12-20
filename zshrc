
export ZSH="/home/veer/.oh-my-zsh"

ZSH_THEME="lukerandall"

plugins=(git sudo zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias cls='clear'
alias rm='printf "\033[1;31m" && rm -rIv'
alias cp='printf "\033[1;32m" && cp -rv'
alias mv='printf "\033[1;34m" && mv -v'
alias mkdir='printf "\033[1;33m" && mkdir -v'
alias rmdir='printf "\033[1;35m" && rmdir -v'
