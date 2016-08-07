call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc', { 'do': 'make' }                    " Asynchronous command execution library
Plug 'Valloric/ListToggle'                                 " Toggling quickfix and location list
Plug 'benmills/vimux'                                      " Vim and Tmux Integration
Plug 'christoomey/vim-tmux-navigator'                      " Window/Pane switching with Vim and Tmux
Plug 'ctrlpvim/ctrlp.vim'                                  " File searchin and opening
Plug 'derekwyatt/vim-fswitch', { 'for': 'cpp' }            " Fastswitch (cpp/h toggle)
Plug 'honza/vim-snippets'                                  " Generic snippets for UltiSnips
Plug 'kana/vim-operator-user'                              " Library to assist with writing custom operators
Plug 'majutsushi/tagbar'                                   " Using for JavaScript
Plug 'mhinz/vim-grepper'                                   " Asynchronous Grep -> QuickFix List
Plug 'rhysd/vim-clang-format'                              " clang-format bindings and config
Plug 'scrooloose/syntastic'                                " Syntax checking
Plug 'spf13/vim-autoclose'                                 " Matching [({'
Plug 'tommcdo/vim-exchange'                                " cx operator for exchanging text regions
Plug 'tpope/vim-abolish'                                   " Coercion and Subvert
Plug 'tpope/vim-commentary'                                " Comment/uncomment operator
Plug 'tpope/vim-dispatch'                                  " Asynchronous Makes
Plug 'tpope/vim-fugitive'                                  " Git Wrapper
Plug 'tpope/vim-repeat'                                    " Dot operator for plugins
Plug 'tpope/vim-surround'                                  " Surrounding text
Plug 'tpope/vim-unimpaired'                                " Pairs of keyboard mappings for common tasks
Plug 'tpope/vim-vinegar'                                   " netrw improvement

if g:platform == "Linux" || g:platform == "Darwin"
    Plug 'SirVer/ultisnips'               " Text snippets

    " This one is extremely powerful, but also somewhat slow on the shared dev
    " machines.  If you do decide to use it, take a look at
    " ~/bin/bb_youcompleteme_install.sh
    "Plug 'Valloric/YouCompleteMe'
endif

call plug#end()

"" ============================================================================
""                              Plugin Settings
"" ============================================================================
" clang-format
let g:clang_format#detect_style_file = 1

" CtrlP
let g:ctrlp_working_path_mode = 'ra'

" Grepper
nmap gs :call Cdroot()<CR><plug>(GrepperOperator)
xmap gs :call Cdroot()<CR><plug>(GrepperOperator)

let g:grepper = {
    \ 'tools':     ['git'],
    \ 'jump':      1,
    \ }

" Netrw
let g:netrw_sort_by = 'name'

" ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" Syntastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1

" Let YouCompleteMe handle checking
let g:syntastic_cpp_checkers = []
let g:syntastic_c_checkers = []

" UltiSnips
" Magic to make the <enter> key expand snippets, even with YouCompleteMe installed.
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function! ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

" Vimux
let g:VimuxOrientation = "h"
let g:VimuxHeight = "35"

" YouCompleteMe
let g:ycm_always_populate_location_list = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_server_keep_logfiles = 0
let g:ycm_server_log_level = 'debug'
