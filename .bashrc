[[ $- != *i* ]] && return

export HISTSIZE=10000
export HISTFILE=
export HISTFILESIZE=0

shopt -u histappend
shopt -s autocd cdspell

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -la --color=auto'

alias g='git'
alias d='docker'

alias vv='vim'
alias svv='sudo vim'

alias v='nvim'
alias sv='sudo vim'

alias cc="sudo sh -c 'echo 3 >'/proc/sys/vm/drop_caches'' && sudo swapoff -a && sudo swapon -a"

PS1='\W\n\$ '

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
