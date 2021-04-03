# Put shell aliases here

alias ll='ls -al'

# cd to the root of your git repo
alias cdr='cd $(git rev-parse --show-toplevel)'

alias c="clear"

alias gcp_vm='gcloud beta compute --project "spry-effect-244215" ssh --zone "us-west1-c" "jupyter@karan"'
alias gcp_vm_large='gcloud beta compute --project "spry-effect-244215" ssh --zone "us-west1-b" "jupyter@karan-large" '
alias e2_gcp_vm_large='gcloud beta compute ssh --zone "us-west1-b" "jupyter@karan-large-e2" --project "spry-effect-244215"'
alias second_vm='gcloud beta compute ssh --zone "us-east4-c" "jupyter@karan-second-vm" --project "spry-effect-244215"'
