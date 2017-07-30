# Put shell aliases here

alias ll='ls -al'

# cd to the root of your git repo
alias cdr='cd $(git rev-parse --show-toplevel)'

alias c="clear"

alias sshd="ssh -X -tt v5dev inline"
alias sshp="ssh -X -tt v5prod inline"
alias sshv="ssh -tt -F ~/.ssh/vagrant_ssh_config default"
