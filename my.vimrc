" ----------------
"     SETTING
" ----------------

" Show line number
set nu

" Good for navigating around with jk when your file is long, and you hate to type <line_number>G
" set relativenumber

" Indenting with 4 spaces
set tabstop=4
set sw=4
set expandtab

" Highlight search results
set hlsearch

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" ----------------
"     MAPPING
" ----------------

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Quickly press jk or kj to exit insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" Use Enter or Ctrl-J to insert a line after current, or Ctrl-K to insert a line before
nnoremap <CR> o<Esc>k
nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``

" Search and replace in all text
nnoremap <C-h> ggVG$:s/
inoremap <C-h> <Esc>ggVG$:s/

" Select all text in visual mode
nnoremap <C-a> ggVG$
inoremap <C-a> <Esc>ggVG$
