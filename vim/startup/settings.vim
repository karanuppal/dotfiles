"" ============================================================================
""                                 Settings
"" ============================================================================
" makes Vim less VI-compatible and works in a regular way
set nocompatible
"forces vim to soucre .vimrc from curr directory, allows for project specific configuration
set exrc

"" ============================================================================
""                                  Globals
"" ============================================================================
" Determine Environment
let g:platform = GetPlatform()

" To enable the saving and restoring of screen positions.
let g:screen_size_restore_pos = 1

let g:clang_library_path='/opt/bb/lib64/libclang.so.3.6'

"" ============================================================================
""                            Editing and Moving
"" ============================================================================
syntax on
set autoindent
set cindent
set backspace=indent,eol,start

" use mouse in vim
set mouse=a

" No swap files etc
set nobackup
set nowb
set noswapfile

" maximum number of changes that can be undone
set undolevels=10000

" runtime path search for Ex
set ru

" Fixing tabs
set tabstop=4
set expandtab
set shiftwidth=4

" Autosave before :make and other commands; autoreload when file mod
set autowrite
set autoread

"show matching braces
set sm

" for vsp open on right
set splitright

" for horizontal split open at bottom
set splitbelow

" Smart case sensitivity
set ignorecase
set smartcase

" Fix background color
set t_ut=

" When multiple completions are possible, show all
set wildmenu

" Complete only up to point of ambiguity, like the shell does
set wildmode=list:longest

" Ignoring files (see :help wildignore)
set wildignore+=*.o,*.d,00*,nohup.out,tags,.hs-tags,*.hi,*.gcno,*.gcda,*.fasl,*.pyc

" Number of lines to scroll past when the cursor scrolls off the screen
set scrolloff=2

" Tool to use for Grepper
set grepprg="git"

" Stop comments automatically going on newlines (really annoys me)
setlocal comments-=://
setlocal comments+=f://

set makeprg=ctags\ --languages=C++\ -R\ .\ &&\ /home/kuppal8/build

"" ============================================================================
""                                Appearances
"" ============================================================================
" Show line numbers
set number

" Show tab and trailing whitespace characters
set listchars=tab:>-,trail:-
set list!

" Incremental Search and Highlighting Results
set incsearch
set hlsearch

" Set the folding method
set foldmethod=manual
set foldnestmax=3
set foldminlines=10

" do not indent after namespace XX{
set cino+=N-s

"" ============================================================================
""                               Auto Commands
"" ============================================================================
" Automatically open the QuickFix Window after a make
autocmd QuickFixCmdPost *make* cwindow

" Make
autocmd FileType make setlocal noexpandtab shiftwidth=8

" XML
autocmd FileType xml setlocal equalprg=xmllint\ --format\ -

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
