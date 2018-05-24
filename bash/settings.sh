## ============================================================================
##                           Environment Variables
## ============================================================================
if [ "$TERM" != "screen-256color" ]; then
    export TERM=xterm-256color
fi

export GTEST_COLOR=yes
export EDITOR=vim

# Reduce delay to 0.1 seconds for switching to normal mode with ESC
export KEYTIMEOUT=1

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export PIP_CONFIG_FILE=$HOME/.config/pip/pip.conf

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "

# this combined with tinyproxy running allows connections with both bbg and outside world
# https://bbgithub.dev.bloomberg.com/drodrig1/blpapi-bbvpn/blob/master/tinyproxy.md
export http_proxy=localhost:8888
export https_proxy=localhost:8888

# for mactoolkit
export PATH=$PATH:/Users/kuppal8/mactoolkit

# #============================================================================
##                                 Settings
## ============================================================================
# Unmap ctrl-s as "stop flow"
stty stop undef

# Update winsize after each command for better line-wrapping
shopt -s checkwinsize

# Vim bindings
set -o vi
