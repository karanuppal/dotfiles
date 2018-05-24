# Put shell aliases here

alias ll='ls -al'

# cd to the root of your git repo
alias cdr='cd $(git rev-parse --show-toplevel)'

alias c="clear"

alias sshd="ssh -Y -tt v5dev inline"
alias sshp="ssh -Y -tt v5prod inline"
alias sshv="ssh -Y -tt default"

# for when nothing else works
alias dev_proxy='http_proxy=http://bproxy.tdmz1.bloomberg.com:80 https_proxy=http://bproxy.tdmz1.bloomberg.com:80'
alias ext_proxy='http_proxy=http://proxy.bloomberg.com:77 https_proxy=http://proxy.bloomberg.com:77'

# katie aliases
alias khdfs='katie hdfs --hadoop-identity kuppal8-dnj2-gen'
