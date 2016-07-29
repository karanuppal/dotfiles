## ============================================================================
##                           Environment Variables
## ============================================================================
if [ "$TERM" != "screen-256color" ]; then
    export TERM=xterm-256color
fi

export GTEST_COLOR=yes
export EDITOR=vi

# Reduce delay to 0.1 seconds for switching to normal mode with ESC
export KEYTIMEOUT=1

PATH=$HOME/bin
PATH=$PATH:/opt/bb/bin
PATH=$PATH:/bb/bin
PATH=$PATH:/opt/swt/bin
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:/bb/shared/bin

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export HTTP{,S}_PROXY="devproxy.bloomberg.com:82"
export http{,s}_proxy="devproxy.bloomberg.com:82"
export no_proxy="localhost,.dev.bloomberg.com,127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16"

## ============================================================================
##                                 Settings
## ============================================================================
# Unmap ctrl-s as "stop flow"
stty stop undef

# Vim mode.  Remove to default to emacs style keys.
set -o vi

# Update winsize after each command for better line-wrapping
shopt -s checkwinsize

## ============================================================================
##                                  Prompt
## ============================================================================
PS1='\[\e[1;31m\][\u@\h: \w]\$\[\e[0m\] '
