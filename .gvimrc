"" Disable all unecessary GUI elements
" set go=aegimrLtT
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar"

"" Set font and size
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 12
set window=31

" set ruler

"" Buffer switch
noremap <C-Tab> :bnext<CR>
noremap <C-S-Tab> :bprevious<CR>
