# Put shell aliases here

alias ll='ls -al'
alias ls='ls --color'

# cd to the root of your git repo
alias cdr='cd $(git rev-parse --show-toplevel)'

alias c="clear"

# shortcut for OP1 prdwin
alias pw="getprdwin -u OP1 -i -d kuppal8"

# news is always built against local
alias plink="plink -d local"

# aliases for vpr
alias vpub="vpr.pl publish"
alias vrel="vpr.pl release"
alias vprel="vpr.pl publish -rel"

#alias git="hub"
