# Dracula Theme (for zsh-syntax-highlighting)
#
# https://github.com/zenorocha/dracula-theme
#
# Copyright 2021, All rights reserved
#
# Code licensed under the MIT license
# http://zenorocha.mit-license.org
#
# @author George Pickering <@bigpick>
# @author Zeno Rocha <hi@zenorocha.com>
# Paste this files contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES
# Default groupings per, https://spec.draculatheme.com, try to logically separate
# possible ZSH_HIGHLIGHT_STYLES settings accordingly...?
#
# Italics not yet supported by zsh; potentially soon:
#    https://github.com/zsh-users/zsh-syntax-highlighting/issues/432
#    https://www.zsh.org/mla/workers/2021/msg00678.html
# ... in hopes that they will, labelling accordingly with ,italic where appropriate
#
# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
#
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#77767B'
## Constants                         
## Entitites                         
## Functions/methods                 
ZSH_HIGHLIGHT_STYLES[alias]='fg=#8FF0A4'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#8FF0A4'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#8FF0A4'
ZSH_HIGHLIGHT_STYLES[function]='fg=#8FF0A4'
ZSH_HIGHLIGHT_STYLES[command]='fg=#8FF0A4'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#8FF0A4,italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#FFA348,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#FFA348'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#FFA348'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#613583'
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#99C1F1'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#99C1F1'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#99C1F1'
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#DC8ADD'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#DC8ADD'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#DC8ADD'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#DC8ADD'
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#F8E45C'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#F8E45C'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#F8E45C'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#F66151'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#F8E45C'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#F66151'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#F8E45C'
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#F66151'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#F6F5F4'
## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#F66151'
ZSH_HIGHLIGHT_STYLES[path]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#DC8ADD'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#DC8ADD'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#613583'
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#F66151'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[default]='fg=#F6F5F4'
ZSH_HIGHLIGHT_STYLES[cursor]='standout'
