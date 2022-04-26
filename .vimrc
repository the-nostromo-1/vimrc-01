syntax on

if has ('filetype')
    filetype indent plugin on
endif

"autocmd Vimenter * NERDTree

au BufWrite * :Autoformat<CR>

call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
Plug 'puremourning/vimspector'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'sjl/badwolf'
Plug 'tabnine/YouCompleteMe'
Plug 'chiel92/vim-autoformat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
call plug#end()

let g:vimspector_enable_mappings='HUMAN'
let g:rainbow_active=1
let g:badwolf_tabline=0
let g:python3_host_prog="/bin/python3"
let g:python2_host_prog="/bin/python2"
let g:NERDCreateDefaultMappings=1
let g:floaterm_keymap_new='<leader>ft'
let g:floaterm_keymap_toggle='<leader>t'

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set spell

set noerrorbells
set visualbell

set number
set cursorline
set cursorcolumn
set wrap
set textwidth=80
set linebreak
set ruler
set scrolloff=10

set nocompatible
set noswapfile
set nobackup

set hidden
set cmdheight=3
set lazyredraw
set wildmenu

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch
set incsearch
set ignorecase

set showmatch

set splitbelow
set splitright

set t_Co=256
set background=dark

"<leader> = \

inoremap jj <esc>
inoremap <C-s> <esc>:w<CR>i

nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <F5> <Plug>VimspectorContinue

colorscheme badwolf
