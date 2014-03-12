if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
" NeoBundle 'Shougo/vimproc'

" My Bundles here: "
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
" NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
" NeoBundle 'L9'
" NeoBundle 'FuzzyFinder'
" NeoBundle 'rails.vim' " We don't need it

" Non github repos
" NeoBundle 'git://git.wincent.com/command-t.git'

" gist repos
"NeoBundle 'gist:Shougo/656148', {
"      \ 'name': 'everything.vim',
"      \ 'script_type': 'plugin'}
" Non git repos

" NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" My Bundle """""""""""""""" """""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'xsbeats/vim-blade'

" NeoBundle 'Shougo/neocomplete.vim'
" NeoBundle 'Shougo/neosnippet'



"" A fancy start screen for Vim
" NeoBundle 'mhinz/vim-startify'

"" Semacam edit wrapper
"" example: "Hello World"
"" --> cs"<q> --> <q>Hello World</q>
"" --> cs<q>' --> 'Hello World'
"" --> cd'    --> Hello World
" NeoBundle 'tpope/vim-surround'
" vnoremap <SC-g> gS

"" Easy align \t= Bikin rapi ngikutin =
" NeoBundle 'vim-scripts/Align'

"" Langsung nutup ( jadi () atau ' jadi ''
" NeoBundle 'Townk/vim-autoclose'

" NeoBundle 'groenewege/vim-less'



"" Langsung kasi liat color untuk CSS
" NeoBundle 'gorodinskiy/vim-coloresque'



"" Color schema
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'

" EditorConfig
" NeoBundle 'editorconfig/editorconfig-vim'


"" MiniBufferExplorer with enhanchements
" NeoBundle 'fholgado/minibufexpl.vim'

"" SuperTab <tab> autocompletion
" NeoBundle 'ervandew/supertab'

"" Visualize Git Undo Tree
" NeoBundle 'sjl/gundo.vim'

"" Camel Case Motion
" NeoBundle 'bkad/CamelCaseMotion'

"" LustyExplorer (Dynamic filesystem and buffer explorer)
"" LustyJuggler (Switch very quickly among your active buffers)
" NeoBundle 'sjbach/lusty'

" CtrlP alternative
" NeoBundle 'wincent/Command-T'

" PHP autocomplete
" NeoBundle 'shawncplus/phpcomplete.vim'


"" Load NeoBundle in external files

"" Set default config path
let s:configpath = $HOME . '/.vim/config/' " Dont forget the traling slash

" source $HOME/.vimrc.neocomplete
" source $HOME/.vimrc.neosnippet
" source $HOME/.vimrc.noob
:exec 'source ' . s:configpath . 'fugitive.vim'
:exec 'source ' . s:configpath . 'emmet.vim'
:exec 'source ' . s:configpath . 'nerdtree.vim'
:exec 'source ' . s:configpath . 'nerdtree_tabs.vim'
:exec 'source ' . s:configpath . 'multicursor.vim'
:exec 'source ' . s:configpath . 'tagbar.vim'
:exec 'source ' . s:configpath . 'yankring.vim'
:exec 'source ' . s:configpath . 'gitgutter.vim'
:exec 'source ' . s:configpath . 'ctrlp.vim'
:exec 'source ' . s:configpath . 'abolish.vim'
:exec 'source ' . s:configpath . 'eunuch.vim'
:exec 'source ' . s:configpath . 'tcomment.vim'
" :exec 'source ' . s:configpath . 'vim-commentary.vim'
" :exec 'source ' . s:configpath . 'nerdcommenter.vim'
:exec 'source ' . s:configpath . 'easymotion.vim'
:exec 'source ' . s:configpath . 'vim-airline.vim'
:exec 'source ' . s:configpath . 'gundo.vim'
:exec 'source ' . s:configpath . 'syntastic.vim'
" :exec 'source ' . s:configpath . 'vimproc.vim'
" :exec 'source ' . s:configpath . 'unite.vim'
" :exec 'source ' . s:configpath . 'supertab.vim'
:exec 'source ' . s:configpath . 'vim-less.vim'
:exec 'source ' . s:configpath . 'vim-repeat.vim'
:exec 'source ' . s:configpath . 'vim-unimpaired.vim'
:exec 'source ' . s:configpath . 'css-color.vim'
:exec 'source ' . s:configpath . 'motion-camelcase.vim'
" :exec 'source ' . s:configpath . 'jellybeans.vim'



" ...

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
" NeoBundleCheck



"""""""""""""""""""""""" mul14 - My configurations """""""""""""""""""""""""""

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %<CR>




""""""""" default vimrc """"""""""""

" Aktifkan nomer
set number

" Kasi liat <leader> => \ backslash
set showcmd

set backup backupdir=$HOME/.vim/backup " set backup directory

set clipboard=unnamed           " yank and paste in visual mode without prepending "*: "

set cmdheight=1                 " cmdline height

set showtabline=2               " File tabs allways visible

set timeoutlen=1000 ttimeoutlen=0 " No delay please...

" Paste mode
"set paste

" No wrap
set nowrap

" Kalau pakai : kasi liat semua menu
set wildmenu
" set wildmode=list:longest

" Permudah navigasi antar window
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" nmap <S-j> 29j<cr>
" nmap <S-k> 29k<cr>

nmap <S-j> <PageDown>
nmap <S-k> <PageUp>

" Pindah ke awal line, dan abaikan spasi
nmap <S-h> ^

" Pindah ke line akhir
nmap <S-l> $

" =========== Scrolling ==========
set scrolloff=5 " Mulai scroll kalau baris dibawah udah berjarak 5
set sidescroll=1 " Aktifkan scroll kesamping
set sidescrolloff=15 " Mulai scroll kalau jarak kesamping udah 15


set cursorline " Aktifkan posisi cursor

set hidden " Ganti buffer tanpa save

set hlsearch " Pencarian dengan hightlight
set incsearch " Pencarian langsung di-hightlight tiap kali diketik
nmap <silent> <leader>/ :silent :nohlsearch<CR> " Kalau sudah selesai cari, hilangkan highlight

" Aktifkan syntax highlight pakai buffer. Kalau :syntax on/sync ternyata
" bermasalah http://vim.wikia.com/wiki/Fix_syntax_highlighting
syntax enable
autocmd BufEnter * :syntax sync fromstart
"autocmd BufEnter * :syntax sync minlines=4


" Tab, end of line, keliatan pakai ini
set listchars=tab:>-,trail:·,eol:$
"nmap <silent> <leader>s :set nolist!<CR>
nmap <F12> :set nolist!<CR>

" Hilangkan tulisan Press ENTER or type command to continue
set shortmess=atI

" Always turn on global regex
set gdefault

" Use white-space instead of tab
set expandtab
set tabstop=4
retab
set shiftwidth=4

" Remove all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Retab reindent
" for command mode
"nmap <S-Tab> <<
" for insert mode
" imap <S-Tab> <Esc><<i
" nnoremap <tab> >>
" nnoremap <s-tab> <esc><<
inoremap <s-tab> <esc><<i
vnoremap <tab> >><esc>
vnoremap <s-tab> <<<esc>

" Abis tekan { harusnya langsung pakai indentation
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>


" Cek lagi ini mau quit tadinya
" map q q!

" Di normal mode ganti jadi ;
nnoremap ; :

" Kalo ngapus nggak usah disimpan di registers :h registers
vnoremap x "_x
nnoremap x "_x
" noremap d "_d

"" === CLEAR REGISTERS

function! s:Registers( arguments )
    redir => l:registersOutput
        silent! execute 'registers' a:arguments
    redir END
    for l:line in split(l:registersOutput, "\n")
        if l:line !~# '^"\S\s*$'
            echo l:line
        endif
    endfor
endfunction
command! -nargs=? Registers call <SID>Registers(<q-args>)


function! ClearRegisters()
    let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="*+'
    let i=0
    while (i<strlen(regs))
        exec 'let @'.regs[i].'=""'
        let i=i+1
    endwhile
endfunction
command! ClearRegisters call ClearRegisters()

"" === CLEAR REGISTERS:END

" Pindah buffer (seperti tab)
noremap <C-PageDown> :bnext<CR>
noremap <C-PageUp>   :bprevious<CR>

" Pindah tab (seperti workspace)
" noremap <C-S-n> :tabnext<CR>
" noremap <C-S-b> :tabprevious<CR>

" Easy expand current directory http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

"" Easy to execute shell
nmap ! :!

"" ------------------------
"" All about windows
"" ------------------------

"" Easy window resize
nmap <silent> <A-h> <C-w><
nmap <silent> <A-j> <C-W>-
nmap <silent> <A-k> <C-W>+
nmap <silent> <A-l> <C-w>>

"" Resize horizontal split window
nmap <C-Up> <C-W>-<C-W>5-
nmap <C-Down> <C-W>+<C-W>5+

"" Resize vertical split window
nmap <C-Left> <C-W>><C-W>5>
nmap <C-Right> <C-W><<C-W>5<

"" Only do if buffer more than one. http://vim.wikia.com/wiki/VimTip427
if bufwinnr(1)
    map + <C-W>+
    map - <C-W>-
endif

"" Let's make vim in terminal can use Alt-key, like in GVim.
"" http://stackoverflow.com/questions/6778961/alt-key-shortcuts-not-working-on-gnome-terminal-with-vim
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50

"" -----------------------
"" All about windows: END
"" -----------------------


""""""""""' Omni completion "" (cek lagi)
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete



"""""""" Pengganti NERDTree """""""
""" http://stackoverflow.com/questions/5006950/setting-netrw-like-nerdtree

"" Toggle Vexplore with Ctrl-E
" function! ToggleVExplorer()
"   if exists("t:expl_buf_num")
"       let expl_win_num = bufwinnr(t:expl_buf_num)
"       if expl_win_num != -1
"           let cur_win_nr = winnr()
"           exec expl_win_num . 'wincmd w'
"           close
"           exec cur_win_nr . 'wincmd w'
"           unlet t:expl_buf_num
"       else
"           unlet t:expl_buf_num
"       endif
"   else
"       exec '1wincmd w'
"       Vexplore
"       let t:expl_buf_num = bufnr("%")
"   endif
" endfunction
" "map <silent> <C-E> :call ToggleVExplorer()<CR>
" map <silent> <F2> :call ToggleVExplorer()<CR>


"""" Optional

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

"" Change directory to the current buffer when opening files.
" set autochdir

"""""""" //Pengganti NERDTree """""""

" Commenting blocks of code.
" autocmd FileType c,cpp,java,scala,php,ctp,js let b:comment_leader = '// '
" autocmd FileType sh,ruby,python   let b:comment_leader = '# '
" autocmd FileType conf,fstab       let b:comment_leader = '# '
" autocmd FileType tex              let b:comment_leader = '% '
" autocmd FileType mail             let b:comment_leader = '> '
" autocmd FileType vim              let b:comment_leader = '" '
" noremap <silent> ,cc :<C-B>silent
" <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
" noremap <silent> ,cu :<C-B>silent
" <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"

" Exit insert mode
imap jj <Esc>
" imap kk <Esc>
" imap hh <Esc>

" Insert mode (perlu dikaji lagi)
" nmap ii i


" Easy Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Search case insensitive
set ignorecase
set smartcase

" Color Scheme
" g:molokai_original = 1
colorscheme molokai
" set background=dark
" colorscheme solarized


" We don't need any help!
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

" Disable annoying ex mode (Q)
map Q <nop>


" Disable F1 Help
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

