#!/opt/bb/bin/bash
# Some very basic bootstrapping to make sure the first ./install succeeds
# without destroying your entire environment.

proxies() {
    cp -f gitconfig ~/.gitconfig

    export HTTP{,S}_PROXY="devproxy.bloomberg.com:82"
    export http{,s}_proxy="devproxy.bloomberg.com:82"
    export no_proxy="localhost,.dev.bloomberg.com,127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16"
}

save_path() {
    if [ -f "$1" ] || [ -d "$1" ]; then
        mv "$1" "$1.sav"
    fi
}

backup() {
    save_path "$HOME/.bashrc"
    save_path "$HOME/.bbprofile"
    save_path "$HOME/.gitconfig"
    save_path "$HOME/.vim"
}

# =============================================================================
#                                   Main
# =============================================================================
backup
proxies

echo "$0 is a one-time use script; if it succeeds, you can safely delete it."
