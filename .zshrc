export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode disabled  # disable automatic updates

plugins=(
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

alias clean="sudo pacman -Syu archlinux-keyring && sudo pacman -Scc && sudo paccache -r && sudo rm -rf $HOME/.cache/* && sudo sh -c 'echo 3 >'/proc/sys/vm/drop_caches'' && sudo swapoff -a && sudo swapon -a"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $HOME/.local/bin/zsh-syntax-highlighting.sh

colorscript random
