export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 10

ENABLE_CORRECTION="true"

bindkey -v
bindkey "^?" vi-backward-kill-word

plugins=(
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

export HISTSIZE=10000
export HISTFILE=
export HISTFILESIZE=0

export EDITOR='nvim'
export VISUAL='code'

export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

alias g='git'
alias d='docker'

alias v='nvim'
alias sv='sudo nvim'
alias vv='vim'
alias svv='sudo vim'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

colorscript random
