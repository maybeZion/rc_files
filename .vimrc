set history=500

filetype indent plugin on
syntax on
set autoread

au FocusGained,BufEnter * checktime
set so=7

set wildmenu
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set encoding=UTF-8

set nocompatible
set hidden
set autoindent
set nostartofline
set confirm
set mouse=a
set cmdheight=2
set laststatus=2
set number
set notimeout ttimeout ttimeoutlen=200

set shiftwidth=2
set softtabstop=2
set expandtab

set noshowmode
set pastetoggle=<F11>
map Y y$
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
map ; :NERDTreeToggle<CR>
map , :noh<CR>

let g:lightline = {
  \ }

let g:lightline.component_expand = {
      \ }

let g:lightline.component_type = {
      \ }

let g:lightline#ale#indicator_checking = '-'
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
map <C-l> :ALEToggle<CR>

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:javascript_plugin_flow = 1
let NERDTreeShowHidden = 1

let g:ale_set_highlights = 0
let b:ale_linters = ['pyflakes', 'flake8', 'pylint', 'rubocop', 'rails_best_practices']
let b:ale_fixers = ['eslint']
let b:ale_fix_on_save = 1

so ~/.vim/plugins.vim
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

set hidden  " allow buffer switching without saving
set showtabline=2

let g:lightline = {
    \ 'colorscheme': 'darcula',
    \ 'active': {
    \   'left': [
    \     ['mode', 'paste' ], 
    \     ['readonly', 'filename', 'modified']
    \   ],
    \   'right': [
    \     ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
    \     ['lineinfo'], 
    \     ['percent'], 
    \     ['fileformat', 'filetype'],
    \   ]
    \ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ],
    \   'right': [ ['fileencoding'] ]
    \ },
    \ 'component_expand': {
    \   'linter_checking': 'lightline#ale#checking',
    \   'linter_infos': 'lightline#ale#infos',
    \   'linter_warnings': 'lightline#ale#warnings',
    \   'linter_errors': 'lightline#ale#errors',
    \   'linter_ok': 'lightline#ale#ok',
    \   'buffers': 'lightline#bufferline#buffers'   
    \ },
    \ 'component_type': {
    \   'linter_checking': 'right',
    \   'linter_infos': 'right',
    \   'linter_warnings': 'warning',
    \   'linter_errors': 'error',
    \   'linter_ok': 'right',
    \   'buffers': 'tabsel'
    \ },
    \ }

nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
map <C-t> :e .<CR>
map <C-w> :bd<CR>
