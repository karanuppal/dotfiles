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

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "

# #============================================================================
##                                 Settings
## ============================================================================
# Unmap ctrl-s as "stop flow"
stty stop undef

# Update winsize after each command for better line-wrapping
shopt -s checkwinsize

# Vim bindings
set -o vi

#git bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# atom from command line
ln -s -f /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom

# google cloud credentials
#export GOOGLE_APPLICATION_CREDENTIALS=/Users/karanuppal/.ssh/spry-effect-244215-e315ef5bd119.json
