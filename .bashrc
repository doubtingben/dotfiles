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
export PATH=${GOROOT}/bin:${PATH}
export GOPATH=${HOME}/go
export PATH=${GOPATH}/bin:${PATH}

export PATH=${HOME}/.local/bin/:${PATH}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then . '/home/bwilson/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.bash.inc' ]; then . '/home/bwilson/google-cloud-sdk/completion.bash.inc'; fi

if [ -f '~/.local/share/pass.bash-completion' ]; then . '/home/bwilson/.local/share/pass.bash-completion'; fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/bwilson/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end