set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable

"Make backspace behave like any other editor
set backspace=indent,eol,start											

"Default leader is \, but a comma is much better
let mapleader = " " 

"Activate line number
set number






"--------------------Visuals------------------------"
colorscheme atom-dark-256
"Use 256 colors. This is useful for Terminal Vim
set t_CO=256





"--------------------Search------------------------"
"Highlight searh terms
set hlsearch
set incsearch
set ignorecase



"--------------------Split-Management------------------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Expand the current tab
nmap <Bslash> <C-W><bar>

"Equalize tabs
nmap = <C-W>=





"--------------------Mappings------------------------>
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add a simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"Use Ctrl-s to save file
nmap <C-S> :w<cr>

"Add new line without entering INSERT mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"Use jj as ESCAPE key
imap jk <Esc>
vmap jk <Esc> 

"Make NERDTree easy to toggle
nmap <D-1> :NERDTreeToggle<cr>





"--------------------Auto-Mappings-------------------"
"Automatically source the Vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
