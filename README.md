# dotfiles-bootstrap
This is a starter-kit for dotfiles organization at Bloomberg.  It is intentionally kept small and minimal.  The idea is to get the basic framework in place with the minimum amount of code, so that you can read and understand every line.

These are your personal tools.  You should fork them and modify them to suit your tastes.

## Getting Started
```shell
git clone bbgithub:TODO ~/dotfiles
cd ~/dotfiles
./install
```
By default, dotbot will not overwrite files that already exist. If you see failures, move those
files to `.sav` versions and re-run.

## Features
* Symlink management with [dotbot](http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)
* Basic bbprofile and bashrc
* vim
    - A handful of basic settings.
    - [plug](https://github.com/junegunn/vim-plug) plugin manager and some common plugins
    - Clean `.vimrc` layout with included files for mappings, settings, functions
    - Mergetool with vimdiff and [fugitive](https://github.com/tpope/vim-fugitive)
* clang-format bindings and BDE style file
* git_template with hooks to automatically regenerate ctags asynchronously on clone, merge, rebase, commit operations.
* tmux with vim-like movement bindings

### A note on YouCompleteMe
I've commented out the vim plugin YouCompleteMe.  This plugin is extremely powerful, but it
noticeably slows down vim startup time and takes a little bit of work to configure.

If you're interested in using it, uncomment it from `vim/startup/plugins.vim` and run:
```
cd bin && LOCUM_ARCH=linux locum bb_youcompleteme_install.sh
```
I'd advise staying away from the semantic LLVM + clang auto-completion engine to start.

## Further Inspiration
As mentioned previously, this is repo kept small to avoid making it unapproachable and intimidating.

Once you feel comfortable with the tools provided, here are some ideas for further improvement:
* You can and should put lots of aliases in your `.gitconfig`
* Tmux can be enhanced with its own plugins via [tpm](https://github.com/tmux-plugins/tpm)
* Cmdline interaction with bbgithub is available with [hub](https://hub.github.com/)
* Zsh is available as a bash replacement. Take a look at [zgen](https://github.com/unixorn/zsh-quickstart-kit)
* If you use Linux at home, you probably want to share these dotfiles with your home PC. For this purpose you can break the dotfiles repo into a dotfiles on github.com, and a dotfiles_local on bbgithub.
* Always be on the lookout to steal things from other people's dotfiles.  For starters, you can look at:
    - [My generic dotfiles](https://github.com/bhipple/dotfiles)
    - [My Bloomberg dotfiles_local](https://bbgithub.dev.bloomberg.com/bhipple/dotfiles_local)
    - [My coworker Mario's dotfiles](https://github.com/mlongob/dotfiles)
    - [And his dotfiles_local with Bloomberg customizations](https://bbgithub.dev.bloomberg.com/mlongob1/dotfiles-local)
    - Many people put their dotfiles on [github](http://dotfiles.github.io/)
        * It's up to you, but I'd caution against pulling too many huge, heavyweight frameworks at once!
        * Your tools should be an ongoing continuous improvement process, and it's easiest to do that if you understand them!
* [The Pragmatic Programmer](https://www.amazon.com/Pragmatic-Programmer-Journeyman-Master/dp/020161622X) and [Practical Vim](https://pragprog.com/book/dnvim/practical-vim) have lots of great advice.
* [vimcasts.org](http://vimcasts.org/) has many short videos with great tips.
