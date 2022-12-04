PATH=/usr/local/bin:/usr/local/sbin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH
QT_SELECT=6
GTK_THEME=Adwaita:dark

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode disabled  # disable automatic updates

plugins=(
  git
  zsh-nvm
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export HISTSIZE=10000
export HISTFILE=
export HISTFILESIZE=0

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

alias clock="tty-clock -scbt -C 7"
alias matrix="cmatrix -abr -u 8"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

colorscript random

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
