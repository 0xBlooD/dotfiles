export LANG=en_US.UTF-8
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 5

DISABLE_MAGIC_FUNCTIONS="true"

plugins=(git)

alias t="toipe"
alias mkd="mkdir -pv"
alias v="nvim"
alias sv="sudo nvim"

PF_INFO="ascii"
EDITOR="neovim"
SHELL="zsh"
pfetch

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
