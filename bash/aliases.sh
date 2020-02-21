# Put shell aliases here

alias ll='ls -al'

# cd to the root of your git repo
alias cdr='cd $(git rev-parse --show-toplevel)'

alias c="clear"

alias gcp_vm='gcloud beta compute --project "spry-effect-244215" ssh --zone "us-west1-c" "jupyter@karan"'
