export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export TERM=xterm-256color

zstyle ':omz:update' mode auto

EDITOR="nvim"
VISUAL="nvim"
SAVEHIST=0
HISTSIZE=0
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"

plugins=()

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

source $ZSH/oh-my-zsh.sh

alias ls="ls --color=auto"
alias la="ls -a --color=auto"
alias ll="ls -al --color=auto"

alias mkdir="mkdir -pv"

alias g="git"
alias d="docker"
alias t="toipe"

alias v="nvim"
alias sv="sudo nvim"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

pfetch

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
