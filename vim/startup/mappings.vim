"" ============================================================================
""                             All Mode Mappings
"" ============================================================================
" clang-format
map <C-T> :ClangFormat<CR>
imap <C-T> <C-o>:ClangFormat<CR>

"" ============================================================================
""                           Insert Mode Mappings
"" ============================================================================
" Leaving insert mode with jj or jk
inoremap jj <Esc><Right>
inoremap jk <Esc><Right>

" make ctrl + v work to paste text
inoremap <C-V> <MiddleMouse>

" Auto-Insertion for closing braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Auto-Insertion for closing braces
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

" Auto-Insertion for closing braces
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

"" ============================================================================
""                        Normal/Visual Mode Mappings
"" ============================================================================
" If hl search is off, starting a new search or moving enables it
nnoremap * :set hlsearch<CR>*
nnoremap # :set hlsearch<CR>#
nnoremap n :set hlsearch<CR>n
nnoremap N :set hlsearch<CR>N
nnoremap / :set hlsearch<CR>/
nnoremap ? :set hlsearch<CR>?

" new mappings to navigate splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Make :W do the same as :w
command! W :w

"" ============================================================================
""                         Leader Mappings (Sorted)
"" ============================================================================
" Customize to your heart's content.  I've left a few of my more general functions.
let mapleader = ","
nnoremap <Leader>cdr :call Cdroot()<CR>
nnoremap <Leader>df :Gdiff<CR>
nnoremap <Leader>dom :Gdiff origin/master<CR>
" cpp -> h switch
nnoremap <Leader>ff :FSHere<CR>
nnoremap <Leader>fh :FSSplitLeft<CR>
nnoremap <Leader>fj :FSSplitBelow<CR>
nnoremap <Leader>fk :FSSplitAbove<CR>
nnoremap <Leader>fl :FSSplitRight<CR>

noremap <Leader>h :set hlsearch! hlsearch?<CR>
nnoremap <Leader>ss :call SortSection()<CR>
nnoremap <Leader>w :call StripTabsAndTrailingWhitespaces()<CR>:w<CR>

" Note - l and q are used for the location list and quickfix toggle by ListToggle
nnoremap <Leader>p :pclose<CR>

