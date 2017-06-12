# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ${HOME}/.local/bin/git-prompt.sh
PS1="\[\e[0;32m\]\u\[\e[m\]@\h \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$(__git_ps1 '(%s)')\[\e[m\]"

# Add line break for new prompt
PS1="$PS1 \n$ "

# Add extra line before new prompt
PS1="\n$PS1"

alias ls="ls --color"

export PATH=${HOME}/.local/bin/:${PATH}
export EDITOR=vim

shopt -s histappend

export GOROOT=${HOME}/Downloads/go1.8
export GOPATH=${HOME}/go
export PATH=${PATH}:${GOROOT}/bin:${GOPATH}/bin

export ANSIBLE_SSH_CONTROL_PATH='/dev/shm/%%h-%%r'

export GPGKEY=0A449354

if [ -f '/usr/share/bash-completion/completions/pass' ]; then source '/usr/share/bash-completion/completions/pass'; fi
if [ -f '/home/bnwilson/google-cloud-sdk/path.bash.inc' ]; then source '/home/bnwilson/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/home/bnwilson/google-cloud-sdk/completion.bash.inc' ]; then source '/home/bnwilson/google-cloud-sdk/completion.bash.inc'; fi

export PATH=${PATH}:${HOME}/google-cloud-sdk/bin

export ANSIBLE_VAULT_PASSWORD_FILE=${HOME}/.ansible_vault
