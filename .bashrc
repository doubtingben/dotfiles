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

export EDITOR=vim

shopt -s histappend
HISTSIZE=50000
HISTFILESIZE=100000
PROMPT_COMMAND="history -a;history -c;history -r;$PROMPT_COMMAND"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/bwilson/gcloud/google-cloud-sdk/path.bash.inc' ]; then source '/home/bwilson/gcloud/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/bwilson/gcloud/google-cloud-sdk/completion.bash.inc' ]; then source '/home/bwilson/gcloud/google-cloud-sdk/completion.bash.inc'; fi

export GOROOT=${HOME}/go1.9.2
export PATH=${GOROOT}/bin:${PATH}
export GOPATH=${HOME}/go
export PATH=${GOPATH}/bin:${PATH}

if [[ ! $(nc -z gitlab.clarkinc.biz 443 2>/dev/null) ]];then
  source ${HOME}/.bashrc-wss
fi

export PATH=${HOME}/.local/bin/:${PATH}
