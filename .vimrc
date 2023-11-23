" Set leader key
    let mapleader = "\<space>"

syntax on
    set background=dark

" Set compatibilty to vim only
    set nocompatible 
"Auto text wrapping
    set wrap
    set linebreak
    set nolist
    set whichwrap+=<,>,h,l
"set colorcolumn=80
    highlight ColorColumn guibg=Black
    highlight ColorColumn ctermbg=0
"Codefold
    set foldmethod=indent
" Encoding
    set encoding=utf-8
" Show line numbers
    set number 
" Status bar
    set laststatus=2 
" Intent width
    set shiftwidth=2
    set autoindent 
    set expandtab 
    set tabstop=2 
    set shiftwidth=2
" Set Font
    set guifont=Cousine\ Nerd\ Font,\ Regular
" Set Innorecase  
    set ignorecase



"============================================================
"NerdTree Settings
"============================================================
nmap <leader>e :NERDTreeToggle<cr>
let g:NERDTreeWinSize = 30
let NERDTreeDirArrowExpandable="+"                                                                 
let NERDTreeDirArrowCollapsible="-"

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

"Remove Help line(Press ? for help) from the top of NerdTree
let NERDTreeMinimalUI=1


"Increase NERDTree Window Size
    nnoremap <C-Up>    :resize +2<CR>
    nnoremap <C-Down>  :resize -2<CR>
    nnoremap <C-Left>  :vertical resize +2<CR>
    nnoremap <C-Right> :vertical resize -2<CR>


"============================================================
"End NerdTree Settings
"============================================================



"============================================================
"Fuzzy Finder Settings
"============================================================
"Fuzzy Finder Settings
    nmap <leader>ff :FZF<cr>

"============================================================
"End of Fuzzy Finder Settings
"============================================================
    map <C-Up> :m -2<CR>
    map <C-k> :m -2<CR>
    map <C-Down> :m +1<CR>
    map <C-j> :m +1<CR>
    nnoremap d "_d
    nnoremap c d
    nnoremap C D
    vnoremap c d
    nnoremap x "_x
    nmap <C-_>   <Plug>NERDCommenterToggle
    vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
    set ignorecase
    let g:blamer_enabled = 1
    let g:blamer_delay = 500



"============================================================
"Plugins
"============================================================

call plug#begin('~/.vim/plugged')
 "Autocomplete plugin. similar to VSCode
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'flazz/vim-colorschemes'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'altercation/vim-colors-solarized'
    Plug 'majutsushi/tagbar'
    Plug 'mattn/emmet-vim'
    Plug 'ivalkeen/nerdtree-execute'
    Plug 'junegunn/fzf'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tpope/vim-commentary'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tmsvg/pear-tree'
    Plug 'vim-scripts/ShowPairs'
    Plug 'valloric/matchtagalways'
    Plug 'tmhedberg/simpylfold'
    Plug 'foosoft/vim-argwrap'
    Plug 'mitermayer/vim-prettier'
    Plug 'yist/vim-codefolding'
    Plug 'ervandew/supertab'
    Plug 'mkitt/tabline.vim'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'xuyuanp/nerdtree-git-plugin'
call plug#end()




"============================================================
"Extended Settings
"============================================================
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map! <F3> <C-R>=strftime('%c')<CR>

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"



set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable




"Airline Theme Settings
let g:airline#extensions#tabline#enabled = 1
let g:tablineclosebutton=1
