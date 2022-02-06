# command line info 
PS1='%f %B%F{240}%2~%f%b %# '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '(%b)' #'%F{240}(%b)'
zstyle ':vcs_info:*' enable git


# Git
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gca="git commit --amend --no-edit"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gb="git branch"
alias gcheck="git checkout"


# CLI navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias root="cd ~"


# Shortcuts
alias la="ls -a"

codep=~/nextcloud/code-projects
alias codep="cd $codep"


# GPG
export GPG_TTY=$(tty)


# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
