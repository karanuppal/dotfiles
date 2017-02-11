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
export TERM=xterm-256color

export PATH=$PATH:/opt/swt/bin

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export HTTP{,S}_PROXY="devproxy.bloomberg.com:82"
export http{,s}_proxy="devproxy.bloomberg.com:82"
export no_proxy="localhost,.dev.bloomberg.com,127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16"

# adds libnlp installation to python path
# libnlp doesn't work with ananconda python
export PYTHONPATH=/bb/bigstorn/news/libnlp/dist/python:$PYTHONPATH

# redirect tmpdir
export TMPDIR=/bb/news/data/tmp


## ============================================================================
##                                 Settings
## ============================================================================
# Unmap ctrl-s as "stop flow"
stty stop undef

# Update winsize after each command for better line-wrapping
shopt -s checkwinsize
