"vundle
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins ↓
Plugin 'gmarik/Vundle.vim' " required
Plugin 'lifepillar/vim-gruvbox8' "colorscheme
Plugin 'Valloric/YouCompleteMe.git' "autocomplete
Plugin 'jiangmiao/auto-pairs' "autopair to () and more
Plugin 'preservim/nerdtree' "NerdTree
Plugin 'ryanoasis/vim-devicons' "Icons for NerdTree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' "read the name
Plugin 'vim-scripts/vimspell' "spellchecker 
Plugin 'sangdol/mintabline.vim' "tabline top mano

" Plugins ↑ 

call vundle#end()            " required
filetype plugin indent on    " required

" config only above this ↓

" uiuiui
syntax on "turn on the syntaxhighlight
set backspace=indent,eol,start
set encoding=UTF-8
set tabstop=4 softtabstop=4 "one tab = four spaces
set shiftwidth=4 ">> = to four right cases
set expandtab "convert tab character to spaces
set smartindent "the vim try indent to you
set nu "numbers appers
set rnu "relative numbers bro
set smartcase "i dont know but deve ser de marcar 
set noswapfile "no swap
set nobackup
set incsearch "realtime searching

set clipboard=unnamedplus "vim yank to clipboard

"gray line at 80char 
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" colorscheme
set background=dark
colorscheme gruvbox8_hard
let t_Co='16'
    "cursorColors
set cursorline
hi clear CursorLine
hi CursorLineNR ctermbg=NONE
    "cursorColors
" colorscheme

"font
set guifont=*

"autopair↓
let g:AutoPairsFlyMode = 1
"autopair

" whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" whitespace

"this↓ is to remap a leader key to add more shortcuts
" keybinds
let mapleader = " " 
nnoremap <leader>s :source %<Cr>

nnoremap <leader>; A;<Esc>
nnoremap <leader>: A:<Esc>

"run *.py .
        "this is to bash↓
"nnoremap <leader>r :!clear && python3 %<Cr>

        "this is to fish↓
nnoremap <leader>r :!clear; and python3 %<Cr>
"run *.py .


"move text lines
vnoremap J :m '>+1<Cr>gv=gv
vnoremap K :m '>-2<Cr>gv=gv
"move text lines



"keybinds



"NerdTree

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=28


let spell_auto_type="tex,md,txt"

let g:ycm_enable_semantic_highlight=1
