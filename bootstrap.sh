#!/usr/bin/env bash
# Some very basic bootstrapping to make sure the first ./install succeeds
# without destroying your entire environment.

proxies() {
    cp -f gitconfig ~/.gitconfig
}

save_path() {
    if [ -f "$1" ] || [ -d "$1" ]; then
        mv "$1" "$1.sav"
    fi
}

backup() {
    save_path "$HOME/.bashrc"
    save_path "$HOME/.gitconfig"
    save_path "$HOME/.vim"
}

# =============================================================================
#                                   Main
# =============================================================================
backup
proxies

echo "$0 is a one-time use script; if it succeeds, you can safely delete it."
