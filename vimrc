
" Load functions
source ~/.vim/startup/functions/vimscript-helpers.vim
source ~/.vim/startup/functions/environment.vim
source ~/.vim/startup/functions/directories.vim
source ~/.vim/startup/functions/formatting.vim

" Load each specialized settings file
source ~/.vim/startup/settings.vim
source ~/.vim/startup/plugins.vim
source ~/.vim/startup/mappings.vim

" GVim Settings
if has("gui_running")
    colorscheme onedark " desert
    set guifont=Monospace\ 11
    set guioptions-=L " prevents gvim from resizing after opening a new split
    set guioptions-=e " prevents gvim from resizing after opening a new tab
else
    colorscheme desert256
endif

set encoding=utf-8
set fileencodings=utf-8

